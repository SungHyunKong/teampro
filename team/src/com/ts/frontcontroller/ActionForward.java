package com.ts.frontcontroller;

public class ActionForward {

	private String path;
	private boolean isRedirect;
	public void setPath(String path) {
		this.path=path;
		
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect=isRedirect; 
		
	}

	public boolean isRedirect() {
		
		return isRedirect;
	}

	public String getPath() {
		// TODO Auto-generated method stub
		return path;
	}

}
