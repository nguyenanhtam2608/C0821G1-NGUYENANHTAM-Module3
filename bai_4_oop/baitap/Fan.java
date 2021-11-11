package bai_4_oop.baitap;


public class Fan {
    public static final int SLOW = 1; // khai báo hằng cần phải có public static
    public static final int MEDIUM = 2;
    public static final int FAST = 3;
    private int speed = SLOW;// private tính bao đóng và ẩn dữ liệu bên ngoài vì các biến sau private chỉ truy cấ[j bên trong lớp;
    private boolean on = false;
    private double radius = 5;
    String color = "blue";

    public Fan() {// khởi tạo không tham số Contructor
    }


    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public boolean isOn() {
        return on;
    }

    public void setOn(boolean on) {
        this.on = on;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }


    public String toString() {
        String status = "";
        if (this.on) {
            status = "Tốc độ " + speed + " Color " + color + " Radius " + radius + " Fan is On";

        } else {
            status = "Color " + color + " Radius " + radius + " Fan is Off ";
        }
        return status;
    }


    public static void main(String[] args) {
        System.out.println("Các thông tin của Fan :");
        System.out.println("Fan1");
        Fan fan1 = new Fan();//gọi đối tượng thông qua từ khóa new (khoiwe tạo đối tượng thông qa từ khóa new)
        fan1.setSpeed(Fan.FAST);
        fan1.setRadius(10);
        fan1.setColor("yellow");
        fan1.setOn(true);
        System.out.println(fan1);
        System.out.println("Fan2");
        Fan fan2 = new Fan();
        fan2.setSpeed(MEDIUM);
        fan2.setRadius(5);
        fan2.setColor("Blue");
        fan2.setOn(false);
        System.out.println(fan2);


    }
}
