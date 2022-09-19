~~~java
package at.htlhl.testuebung;  
  
  
public class Testuebungen {  
    private static void drawSimple(int hoehe) {  
        for (int i = 0; i <= hoehe; i++) {  
            for (int ii = 0; ii < i; ii++) {  
                System.out.print("* ");  
            }  
            System.out.println();  
        }  
    }  
  
    private static void drawMirrored(int hoehe) {  
        for (int i = 1; i <= hoehe; i++) {  
            for (int ii = hoehe; ii >= i; ii--) {  
                System.out.print("  ");  
            }  
            for (int j = 1; j <= i; j++) {  
                System.out.print(" *");  
            }  
            System.out.println();  
        }  
    }  
  
    private static void drawSymmetric(int hoehe) {  
        for (int i = 1; i <= hoehe; i++) {  
            for (int ii = hoehe; ii >= i; ii--) {  
                System.out.print("  ");  
            }  
            for (int j = 1; j <= i; j++) {  
                System.out.print(" *");  
            }  
            for (int jj = 2; jj <= i; jj++) {  
                System.out.print(" *");  
            }  
            System.out.println();  
        }  
    }  
  
    public static void main(String[] args) {  
        drawSimple(4);  
        System.out.println();  
        drawMirrored(4);  
        System.out.println();  
        drawSymmetric(4);  
    }  
}
~~~