package com.ts.frontcontroller;

import java.util.HashMap;

import com.ts.controller.*;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
	
		mappings.put("/memberInsert.do", new MemberInsertController());
		mappings.put("/Schedule.do", new ScheduleController());
		mappings.put("/worker.do", new WorkerController());
		mappings.put("/workertime.do", new WorkerTimeListController());
		mappings.put("/workerDelete.do", new WorkerDeleteController());
		mappings.put("/workerInsert.do", new WorkerInsertController());
		mappings.put("/workerUpdate.do", new WorkerUpdateController());
		mappings.put("/memberLogin.do", new MemberLoginController());
		mappings.put("/memberLogout.do", new MemberLogoutController());
		mappings.put("/memberJoinController.do", new MemberJoinController());
		mappings.put("/memberList.do", new MemberListController());
		mappings.put("/memberView.do", new MemberViewController());
		mappings.put("/memberDetail.do", new MemberDetailController());
		mappings.put("/memberDelete.do", new MemberDeleteController());
		mappings.put("/memberUpdate.do", new MemberUpdateController());
		mappings.put("/memberidcheck.do", new MemberIdCheckController());
		mappings.put("/boardList.do", new BoardListController());
		mappings.put("/boardAdd.do", new BoardAddController());
		mappings.put("/boardDetail.do", new BoardDetailController());
		mappings.put("/boardModifyView.do", new BoardModifyViewController());
		mappings.put("/boardModifyController.do", new BoardModifyController());
		mappings.put("/boardDeleteController.do", new BoardDeleteController());
		mappings.put("/boardReplyView.do", new BoardReplyViewController());
		mappings.put("/boardReply.do", new BoardReplyController());
		
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
	
}
