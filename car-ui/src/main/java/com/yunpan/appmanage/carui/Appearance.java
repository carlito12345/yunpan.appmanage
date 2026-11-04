package com.yunpan.appmanage.carui;

import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;

/** Surface appearance only. Wallpaper pixels and foreground opacity are independent. */
final class Appearance {
    static final String[] STYLES={"主题默认","纯色包边","多彩渐变","流光飞舞"};
    static final String[] NAMES={"冰蓝","霓虹紫","暖金","薄荷","樱粉","银白"};
    static final int[] COLORS={0xFF65E4FF,0xFFAA8AFF,0xFFFFC466,0xFF80EDB2,0xFFFF88B8,0xFFE9F2FF};
    static final class Config {
        int transparency,style,color;
        Config copy(){Config c=new Config();c.transparency=transparency;c.style=style;c.color=color;return c;}
    }
    static Config load(Context c){android.content.SharedPreferences p=c.getSharedPreferences("car_ui_v1",0);Config a=new Config();a.transparency=Wallpapers.clamp(p.getInt("transparency",0),100);a.style=Wallpapers.clamp(p.getInt("borderStyle",0),3);a.color=Wallpapers.clamp(p.getInt("borderColor",0),5);return a;}
    static void save(Context c,Config a){c.getSharedPreferences("car_ui_v1",0).edit().putInt("transparency",Wallpapers.clamp(a.transparency,100)).putInt("borderStyle",Wallpapers.clamp(a.style,3)).putInt("borderColor",Wallpapers.clamp(a.color,5)).apply();}
    static int alpha(int alpha,Config a){return Math.round(alpha*(100-Wallpapers.clamp(a.transparency,100))/100f);}
    static int color(int color,Config a){return (alpha(Color.alpha(color),a)<<24)|(color&0xFFFFFF);}
    static GradientDrawable background(Context c,int color,float radius,Config config){return new Edge(c,color,radius,config);}
    static final class Edge extends GradientDrawable {
        final Config config;final Paint paint=new Paint(3);final Path path=new Path();final PathMeasure measure=new PathMeasure();final Matrix matrix=new Matrix();final float[] point=new float[2];
        final float radius,line;final boolean olderAnimationsAllowed;Shader shader;int ownAlpha=255;
        // Constant-speed decoration; it never changes layout or moves readable content.
        static final long PERIOD=8000,FRAME=33;
        final Runnable tick=new Runnable(){@Override public void run(){if(isVisible()&&getCallback()!=null)invalidateSelf();}};
        Edge(Context c,int color,float radius,Config config){this.config=config.copy();boolean enabled=true;if(Build.VERSION.SDK_INT<26)try{enabled=android.provider.Settings.Global.getFloat(c.getContentResolver(),android.provider.Settings.Global.ANIMATOR_DURATION_SCALE,1)>0;}catch(RuntimeException ignored){}olderAnimationsAllowed=enabled;this.radius=CarUi.dp(c,radius);line=Math.max(1,CarUi.dp(c,2));setColor(Appearance.color(color,config));setCornerRadius(this.radius);}
        @Override protected void onBoundsChange(Rect b){super.onBoundsChange(b);RectF r=new RectF(b);r.inset(line*1.5f,line*1.5f);path.reset();path.addRoundRect(r,Math.max(0,radius-line),Math.max(0,radius-line),Path.Direction.CW);measure.setPath(path,true);int i=config.color;shader=new SweepGradient(b.exactCenterX(),b.exactCenterY(),new int[]{COLORS[i],COLORS[(i+1)%6],COLORS[(i+3)%6],COLORS[i]},null);}
        boolean animated(){return config.style==3&&(Build.VERSION.SDK_INT<26?olderAnimationsAllowed:android.animation.ValueAnimator.areAnimatorsEnabled());}
        @Override public void draw(Canvas c){super.draw(c);if(config.style==0)return;for(int state:getState())if(state==android.R.attr.state_focused||state==android.R.attr.state_pressed)return;drawEdge(c,animated()?SystemClock.uptimeMillis()%PERIOD/(float)PERIOD:0);if(animated()&&isVisible()&&getCallback()!=null){unscheduleSelf(tick);scheduleSelf(tick,SystemClock.uptimeMillis()+FRAME);}}
        void drawEdge(Canvas c,float phase){paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(line);paint.setAlpha(ownAlpha);if(config.style==1){paint.setShader(null);paint.setColor(COLORS[config.color]);paint.setAlpha(ownAlpha);}else{matrix.setRotate(phase*360,getBounds().exactCenterX(),getBounds().exactCenterY());if(shader!=null)shader.setLocalMatrix(matrix);paint.setShader(shader);}
            if(config.style==3){paint.setStrokeWidth(line*3);paint.setAlpha(Math.round(ownAlpha*.16f));c.drawPath(path,paint);paint.setStrokeWidth(line);paint.setAlpha(ownAlpha);}c.drawPath(path,paint);paint.setShader(null);
            if(config.style==3){paint.setStyle(Paint.Style.FILL);for(int i=0;i<2;i++){measure.getPosTan(((phase+i*.5f)%1)*measure.getLength(),point,null);paint.setColor(i==0?Color.WHITE:COLORS[config.color]);paint.setAlpha(ownAlpha);c.drawCircle(point[0],point[1],line*1.3f,paint);}}paint.setAlpha(255);
        }
        @Override public void setAlpha(int alpha){ownAlpha=alpha;super.setAlpha(alpha);}
        @Override public boolean setVisible(boolean visible,boolean restart){if(!visible)unscheduleSelf(tick);return super.setVisible(visible,restart);}
    }
}
