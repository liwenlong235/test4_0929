package com.li.test;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.title.LegendTitle;
import org.jfree.data.general.DefaultPieDataset;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.File;
import java.io.IOException;

/**
 * Created by 99234 on 2018/10/9.
 */
public class TestJFreeChart2 {
    public static void main(String[] args) throws IOException {
        DefaultPieDataset dataset = new DefaultPieDataset();
        dataset.setValue("添加简历&投递简历",10);
        dataset.setValue("修改简历并回显",8);
        dataset.setValue("登陆注册",2);
        dataset.setValue("简历、面试信息通知",4);
        dataset.setValue("管理员查看简历并发送面试",5);
        dataset.setValue("游客确认面试并管理员录用游客",10);
        dataset.setValue("游客功能部分全部完成",1);
        JFreeChart jFreeChart = ChartFactory.createPieChart3D("项目进度饼图",dataset,true,false,false);
        jFreeChart.getTitle().setFont(new Font("楷体",Font.PLAIN,30));
        LegendTitle legendTitle = jFreeChart.getLegend();
        legendTitle.setItemFont(new Font("楷体",Font.PLAIN,20));
        PiePlot plot = (PiePlot) jFreeChart.getPlot();
        plot.setLabelFont(new Font("楷体",Font.PLAIN,20));
        plot.setBackgroundImage(ImageIO.read(new File("C:\\Users\\99234\\Desktop\\zzpic14287\\1.jpg")));
        jFreeChart.setBackgroundImage(ImageIO.read(new File("C:\\Users\\99234\\Desktop\\zzpic14287\\2.jpg")));
        ChartUtilities.saveChartAsJPEG(new File("F://pie1.jpg"),jFreeChart,800,640);

    }
}
