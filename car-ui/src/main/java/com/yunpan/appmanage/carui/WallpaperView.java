package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.SystemClock;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/** Six bounded Canvas patterns, or a silent platform video decoder. No WebView or network fetch. */
public final class WallpaperView extends FrameLayout implements TextureView.SurfaceTextureListener {
    private static final ArrayList<WeakReference<WallpaperView>> live=new ArrayList<WeakReference<WallpaperView>>();
    private final Activity owner;private final boolean preview;private final android.widget.ImageView staticImage;private int staticSelection=-1;private String staticUri="";private final TextureView video;private final Particles particles;
    Wallpapers.Config config=new Wallpapers.Config();private MediaPlayer player;private Surface surface;private boolean attached,active=true,prepared,failed;private int position,videoWidth,videoHeight;
    public WallpaperView(Context c,boolean preview){super(c);this.preview=preview;owner=Wallpapers.owner(c);setTag(CarUi.OWN);setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);setClipChildren(true);staticImage=new android.widget.ImageView(c);staticImage.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);addView(staticImage,new LayoutParams(-1,-1));video=new TextureView(c);video.setSurfaceTextureListener(this);addView(video,new LayoutParams(-1,-1));particles=new Particles(c);addView(particles,new LayoutParams(-1,-1));live.add(new WeakReference<WallpaperView>(this));}
    public void configure(Wallpapers.Config next){boolean changed=!next.uri.equals(config.uri)||!next.mode.equals(config.mode);if(changed){release();position=0;failed=false;}config=next.copy();CarUi.Skin skin=CarUi.skin(getContext());setBackgroundColor(Wallpapers.BACKGROUNDS[config.background]);boolean showStatic=config.mode.equals("static")&&config.staticImage!=1;if(showStatic&&(staticSelection!=config.staticImage||!staticUri.equals(config.imageUri))){staticImage.setImageDrawable(Wallpapers.staticDrawable(getContext(),config.staticImage,config.imageUri));staticSelection=config.staticImage;staticUri=config.imageUri;staticCrop();}if(!showStatic){staticImage.setImageDrawable(null);staticSelection=-1;}staticImage.setVisibility(showStatic?VISIBLE:GONE);boolean useVideo=config.mode.equals("video")&&!config.uri.isEmpty()&&!failed;video.setVisibility(useVideo?VISIBLE:GONE);particles.setVisibility(config.mode.equals("particles")?VISIBLE:GONE);if(config.mode.equals("off"))setBackgroundColor(skin.background);particles.invalidate();sync();}
    boolean staticAvailable(){return config.staticImage==1||staticImage.getDrawable()!=null;}
    public static void activityState(Activity a,boolean active){for(int i=live.size()-1;i>=0;i--){WallpaperView v=live.get(i).get();if(v==null)live.remove(i);else if(v.owner==a){v.active=active;v.sync();}}}
    private boolean running(){return attached&&active&&getWindowVisibility()==VISIBLE&&isShown();}
    private void sync(){particles.removeCallbacks(particles.tick);if(running()&&config.mode.equals("particles")&&!config.still)particles.postDelayed(particles.tick,33);if(running()&&config.mode.equals("video")&&!failed){if(player==null&&video.isAvailable())open();else if(prepared&&player!=null)try{if(!config.still&&!player.isPlaying())player.start();else if(config.still&&player.isPlaying())player.pause();}catch(RuntimeException e){fail();}}else release();}
    @Override protected void onAttachedToWindow(){super.onAttachedToWindow();attached=true;sync();}
    @Override protected void onDetachedFromWindow(){attached=false;particles.removeCallbacks(particles.tick);release();super.onDetachedFromWindow();}
    @Override protected void onWindowVisibilityChanged(int visibility){super.onWindowVisibilityChanged(visibility);if(particles!=null)sync();}
    @Override protected void onVisibilityChanged(View v,int visibility){super.onVisibilityChanged(v,visibility);if(particles!=null)sync();}
    private void open(){if(config.uri.isEmpty()||!video.isAvailable())return;try{player=new MediaPlayer();surface=new Surface(video.getSurfaceTexture());player.setSurface(surface);player.setDataSource(getContext(),Uri.parse(config.uri));player.setVolume(0,0);player.setLooping(true);player.setOnPreparedListener(new MediaPlayer.OnPreparedListener(){@Override public void onPrepared(MediaPlayer p){if(p!=player)return;prepared=true;videoWidth=p.getVideoWidth();videoHeight=p.getVideoHeight();crop();if(position>0)p.seekTo(position);if(running()){p.start();}}});player.setOnInfoListener(new MediaPlayer.OnInfoListener(){@Override public boolean onInfo(MediaPlayer p,int what,int extra){if(what==MediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START&&config.still&&p==player)p.pause();return false;}});player.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener(){@Override public void onVideoSizeChanged(MediaPlayer p,int w,int h){videoWidth=w;videoHeight=h;crop();}});player.setOnErrorListener(new MediaPlayer.OnErrorListener(){@Override public boolean onError(MediaPlayer p,int what,int extra){if(p==player)fail();return true;}});player.prepareAsync();}catch(Exception e){fail();}}
    private void fail(){failed=true;release();CarUi.message(getContext(),"视频无法播放，已暂用纯色背景；请重新选择本地视频");video.setVisibility(GONE);setBackgroundColor(Wallpapers.BACKGROUNDS[config.background]);}
    private void release(){if(player!=null){try{if(prepared)position=player.getCurrentPosition();}catch(RuntimeException ignored){}MediaPlayer old=player;player=null;prepared=false;old.setOnPreparedListener(null);old.setOnErrorListener(null);old.release();}if(surface!=null){surface.release();surface=null;}}
    @Override protected void onSizeChanged(int w,int h,int oldw,int oldh){super.onSizeChanged(w,h,oldw,oldh);staticCrop();}
    private void staticCrop(){android.graphics.drawable.Drawable image=staticImage.getDrawable();if(image==null||getWidth()==0||getHeight()==0)return;if(config.staticImage!=0){staticImage.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);return;}float iw=image.getIntrinsicWidth(),ih=image.getIntrinsicHeight();if(iw<=0||ih<=0)return;float scale=Math.max(getWidth()/iw,getHeight()/ih);Matrix m=new Matrix();m.setScale(scale,scale);m.postTranslate(Math.max(getWidth()-iw*scale,Math.min(0,getWidth()*.7f-iw*.7f*scale)),Math.max(getHeight()-ih*scale,Math.min(0,getHeight()*.25f-ih*.25f*scale)));staticImage.setScaleType(android.widget.ImageView.ScaleType.MATRIX);staticImage.setImageMatrix(m);}
    private void crop(){if(videoWidth<=0||videoHeight<=0||video.getWidth()==0||video.getHeight()==0)return;float scale=Math.max(video.getWidth()/(float)videoWidth,video.getHeight()/(float)videoHeight);Matrix transform=new Matrix();transform.setScale(videoWidth*scale/video.getWidth(),videoHeight*scale/video.getHeight(),video.getWidth()/2f,video.getHeight()/2f);video.setTransform(transform);}
    @Override public void onSurfaceTextureAvailable(SurfaceTexture s,int w,int h){sync();}
    @Override public void onSurfaceTextureSizeChanged(SurfaceTexture s,int w,int h){crop();}
    @Override public boolean onSurfaceTextureDestroyed(SurfaceTexture s){release();return true;}
    @Override public void onSurfaceTextureUpdated(SurfaceTexture s){}
    private final class Particles extends View {
        final Paint paint=new Paint(3);final float[] xs=new float[110],ys=new float[110];final long epoch=SystemClock.uptimeMillis();
        final Runnable tick=new Runnable(){@Override public void run(){if(running()&&config.mode.equals("particles")&&!config.still){invalidate();postDelayed(this,33);}}};
        Particles(Context c){super(c);java.util.Random random=new java.util.Random(947);for(int i=0;i<110;i++){xs[i]=random.nextFloat();ys[i]=random.nextFloat();}}
        @Override protected void onDraw(Canvas canvas){super.onDraw(canvas);drawPattern(canvas,getWidth(),getHeight(),config,config.still?0:(SystemClock.uptimeMillis()-epoch)/1000f,xs,ys,paint);}
    }
    static void drawPattern(Canvas canvas,int w,int h,Wallpapers.Config c,float seconds,float[] xs,float[] ys,Paint paint){
        canvas.drawColor(Wallpapers.BACKGROUNDS[c.background]);int count=24+c.density*80/100;float time=seconds*(.2f+c.speed*.016f);int color=Wallpapers.COLORS[c.color];paint.setStrokeWidth(Math.max(1,w/900f));paint.setStyle(Paint.Style.FILL);
        for(int i=0;i<count;i++){float x=(xs[i]+time*(c.style==3?.002f:.009f))%1f,y=(ys[i]+time*(c.style==3?.022f:.005f))%1f;
            if(c.style==2){x=xs[i];y=.5f+(float)Math.sin(x*8+time*.4f+i*.23f)*(.12f+ys[i]*.3f);}
            if(c.style==4){float angle=xs[i]*6.283f+time*(.10f+ys[i]*.06f),radius=.12f+ys[i]*.35f;x=.5f+(float)Math.cos(angle)*radius;y=.5f+(float)Math.sin(angle)*radius*w/Math.max(1,h);}
            if(c.style==5){x=(xs[i]+time*.045f)%1f;y=(ys[i]+time*.065f)%1f;}
            paint.setColor(color);paint.setAlpha(90+(i*37)%166);float radius=(1.2f+(i%4)*.8f)*Math.max(1,w/720f);canvas.drawCircle(x*w,y*h,radius,paint);if(c.style==3){canvas.drawLine(x*w-radius*2,y*h,x*w+radius*2,y*h,paint);canvas.drawLine(x*w,y*h-radius*2,x*w,y*h+radius*2,paint);}
            if(c.style==5){paint.setAlpha(65);canvas.drawLine(x*w,y*h,x*w-radius*18,y*h-radius*25,paint);}
            if(c.style==1)for(int j=i+1;j<Math.min(count,i+7);j++){float bx=(xs[j]+time*.009f)%1f,by=(ys[j]+time*.005f)%1f,dx=(x-bx)*w,dy=(y-by)*h;if(dx*dx+dy*dy<w*w*.016f){paint.setAlpha(40);canvas.drawLine(x*w,y*h,bx*w,by*h,paint);}}
        }paint.setAlpha(255);
    }
}
