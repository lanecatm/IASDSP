package cn.edu.sjtu.iasdsp.activemq;


import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import javax.jms.JMSException;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueReceiver;
import javax.jms.QueueSession;
import javax.jms.Session;
import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.activemq.command.ActiveMQBytesMessage;
import org.apache.log4j.Logger;


public class MQMessageReceiverThread extends Thread {
	private Properties env;
    private String topic;
    private Queue queue;
    private String selector;
    public QueueConnection queueConn;
    private QueueSession queueSession;
    public QueueReceiver queueReceiver;
    private ActiveMQBytesMessage msg;
    private static Logger logger = Logger.getLogger(MQMessageReceiverThread.class.toString());
    
    private ExecutorService executor = Executors.newSingleThreadExecutor();
    private int timeoutSecond;
    
    public MQMessageReceiverThread () {}
    public MQMessageReceiverThread (String topic, String selector, int timeout) throws Exception {
    	this.topic = topic;
        this.selector = selector;
        this.timeoutSecond = timeout;
        this.env = new Properties();
        env.put(Context.INITIAL_CONTEXT_FACTORY,
                "org.apache.activemq.jndi.ActiveMQInitialContextFactory");
//        env.put(Context.PROVIDER_URL, "tcp://192.168.1.30:61616?keepAlive=true&tcpNoDelay=true");
        env.put(Context.PROVIDER_URL, "tcp://127.0.0.1:61616?keepAlive=true&tcpNoDelay=true");


        env.put("queue.queueSampleQueue", topic);
        // get the initial context

        InitialContext ctx = new InitialContext(env);

        // lookup the queue object
        queue = (Queue) ctx.lookup("queueSampleQueue");

        // lookup the queue connection factory
        QueueConnectionFactory connFactory = (QueueConnectionFactory) ctx.lookup("QueueConnectionFactory");

        // create a queue connection
        this.queueConn = connFactory.createQueueConnection();

        // create a queue session
        this.queueSession = queueConn.createQueueSession(false, Session.AUTO_ACKNOWLEDGE);

        this.queueReceiver = queueSession.createReceiver(queue,selector);

    }
    
    public void run() {
    	try {
    		executor.submit(() -> {
    			queueConnStart();
    			msg = ReceiveMessage();
    		});
    	    System.out.println("attempt to shutdown executor");
    	    executor.shutdown();
    	    executor.awaitTermination(timeoutSecond, TimeUnit.SECONDS);
    	}
    	catch (InterruptedException e) {
    	    System.err.println("tasks interrupted");
    	}
    	finally {
    	    if (!executor.isTerminated()) {
    	        System.err.println("cancel non-finished tasks");
    	    }
    	    
    	    queueConnClose();
    	    
    	    executor.shutdownNow();
    	    System.out.println("shutdown finished");
    	}
    }
    
    private ActiveMQBytesMessage ReceiveMessage(){
        ActiveMQBytesMessage msg = null;
        try{
            msg = (ActiveMQBytesMessage) queueReceiver.receive();
            return msg;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return msg;
    }
    
    private void queueConnStart() {
        try {
            queueConn.start();
        }catch(JMSException ex){
            ex.printStackTrace();
        }
    }
    
    private void queueConnClose() {
        try {
            queueConn.close();
        }catch(JMSException ex){
            ex.printStackTrace();
        }
    }
    
	public String getTopic() {
		return topic;
	}
	
	public void setTopic(String topic) {
		this.topic = topic;
	}
	
	public String getSelector() {
		return selector;
	}
	
	public void setSelector(String selector) {
		this.selector = selector;
	}
	
	public ActiveMQBytesMessage getMsg() {
		return msg;
	}    
    
}
