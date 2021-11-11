package bai_4_oop.thuchanh;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Nhập chiều dài ");
        double witdh = input.nextDouble();
        System.out.println("Nhập chiều cao ");
        double height = input.nextDouble();
        ClassRectangular classRectangular = new ClassRectangular(witdh, height);
        System.out.println("Hình chữ nhật : \n" + classRectangular.disPlay());
        System.out.println("Chu vi của hình chữ nhật : " + classRectangular.getPerimeter());
        System.out.println("Diện tích của hình chữ nhật : " + classRectangular.getArea());

    }
}
