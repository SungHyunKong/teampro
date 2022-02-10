package com.ts.frontcontroller;

import java.util.HashMap;

import com.ts.controller.*;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
	
		mappings.put("/memberInsert.do", new MemberInsertController());
//		mappings.put("/memberRegister.do", new MemberRegisterController());
//		mappings.put("/memberContent.do", new MemberContentController());
//		mappings.put("/memberUpdate.do", new MemberUpdateController());
//		mappings.put("/memberDelete.do", new MemberDeleteController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
	
}
