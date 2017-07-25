package cn.edu.sjtu.iasdsp.activemq;



import java.util.Properties;

import javax.jms.BytesMessage;
import javax.jms.DeliveryMode;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueSender;
import javax.jms.QueueSession;
import javax.jms.Session;
import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.activemq.command.ActiveMQBytesMessage;
import org.apache.activemq.util.ByteSequence;

public class MQMessageSenderSimple {
	public static void SendMessage(String topic, String message,String ProcessID)throws Exception{
		
	    Properties env = new Properties();
	    env.put(Context.INITIAL_CONTEXT_FACTORY,
	            "org.apache.activemq.jndi.ActiveMQInitialContextFactory");
	    env.put(Context.PROVIDER_URL, "tcp://192.168.1.31:61616");
	    env.put(Context.PROVIDER_URL,"tcp://localhost:61616");
	
	    env.put("queue.queueSampleQueue", topic);
	
	    InitialContext ctx = new InitialContext(env);
	
	    // lookup the queue object
	    Queue queue = (Queue) ctx.lookup("queueSampleQueue");
	    // lookup the queue connection factory
	    QueueConnectionFactory connFactory = (QueueConnectionFactory) ctx.lookup("QueueConnectionFactory");
	    // create a queue connection
	    QueueConnection queueConn = connFactory.createQueueConnection();
	
	    // create a queue session
	    QueueSession queueSession = queueConn.createQueueSession(false, Session.DUPS_OK_ACKNOWLEDGE);
	
	    // create a queue sender
	    QueueSender queueSender = queueSession.createSender(queue);
	    queueSender.setDeliveryMode(DeliveryMode.NON_PERSISTENT);
	
	    BytesMessage msg = queueSession.createBytesMessage();
	    ActiveMQBytesMessage bytesMessage = (ActiveMQBytesMessage) msg;
	
	    ByteSequence ms = new ByteSequence(message.getBytes());
	    bytesMessage.setContent(ms);
	    String text = new String(bytesMessage.getContent().getData());
	    System.out.println("sent: " + text);
	    bytesMessage.setProperty("process_id", ProcessID);
	    queueSender.send(bytesMessage);	
	    System.out.println("text"+bytesMessage);	
	    queueConn.close();
	}
}
