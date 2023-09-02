//Randolph
public class DataType {
  public static void main(String[] args) {

    // Assign value "Hello World!!!" to a variable box
    String box = "Hello World!!!";

    System.out.println(box); // Print the value of variable: Hello Wolrd!!!
    System.out.println("box"); // Print the String value: box

    String str; // Declaration 聲明
    box = "Welcome to Bootcamp";
    str = "abc ###&&&$$$"; // Assign value "abc" to a variable str
    System.out.println(str); // abc ###&&&$$$
    System.out.println(box); //Welcome to Bootcamp

    // Primitives (total 8 types, one kind of data type)
    // int x = "abc"; Type mismatch: cannot convert from String to int
    int x = 1;
    int salary = 1000;
    x = 10;
    System.out.println(x);

    //self + 1
    int j = 0;
    j = j + 1; // Approach 1
    j += 1; // Approach 2: same as j = j +1, "= j +" -> "+="
    j++; // Approach 3
    ++j; // Approach 4

    // String str = 1; // Not OK, Type mismatch: cannot convert from int to String
    String s = "hello";
    s = s + " world."; // String support + operation
    System.out.println(s);

    String str1 = "abc";
    String str2 = "xyz";
    String e = str1 + str2;
    System.out.println(e);
    System.out.println("e=" + str1 + str2);
    double d = 0.3;
    d = 3.1415;
    System.out.println(d);
    System.out.println(d+0.3-0.1*2);
    double d2 = 3;
    System.out.println(d2);

    //boolean, True OR False
    boolean a = true;
    System.out.println(a);
    boolean isLeft = false;
    System.out.println(isLeft);

    // char
    char t = 'a';
    // char i = ''; // at least 1 character
    // char t = 'ab' // Not ok, not more than 1 character
    char o = '$';
    System.out.println(o);

    //bytp
    byte b = 1; //within -128 to 127
    // byte b2 = -129 // out of range
    // byte b3 = 128  // out of range

    //float
    int i = 1; // 1 即是 interger
    double d4 = 3.0; // 3.0 即是 double
    double d5 = 3.0d; // Explicity assign a dublue value to a variable
    // float f = 3.0; // Not OK, assign a double value to a float variable 
    float f = 3.0f; 

    // byte, short, int, long -> all of them handle Integer
    byte b3 = 3;
    short s3 = 4;
    int i3 = 5; // default int value
    long l4 = 5; // (upcast), can ignore today
    long l3 = 5L; // Assign long value 5 to a long variable 





  }
}