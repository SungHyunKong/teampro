package frontController;

import java.util.HashMap;

import controller.Controller;
import controller.MemberInsertController;

public class HandlerMapping {

	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings= new HashMap<String, Controller>();
		mappings.put("/MemberInsert.do", new MemberInsertController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
