package bai_4_oop.baitap.QuadraticEquation;

import java.util.Scanner;

public class MainQuadraticEquation {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Nhương trình có dạng :  ax^2 + bx + c = 0");
        System.out.println("Nhập lần lược 3 số a,b,c");
        System.out.println("Nhập a");
        double a = input.nextDouble();
        System.out.println("Nhập b");
        double b = input.nextDouble();
        System.out.println("Nhập c");
        double c = input.nextDouble();
        QuadraticEquation quadraticEquation = new QuadraticEquation(a,b,c);//khởi tạo đối tượng  QuadraticEquation
        quadraticEquation.getDiscriminant();
    }
}
