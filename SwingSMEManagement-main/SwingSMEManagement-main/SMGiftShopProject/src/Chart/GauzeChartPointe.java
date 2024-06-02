/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Chart;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FontMetrics;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Rectangle2D;
import javax.swing.JComponent;
import javax.swing.JLabel;

public class GauzeChartPointe extends JComponent{
    private int gauzeSize = 15;
    private Color color1 = new Color(255, 78, 80);
    private Color color2 = new Color(89, 121, 152);
    private int value;
    private int maximum = 100;
    
    public GauzeChartPointe() {
        setFont(new JLabel().getFont().deriveFont(0, 20));
         setPreferredSize(new Dimension(200, 250));
         setForeground(new Color(60, 60, 60));
    }

    public int getGauzeSize() {
        return gauzeSize;
    }

    public void setGauzeSize(int gauzeSize) {
        this.gauzeSize = gauzeSize;
        repaint();
    }

    public Color getColor1() {
        return color1;
    }

    public void setColor1(Color color1) {
        this.color1 = color1;
        repaint();
    }

    public Color getColor2() {
        return color2;
    }

    public void setColor2(Color color2) {
        this.color2 = color2;
        repaint();
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        if (value < 0 ) {
            value=0;
        }
        this.value = value;
        repaint();
    }

    public int getMaximum() {
        return maximum;
    }

    public void setMaximum(int maximum) {
        this.maximum = maximum;
        repaint();
    }

    @Override
    public void paint(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        int width = getWidth();
        int height = getHeight();
        int size = Math.min(width, height)-(gauzeSize+5);
        int x = (width - size) / 2;
        int y = (height - size) / 2;
        int centerX = width / 2;
        int centerY = height / 2;
        int angleStart = -35;
        g2.setColor(new Color(240, 240, 240));
        g2.setStroke(new BasicStroke(gauzeSize, BasicStroke.CAP_ROUND, BasicStroke.JOIN_MITER));
        Shape s = new Arc2D.Double(x, y, size, size, angleStart, 250, Arc2D.OPEN);
        g2.draw(s);
       
        double angle=getAngleOfValue();
        if (angle>0) {
            s = new Arc2D.Double(x, y, size, size, angleStart+250-angle, angle, Arc2D.OPEN);
            GradientPaint gra = new GradientPaint(0, 0, color1, width, 0, color2);
            g2.setPaint(gra);
            g2.draw(s);
        }
        double angleSize=(size/2)-gauzeSize;
        drawText(g2, centerX, centerY, angleSize);
        super.paint(g); //To change body of generated methods, choose Tools | Templates.
    }
    
    private void drawText(Graphics2D g2, int x, int y, double size){
        g2.setColor(getForeground());
        double max=maximum;
        double v= getValueFixed();
        double n = v/max * 100f;
        double angle =n *250 / 100;
        String text = String.valueOf((int)n)+"%";
        FontMetrics ft = g2.getFontMetrics();
        Rectangle2D r2 = ft.getStringBounds(text, g2);
        g2.drawString(text, (int)(x-r2.getWidth()/2),(int) (y+size-r2.getHeight()/2));
    }
    private double getAngleOfValue() {
        double max = maximum;
        double v = getValueFixed();
        double n = v / max * 100f;
        double angle = n * 250 / 100;
        return angle;

    }

    private int getValueFixed() {
        return value > maximum ? maximum : value;
    }
    
    
    
    
}
