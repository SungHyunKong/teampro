package com.ts.frontcontroller;

public class ViewResolver {
	public static String makeView(String nextPage) {
		return nextPage+".jsp";
	}
}
