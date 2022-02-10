package frontController;

public class ViewResolver {
public static String makeView(String nextPage) {
	System.out.println(nextPage);
	return nextPage+".jsp";
}
}
