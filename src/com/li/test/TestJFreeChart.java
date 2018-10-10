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
public class TestJFreeChart {
    public static void main(String[] args) throws IOException {
        DefaultPieDataset dataset = new DefaultPieDataset();
        dataset.setValue("添加简历&投递简历", 10);
        dataset.setValue("修改简历并回显", 8);
        dataset.setValue("登录注册", 2);
        dataset.setValue("简历、面试信息通知", 4);
        dataset.setValue("管理员查看简历并发送面试", 5);
        dataset.setValue("游客确认面试并管理员录用游客", 2);
        dataset.setValue("游客功能部分全部完成", 1);
        //创建饼图对象并设置属性（开启底部栏）
        JFreeChart jFreeChart = ChartFactory.createPieChart("项目进度饼图", dataset, true, false, false);
        //设置标题项为宋体，解决中文乱码
        jFreeChart.getTitle().setFont(new Font("宋体", Font.PLAIN, 30));
        //设置底部栏项为宋体，解决中文乱码
        LegendTitle lTitle = jFreeChart.getLegend();
        lTitle.setItemFont(new Font("宋体", Font.PLAIN, 20));
        //设置绘图区为宋体，解决中文乱码
        PiePlot plot = (PiePlot) jFreeChart.getPlot();
        plot.setLabelFont(new Font("宋体", Font.PLAIN, 20));
        //设置绘图区背景图
        plot.setBackgroundImage(ImageIO.read(new File("C:\\Users\\99234\\Desktop\\zzpic14287\\1.jpg")));
        jFreeChart.setBackgroundImage(ImageIO.read(new File("C:\\Users\\99234\\Desktop\\zzpic14287\\2.jpg")));
        //生成饼图到我的f盘
        ChartUtilities.saveChartAsJPEG(new File("f://pie.jpg"), jFreeChart, 800, 640);

    }
}
