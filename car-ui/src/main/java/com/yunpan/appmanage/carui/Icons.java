package com.yunpan.appmanage.carui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/** One authored 24-unit line icon family, used by navigation and shortcuts. */
public final class Icons extends Drawable {
    private final String name;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    public Icons(String name, int color) { this.name = name; paint.setColor(color); paint.setStrokeWidth(1.8f); paint.setStrokeCap(Paint.Cap.ROUND); paint.setStrokeJoin(Paint.Join.ROUND); paint.setStyle(Paint.Style.STROKE); }
    private void line(Canvas c, float... points) {
        Path p = new Path(); p.moveTo(points[0], points[1]);
        for (int i = 2; i < points.length; i += 2) p.lineTo(points[i], points[i+1]);
        c.drawPath(p, paint);
    }
    private void box(Canvas c, float x, float y, float w, float h, float radius) { c.drawRoundRect(new RectF(x,y,x+w,y+h),radius,radius,paint); }
    @Override public void draw(Canvas canvas) {
        int save = canvas.save(); canvas.translate(getBounds().left,getBounds().top);
        canvas.scale(getBounds().width()/24f,getBounds().height()/24f);
        if ("add".equals(name)) { line(canvas,12,5,12,19); line(canvas,5,12,19,12); }
        else if ("close".equals(name)) { line(canvas,6,6,18,18); line(canvas,18,6,6,18); }
        else if ("edit".equals(name)) { line(canvas,5,16,16,5,19,8,8,19,4,20,5,16); line(canvas,14,7,17,10); }
        else if ("home".equals(name)) { line(canvas,3,10,12,3,21,10); line(canvas,5,9,5,21,10,21,10,14,14,14,14,21,19,21,19,9); }
        else if ("apps".equals(name) || "tools".equals(name)) { box(canvas,3,3,7,7,2); box(canvas,14,3,7,7,2); box(canvas,3,14,7,7,2); box(canvas,14,14,7,7,2); }
        else if ("files".equals(name)) { line(canvas,3,7,3,20,21,20,21,7,12,7,9,4,3,4,3,7); line(canvas,3,10,21,10); }
        else if ("network".equals(name)) { canvas.drawCircle(12,12,9,paint); canvas.drawOval(new RectF(8,3,16,21),paint); line(canvas,3,12,21,12); }
        else if ("settings".equals(name)) { line(canvas,4,6,20,6); line(canvas,4,12,20,12); line(canvas,4,18,20,18); box(canvas,7,3,3,6,1); box(canvas,14,9,3,6,1); box(canvas,8,15,3,6,1); }
        else if ("download".equals(name)) { line(canvas,12,3,12,15); line(canvas,7,10,12,15,17,10); line(canvas,4,16,4,21,20,21,20,16); }
        else if ("memory".equals(name)) { box(canvas,6,6,12,12,3); box(canvas,9,9,6,6,1); for(int i=8;i<=16;i+=4) { line(canvas,i,3,i,6); line(canvas,i,18,i,21); line(canvas,3,i,6,i); line(canvas,18,i,21,i); } }
        else if ("automation".equals(name)) { line(canvas,13,2,5,14,11,14,10,22,19,9,13,9,13,2); }
        else if ("moon".equals(name)) { Path p = new Path(); p.moveTo(20,15); p.cubicTo(11,18,6,11,9,3); p.cubicTo(-2,7,3,25,15,21); p.cubicTo(18,20,19,18,20,15); canvas.drawPath(p,paint); }
        else if ("sun".equals(name)) { canvas.drawCircle(12,12,4,paint); for(int i=0;i<8;i++){double a=i*Math.PI/4;line(canvas,12+(float)Math.cos(a)*8,12+(float)Math.sin(a)*8,12+(float)Math.cos(a)*10,12+(float)Math.sin(a)*10);} }
        else if ("search".equals(name)) { canvas.drawCircle(10.5f,10.5f,6.5f,paint); line(canvas,15.5f,15.5f,21,21); }
        else if ("refresh".equals(name)) { canvas.drawArc(new RectF(4,4,20,20),-35,290,false,paint);line(canvas,20,3,20,9,14,9); }
        else if ("heart".equals(name)) { Path p=new Path();p.moveTo(12,21);p.cubicTo(8,17,2,13,3,7);p.cubicTo(4,2,10,2,12,7);p.cubicTo(14,2,20,2,21,7);p.cubicTo(22,13,16,17,12,21);canvas.drawPath(p,paint); }
        else if ("lock".equals(name)) {box(canvas,5,10,14,11,2);canvas.drawArc(new RectF(8,3,16,16),180,180,false,paint);line(canvas,12,14,12,17);}
        else if ("up".equals(name)) { line(canvas,5,14,12,7,19,14); }
        else if ("down".equals(name)) { line(canvas,5,10,12,17,19,10); }
        else if ("back".equals(name)) { line(canvas,14,5,7,12,14,19); }
        else if ("arrow".equals(name)) { line(canvas,5,12,19,12,13,6); line(canvas,19,12,13,18); }
        else if ("drag".equals(name)) { for(int x=9;x<=15;x+=6) for(int y=6;y<=18;y+=6) canvas.drawCircle(x,y,.7f,paint); }
        else { line(canvas,9,15,15,9); Path a=new Path();a.moveTo(8,11);a.lineTo(5,14);a.cubicTo(0,19,5,24,10,19);a.lineTo(13,16);canvas.drawPath(a,paint);Path b=new Path();b.moveTo(11,8);b.lineTo(14,5);b.cubicTo(19,0,24,5,19,10);b.lineTo(16,13);canvas.drawPath(b,paint); }
        canvas.restoreToCount(save);
    }
    @Override public void setAlpha(int alpha) { paint.setAlpha(alpha); invalidateSelf(); }
    @Override public void setColorFilter(ColorFilter filter) { paint.setColorFilter(filter); invalidateSelf(); }
    @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
    @Override public int getIntrinsicWidth(){return 24;}
    @Override public int getIntrinsicHeight(){return 24;}
}
