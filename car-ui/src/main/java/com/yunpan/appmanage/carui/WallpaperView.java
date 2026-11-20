package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.SystemClock;
import android.view.MotionEvent;
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
        particles.removeCallbacks(particles.tick);
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
    void pulse(float x, float y) {
        if (config.style != 1 || !particles.canMove()) return;
        particles.touchX = x;
        particles.touchY = y;
        particles.pulseAt = particles.elapsed;
        particles.invalidate();
    }

    @Override public boolean onTouchEvent(MotionEvent event) {
        if (!preview || !config.mode.equals("particles") || config.style != 1) return super.onTouchEvent(event);
        if (event.getActionMasked() == MotionEvent.ACTION_DOWN) pulse(event.getX(), event.getY());
        return true;
    }

    private final class Particles extends View {
        private static final int FRAME_MS = 33;
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        final float[] xs = new float[110], ys = new float[110];
        final Constellation stars = new Constellation();
        long elapsed, lastFrame, pulseAt = -1;
        float touchX, touchY;
        final Runnable tick = new Runnable() {
            @Override public void run() {
                if (!canMove()) {
                    invalidate();
                    return;
                }
                long now = SystemClock.uptimeMillis();
                elapsed += Math.min(FRAME_MS * 2, now - lastFrame);
                lastFrame = now;
                invalidate();
                postDelayed(this, FRAME_MS);
            }
        };

        Particles(Context context) {
            super(context);
            java.util.Random random = new java.util.Random(947);
            for (int i = 0; i < xs.length; i++) {
                xs[i] = random.nextFloat();
                ys[i] = random.nextFloat();
            }
        }

        boolean canMove() {
            return running() && config.mode.equals("particles") && !config.still && CarMotion.enabled(getContext());
        }

        void sync() {
            removeCallbacks(tick);
            pulseAt = -1;
            if (canMove()) {
                lastFrame = SystemClock.uptimeMillis();
                postDelayed(tick, FRAME_MS);
            }
            invalidate();
        }

        @Override protected void onDraw(Canvas canvas) {
            boolean animated = canMove();
            float time = animated ? elapsed / 1000f : 0f;
            if (config.style == 1) {
                float wave = animated && pulseAt >= 0 ? (elapsed - pulseAt) / 650f : 1f;
                stars.draw(canvas, getWidth(), getHeight(), config, time, xs, ys, paint, touchX, touchY, wave);
            } else drawPattern(canvas, getWidth(), getHeight(), config, time, xs, ys, paint);
        }
    }

    // Constellation mesh adapted from Lucian UX/UI Prompt #341 (MIT, Seokwoooo).
    // https://lucianlabs.dev/en/uxui-prompt/#341
    private static final class Constellation {
        private static final int LIMIT = 64;
        final float[] px = new float[LIMIT], py = new float[LIMIT];

        void draw(Canvas canvas, int w, int h, Wallpapers.Config c, float seconds, float[] xs, float[] ys,
                  Paint paint, float touchX, float touchY, float wave) {
            canvas.drawColor(Wallpapers.BACKGROUNDS[c.background]);
            if (w <= 0 || h <= 0) return;
            int count = 24 + c.density * (LIMIT - 24) / 100;
            float time = seconds * (.18f + c.speed * .013f);
            float edge = Math.min(w, h);
            float reach = edge * .18f, reachSquared = reach * reach;
            for (int i = 0; i < count; i++) {
                float x = xs[i] + time * (.004f + (i % 5) * .0014f);
                float y = ys[i] + time * (.002f + (i % 7) * .0009f);
                px[i] = (x % 1f) * w;
                py[i] = (y % 1f) * h;
            }
            paint.setColor(Wallpapers.COLORS[c.color]);
            paint.setStrokeWidth(Math.max(1, edge / 720f));
            for (int i = 0; i < count; i++) {
                for (int j = i + 1, linked = 0; j < count && linked < 3; j++) {
                    float dx = px[i] - px[j], dy = py[i] - py[j];
                    float distance = dx * dx + dy * dy;
                    if (distance >= reachSquared) continue;
                    paint.setAlpha((int) (68f * (1f - distance / reachSquared)));
                    canvas.drawLine(px[i], py[i], px[j], py[j], paint);
                    linked++;
                }
                int pulse = 0;
                if (wave < 1f) {
                    float dx = px[i] - touchX, dy = py[i] - touchY;
                    float ring = Math.abs((float) Math.sqrt(dx * dx + dy * dy) - wave * edge * .43f);
                    pulse = (int) (92f * (1f - wave) * Math.max(0f, 1f - ring / (reach * .48f)));
                }
                float shimmer = (float) Math.sin(time * 1.8f + i);
                paint.setAlpha(Math.min(255, 114 + (int) (40 * shimmer) + pulse));
                float radius = (1.15f + (i % 5) * .4f) * Math.max(1f, edge / 760f);
                canvas.drawCircle(px[i], py[i], radius, paint);
            }
            paint.setAlpha(255);
        }
    }
    static void drawPattern(Canvas canvas,int w,int h,Wallpapers.Config c,float seconds,float[] xs,float[] ys,Paint paint){
        if (c.style == 1) {
            new Constellation().draw(canvas, w, h, c, seconds, xs, ys, paint, 0f, 0f, 1f);
            return;
        }
        canvas.drawColor(Wallpapers.BACKGROUNDS[c.background]);int count=24+c.density*80/100;float time=seconds*(.2f+c.speed*.016f);int color=Wallpapers.COLORS[c.color];paint.setStrokeWidth(Math.max(1,w/900f));paint.setStyle(Paint.Style.FILL);
        for(int i=0;i<count;i++){float x=(xs[i]+time*(c.style==3?.002f:.009f))%1f,y=(ys[i]+time*(c.style==3?.022f:.005f))%1f;
            if(c.style==2){x=xs[i];y=.5f+(float)Math.sin(x*8+time*.4f+i*.23f)*(.12f+ys[i]*.3f);}
            if(c.style==4){float angle=xs[i]*6.283f+time*(.10f+ys[i]*.06f),radius=.12f+ys[i]*.35f;x=.5f+(float)Math.cos(angle)*radius;y=.5f+(float)Math.sin(angle)*radius*w/Math.max(1,h);}
            if(c.style==5){x=(xs[i]+time*.045f)%1f;y=(ys[i]+time*.065f)%1f;}
            paint.setColor(color);paint.setAlpha(90+(i*37)%166);float radius=(1.2f+(i%4)*.8f)*Math.max(1,w/720f);canvas.drawCircle(x*w,y*h,radius,paint);if(c.style==3){canvas.drawLine(x*w-radius*2,y*h,x*w+radius*2,y*h,paint);canvas.drawLine(x*w,y*h-radius*2,x*w,y*h+radius*2,paint);}
            if(c.style==5){paint.setAlpha(65);canvas.drawLine(x*w,y*h,x*w-radius*18,y*h-radius*25,paint);}
        }paint.setAlpha(255);
    }
}
