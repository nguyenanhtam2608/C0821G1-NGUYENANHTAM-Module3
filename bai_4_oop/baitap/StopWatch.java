package bai_4_oop.baitap;

import java.util.Arrays;
import java.util.Date;

public class StopWatch {
    Date stratTime, endTime;

    public StopWatch(Date stratTime, Date endTime) {
        this.stratTime = stratTime;
        this.endTime = endTime;
    }

    public Date getStratTime() {
        return stratTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public StopWatch() {
        this.stratTime = new Date();

    }

    public void start() {
        this.stratTime = new Date();
    }

    public void stop() {
        this.endTime = new Date();
    }
    public double getElapsedTime(){
        return this.endTime.getTime()-this.stratTime.getTime() ;
    }

    public static void main(String[] args) {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        double[] arr1 = new double[10000000];
        for(int i= 0; i<10000000; i++){
            arr1[i] = Math.random()*100 + 1;
        }
        System.out.println(Arrays.toString(arr1));
        stopWatch.stop();
        System.out.printf("Elapsed time: %.2f ms", stopWatch.getElapsedTime());
    }
}