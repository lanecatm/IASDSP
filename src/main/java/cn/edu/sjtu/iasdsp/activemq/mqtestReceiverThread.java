package cn.edu.sjtu.iasdsp.activemq;

import org.apache.activemq.command.ActiveMQBytesMessage;

public class mqtestReceiverThread {
	public static void main(String[] args) throws Exception {
		MQMessageReceiverThread messageReceiverThread = new MQMessageReceiverThread("run_case","process_id = '131'",5);
		messageReceiverThread.start();
		messageReceiverThread.join(6000);
		ActiveMQBytesMessage msg = messageReceiverThread.getMsg();

		if (msg != null) {
			//Convert to string and print it out
			byte[] byteArr = new byte[(int)msg.getBodyLength()];
			msg.readBytes(byteArr); 
			String str = new String(byteArr, "UTF-8");  
			System.out.println("Received message: " + str);
		} else {
			System.out.println("Message is null");
		}
  	}
}
