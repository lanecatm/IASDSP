package cn.edu.sjtu.iasdsp.activemq;



public class mqtestSenderSimple {
	public static void main(String[] args) throws Exception {
		MQMessageSenderSimple.SendMessage("run_case", "Test message content", "131");
	}
}
