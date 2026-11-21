package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.SystemClock;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/** Six bounded Canvas patterns, or a silent platform video decoder. No WebView or network fetch. */
public final class WallpaperView extends FrameLayout implements TextureView.SurfaceTextureListener {
    private static final ArrayList<WeakReference<WallpaperView>> live=new ArrayList<WeakReference<WallpaperView>>();
    private final Activity owner;private final boolean preview;private final android.widget.ImageView staticImage;private int staticSelection=-1;private String staticUri="";private final TextureView video;private final Particles particles;
    private final WeakHashMap<View, Boolean> glassTargets = new WeakHashMap<>();
    GlassMaterial.Samples glassPhoto;
    private final ViewTreeObserver.OnScrollChangedListener alignGlass = () -> {
        if (glassPhoto != null) invalidateGlass();
    };
    Wallpapers.Config config=new Wallpapers.Config();private MediaPlayer player;private Surface surface;private boolean attached,active,prepared,failed;private int position,videoWidth,videoHeight;
    public WallpaperView(Context c,boolean preview){super(c);this.preview=preview;owner=Wallpapers.owner(c);active=CarUi.isForeground(owner);setTag(CarUi.OWN);setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);setClipChildren(true);staticImage=new android.widget.ImageView(c);staticImage.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);addView(staticImage,new LayoutParams(-1,-1));video=new TextureView(c);video.setSurfaceTextureListener(this);addView(video,new LayoutParams(-1,-1));particles=new Particles(c);addView(particles,new LayoutParams(-1,-1));live.add(new WeakReference<WallpaperView>(this));}
    public void configure(Wallpapers.Config next) {
        boolean changed = !next.uri.equals(config.uri) || !next.mode.equals(config.mode);
        if (changed) {
            release();
            position = 0;
            failed = false;
        }
        config = next.copy();
        CarUi.Skin skin = CarUi.skin(getContext());
        boolean off = config.mode.equals("off");
        boolean themePhoto = off && skin.glass != null;
        boolean showStatic = themePhoto || config.mode.equals("static") && config.staticImage != 1;
        int selection = themePhoto ? -2 : config.staticImage;
        if (showStatic && (staticSelection != selection || !staticUri.equals(config.imageUri))) {
            Drawable image = themePhoto ? GlassMaterial.wallpaper(getContext())
                    : Wallpapers.staticDrawable(getContext(), config.staticImage, config.imageUri);
            staticImage.setImageDrawable(image);
            staticSelection = selection;
            staticUri = config.imageUri;
            staticCrop();
        }
        if (!showStatic) {
            staticImage.setImageDrawable(null);
            staticSelection = -1;
        }
        glassPhoto = skin.glass == null || preview ? null : GlassMaterial.sample(staticImage.getDrawable());
        setBackgroundColor(off ? skin.background : Wallpapers.BACKGROUNDS[config.background]);
        staticImage.setVisibility(showStatic ? VISIBLE : GONE);
        video.setVisibility(config.mode.equals("video") && !config.uri.isEmpty() && !failed ? VISIBLE : GONE);
        particles.setVisibility(config.mode.equals("particles") ? VISIBLE : GONE);
        sync();
    }
    boolean staticAvailable(){return config.staticImage==1||staticImage.getDrawable()!=null;}
    public static void activityState(Activity a,boolean active){for(int i=live.size()-1;i>=0;i--){WallpaperView v=live.get(i).get();if(v==null)live.remove(i);else if(v.owner==a){v.active=active;v.sync();}}}
    private boolean running(){return attached&&active&&getWindowVisibility()==VISIBLE&&isShown();}
    private void sync(){particles.sync();if(running()&&config.mode.equals("video")&&!failed){if(player==null&&video.isAvailable())open();else if(prepared&&player!=null)try{if(!config.still&&!player.isPlaying())player.start();else if(config.still&&player.isPlaying())player.pause();}catch(RuntimeException e){fail();}}else release();}
    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!preview) getViewTreeObserver().addOnScrollChangedListener(alignGlass);
        attached = true;
        sync();
    }
    @Override protected void onDetachedFromWindow() {
        attached = false;
        if (!preview) getViewTreeObserver().removeOnScrollChangedListener(alignGlass);
        particles.stop();
        release();
        super.onDetachedFromWindow();
    }
    @Override protected void onWindowVisibilityChanged(int visibility){super.onWindowVisibilityChanged(visibility);if(particles!=null)sync();}
    @Override protected void onVisibilityChanged(View v,int visibility){super.onVisibilityChanged(v,visibility);if(particles!=null)sync();}
    private void open(){if(config.uri.isEmpty()||!video.isAvailable())return;try{player=new MediaPlayer();surface=new Surface(video.getSurfaceTexture());player.setSurface(surface);player.setDataSource(getContext(),Uri.parse(config.uri));player.setVolume(0,0);player.setLooping(true);player.setOnPreparedListener(new MediaPlayer.OnPreparedListener(){@Override public void onPrepared(MediaPlayer p){if(p!=player)return;prepared=true;videoWidth=p.getVideoWidth();videoHeight=p.getVideoHeight();crop();if(position>0)p.seekTo(position);if(running()){p.start();}}});player.setOnInfoListener(new MediaPlayer.OnInfoListener(){@Override public boolean onInfo(MediaPlayer p,int what,int extra){if(what==MediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START&&config.still&&p==player)p.pause();return false;}});player.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener(){@Override public void onVideoSizeChanged(MediaPlayer p,int w,int h){videoWidth=w;videoHeight=h;crop();}});player.setOnErrorListener(new MediaPlayer.OnErrorListener(){@Override public boolean onError(MediaPlayer p,int what,int extra){if(p==player)fail();return true;}});player.prepareAsync();}catch(Exception e){fail();}}
    private void fail(){failed=true;release();CarUi.message(getContext(),"视频无法播放，已暂用纯色背景；请重新选择本地视频");video.setVisibility(GONE);setBackgroundColor(Wallpapers.BACKGROUNDS[config.background]);}
    private void release(){if(player!=null){try{if(prepared)position=player.getCurrentPosition();}catch(RuntimeException ignored){}MediaPlayer old=player;player=null;prepared=false;old.setOnPreparedListener(null);old.setOnErrorListener(null);old.release();}if(surface!=null){surface.release();surface=null;}}
    @Override protected void onSizeChanged(int w,int h,int oldw,int oldh){super.onSizeChanged(w,h,oldw,oldh);staticCrop();}
    private void staticCrop(){Drawable image=staticImage.getDrawable();if(image==null||getWidth()==0||getHeight()==0)return;if(staticSelection!=0){staticImage.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);return;}float iw=image.getIntrinsicWidth(),ih=image.getIntrinsicHeight();if(iw<=0||ih<=0)return;RectF cover=new RectF();coverPhoto(iw,ih,cover);Matrix m=new Matrix();m.setScale(cover.width()/iw,cover.height()/ih);m.postTranslate(cover.left,cover.top);staticImage.setScaleType(android.widget.ImageView.ScaleType.MATRIX);staticImage.setImageMatrix(m);}
    void photoBounds(Bitmap sample, RectF result) {
        Drawable image = staticImage.getDrawable();
        if (image != null && image.getIntrinsicWidth() > 0 && image.getIntrinsicHeight() > 0) {
            coverPhoto(image.getIntrinsicWidth(), image.getIntrinsicHeight(), result);
        } else coverPhoto(sample.getWidth(), sample.getHeight(), result);
    }

    private void coverPhoto(float width, float height, RectF result) {
        float scale = Math.max(getWidth() / width, getHeight() / height);
        float coveredWidth = width * scale, coveredHeight = height * scale;
        float left = (getWidth() - coveredWidth) * (staticSelection == 0 ? .7f : .5f);
        float top = (getHeight() - coveredHeight) * (staticSelection == 0 ? .25f : .5f);
        result.set(left, top, left + coveredWidth, top + coveredHeight);
    }

    void sampledBy(View target) { glassTargets.put(target, Boolean.TRUE); }

    void invalidateGlass() {
        for (View view : glassTargets.keySet()) if (view.isShown()) view.invalidate();
    }
    private void crop(){if(videoWidth<=0||videoHeight<=0||video.getWidth()==0||video.getHeight()==0)return;float scale=Math.max(video.getWidth()/(float)videoWidth,video.getHeight()/(float)videoHeight);Matrix transform=new Matrix();transform.setScale(videoWidth*scale/video.getWidth(),videoHeight*scale/video.getHeight(),video.getWidth()/2f,video.getHeight()/2f);video.setTransform(transform);}
    @Override public void onSurfaceTextureAvailable(SurfaceTexture s,int w,int h){sync();}
    @Override public void onSurfaceTextureSizeChanged(SurfaceTexture s,int w,int h){crop();}
    @Override public boolean onSurfaceTextureDestroyed(SurfaceTexture s){release();return true;}
    @Override public void onSurfaceTextureUpdated(SurfaceTexture s){}
    private final class Particles extends View {
        final ParticleScene scene = new ParticleScene();
        private long lastFrame;
        private boolean scheduled;

        final Runnable tick = new Runnable() {
            @Override public void run() {
                if (!canMove()) {
                    scheduled = false;
                    return;
                }
                long now = SystemClock.uptimeMillis();
                scene.advance(config, Math.min(66, now - lastFrame) / 1000f);
                lastFrame = now;
                invalidate();
                postOnAnimationDelayed(this, 16);
            }
        };

        Particles(Context context) { super(context); }

        boolean canMove() {
            return running() && config.mode.equals("particles") && !config.still && CarMotion.enabled(getContext());
        }

        void sync() {
            scene.configure(config);
            if (canMove()) {
                if (!scheduled) {
                    scheduled = true;
                    lastFrame = SystemClock.uptimeMillis();
                    postOnAnimation(tick);
                }
            } else stop();
            invalidate();
        }

        void stop() {
            removeCallbacks(tick);
            scheduled = false;
        }

        @Override protected void onDraw(Canvas canvas) {
            scene.draw(canvas, getWidth(), getHeight(), config);
        }
    }
}
