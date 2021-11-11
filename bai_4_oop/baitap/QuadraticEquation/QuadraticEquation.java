package bai_4_oop.baitap.QuadraticEquation;

public class QuadraticEquation {// khai báo 1 lớp tên là QuadraticEquation
    double a, b, c;

    public QuadraticEquation(double a, double b, double c) {// Khai báo contructor tên là  QuadraticEquation để khởi tạo 3 đối tượm
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double getA() {
        return a;
    }

    public double getB() {
        return b;
    }

    public double getC() {
        return c;
    }
    double delta;
    public double getDiscriminant() {
        delta = (this.b * this.b - 4 * this.a * this.c);
        if (delta > 0) {
            System.out.println("nghiệm 1: "+getRoot1());
            System.out.println("nghiệm 2: "+getRoot2());
        } else if (delta == 0) {
            System.out.println("Nghiệm là : "+getRoot1());
        } else {
            System.out.println("Vô nghiệm");
        }
        return delta;
    }

    public double getRoot1() {
        return ((-this.b + Math.sqrt(delta)) / (2 * this.a));
    }

    public double getRoot2() {
        return ((-this.b - Math.sqrt(delta)) / (2 * this.a));
    }
}
