package com.ts.frontcontroller;

public class ViewResolver {
	public static String makeView(String nextPage) {
		return "/dist/"+nextPage+".jsp";
	}
}
