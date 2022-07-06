package question;

public class question {
	public static double area(double s)
    {
        return s*s;
    }
    public static void area(double r)
    {
        System.out.println("Area of the circle is "+Math.PI*r*r);
    }
    public static void main(String args[]) {
        area(1);
    }

}
