package bai_4_oop.thuchanh;

public class ClassRectangular {
    double witdh, height;

    public ClassRectangular(double witdh, double height) {
        this.witdh = witdh;
        this.height = height;
    }

    public double getArea() {
        return this.witdh * this.height;
    }

    public double getPerimeter() {
        return (this.witdh + this.height) * 2;
    }

    public String disPlay() {
        return "Rectangle{" + "width=" + witdh + ", height=" + height + "}";
    }


}
