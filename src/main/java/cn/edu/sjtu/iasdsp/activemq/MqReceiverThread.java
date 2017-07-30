package cn.edu.sjtu.iasdsp.activemq;

import org.apache.activemq.command.ActiveMQBytesMessage;

public class MqReceiverThread {
	public static String receiveOneMessage(String processId) throws Exception {
		MQMessageReceiverThread messageReceiverThread = new MQMessageReceiverThread("run_case","process_id = '" + processId + "'",1);
		messageReceiverThread.start();
		messageReceiverThread.join(2000);
		ActiveMQBytesMessage msg = messageReceiverThread.getMsg();

		if (msg != null) {
			//Convert to string and print it out
			byte[] byteArr = new byte[(int)msg.getBodyLength()];
			msg.readBytes(byteArr); 
			String str = new String(byteArr, "UTF-8");  
			return str;
		} else {
			return null;
		}
  	}
	
	public static String receiveProcessId(String processId) throws Exception {
		MQMessageReceiverThread messageReceiverThread = new MQMessageReceiverThread("INFO","process_id = '" + processId + "'",1);
		messageReceiverThread.start();
		messageReceiverThread.join(2000);
		ActiveMQBytesMessage msg = messageReceiverThread.getMsg();

		if (msg != null) {
			//Convert to string and print it out
			byte[] byteArr = new byte[(int)msg.getBodyLength()];
			msg.readBytes(byteArr); 
			String str = new String(byteArr, "UTF-8");  
			return str;
		} else {
			return null;
		}
  	}
	
	
	public static String receiveResult(String processId) throws Exception {
		MQMessageReceiverThread messageReceiverThread = new MQMessageReceiverThread("RESULT","process_id = '" + processId + "'",1);
		messageReceiverThread.start();
		messageReceiverThread.join(1000);
		ActiveMQBytesMessage msg = messageReceiverThread.getMsg();

		if (msg != null) {
			//Convert to string and print it out
			byte[] byteArr = new byte[(int)msg.getBodyLength()];
			msg.readBytes(byteArr); 
			String str = new String(byteArr, "UTF-8");  
			return str;
		} else {
			return null;
		}
  	}
}
