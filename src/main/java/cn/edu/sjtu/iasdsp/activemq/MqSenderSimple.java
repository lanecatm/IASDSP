package cn.edu.sjtu.iasdsp.activemq;

import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.databind.ObjectMapper;



public class MqSenderSimple {
	public static void run(int workflow_id, int algorithm, 
			String filepath, String param1, int process_id) throws Exception {
		Map<String, Object> taskData = new HashMap<>();
        taskData.put("workflow_id", workflow_id);
        taskData.put("algorithm", Integer.toString(algorithm));
        taskData.put("filepath", filepath);
        taskData.put("param1", param1);
        taskData.put("process_id", process_id);
        String s = toJson(taskData);
		MQMessageSenderSimple.SendMessage("run_case", s, Integer.toString(process_id));
	}
	
	public static String toJson(Object object) {
	    ObjectMapper mapper = new ObjectMapper();

        if(object == null) return "";
        try {
            return mapper.writeValueAsString(object);
        } catch (Exception e) {
            return "";
        }
    }
}
