//Randolph
public class Operator {
  public static void main (String[] args){
    // + - * /
    // + +
    // - -
    int i = 0;

    // ++, -- precedence
    int x = 0;
    int result = x++;
    System.out.println(result);

    int p = 0;
    int result3 = p--;
    System.out.println("result3=" + result3); // result3 = 0
    System.out.println("p=" + p); // p=-1

    int q = 0;
    int result4 = --q;
    System.out.println("result4=" + result4); // result4 = -1
    System.out.println("q=" + q); // q=-1

    //%
    int r = 5 % 2;
    System.out.println(r);

    //&& ||
    boolean b = true && false;
    boolean b2 = true && false;
    boolean b3 = false && true;
    boolean b4 = false && false;
    System.out.println(b4);




  }
  
}
