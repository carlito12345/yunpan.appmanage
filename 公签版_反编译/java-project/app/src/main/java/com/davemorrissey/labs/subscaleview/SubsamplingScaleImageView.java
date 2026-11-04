package com.davemorrissey.labs.subscaleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import com.davemorrissey.labs.subscaleview.decoder.CompatDecoderFactory;
import com.davemorrissey.labs.subscaleview.decoder.DecoderFactory;
import com.davemorrissey.labs.subscaleview.decoder.ImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageRegionDecoder;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import da.b;
import j1.g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class SubsamplingScaleImageView extends View {
    public static final int EASE_IN_OUT_QUAD = 2;
    public static final int EASE_OUT_QUAD = 1;
    private static final int MESSAGE_LONG_CLICK = 1;
    public static final int ORIENTATION_0 = 0;
    public static final int ORIENTATION_180 = 180;
    public static final int ORIENTATION_90 = 90;
    public static final int ORIENTATION_USE_EXIF = -1;
    public static final int ORIGIN_ANIM = 1;
    public static final int ORIGIN_DOUBLE_TAP_ZOOM = 4;
    public static final int ORIGIN_FLING = 3;
    public static final int ORIGIN_TOUCH = 2;
    public static final int PAN_LIMIT_CENTER = 3;
    public static final int PAN_LIMIT_INSIDE = 1;
    public static final int PAN_LIMIT_OUTSIDE = 2;
    public static final int SCALE_TYPE_CENTER_CROP = 2;
    public static final int SCALE_TYPE_CENTER_INSIDE = 1;
    public static final int SCALE_TYPE_CUSTOM = 3;
    public static final int SCALE_TYPE_START = 4;
    private static final String TAG = "SubsamplingScaleImageView";
    public static final int TILE_SIZE_AUTO = Integer.MAX_VALUE;
    public static final int ZOOM_FOCUS_CENTER = 2;
    public static final int ZOOM_FOCUS_CENTER_IMMEDIATE = 3;
    public static final int ZOOM_FOCUS_FIXED = 1;
    private static Bitmap.Config preferredBitmapConfig;
    private Anim anim;
    private Bitmap bitmap;
    private DecoderFactory<? extends ImageDecoder> bitmapDecoderFactory;
    private boolean bitmapIsCached;
    private boolean bitmapIsPreview;
    private Paint bitmapPaint;
    private boolean debug;
    private Paint debugLinePaint;
    private Paint debugTextPaint;
    private ImageRegionDecoder decoder;
    private final ReadWriteLock decoderLock;
    private final float density;
    private GestureDetector detector;
    private int doubleTapZoomDuration;
    private float doubleTapZoomScale;
    private int doubleTapZoomStyle;
    private final float[] dstArray;
    private boolean eagerLoadingEnabled;
    private Executor executor;
    private int fullImageSampleSize;
    private final Handler handler;
    private boolean imageLoadedSent;
    private boolean isPanning;
    private boolean isQuickScaling;
    private boolean isZooming;
    private Matrix matrix;
    private float maxScale;
    private int maxTileHeight;
    private int maxTileWidth;
    private int maxTouchCount;
    private float minScale;
    private int minimumScaleType;
    private int minimumTileDpi;
    private OnImageEventListener onImageEventListener;
    private View.OnLongClickListener onLongClickListener;
    private OnStateChangedListener onStateChangedListener;
    private int orientation;
    private Rect pRegion;
    private boolean panEnabled;
    private int panLimit;
    private Float pendingScale;
    private boolean quickScaleEnabled;
    private float quickScaleLastDistance;
    private boolean quickScaleMoved;
    private PointF quickScaleSCenter;
    private final float quickScaleThreshold;
    private PointF quickScaleVLastPoint;
    private PointF quickScaleVStart;
    private boolean readySent;
    private DecoderFactory<? extends ImageRegionDecoder> regionDecoderFactory;
    private int sHeight;
    private int sOrientation;
    private PointF sPendingCenter;
    private RectF sRect;
    private Rect sRegion;
    private PointF sRequestedCenter;
    private int sWidth;
    private ScaleAndTranslate satTemp;
    private float scale;
    private float scaleStart;
    private GestureDetector singleDetector;
    private final float[] srcArray;
    private Paint tileBgPaint;
    private Map<Integer, List<Tile>> tileMap;
    private Uri uri;
    private PointF vCenterStart;
    private float vDistStart;
    private PointF vTranslate;
    private PointF vTranslateBefore;
    private PointF vTranslateStart;
    private boolean zoomEnabled;
    public static final int ORIENTATION_270 = 270;
    private static final List<Integer> VALID_ORIENTATIONS = Arrays.asList(0, 90, 180, Integer.valueOf(ORIENTATION_270), -1);
    private static final List<Integer> VALID_ZOOM_STYLES = Arrays.asList(1, 2, 3);
    private static final List<Integer> VALID_EASING_STYLES = Arrays.asList(2, 1);
    private static final List<Integer> VALID_PAN_LIMITS = Arrays.asList(1, 2, 3);
    private static final List<Integer> VALID_SCALE_TYPES = Arrays.asList(2, 1, 3, 4);

    public static class Anim {
        private long duration;
        private int easing;
        private boolean interruptible;
        private OnAnimationEventListener listener;
        private int origin;
        private PointF sCenterEnd;
        private PointF sCenterEndRequested;
        private PointF sCenterStart;
        private float scaleEnd;
        private float scaleStart;
        private long time;
        private PointF vFocusEnd;
        private PointF vFocusStart;

        private Anim() {
            this.duration = 500L;
            this.interruptible = true;
            this.easing = 2;
            this.origin = 1;
            this.time = System.currentTimeMillis();
        }
    }

    public static class BitmapLoadTask extends AsyncTask<Void, Void, Integer> {
        private Bitmap bitmap;
        private final WeakReference<Context> contextRef;
        private final WeakReference<DecoderFactory<? extends ImageDecoder>> decoderFactoryRef;
        private Exception exception;
        private final boolean preview;
        private final Uri source;
        private final WeakReference<SubsamplingScaleImageView> viewRef;

        public BitmapLoadTask(SubsamplingScaleImageView subsamplingScaleImageView, Context context, DecoderFactory<? extends ImageDecoder> decoderFactory, Uri uri, boolean z) {
            this.viewRef = new WeakReference<>(subsamplingScaleImageView);
            this.contextRef = new WeakReference<>(context);
            this.decoderFactoryRef = new WeakReference<>(decoderFactory);
            this.source = uri;
            this.preview = z;
        }

        @Override // android.os.AsyncTask
        public Integer doInBackground(Void... voidArr) {
            try {
                String string = this.source.toString();
                Context context = this.contextRef.get();
                DecoderFactory<? extends ImageDecoder> decoderFactory = this.decoderFactoryRef.get();
                SubsamplingScaleImageView subsamplingScaleImageView = this.viewRef.get();
                if (context == null || decoderFactory == null || subsamplingScaleImageView == null) {
                    return null;
                }
                subsamplingScaleImageView.debug("BitmapLoadTask.doInBackground", new Object[0]);
                this.bitmap = decoderFactory.make().decode(context, this.source);
                return Integer.valueOf(subsamplingScaleImageView.getExifOrientation(context, string));
            } catch (Exception e7) {
                String unused = SubsamplingScaleImageView.TAG;
                this.exception = e7;
                return null;
            } catch (OutOfMemoryError e10) {
                String unused2 = SubsamplingScaleImageView.TAG;
                this.exception = new RuntimeException(e10);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Integer num) {
            SubsamplingScaleImageView subsamplingScaleImageView = this.viewRef.get();
            if (subsamplingScaleImageView != null) {
                Bitmap bitmap = this.bitmap;
                if (bitmap != null && num != null) {
                    if (this.preview) {
                        subsamplingScaleImageView.onPreviewLoaded(bitmap);
                        return;
                    } else {
                        subsamplingScaleImageView.onImageLoaded(bitmap, num.intValue(), false);
                        return;
                    }
                }
                if (this.exception == null || subsamplingScaleImageView.onImageEventListener == null) {
                    return;
                }
                if (this.preview) {
                    subsamplingScaleImageView.onImageEventListener.onPreviewLoadError(this.exception);
                } else {
                    subsamplingScaleImageView.onImageEventListener.onImageLoadError(this.exception);
                }
            }
        }
    }

    public static class DefaultOnAnimationEventListener implements OnAnimationEventListener {
        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnAnimationEventListener
        public void onComplete() {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnAnimationEventListener
        public void onInterruptedByNewAnim() {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnAnimationEventListener
        public void onInterruptedByUser() {
        }
    }

    public static class DefaultOnImageEventListener implements OnImageEventListener {
        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
        public void onImageLoadError(Exception exc) {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
        public void onImageLoaded() {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
        public void onPreviewLoadError(Exception exc) {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
        public void onPreviewReleased() {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
        public void onReady() {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
        public void onTileLoadError(Exception exc) {
        }
    }

    public static class DefaultOnStateChangedListener implements OnStateChangedListener {
        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnStateChangedListener
        public void onCenterChanged(PointF pointF, int i10) {
        }

        @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnStateChangedListener
        public void onScaleChanged(float f10, int i10) {
        }
    }

    public interface OnAnimationEventListener {
        void onComplete();

        void onInterruptedByNewAnim();

        void onInterruptedByUser();
    }

    public interface OnImageEventListener {
        void onImageLoadError(Exception exc);

        void onImageLoaded();

        void onPreviewLoadError(Exception exc);

        void onPreviewReleased();

        void onReady();

        void onTileLoadError(Exception exc);
    }

    public interface OnStateChangedListener {
        void onCenterChanged(PointF pointF, int i10);

        void onScaleChanged(float f10, int i10);
    }

    public static class ScaleAndTranslate {
        private float scale;
        private final PointF vTranslate;

        private ScaleAndTranslate(float f10, PointF pointF) {
            this.scale = f10;
            this.vTranslate = pointF;
        }
    }

    public static class Tile {
        private Bitmap bitmap;
        private Rect fileSRect;
        private boolean loading;
        private Rect sRect;
        private int sampleSize;
        private Rect vRect;
        private boolean visible;

        private Tile() {
        }
    }

    public static class TileLoadTask extends AsyncTask<Void, Void, Bitmap> {
        private final WeakReference<ImageRegionDecoder> decoderRef;
        private Exception exception;
        private final WeakReference<Tile> tileRef;
        private final WeakReference<SubsamplingScaleImageView> viewRef;

        public TileLoadTask(SubsamplingScaleImageView subsamplingScaleImageView, ImageRegionDecoder imageRegionDecoder, Tile tile) {
            this.viewRef = new WeakReference<>(subsamplingScaleImageView);
            this.decoderRef = new WeakReference<>(imageRegionDecoder);
            this.tileRef = new WeakReference<>(tile);
            tile.loading = true;
        }

        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... voidArr) {
            try {
                SubsamplingScaleImageView subsamplingScaleImageView = this.viewRef.get();
                ImageRegionDecoder imageRegionDecoder = this.decoderRef.get();
                Tile tile = this.tileRef.get();
                if (imageRegionDecoder == null || tile == null || subsamplingScaleImageView == null || !imageRegionDecoder.isReady() || !tile.visible) {
                    if (tile == null) {
                        return null;
                    }
                    tile.loading = false;
                    return null;
                }
                subsamplingScaleImageView.debug("TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d", tile.sRect, Integer.valueOf(tile.sampleSize));
                subsamplingScaleImageView.decoderLock.readLock().lock();
                try {
                    if (!imageRegionDecoder.isReady()) {
                        tile.loading = false;
                        subsamplingScaleImageView.decoderLock.readLock().unlock();
                        return null;
                    }
                    subsamplingScaleImageView.fileSRect(tile.sRect, tile.fileSRect);
                    if (subsamplingScaleImageView.sRegion != null) {
                        tile.fileSRect.offset(subsamplingScaleImageView.sRegion.left, subsamplingScaleImageView.sRegion.top);
                    }
                    Bitmap bitmapDecodeRegion = imageRegionDecoder.decodeRegion(tile.fileSRect, tile.sampleSize);
                    subsamplingScaleImageView.decoderLock.readLock().unlock();
                    return bitmapDecodeRegion;
                } catch (Throwable th2) {
                    subsamplingScaleImageView.decoderLock.readLock().unlock();
                    throw th2;
                }
            } catch (Exception e7) {
                String unused = SubsamplingScaleImageView.TAG;
                this.exception = e7;
                return null;
            } catch (OutOfMemoryError e10) {
                String unused2 = SubsamplingScaleImageView.TAG;
                this.exception = new RuntimeException(e10);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            SubsamplingScaleImageView subsamplingScaleImageView = this.viewRef.get();
            Tile tile = this.tileRef.get();
            if (subsamplingScaleImageView == null || tile == null) {
                return;
            }
            if (bitmap != null) {
                tile.bitmap = bitmap;
                tile.loading = false;
                subsamplingScaleImageView.onTileLoaded();
            } else {
                if (this.exception == null || subsamplingScaleImageView.onImageEventListener == null) {
                    return;
                }
                subsamplingScaleImageView.onImageEventListener.onTileLoadError(this.exception);
            }
        }
    }

    public static class TilesInitTask extends AsyncTask<Void, Void, int[]> {
        private final WeakReference<Context> contextRef;
        private ImageRegionDecoder decoder;
        private final WeakReference<DecoderFactory<? extends ImageRegionDecoder>> decoderFactoryRef;
        private Exception exception;
        private final Uri source;
        private final WeakReference<SubsamplingScaleImageView> viewRef;

        public TilesInitTask(SubsamplingScaleImageView subsamplingScaleImageView, Context context, DecoderFactory<? extends ImageRegionDecoder> decoderFactory, Uri uri) {
            this.viewRef = new WeakReference<>(subsamplingScaleImageView);
            this.contextRef = new WeakReference<>(context);
            this.decoderFactoryRef = new WeakReference<>(decoderFactory);
            this.source = uri;
        }

        @Override // android.os.AsyncTask
        public int[] doInBackground(Void... voidArr) {
            try {
                String string = this.source.toString();
                Context context = this.contextRef.get();
                DecoderFactory<? extends ImageRegionDecoder> decoderFactory = this.decoderFactoryRef.get();
                SubsamplingScaleImageView subsamplingScaleImageView = this.viewRef.get();
                if (context == null || decoderFactory == null || subsamplingScaleImageView == null) {
                    return null;
                }
                subsamplingScaleImageView.debug("TilesInitTask.doInBackground", new Object[0]);
                ImageRegionDecoder imageRegionDecoderMake = decoderFactory.make();
                this.decoder = imageRegionDecoderMake;
                Point pointInit = imageRegionDecoderMake.init(context, this.source);
                int iWidth = pointInit.x;
                int iHeight = pointInit.y;
                int exifOrientation = subsamplingScaleImageView.getExifOrientation(context, string);
                if (subsamplingScaleImageView.sRegion != null) {
                    subsamplingScaleImageView.sRegion.left = Math.max(0, subsamplingScaleImageView.sRegion.left);
                    subsamplingScaleImageView.sRegion.top = Math.max(0, subsamplingScaleImageView.sRegion.top);
                    subsamplingScaleImageView.sRegion.right = Math.min(iWidth, subsamplingScaleImageView.sRegion.right);
                    subsamplingScaleImageView.sRegion.bottom = Math.min(iHeight, subsamplingScaleImageView.sRegion.bottom);
                    iWidth = subsamplingScaleImageView.sRegion.width();
                    iHeight = subsamplingScaleImageView.sRegion.height();
                }
                return new int[]{iWidth, iHeight, exifOrientation};
            } catch (Exception e7) {
                String unused = SubsamplingScaleImageView.TAG;
                this.exception = e7;
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(int[] iArr) {
            SubsamplingScaleImageView subsamplingScaleImageView = this.viewRef.get();
            if (subsamplingScaleImageView != null) {
                ImageRegionDecoder imageRegionDecoder = this.decoder;
                if (imageRegionDecoder != null && iArr != null && iArr.length == 3) {
                    subsamplingScaleImageView.onTilesInited(imageRegionDecoder, iArr[0], iArr[1], iArr[2]);
                } else {
                    if (this.exception == null || subsamplingScaleImageView.onImageEventListener == null) {
                        return;
                    }
                    subsamplingScaleImageView.onImageEventListener.onImageLoadError(this.exception);
                }
            }
        }
    }

    public SubsamplingScaleImageView(Context context, AttributeSet attributeSet) {
        int resourceId;
        String string;
        super(context, attributeSet);
        this.orientation = 0;
        this.maxScale = 2.0f;
        this.minScale = minScale();
        this.minimumTileDpi = -1;
        this.panLimit = 1;
        this.minimumScaleType = 1;
        this.maxTileWidth = Integer.MAX_VALUE;
        this.maxTileHeight = Integer.MAX_VALUE;
        this.executor = AsyncTask.THREAD_POOL_EXECUTOR;
        this.eagerLoadingEnabled = true;
        this.panEnabled = true;
        this.zoomEnabled = true;
        this.quickScaleEnabled = true;
        this.doubleTapZoomScale = 1.0f;
        this.doubleTapZoomStyle = 1;
        this.doubleTapZoomDuration = 500;
        this.decoderLock = new ReentrantReadWriteLock(true);
        this.bitmapDecoderFactory = new CompatDecoderFactory(SkiaImageDecoder.class);
        this.regionDecoderFactory = new CompatDecoderFactory(SkiaImageRegionDecoder.class);
        this.srcArray = new float[8];
        this.dstArray = new float[8];
        this.density = getResources().getDisplayMetrics().density;
        setMinimumDpi(CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ);
        setDoubleTapZoomDpi(CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ);
        setMinimumTileDpi(320);
        setGestureDetector(context);
        this.handler = new Handler(new Handler.Callback() { // from class: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 1 && SubsamplingScaleImageView.this.onLongClickListener != null) {
                    SubsamplingScaleImageView.this.maxTouchCount = 0;
                    SubsamplingScaleImageView subsamplingScaleImageView = SubsamplingScaleImageView.this;
                    SubsamplingScaleImageView.super.setOnLongClickListener(subsamplingScaleImageView.onLongClickListener);
                    SubsamplingScaleImageView.this.performLongClick();
                    SubsamplingScaleImageView.super.setOnLongClickListener(null);
                }
                return true;
            }
        });
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SubsamplingScaleImageView);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SubsamplingScaleImageView_assetName) && (string = typedArrayObtainStyledAttributes.getString(R.styleable.SubsamplingScaleImageView_assetName)) != null && string.length() > 0) {
                setImage(ImageSource.asset(string).tilingEnabled());
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SubsamplingScaleImageView_src) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SubsamplingScaleImageView_src, 0)) > 0) {
                setImage(ImageSource.resource(resourceId).tilingEnabled());
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SubsamplingScaleImageView_panEnabled)) {
                setPanEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.SubsamplingScaleImageView_panEnabled, true));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SubsamplingScaleImageView_zoomEnabled)) {
                setZoomEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.SubsamplingScaleImageView_zoomEnabled, true));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SubsamplingScaleImageView_quickScaleEnabled)) {
                setQuickScaleEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.SubsamplingScaleImageView_quickScaleEnabled, true));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SubsamplingScaleImageView_tileBackgroundColor)) {
                setTileBackgroundColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SubsamplingScaleImageView_tileBackgroundColor, Color.argb(0, 0, 0, 0)));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.quickScaleThreshold = TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
    }

    private int calculateInSampleSize(float f10) {
        int iRound;
        if (this.minimumTileDpi > 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            f10 *= this.minimumTileDpi / ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f);
        }
        int iSWidth = (int) (sWidth() * f10);
        int iSHeight = (int) (sHeight() * f10);
        if (iSWidth == 0 || iSHeight == 0) {
            return 32;
        }
        int i10 = 1;
        if (sHeight() > iSHeight || sWidth() > iSWidth) {
            iRound = Math.round(sHeight() / iSHeight);
            int iRound2 = Math.round(sWidth() / iSWidth);
            if (iRound >= iRound2) {
                iRound = iRound2;
            }
        } else {
            iRound = 1;
        }
        while (true) {
            int i11 = i10 * 2;
            if (i11 >= iRound) {
                return i10;
            }
            i10 = i11;
        }
    }

    private boolean checkImageLoaded() {
        boolean zIsBaseLayerReady = isBaseLayerReady();
        if (!this.imageLoadedSent && zIsBaseLayerReady) {
            preDraw();
            this.imageLoadedSent = true;
            onImageLoaded();
            OnImageEventListener onImageEventListener = this.onImageEventListener;
            if (onImageEventListener != null) {
                onImageEventListener.onImageLoaded();
            }
        }
        return zIsBaseLayerReady;
    }

    private boolean checkReady() {
        boolean z = getWidth() > 0 && getHeight() > 0 && this.sWidth > 0 && this.sHeight > 0 && (this.bitmap != null || isBaseLayerReady());
        if (!this.readySent && z) {
            preDraw();
            this.readySent = true;
            onReady();
            OnImageEventListener onImageEventListener = this.onImageEventListener;
            if (onImageEventListener != null) {
                onImageEventListener.onReady();
            }
        }
        return z;
    }

    private void createPaints() {
        if (this.bitmapPaint == null) {
            Paint paint = new Paint();
            this.bitmapPaint = paint;
            paint.setAntiAlias(true);
            this.bitmapPaint.setFilterBitmap(true);
            this.bitmapPaint.setDither(true);
        }
        if ((this.debugTextPaint == null || this.debugLinePaint == null) && this.debug) {
            Paint paint2 = new Paint();
            this.debugTextPaint = paint2;
            paint2.setTextSize(px(12));
            this.debugTextPaint.setColor(-65281);
            this.debugTextPaint.setStyle(Paint.Style.FILL);
            Paint paint3 = new Paint();
            this.debugLinePaint = paint3;
            paint3.setColor(-65281);
            this.debugLinePaint.setStyle(Paint.Style.STROKE);
            this.debugLinePaint.setStrokeWidth(px(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debug(String str, Object... objArr) {
        if (this.debug) {
            String.format(str, objArr);
        }
    }

    private float distance(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f11;
        float f15 = f12 - f13;
        return (float) Math.sqrt((f15 * f15) + (f14 * f14));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doubleTapZoom(PointF pointF, PointF pointF2) {
        if (!this.panEnabled) {
            PointF pointF3 = this.sRequestedCenter;
            if (pointF3 != null) {
                pointF.x = pointF3.x;
                pointF.y = pointF3.y;
            } else {
                pointF.x = sWidth() / 2;
                pointF.y = sHeight() / 2;
            }
        }
        float fMin = Math.min(this.maxScale, this.doubleTapZoomScale);
        float f10 = this.scale;
        double d10 = f10;
        double d11 = fMin;
        Double.isNaN(d11);
        boolean z = d10 <= d11 * 0.9d || f10 == this.minScale;
        if (!z) {
            fMin = minScale();
        }
        float f11 = fMin;
        int i10 = this.doubleTapZoomStyle;
        if (i10 == 3) {
            setScaleAndCenter(f11, pointF);
        } else if (i10 == 2 || !z || !this.panEnabled) {
            new AnimationBuilder(f11, pointF).withInterruptible(false).withDuration(this.doubleTapZoomDuration).withOrigin(4).start();
        } else if (i10 == 1) {
            new AnimationBuilder(f11, pointF, pointF2).withInterruptible(false).withDuration(this.doubleTapZoomDuration).withOrigin(4).start();
        }
        invalidate();
    }

    private float ease(int i10, long j10, float f10, float f11, long j11) {
        if (i10 == 1) {
            return easeOutQuad(j10, f10, f11, j11);
        }
        if (i10 == 2) {
            return easeInOutQuad(j10, f10, f11, j11);
        }
        throw new IllegalStateException(b.a(i10, "Unexpected easing type: "));
    }

    private float easeInOutQuad(long j10, float f10, float f11, long j11) {
        float f12 = j10 / (j11 / 2.0f);
        if (f12 < 1.0f) {
            return ((f11 / 2.0f) * f12 * f12) + f10;
        }
        float f13 = f12 - 1.0f;
        return ((((f13 - 2.0f) * f13) - 1.0f) * ((-f11) / 2.0f)) + f10;
    }

    private float easeOutQuad(long j10, float f10, float f11, long j11) {
        float f12 = j10 / j11;
        return g.b.b(f12, 2.0f, (-f11) * f12, f10);
    }

    private void execute(AsyncTask<Void, Void, ?> asyncTask) {
        asyncTask.executeOnExecutor(this.executor, new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileSRect(Rect rect, Rect rect2) {
        if (getRequiredRotation() == 0) {
            rect2.set(rect);
            return;
        }
        if (getRequiredRotation() == 90) {
            int i10 = rect.top;
            int i11 = this.sHeight;
            rect2.set(i10, i11 - rect.right, rect.bottom, i11 - rect.left);
        } else if (getRequiredRotation() != 180) {
            int i12 = this.sWidth;
            rect2.set(i12 - rect.bottom, rect.left, i12 - rect.top, rect.right);
        } else {
            int i13 = this.sWidth;
            int i14 = i13 - rect.right;
            int i15 = this.sHeight;
            rect2.set(i14, i15 - rect.bottom, i13 - rect.left, i15 - rect.top);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fitToBounds(boolean z, ScaleAndTranslate scaleAndTranslate) {
        float paddingLeft;
        float fMax;
        int iMax;
        float fMax2;
        if (this.panLimit == 2 && isReady()) {
            z = false;
        }
        PointF pointF = scaleAndTranslate.vTranslate;
        float fLimitedScale = limitedScale(scaleAndTranslate.scale);
        float fSWidth = sWidth() * fLimitedScale;
        float fSHeight = sHeight() * fLimitedScale;
        if (this.panLimit == 3 && isReady()) {
            pointF.x = Math.max(pointF.x, (getWidth() / 2) - fSWidth);
            pointF.y = Math.max(pointF.y, (getHeight() / 2) - fSHeight);
        } else if (z) {
            pointF.x = Math.max(pointF.x, getWidth() - fSWidth);
            pointF.y = Math.max(pointF.y, getHeight() - fSHeight);
        } else {
            pointF.x = Math.max(pointF.x, -fSWidth);
            pointF.y = Math.max(pointF.y, -fSHeight);
        }
        float paddingTop = 0.5f;
        if (getPaddingLeft() > 0 || getPaddingRight() > 0) {
            paddingLeft = getPaddingLeft() / (getPaddingRight() + getPaddingLeft());
        } else {
            paddingLeft = 0.5f;
        }
        if (getPaddingTop() > 0 || getPaddingBottom() > 0) {
            paddingTop = getPaddingTop() / (getPaddingBottom() + getPaddingTop());
        }
        if (this.panLimit == 3 && isReady()) {
            fMax = Math.max(0, getWidth() / 2);
            iMax = Math.max(0, getHeight() / 2);
        } else {
            if (z) {
                fMax = Math.max(0.0f, (getWidth() - fSWidth) * paddingLeft);
                fMax2 = Math.max(0.0f, (getHeight() - fSHeight) * paddingTop);
                pointF.x = Math.min(pointF.x, fMax);
                pointF.y = Math.min(pointF.y, fMax2);
                scaleAndTranslate.scale = fLimitedScale;
            }
            fMax = Math.max(0, getWidth());
            iMax = Math.max(0, getHeight());
        }
        fMax2 = iMax;
        pointF.x = Math.min(pointF.x, fMax);
        pointF.y = Math.min(pointF.y, fMax2);
        scaleAndTranslate.scale = fLimitedScale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getExifOrientation(Context context, String str) {
        int i10 = 0;
        if (!str.startsWith("content")) {
            if (!str.startsWith("file:///") || str.startsWith("file:///android_asset/")) {
                return 0;
            }
            try {
                int iC = new g(str.substring(7)).c();
                if (iC == 1 || iC == 0) {
                    return 0;
                }
                if (iC == 6) {
                    return 90;
                }
                if (iC == 3) {
                    return 180;
                }
                if (iC == 8) {
                    return ORIENTATION_270;
                }
                return 0;
            } catch (Exception unused) {
                return 0;
            }
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse(str), new String[]{"orientation"}, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i11 = cursorQuery.getInt(0);
                if (VALID_ORIENTATIONS.contains(Integer.valueOf(i11)) && i11 != -1) {
                    i10 = i11;
                }
            }
            if (cursorQuery == null) {
                return i10;
            }
        } catch (Exception unused2) {
            if (cursorQuery == null) {
                return 0;
            }
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
        cursorQuery.close();
        return i10;
    }

    private Point getMaxBitmapDimensions(Canvas canvas) {
        return new Point(Math.min(canvas.getMaximumBitmapWidth(), this.maxTileWidth), Math.min(canvas.getMaximumBitmapHeight(), this.maxTileHeight));
    }

    public static Bitmap.Config getPreferredBitmapConfig() {
        return preferredBitmapConfig;
    }

    private int getRequiredRotation() {
        int i10 = this.orientation;
        return i10 == -1 ? this.sOrientation : i10;
    }

    private synchronized void initialiseBaseLayer(Point point) {
        try {
            debug("initialiseBaseLayer maxTileDimensions=%dx%d", Integer.valueOf(point.x), Integer.valueOf(point.y));
            ScaleAndTranslate scaleAndTranslate = new ScaleAndTranslate(0.0f, new PointF(0.0f, 0.0f));
            this.satTemp = scaleAndTranslate;
            fitToBounds(true, scaleAndTranslate);
            int iCalculateInSampleSize = calculateInSampleSize(this.satTemp.scale);
            this.fullImageSampleSize = iCalculateInSampleSize;
            if (iCalculateInSampleSize > 1) {
                this.fullImageSampleSize = iCalculateInSampleSize / 2;
            }
            if (this.fullImageSampleSize != 1 || this.sRegion != null || sWidth() >= point.x || sHeight() >= point.y) {
                initialiseTileMap(point);
                Iterator<Tile> it = this.tileMap.get(Integer.valueOf(this.fullImageSampleSize)).iterator();
                while (it.hasNext()) {
                    execute(new TileLoadTask(this, this.decoder, it.next()));
                }
                refreshRequiredTiles(true);
            } else {
                this.decoder.recycle();
                this.decoder = null;
                execute(new BitmapLoadTask(this, getContext(), this.bitmapDecoderFactory, this.uri, false));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void initialiseTileMap(Point point) {
        Point point2 = point;
        debug("initialiseTileMap maxTileDimensions=%dx%d", Integer.valueOf(point2.x), Integer.valueOf(point2.y));
        this.tileMap = new LinkedHashMap();
        int i10 = this.fullImageSampleSize;
        int i11 = 1;
        int i12 = 1;
        while (true) {
            int iSWidth = sWidth() / i11;
            int iSHeight = sHeight() / i12;
            int i13 = iSWidth / i10;
            int i14 = iSHeight / i10;
            while (true) {
                if (i13 + i11 + 1 <= point2.x) {
                    double d10 = i13;
                    double width = getWidth();
                    Double.isNaN(width);
                    if (d10 <= width * 1.25d || i10 >= this.fullImageSampleSize) {
                        break;
                    }
                }
                i11++;
                iSWidth = sWidth() / i11;
                i13 = iSWidth / i10;
                point2 = point;
            }
            while (true) {
                if (i14 + i12 + 1 <= point2.y) {
                    double d11 = i14;
                    double height = getHeight();
                    Double.isNaN(height);
                    if (d11 <= height * 1.25d || i10 >= this.fullImageSampleSize) {
                        break;
                    }
                }
                i12++;
                iSHeight = sHeight() / i12;
                i14 = iSHeight / i10;
                point2 = point;
            }
            ArrayList arrayList = new ArrayList(i11 * i12);
            int i15 = 0;
            while (i15 < i11) {
                int i16 = 0;
                while (i16 < i12) {
                    Tile tile = new Tile();
                    tile.sampleSize = i10;
                    tile.visible = i10 == this.fullImageSampleSize;
                    tile.sRect = new Rect(i15 * iSWidth, i16 * iSHeight, i15 == i11 + (-1) ? sWidth() : (i15 + 1) * iSWidth, i16 == i12 + (-1) ? sHeight() : (i16 + 1) * iSHeight);
                    tile.vRect = new Rect(0, 0, 0, 0);
                    tile.fileSRect = new Rect(tile.sRect);
                    arrayList.add(tile);
                    i16++;
                }
                i15++;
            }
            this.tileMap.put(Integer.valueOf(i10), arrayList);
            if (i10 == 1) {
                return;
            }
            i10 /= 2;
            point2 = point;
        }
    }

    private boolean isBaseLayerReady() {
        boolean z = true;
        if (this.bitmap != null && !this.bitmapIsPreview) {
            return true;
        }
        Map<Integer, List<Tile>> map = this.tileMap;
        if (map == null) {
            return false;
        }
        for (Map.Entry<Integer, List<Tile>> entry : map.entrySet()) {
            if (entry.getKey().intValue() == this.fullImageSampleSize) {
                for (Tile tile : entry.getValue()) {
                    if (tile.loading || tile.bitmap == null) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF limitedSCenter(float f10, float f11, float f12, PointF pointF) {
        PointF pointFVTranslateForSCenter = vTranslateForSCenter(f10, f11, f12);
        pointF.set((((((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2) + getPaddingLeft()) - pointFVTranslateForSCenter.x) / f12, (((((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2) + getPaddingTop()) - pointFVTranslateForSCenter.y) / f12);
        return pointF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float limitedScale(float f10) {
        return Math.min(this.maxScale, Math.max(minScale(), f10));
    }

    private float minScale() {
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int i10 = this.minimumScaleType;
        if (i10 == 2 || i10 == 4) {
            return Math.max((getWidth() - paddingRight) / sWidth(), (getHeight() - paddingTop) / sHeight());
        }
        if (i10 == 3) {
            float f10 = this.minScale;
            if (f10 > 0.0f) {
                return f10;
            }
        }
        return Math.min((getWidth() - paddingRight) / sWidth(), (getHeight() - paddingTop) / sHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onPreviewLoaded(Bitmap bitmap) {
        try {
            debug("onPreviewLoaded", new Object[0]);
            if (this.bitmap == null && !this.imageLoadedSent) {
                Rect rect = this.pRegion;
                if (rect != null) {
                    this.bitmap = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), this.pRegion.height());
                } else {
                    this.bitmap = bitmap;
                }
                this.bitmapIsPreview = true;
                if (checkReady()) {
                    invalidate();
                    requestLayout();
                }
                return;
            }
            bitmap.recycle();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onTileLoaded() {
        Bitmap bitmap;
        try {
            debug("onTileLoaded", new Object[0]);
            checkReady();
            checkImageLoaded();
            if (isBaseLayerReady() && (bitmap = this.bitmap) != null) {
                if (!this.bitmapIsCached) {
                    bitmap.recycle();
                }
                this.bitmap = null;
                OnImageEventListener onImageEventListener = this.onImageEventListener;
                if (onImageEventListener != null && this.bitmapIsCached) {
                    onImageEventListener.onPreviewReleased();
                }
                this.bitmapIsPreview = false;
                this.bitmapIsCached = false;
            }
            invalidate();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onTilesInited(ImageRegionDecoder imageRegionDecoder, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        try {
            debug("onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(this.orientation));
            int i16 = this.sWidth;
            if (i16 > 0 && (i15 = this.sHeight) > 0 && (i16 != i10 || i15 != i11)) {
                reset(false);
                Bitmap bitmap = this.bitmap;
                if (bitmap != null) {
                    if (!this.bitmapIsCached) {
                        bitmap.recycle();
                    }
                    this.bitmap = null;
                    OnImageEventListener onImageEventListener = this.onImageEventListener;
                    if (onImageEventListener != null && this.bitmapIsCached) {
                        onImageEventListener.onPreviewReleased();
                    }
                    this.bitmapIsPreview = false;
                    this.bitmapIsCached = false;
                }
            }
            this.decoder = imageRegionDecoder;
            this.sWidth = i10;
            this.sHeight = i11;
            this.sOrientation = i12;
            checkReady();
            if (!checkImageLoaded() && (i13 = this.maxTileWidth) > 0 && i13 != Integer.MAX_VALUE && (i14 = this.maxTileHeight) > 0 && i14 != Integer.MAX_VALUE && getWidth() > 0 && getHeight() > 0) {
                initialiseBaseLayer(new Point(this.maxTileWidth, this.maxTileHeight));
            }
            invalidate();
            requestLayout();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        if (r1 != 262) goto L134;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean onTouchEventInternal(MotionEvent motionEvent) {
        boolean z;
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 5) {
                        if (action != 6) {
                            if (action != 261) {
                            }
                        }
                    }
                } else if (this.maxTouchCount > 0) {
                    if (pointerCount < 2) {
                        if (this.isQuickScaling) {
                            float fAbs = (Math.abs(this.quickScaleVStart.y - motionEvent.getY()) * 2.0f) + this.quickScaleThreshold;
                            if (this.quickScaleLastDistance == -1.0f) {
                                this.quickScaleLastDistance = fAbs;
                            }
                            float y6 = motionEvent.getY();
                            PointF pointF = this.quickScaleVLastPoint;
                            boolean z4 = y6 > pointF.y;
                            pointF.set(0.0f, motionEvent.getY());
                            float fAbs2 = Math.abs(1.0f - (fAbs / this.quickScaleLastDistance)) * 0.5f;
                            if (fAbs2 > 0.03f || this.quickScaleMoved) {
                                this.quickScaleMoved = true;
                                float f10 = this.quickScaleLastDistance > 0.0f ? z4 ? fAbs2 + 1.0f : 1.0f - fAbs2 : 1.0f;
                                double d10 = this.scale;
                                float fMax = Math.max(minScale(), Math.min(this.maxScale, this.scale * f10));
                                this.scale = fMax;
                                if (this.panEnabled) {
                                    PointF pointF2 = this.vCenterStart;
                                    float f11 = pointF2.x;
                                    PointF pointF3 = this.vTranslateStart;
                                    float f12 = f11 - pointF3.x;
                                    float f13 = pointF2.y;
                                    float f14 = f13 - pointF3.y;
                                    float f15 = this.scaleStart;
                                    float f16 = (fMax / f15) * f12;
                                    float f17 = (fMax / f15) * f14;
                                    PointF pointF4 = this.vTranslate;
                                    pointF4.x = f11 - f16;
                                    pointF4.y = f13 - f17;
                                    double dSHeight = sHeight();
                                    Double.isNaN(d10);
                                    Double.isNaN(dSHeight);
                                    if (dSHeight * d10 >= getHeight() || this.scale * sHeight() < getHeight()) {
                                        double dSWidth = sWidth();
                                        Double.isNaN(d10);
                                        Double.isNaN(dSWidth);
                                        if (d10 * dSWidth < getWidth() && this.scale * sWidth() >= getWidth()) {
                                            fitToBounds(true);
                                            this.vCenterStart.set(sourceToViewCoord(this.quickScaleSCenter));
                                            this.vTranslateStart.set(this.vTranslate);
                                            this.scaleStart = this.scale;
                                            fAbs = 0.0f;
                                        }
                                    }
                                } else if (this.sRequestedCenter != null) {
                                    this.vTranslate.x = (getWidth() / 2) - (this.scale * this.sRequestedCenter.x);
                                    this.vTranslate.y = (getHeight() / 2) - (this.scale * this.sRequestedCenter.y);
                                } else {
                                    this.vTranslate.x = (getWidth() / 2) - (this.scale * (sWidth() / 2));
                                    this.vTranslate.y = (getHeight() / 2) - (this.scale * (sHeight() / 2));
                                }
                            }
                            this.quickScaleLastDistance = fAbs;
                            fitToBounds(true);
                            refreshRequiredTiles(this.eagerLoadingEnabled);
                        } else if (!this.isZooming) {
                            float fAbs3 = Math.abs(motionEvent.getX() - this.vCenterStart.x);
                            float fAbs4 = Math.abs(motionEvent.getY() - this.vCenterStart.y);
                            float f18 = this.density * 5.0f;
                            if (fAbs3 > f18 || fAbs4 > f18 || this.isPanning) {
                                this.vTranslate.x = (motionEvent.getX() - this.vCenterStart.x) + this.vTranslateStart.x;
                                this.vTranslate.y = (motionEvent.getY() - this.vCenterStart.y) + this.vTranslateStart.y;
                                PointF pointF5 = this.vTranslate;
                                float f19 = pointF5.x;
                                float f20 = pointF5.y;
                                fitToBounds(true);
                                PointF pointF6 = this.vTranslate;
                                boolean z10 = f19 != pointF6.x;
                                float f21 = pointF6.y;
                                boolean z11 = f20 != f21;
                                boolean z12 = z10 && fAbs3 > fAbs4 && !this.isPanning;
                                boolean z13 = z11 && fAbs4 > fAbs3 && !this.isPanning;
                                boolean z14 = f20 == f21 && fAbs4 > 3.0f * f18;
                                if (!z12 && !z13 && (!z10 || !z11 || z14 || this.isPanning)) {
                                    this.isPanning = true;
                                } else if (fAbs3 > f18 || fAbs4 > f18) {
                                    this.maxTouchCount = 0;
                                    this.handler.removeMessages(1);
                                    requestDisallowInterceptTouchEvent(false);
                                }
                                if (!this.panEnabled) {
                                    PointF pointF7 = this.vTranslate;
                                    PointF pointF8 = this.vTranslateStart;
                                    pointF7.x = pointF8.x;
                                    pointF7.y = pointF8.y;
                                    requestDisallowInterceptTouchEvent(false);
                                }
                                refreshRequiredTiles(this.eagerLoadingEnabled);
                            }
                        }
                        this.handler.removeMessages(1);
                        invalidate();
                        return true;
                    }
                    float fDistance = distance(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                    float x10 = (motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f;
                    float y10 = (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f;
                    if (this.zoomEnabled) {
                        PointF pointF9 = this.vCenterStart;
                        if (distance(pointF9.x, x10, pointF9.y, y10) > 5.0f || Math.abs(fDistance - this.vDistStart) > 5.0f || this.isPanning) {
                            this.isZooming = true;
                            this.isPanning = true;
                            double d11 = this.scale;
                            float fMin = Math.min(this.maxScale, (fDistance / this.vDistStart) * this.scaleStart);
                            this.scale = fMin;
                            if (fMin <= minScale()) {
                                this.vDistStart = fDistance;
                                this.scaleStart = minScale();
                                this.vCenterStart.set(x10, y10);
                                this.vTranslateStart.set(this.vTranslate);
                            } else {
                                if (this.panEnabled) {
                                    PointF pointF10 = this.vCenterStart;
                                    float f22 = pointF10.x;
                                    PointF pointF11 = this.vTranslateStart;
                                    float f23 = f22 - pointF11.x;
                                    float f24 = pointF10.y - pointF11.y;
                                    float f25 = this.scale;
                                    float f26 = this.scaleStart;
                                    float f27 = (f25 / f26) * f23;
                                    float f28 = (f25 / f26) * f24;
                                    PointF pointF12 = this.vTranslate;
                                    pointF12.x = x10 - f27;
                                    pointF12.y = y10 - f28;
                                    double dSHeight2 = sHeight();
                                    Double.isNaN(d11);
                                    Double.isNaN(dSHeight2);
                                    if (dSHeight2 * d11 >= getHeight() || this.scale * sHeight() < getHeight()) {
                                        double dSWidth2 = sWidth();
                                        Double.isNaN(d11);
                                        Double.isNaN(dSWidth2);
                                        if (d11 * dSWidth2 < getWidth() && this.scale * sWidth() >= getWidth()) {
                                            fitToBounds(true);
                                            this.vCenterStart.set(x10, y10);
                                            this.vTranslateStart.set(this.vTranslate);
                                            this.scaleStart = this.scale;
                                            this.vDistStart = fDistance;
                                        }
                                    }
                                    this.handler.removeMessages(1);
                                    invalidate();
                                    return true;
                                }
                                if (this.sRequestedCenter != null) {
                                    this.vTranslate.x = (getWidth() / 2) - (this.scale * this.sRequestedCenter.x);
                                    this.vTranslate.y = (getHeight() / 2) - (this.scale * this.sRequestedCenter.y);
                                } else {
                                    this.vTranslate.x = (getWidth() / 2) - (this.scale * (sWidth() / 2));
                                    this.vTranslate.y = (getHeight() / 2) - (this.scale * (sHeight() / 2));
                                }
                            }
                            fitToBounds(true);
                            refreshRequiredTiles(this.eagerLoadingEnabled);
                            this.handler.removeMessages(1);
                            invalidate();
                            return true;
                        }
                    }
                }
                return false;
            }
            this.handler.removeMessages(1);
            if (this.isQuickScaling) {
                this.isQuickScaling = false;
                if (!this.quickScaleMoved) {
                    doubleTapZoom(this.quickScaleSCenter, this.vCenterStart);
                }
            }
            if (this.maxTouchCount <= 0 || !((z = this.isZooming) || this.isPanning)) {
                if (pointerCount == 1) {
                    this.isZooming = false;
                    this.isPanning = false;
                    this.maxTouchCount = 0;
                }
                return true;
            }
            if (z && pointerCount == 2) {
                this.isPanning = true;
                PointF pointF13 = this.vTranslateStart;
                PointF pointF14 = this.vTranslate;
                pointF13.set(pointF14.x, pointF14.y);
                if (motionEvent.getActionIndex() == 1) {
                    this.vCenterStart.set(motionEvent.getX(0), motionEvent.getY(0));
                } else {
                    this.vCenterStart.set(motionEvent.getX(1), motionEvent.getY(1));
                }
            }
            if (pointerCount < 3) {
                this.isZooming = false;
            }
            if (pointerCount < 2) {
                this.isPanning = false;
                this.maxTouchCount = 0;
            }
            refreshRequiredTiles(true);
            return true;
        }
        this.anim = null;
        requestDisallowInterceptTouchEvent(true);
        this.maxTouchCount = Math.max(this.maxTouchCount, pointerCount);
        if (pointerCount >= 2) {
            if (this.zoomEnabled) {
                float fDistance2 = distance(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                this.scaleStart = this.scale;
                this.vDistStart = fDistance2;
                PointF pointF15 = this.vTranslateStart;
                PointF pointF16 = this.vTranslate;
                pointF15.set(pointF16.x, pointF16.y);
                this.vCenterStart.set((motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f, (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f);
            } else {
                this.maxTouchCount = 0;
            }
            this.handler.removeMessages(1);
        } else if (!this.isQuickScaling) {
            PointF pointF17 = this.vTranslateStart;
            PointF pointF18 = this.vTranslate;
            pointF17.set(pointF18.x, pointF18.y);
            this.vCenterStart.set(motionEvent.getX(), motionEvent.getY());
            this.handler.sendEmptyMessageDelayed(1, 600L);
        }
        return true;
    }

    private void preDraw() {
        Float f10;
        if (getWidth() == 0 || getHeight() == 0 || this.sWidth <= 0 || this.sHeight <= 0) {
            return;
        }
        if (this.sPendingCenter != null && (f10 = this.pendingScale) != null) {
            this.scale = f10.floatValue();
            if (this.vTranslate == null) {
                this.vTranslate = new PointF();
            }
            this.vTranslate.x = (getWidth() / 2) - (this.scale * this.sPendingCenter.x);
            this.vTranslate.y = (getHeight() / 2) - (this.scale * this.sPendingCenter.y);
            this.sPendingCenter = null;
            this.pendingScale = null;
            fitToBounds(true);
            refreshRequiredTiles(true);
        }
        fitToBounds(false);
    }

    private int px(int i10) {
        return (int) (this.density * i10);
    }

    private void refreshRequiredTiles(boolean z) {
        if (this.decoder == null || this.tileMap == null) {
            return;
        }
        int iMin = Math.min(this.fullImageSampleSize, calculateInSampleSize(this.scale));
        Iterator<Map.Entry<Integer, List<Tile>>> it = this.tileMap.entrySet().iterator();
        while (it.hasNext()) {
            for (Tile tile : it.next().getValue()) {
                if (tile.sampleSize < iMin || (tile.sampleSize > iMin && tile.sampleSize != this.fullImageSampleSize)) {
                    tile.visible = false;
                    if (tile.bitmap != null) {
                        tile.bitmap.recycle();
                        tile.bitmap = null;
                    }
                }
                if (tile.sampleSize == iMin) {
                    if (tileVisible(tile)) {
                        tile.visible = true;
                        if (!tile.loading && tile.bitmap == null && z) {
                            execute(new TileLoadTask(this, this.decoder, tile));
                        }
                    } else if (tile.sampleSize != this.fullImageSampleSize) {
                        tile.visible = false;
                        if (tile.bitmap != null) {
                            tile.bitmap.recycle();
                            tile.bitmap = null;
                        }
                    }
                } else if (tile.sampleSize == this.fullImageSampleSize) {
                    tile.visible = true;
                }
            }
        }
    }

    private void requestDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private void reset(boolean z) {
        OnImageEventListener onImageEventListener;
        debug("reset newImage=" + z, new Object[0]);
        this.scale = 0.0f;
        this.scaleStart = 0.0f;
        this.vTranslate = null;
        this.vTranslateStart = null;
        this.vTranslateBefore = null;
        this.pendingScale = Float.valueOf(0.0f);
        this.sPendingCenter = null;
        this.sRequestedCenter = null;
        this.isZooming = false;
        this.isPanning = false;
        this.isQuickScaling = false;
        this.maxTouchCount = 0;
        this.fullImageSampleSize = 0;
        this.vCenterStart = null;
        this.vDistStart = 0.0f;
        this.quickScaleLastDistance = 0.0f;
        this.quickScaleMoved = false;
        this.quickScaleSCenter = null;
        this.quickScaleVLastPoint = null;
        this.quickScaleVStart = null;
        this.anim = null;
        this.satTemp = null;
        this.matrix = null;
        this.sRect = null;
        if (z) {
            this.uri = null;
            this.decoderLock.writeLock().lock();
            try {
                ImageRegionDecoder imageRegionDecoder = this.decoder;
                if (imageRegionDecoder != null) {
                    imageRegionDecoder.recycle();
                    this.decoder = null;
                }
                this.decoderLock.writeLock().unlock();
                Bitmap bitmap = this.bitmap;
                if (bitmap != null && !this.bitmapIsCached) {
                    bitmap.recycle();
                }
                if (this.bitmap != null && this.bitmapIsCached && (onImageEventListener = this.onImageEventListener) != null) {
                    onImageEventListener.onPreviewReleased();
                }
                this.sWidth = 0;
                this.sHeight = 0;
                this.sOrientation = 0;
                this.sRegion = null;
                this.pRegion = null;
                this.readySent = false;
                this.imageLoadedSent = false;
                this.bitmap = null;
                this.bitmapIsPreview = false;
                this.bitmapIsCached = false;
            } catch (Throwable th2) {
                this.decoderLock.writeLock().unlock();
                throw th2;
            }
        }
        Map<Integer, List<Tile>> map = this.tileMap;
        if (map != null) {
            Iterator<Map.Entry<Integer, List<Tile>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                for (Tile tile : it.next().getValue()) {
                    tile.visible = false;
                    if (tile.bitmap != null) {
                        tile.bitmap.recycle();
                        tile.bitmap = null;
                    }
                }
            }
            this.tileMap = null;
        }
        setGestureDetector(getContext());
    }

    private void restoreState(ImageViewState imageViewState) {
        if (imageViewState == null || !VALID_ORIENTATIONS.contains(Integer.valueOf(imageViewState.getOrientation()))) {
            return;
        }
        this.orientation = imageViewState.getOrientation();
        this.pendingScale = Float.valueOf(imageViewState.getScale());
        this.sPendingCenter = imageViewState.getCenter();
        invalidate();
    }

    private int sHeight() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.sWidth : this.sHeight;
    }

    private int sWidth() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.sHeight : this.sWidth;
    }

    private void sendStateChanged(float f10, PointF pointF, int i10) {
        OnStateChangedListener onStateChangedListener = this.onStateChangedListener;
        if (onStateChangedListener != null) {
            float f11 = this.scale;
            if (f11 != f10) {
                onStateChangedListener.onScaleChanged(f11, i10);
            }
        }
        if (this.onStateChangedListener == null || this.vTranslate.equals(pointF)) {
            return;
        }
        this.onStateChangedListener.onCenterChanged(getCenter(), i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGestureDetector(final Context context) {
        this.detector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (!SubsamplingScaleImageView.this.zoomEnabled || !SubsamplingScaleImageView.this.readySent || SubsamplingScaleImageView.this.vTranslate == null) {
                    return super.onDoubleTapEvent(motionEvent);
                }
                SubsamplingScaleImageView.this.setGestureDetector(context);
                if (!SubsamplingScaleImageView.this.quickScaleEnabled) {
                    SubsamplingScaleImageView subsamplingScaleImageView = SubsamplingScaleImageView.this;
                    subsamplingScaleImageView.doubleTapZoom(subsamplingScaleImageView.viewToSourceCoord(new PointF(motionEvent.getX(), motionEvent.getY())), new PointF(motionEvent.getX(), motionEvent.getY()));
                    return true;
                }
                SubsamplingScaleImageView.this.vCenterStart = new PointF(motionEvent.getX(), motionEvent.getY());
                SubsamplingScaleImageView.this.vTranslateStart = new PointF(SubsamplingScaleImageView.this.vTranslate.x, SubsamplingScaleImageView.this.vTranslate.y);
                SubsamplingScaleImageView subsamplingScaleImageView2 = SubsamplingScaleImageView.this;
                subsamplingScaleImageView2.scaleStart = subsamplingScaleImageView2.scale;
                SubsamplingScaleImageView.this.isQuickScaling = true;
                SubsamplingScaleImageView.this.isZooming = true;
                SubsamplingScaleImageView.this.quickScaleLastDistance = -1.0f;
                SubsamplingScaleImageView subsamplingScaleImageView3 = SubsamplingScaleImageView.this;
                subsamplingScaleImageView3.quickScaleSCenter = subsamplingScaleImageView3.viewToSourceCoord(subsamplingScaleImageView3.vCenterStart);
                SubsamplingScaleImageView.this.quickScaleVStart = new PointF(motionEvent.getX(), motionEvent.getY());
                SubsamplingScaleImageView.this.quickScaleVLastPoint = new PointF(SubsamplingScaleImageView.this.quickScaleSCenter.x, SubsamplingScaleImageView.this.quickScaleSCenter.y);
                SubsamplingScaleImageView.this.quickScaleMoved = false;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
                if (!SubsamplingScaleImageView.this.panEnabled || !SubsamplingScaleImageView.this.readySent || SubsamplingScaleImageView.this.vTranslate == null || motionEvent == null || motionEvent2 == null || ((Math.abs(motionEvent.getX() - motionEvent2.getX()) <= 50.0f && Math.abs(motionEvent.getY() - motionEvent2.getY()) <= 50.0f) || ((Math.abs(f10) <= 500.0f && Math.abs(f11) <= 500.0f) || SubsamplingScaleImageView.this.isZooming))) {
                    return super.onFling(motionEvent, motionEvent2, f10, f11);
                }
                PointF pointF = new PointF((f10 * 0.25f) + SubsamplingScaleImageView.this.vTranslate.x, (f11 * 0.25f) + SubsamplingScaleImageView.this.vTranslate.y);
                new AnimationBuilder(new PointF(((SubsamplingScaleImageView.this.getWidth() / 2) - pointF.x) / SubsamplingScaleImageView.this.scale, ((SubsamplingScaleImageView.this.getHeight() / 2) - pointF.y) / SubsamplingScaleImageView.this.scale)).withEasing(1).withPanLimited(false).withOrigin(3).start();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                SubsamplingScaleImageView.this.performClick();
                return true;
            }
        });
        this.singleDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.3
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                SubsamplingScaleImageView.this.performClick();
                return true;
            }
        });
    }

    private void setMatrixArray(float[] fArr, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
        fArr[3] = f13;
        fArr[4] = f14;
        fArr[5] = f15;
        fArr[6] = f16;
        fArr[7] = f17;
    }

    public static void setPreferredBitmapConfig(Bitmap.Config config) {
        preferredBitmapConfig = config;
    }

    private void sourceToViewRect(Rect rect, Rect rect2) {
        rect2.set((int) sourceToViewX(rect.left), (int) sourceToViewY(rect.top), (int) sourceToViewX(rect.right), (int) sourceToViewY(rect.bottom));
    }

    private float sourceToViewX(float f10) {
        PointF pointF = this.vTranslate;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f10 * this.scale) + pointF.x;
    }

    private float sourceToViewY(float f10) {
        PointF pointF = this.vTranslate;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f10 * this.scale) + pointF.y;
    }

    private boolean tileVisible(Tile tile) {
        return viewToSourceX(0.0f) <= ((float) tile.sRect.right) && ((float) tile.sRect.left) <= viewToSourceX((float) getWidth()) && viewToSourceY(0.0f) <= ((float) tile.sRect.bottom) && ((float) tile.sRect.top) <= viewToSourceY((float) getHeight());
    }

    private PointF vTranslateForSCenter(float f10, float f11, float f12) {
        int width = (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2) + getPaddingLeft();
        int height = (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2) + getPaddingTop();
        if (this.satTemp == null) {
            this.satTemp = new ScaleAndTranslate(0.0f, new PointF(0.0f, 0.0f));
        }
        this.satTemp.scale = f12;
        this.satTemp.vTranslate.set(width - (f10 * f12), height - (f11 * f12));
        fitToBounds(true, this.satTemp);
        return this.satTemp.vTranslate;
    }

    private float viewToSourceX(float f10) {
        PointF pointF = this.vTranslate;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f10 - pointF.x) / this.scale;
    }

    private float viewToSourceY(float f10) {
        PointF pointF = this.vTranslate;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f10 - pointF.y) / this.scale;
    }

    public AnimationBuilder animateCenter(PointF pointF) {
        if (isReady()) {
            return new AnimationBuilder(pointF);
        }
        return null;
    }

    public AnimationBuilder animateScale(float f10) {
        if (isReady()) {
            return new AnimationBuilder(f10);
        }
        return null;
    }

    public AnimationBuilder animateScaleAndCenter(float f10, PointF pointF) {
        if (isReady()) {
            return new AnimationBuilder(f10, pointF);
        }
        return null;
    }

    public final int getAppliedOrientation() {
        return getRequiredRotation();
    }

    public final PointF getCenter() {
        return viewToSourceCoord(getWidth() / 2, getHeight() / 2);
    }

    public float getMaxScale() {
        return this.maxScale;
    }

    public final float getMinScale() {
        return minScale();
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final void getPanRemaining(RectF rectF) {
        if (isReady()) {
            float fSWidth = this.scale * sWidth();
            float fSHeight = this.scale * sHeight();
            int i10 = this.panLimit;
            if (i10 == 3) {
                rectF.top = Math.max(0.0f, -(this.vTranslate.y - (getHeight() / 2)));
                rectF.left = Math.max(0.0f, -(this.vTranslate.x - (getWidth() / 2)));
                rectF.bottom = Math.max(0.0f, this.vTranslate.y - ((getHeight() / 2) - fSHeight));
                rectF.right = Math.max(0.0f, this.vTranslate.x - ((getWidth() / 2) - fSWidth));
                return;
            }
            if (i10 == 2) {
                rectF.top = Math.max(0.0f, -(this.vTranslate.y - getHeight()));
                rectF.left = Math.max(0.0f, -(this.vTranslate.x - getWidth()));
                rectF.bottom = Math.max(0.0f, this.vTranslate.y + fSHeight);
                rectF.right = Math.max(0.0f, this.vTranslate.x + fSWidth);
                return;
            }
            rectF.top = Math.max(0.0f, -this.vTranslate.y);
            rectF.left = Math.max(0.0f, -this.vTranslate.x);
            rectF.bottom = Math.max(0.0f, (fSHeight + this.vTranslate.y) - getHeight());
            rectF.right = Math.max(0.0f, (fSWidth + this.vTranslate.x) - getWidth());
        }
    }

    public final int getSHeight() {
        return this.sHeight;
    }

    public final int getSWidth() {
        return this.sWidth;
    }

    public final float getScale() {
        return this.scale;
    }

    public final ImageViewState getState() {
        if (this.vTranslate == null || this.sWidth <= 0 || this.sHeight <= 0) {
            return null;
        }
        return new ImageViewState(getScale(), getCenter(), getOrientation());
    }

    public boolean hasImage() {
        return (this.uri == null && this.bitmap == null) ? false : true;
    }

    public final boolean isImageLoaded() {
        return this.imageLoadedSent;
    }

    public final boolean isPanEnabled() {
        return this.panEnabled;
    }

    public final boolean isQuickScaleEnabled() {
        return this.quickScaleEnabled;
    }

    public final boolean isReady() {
        return this.readySent;
    }

    public final boolean isZoomEnabled() {
        return this.zoomEnabled;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i10;
        float height;
        int i11;
        int i12;
        super.onDraw(canvas);
        createPaints();
        if (this.sWidth == 0 || this.sHeight == 0 || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.tileMap == null && this.decoder != null) {
            initialiseBaseLayer(getMaxBitmapDimensions(canvas));
        }
        if (checkReady()) {
            preDraw();
            Anim anim = this.anim;
            if (anim != null && anim.vFocusStart != null) {
                float f10 = this.scale;
                if (this.vTranslateBefore == null) {
                    this.vTranslateBefore = new PointF(0.0f, 0.0f);
                }
                this.vTranslateBefore.set(this.vTranslate);
                long jCurrentTimeMillis = System.currentTimeMillis() - this.anim.time;
                boolean z = jCurrentTimeMillis > this.anim.duration;
                long jMin = Math.min(jCurrentTimeMillis, this.anim.duration);
                this.scale = ease(this.anim.easing, jMin, this.anim.scaleStart, this.anim.scaleEnd - this.anim.scaleStart, this.anim.duration);
                float fEase = ease(this.anim.easing, jMin, this.anim.vFocusStart.x, this.anim.vFocusEnd.x - this.anim.vFocusStart.x, this.anim.duration);
                float fEase2 = ease(this.anim.easing, jMin, this.anim.vFocusStart.y, this.anim.vFocusEnd.y - this.anim.vFocusStart.y, this.anim.duration);
                this.vTranslate.x -= sourceToViewX(this.anim.sCenterEnd.x) - fEase;
                this.vTranslate.y -= sourceToViewY(this.anim.sCenterEnd.y) - fEase2;
                fitToBounds(z || this.anim.scaleStart == this.anim.scaleEnd);
                sendStateChanged(f10, this.vTranslateBefore, this.anim.origin);
                refreshRequiredTiles(z);
                if (z) {
                    if (this.anim.listener != null) {
                        try {
                            this.anim.listener.onComplete();
                        } catch (Exception unused) {
                        }
                    }
                    this.anim = null;
                }
                invalidate();
            }
            if (this.tileMap == null || !isBaseLayerReady()) {
                i10 = 5;
                if (this.bitmap != null) {
                    float width = this.scale;
                    if (this.bitmapIsPreview) {
                        width *= this.sWidth / r0.getWidth();
                        height = this.scale * (this.sHeight / this.bitmap.getHeight());
                    } else {
                        height = width;
                    }
                    if (this.matrix == null) {
                        this.matrix = new Matrix();
                    }
                    this.matrix.reset();
                    this.matrix.postScale(width, height);
                    this.matrix.postRotate(getRequiredRotation());
                    Matrix matrix = this.matrix;
                    PointF pointF = this.vTranslate;
                    matrix.postTranslate(pointF.x, pointF.y);
                    if (getRequiredRotation() == 180) {
                        Matrix matrix2 = this.matrix;
                        float f11 = this.scale;
                        matrix2.postTranslate(this.sWidth * f11, f11 * this.sHeight);
                    } else if (getRequiredRotation() == 90) {
                        this.matrix.postTranslate(this.scale * this.sHeight, 0.0f);
                    } else if (getRequiredRotation() == 270) {
                        this.matrix.postTranslate(0.0f, this.scale * this.sWidth);
                    }
                    if (this.tileBgPaint != null) {
                        if (this.sRect == null) {
                            this.sRect = new RectF();
                        }
                        this.sRect.set(0.0f, 0.0f, this.bitmapIsPreview ? this.bitmap.getWidth() : this.sWidth, this.bitmapIsPreview ? this.bitmap.getHeight() : this.sHeight);
                        this.matrix.mapRect(this.sRect);
                        canvas.drawRect(this.sRect, this.tileBgPaint);
                    }
                    canvas.drawBitmap(this.bitmap, this.matrix, this.bitmapPaint);
                }
            } else {
                int iMin = Math.min(this.fullImageSampleSize, calculateInSampleSize(this.scale));
                boolean z4 = false;
                for (Map.Entry<Integer, List<Tile>> entry : this.tileMap.entrySet()) {
                    if (entry.getKey().intValue() == iMin) {
                        for (Tile tile : entry.getValue()) {
                            if (tile.visible && (tile.loading || tile.bitmap == null)) {
                                z4 = true;
                            }
                        }
                    }
                }
                for (Map.Entry<Integer, List<Tile>> entry2 : this.tileMap.entrySet()) {
                    if (entry2.getKey().intValue() == iMin || z4) {
                        for (Tile tile2 : entry2.getValue()) {
                            sourceToViewRect(tile2.sRect, tile2.vRect);
                            if (tile2.loading || tile2.bitmap == null) {
                                i11 = iMin;
                                i12 = 5;
                                if (tile2.loading && this.debug) {
                                    canvas.drawText("LOADING", tile2.vRect.left + px(5), tile2.vRect.top + px(35), this.debugTextPaint);
                                }
                            } else {
                                if (this.tileBgPaint != null) {
                                    canvas.drawRect(tile2.vRect, this.tileBgPaint);
                                }
                                if (this.matrix == null) {
                                    this.matrix = new Matrix();
                                }
                                this.matrix.reset();
                                i12 = 5;
                                i11 = iMin;
                                setMatrixArray(this.srcArray, 0.0f, 0.0f, tile2.bitmap.getWidth(), 0.0f, tile2.bitmap.getWidth(), tile2.bitmap.getHeight(), 0.0f, tile2.bitmap.getHeight());
                                if (getRequiredRotation() == 0) {
                                    setMatrixArray(this.dstArray, tile2.vRect.left, tile2.vRect.top, tile2.vRect.right, tile2.vRect.top, tile2.vRect.right, tile2.vRect.bottom, tile2.vRect.left, tile2.vRect.bottom);
                                } else if (getRequiredRotation() == 90) {
                                    setMatrixArray(this.dstArray, tile2.vRect.right, tile2.vRect.top, tile2.vRect.right, tile2.vRect.bottom, tile2.vRect.left, tile2.vRect.bottom, tile2.vRect.left, tile2.vRect.top);
                                } else if (getRequiredRotation() == 180) {
                                    setMatrixArray(this.dstArray, tile2.vRect.right, tile2.vRect.bottom, tile2.vRect.left, tile2.vRect.bottom, tile2.vRect.left, tile2.vRect.top, tile2.vRect.right, tile2.vRect.top);
                                } else if (getRequiredRotation() == 270) {
                                    setMatrixArray(this.dstArray, tile2.vRect.left, tile2.vRect.bottom, tile2.vRect.left, tile2.vRect.top, tile2.vRect.right, tile2.vRect.top, tile2.vRect.right, tile2.vRect.bottom);
                                }
                                this.matrix.setPolyToPoly(this.srcArray, 0, this.dstArray, 0, 4);
                                canvas.drawBitmap(tile2.bitmap, this.matrix, this.bitmapPaint);
                                if (this.debug) {
                                    canvas.drawRect(tile2.vRect, this.debugLinePaint);
                                }
                            }
                            if (tile2.visible && this.debug) {
                                canvas.drawText("ISS " + tile2.sampleSize + " RECT " + tile2.sRect.top + "," + tile2.sRect.left + "," + tile2.sRect.bottom + "," + tile2.sRect.right, tile2.vRect.left + px(i12), tile2.vRect.top + px(15), this.debugTextPaint);
                            }
                            iMin = i11;
                        }
                    }
                    iMin = iMin;
                }
                i10 = 5;
            }
            if (this.debug) {
                StringBuilder sb2 = new StringBuilder("Scale: ");
                Locale locale = Locale.ENGLISH;
                sb2.append(String.format(locale, "%.2f", Float.valueOf(this.scale)));
                sb2.append(" (");
                sb2.append(String.format(locale, "%.2f", Float.valueOf(minScale())));
                sb2.append(" - ");
                sb2.append(String.format(locale, "%.2f", Float.valueOf(this.maxScale)));
                sb2.append(")");
                canvas.drawText(sb2.toString(), px(i10), px(15), this.debugTextPaint);
                canvas.drawText("Translate: " + String.format(locale, "%.2f", Float.valueOf(this.vTranslate.x)) + ":" + String.format(locale, "%.2f", Float.valueOf(this.vTranslate.y)), px(i10), px(30), this.debugTextPaint);
                PointF center = getCenter();
                canvas.drawText("Source center: " + String.format(locale, "%.2f", Float.valueOf(center.x)) + ":" + String.format(locale, "%.2f", Float.valueOf(center.y)), px(i10), px(45), this.debugTextPaint);
                Anim anim2 = this.anim;
                if (anim2 != null) {
                    PointF pointFSourceToViewCoord = sourceToViewCoord(anim2.sCenterStart);
                    PointF pointFSourceToViewCoord2 = sourceToViewCoord(this.anim.sCenterEndRequested);
                    PointF pointFSourceToViewCoord3 = sourceToViewCoord(this.anim.sCenterEnd);
                    canvas.drawCircle(pointFSourceToViewCoord.x, pointFSourceToViewCoord.y, px(10), this.debugLinePaint);
                    this.debugLinePaint.setColor(-65536);
                    canvas.drawCircle(pointFSourceToViewCoord2.x, pointFSourceToViewCoord2.y, px(20), this.debugLinePaint);
                    this.debugLinePaint.setColor(-16776961);
                    canvas.drawCircle(pointFSourceToViewCoord3.x, pointFSourceToViewCoord3.y, px(25), this.debugLinePaint);
                    this.debugLinePaint.setColor(-16711681);
                    canvas.drawCircle(getWidth() / 2, getHeight() / 2, px(30), this.debugLinePaint);
                }
                if (this.vCenterStart != null) {
                    this.debugLinePaint.setColor(-65536);
                    PointF pointF2 = this.vCenterStart;
                    canvas.drawCircle(pointF2.x, pointF2.y, px(20), this.debugLinePaint);
                }
                if (this.quickScaleSCenter != null) {
                    this.debugLinePaint.setColor(-16776961);
                    canvas.drawCircle(sourceToViewX(this.quickScaleSCenter.x), sourceToViewY(this.quickScaleSCenter.y), px(35), this.debugLinePaint);
                }
                if (this.quickScaleVStart != null && this.isQuickScaling) {
                    this.debugLinePaint.setColor(-16711681);
                    PointF pointF3 = this.quickScaleVStart;
                    canvas.drawCircle(pointF3.x, pointF3.y, px(30), this.debugLinePaint);
                }
                this.debugLinePaint.setColor(-65281);
            }
        }
    }

    public void onImageLoaded() {
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        boolean z = mode != 1073741824;
        boolean z4 = mode2 != 1073741824;
        if (this.sWidth > 0 && this.sHeight > 0) {
            if (z && z4) {
                size = sWidth();
                size2 = sHeight();
            } else if (z4) {
                double dSHeight = sHeight();
                double dSWidth = sWidth();
                Double.isNaN(dSHeight);
                Double.isNaN(dSWidth);
                double d10 = dSHeight / dSWidth;
                double d11 = size;
                Double.isNaN(d11);
                size2 = (int) (d10 * d11);
            } else if (z) {
                double dSWidth2 = sWidth();
                double dSHeight2 = sHeight();
                Double.isNaN(dSWidth2);
                Double.isNaN(dSHeight2);
                double d12 = dSWidth2 / dSHeight2;
                double d13 = size2;
                Double.isNaN(d13);
                size = (int) (d12 * d13);
            }
        }
        setMeasuredDimension(Math.max(size, getSuggestedMinimumWidth()), Math.max(size2, getSuggestedMinimumHeight()));
    }

    public void onReady() {
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        debug("onSizeChanged %dx%d -> %dx%d", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i10), Integer.valueOf(i11));
        PointF center = getCenter();
        if (!this.readySent || center == null) {
            return;
        }
        this.anim = null;
        this.pendingScale = Float.valueOf(this.scale);
        this.sPendingCenter = center;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector;
        Anim anim = this.anim;
        if (anim != null && !anim.interruptible) {
            requestDisallowInterceptTouchEvent(true);
            return true;
        }
        Anim anim2 = this.anim;
        if (anim2 != null && anim2.listener != null) {
            try {
                this.anim.listener.onInterruptedByUser();
            } catch (Exception unused) {
            }
        }
        this.anim = null;
        if (this.vTranslate == null) {
            GestureDetector gestureDetector2 = this.singleDetector;
            if (gestureDetector2 != null) {
                gestureDetector2.onTouchEvent(motionEvent);
            }
            return true;
        }
        if (!this.isQuickScaling && ((gestureDetector = this.detector) == null || gestureDetector.onTouchEvent(motionEvent))) {
            this.isZooming = false;
            this.isPanning = false;
            this.maxTouchCount = 0;
            return true;
        }
        if (this.vTranslateStart == null) {
            this.vTranslateStart = new PointF(0.0f, 0.0f);
        }
        if (this.vTranslateBefore == null) {
            this.vTranslateBefore = new PointF(0.0f, 0.0f);
        }
        if (this.vCenterStart == null) {
            this.vCenterStart = new PointF(0.0f, 0.0f);
        }
        float f10 = this.scale;
        this.vTranslateBefore.set(this.vTranslate);
        boolean zOnTouchEventInternal = onTouchEventInternal(motionEvent);
        sendStateChanged(f10, this.vTranslateBefore, 2);
        return zOnTouchEventInternal || super.onTouchEvent(motionEvent);
    }

    public void recycle() {
        reset(true);
        this.bitmapPaint = null;
        this.debugTextPaint = null;
        this.debugLinePaint = null;
        this.tileBgPaint = null;
    }

    public final void resetScaleAndCenter() {
        this.anim = null;
        this.pendingScale = Float.valueOf(limitedScale(0.0f));
        if (isReady()) {
            this.sPendingCenter = new PointF(sWidth() / 2, sHeight() / 2);
        } else {
            this.sPendingCenter = new PointF(0.0f, 0.0f);
        }
        invalidate();
    }

    public final void setBitmapDecoderClass(Class<? extends ImageDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.bitmapDecoderFactory = new CompatDecoderFactory(cls);
    }

    public final void setBitmapDecoderFactory(DecoderFactory<? extends ImageDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.bitmapDecoderFactory = decoderFactory;
    }

    public final void setDebug(boolean z) {
        this.debug = z;
    }

    public final void setDoubleTapZoomDpi(int i10) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setDoubleTapZoomScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i10);
    }

    public final void setDoubleTapZoomDuration(int i10) {
        this.doubleTapZoomDuration = Math.max(0, i10);
    }

    public final void setDoubleTapZoomScale(float f10) {
        this.doubleTapZoomScale = f10;
    }

    public final void setDoubleTapZoomStyle(int i10) {
        if (!VALID_ZOOM_STYLES.contains(Integer.valueOf(i10))) {
            throw new IllegalArgumentException(b.a(i10, "Invalid zoom style: "));
        }
        this.doubleTapZoomStyle = i10;
    }

    public void setEagerLoadingEnabled(boolean z) {
        this.eagerLoadingEnabled = z;
    }

    public void setExecutor(Executor executor) {
        if (executor == null) {
            throw new NullPointerException("Executor must not be null");
        }
        this.executor = executor;
    }

    public final void setImage(ImageSource imageSource) {
        setImage(imageSource, null, null);
    }

    public final void setMaxScale(float f10) {
        this.maxScale = f10;
    }

    public void setMaxTileSize(int i10) {
        this.maxTileWidth = i10;
        this.maxTileHeight = i10;
    }

    public final void setMaximumDpi(int i10) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMinScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i10);
    }

    public final void setMinScale(float f10) {
        this.minScale = f10;
    }

    public final void setMinimumDpi(int i10) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMaxScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i10);
    }

    public final void setMinimumScaleType(int i10) {
        if (!VALID_SCALE_TYPES.contains(Integer.valueOf(i10))) {
            throw new IllegalArgumentException(b.a(i10, "Invalid scale type: "));
        }
        this.minimumScaleType = i10;
        if (isReady()) {
            fitToBounds(true);
            invalidate();
        }
    }

    public void setMinimumTileDpi(int i10) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.minimumTileDpi = (int) Math.min((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, i10);
        if (isReady()) {
            reset(false);
            invalidate();
        }
    }

    public void setOnImageEventListener(OnImageEventListener onImageEventListener) {
        this.onImageEventListener = onImageEventListener;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.onLongClickListener = onLongClickListener;
    }

    public void setOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.onStateChangedListener = onStateChangedListener;
    }

    public final void setOrientation(int i10) {
        if (!VALID_ORIENTATIONS.contains(Integer.valueOf(i10))) {
            throw new IllegalArgumentException(b.a(i10, "Invalid orientation: "));
        }
        this.orientation = i10;
        reset(false);
        invalidate();
        requestLayout();
    }

    public final void setPanEnabled(boolean z) {
        PointF pointF;
        this.panEnabled = z;
        if (z || (pointF = this.vTranslate) == null) {
            return;
        }
        pointF.x = (getWidth() / 2) - (this.scale * (sWidth() / 2));
        this.vTranslate.y = (getHeight() / 2) - (this.scale * (sHeight() / 2));
        if (isReady()) {
            refreshRequiredTiles(true);
            invalidate();
        }
    }

    public final void setPanLimit(int i10) {
        if (!VALID_PAN_LIMITS.contains(Integer.valueOf(i10))) {
            throw new IllegalArgumentException(b.a(i10, "Invalid pan limit: "));
        }
        this.panLimit = i10;
        if (isReady()) {
            fitToBounds(true);
            invalidate();
        }
    }

    public final void setQuickScaleEnabled(boolean z) {
        this.quickScaleEnabled = z;
    }

    public final void setRegionDecoderClass(Class<? extends ImageRegionDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.regionDecoderFactory = new CompatDecoderFactory(cls);
    }

    public final void setRegionDecoderFactory(DecoderFactory<? extends ImageRegionDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.regionDecoderFactory = decoderFactory;
    }

    public final void setScaleAndCenter(float f10, PointF pointF) {
        this.anim = null;
        this.pendingScale = Float.valueOf(f10);
        this.sPendingCenter = pointF;
        this.sRequestedCenter = pointF;
        invalidate();
    }

    public final void setTileBackgroundColor(int i10) {
        if (Color.alpha(i10) == 0) {
            this.tileBgPaint = null;
        } else {
            Paint paint = new Paint();
            this.tileBgPaint = paint;
            paint.setStyle(Paint.Style.FILL);
            this.tileBgPaint.setColor(i10);
        }
        invalidate();
    }

    public final void setZoomEnabled(boolean z) {
        this.zoomEnabled = z;
    }

    public final PointF sourceToViewCoord(PointF pointF) {
        return sourceToViewCoord(pointF.x, pointF.y, new PointF());
    }

    public void viewToFileRect(Rect rect, Rect rect2) {
        if (this.vTranslate == null || !this.readySent) {
            return;
        }
        rect2.set((int) viewToSourceX(rect.left), (int) viewToSourceY(rect.top), (int) viewToSourceX(rect.right), (int) viewToSourceY(rect.bottom));
        fileSRect(rect2, rect2);
        rect2.set(Math.max(0, rect2.left), Math.max(0, rect2.top), Math.min(this.sWidth, rect2.right), Math.min(this.sHeight, rect2.bottom));
        Rect rect3 = this.sRegion;
        if (rect3 != null) {
            rect2.offset(rect3.left, rect3.top);
        }
    }

    public final PointF viewToSourceCoord(PointF pointF) {
        return viewToSourceCoord(pointF.x, pointF.y, new PointF());
    }

    public void visibleFileRect(Rect rect) {
        if (this.vTranslate == null || !this.readySent) {
            return;
        }
        rect.set(0, 0, getWidth(), getHeight());
        viewToFileRect(rect, rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onImageLoaded(Bitmap bitmap, int i10, boolean z) {
        OnImageEventListener onImageEventListener;
        try {
            debug("onImageLoaded", new Object[0]);
            int i11 = this.sWidth;
            if (i11 > 0 && this.sHeight > 0 && (i11 != bitmap.getWidth() || this.sHeight != bitmap.getHeight())) {
                reset(false);
            }
            Bitmap bitmap2 = this.bitmap;
            if (bitmap2 != null && !this.bitmapIsCached) {
                bitmap2.recycle();
            }
            if (this.bitmap != null && this.bitmapIsCached && (onImageEventListener = this.onImageEventListener) != null) {
                onImageEventListener.onPreviewReleased();
            }
            this.bitmapIsPreview = false;
            this.bitmapIsCached = z;
            this.bitmap = bitmap;
            this.sWidth = bitmap.getWidth();
            this.sHeight = bitmap.getHeight();
            this.sOrientation = i10;
            boolean zCheckReady = checkReady();
            boolean zCheckImageLoaded = checkImageLoaded();
            if (zCheckReady || zCheckImageLoaded) {
                invalidate();
                requestLayout();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void setImage(ImageSource imageSource, ImageViewState imageViewState) {
        setImage(imageSource, null, imageViewState);
    }

    public final PointF sourceToViewCoord(float f10, float f11) {
        return sourceToViewCoord(f10, f11, new PointF());
    }

    public final PointF viewToSourceCoord(float f10, float f11) {
        return viewToSourceCoord(f10, f11, new PointF());
    }

    public final void setImage(ImageSource imageSource, ImageSource imageSource2) {
        setImage(imageSource, imageSource2, null);
    }

    public void setMaxTileSize(int i10, int i11) {
        this.maxTileWidth = i10;
        this.maxTileHeight = i11;
    }

    public final PointF sourceToViewCoord(PointF pointF, PointF pointF2) {
        return sourceToViewCoord(pointF.x, pointF.y, pointF2);
    }

    public final PointF viewToSourceCoord(PointF pointF, PointF pointF2) {
        return viewToSourceCoord(pointF.x, pointF.y, pointF2);
    }

    public final class AnimationBuilder {
        private long duration;
        private int easing;
        private boolean interruptible;
        private OnAnimationEventListener listener;
        private int origin;
        private boolean panLimited;
        private final PointF targetSCenter;
        private final float targetScale;
        private final PointF vFocus;

        /* JADX INFO: Access modifiers changed from: private */
        public AnimationBuilder withOrigin(int i10) {
            this.origin = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AnimationBuilder withPanLimited(boolean z) {
            this.panLimited = z;
            return this;
        }

        public void start() {
            PointF pointFLimitedSCenter;
            if (SubsamplingScaleImageView.this.anim != null && SubsamplingScaleImageView.this.anim.listener != null) {
                try {
                    SubsamplingScaleImageView.this.anim.listener.onInterruptedByNewAnim();
                } catch (Exception unused) {
                    String unused2 = SubsamplingScaleImageView.TAG;
                }
            }
            int width = (((SubsamplingScaleImageView.this.getWidth() - SubsamplingScaleImageView.this.getPaddingRight()) - SubsamplingScaleImageView.this.getPaddingLeft()) / 2) + SubsamplingScaleImageView.this.getPaddingLeft();
            int height = (((SubsamplingScaleImageView.this.getHeight() - SubsamplingScaleImageView.this.getPaddingBottom()) - SubsamplingScaleImageView.this.getPaddingTop()) / 2) + SubsamplingScaleImageView.this.getPaddingTop();
            float fLimitedScale = SubsamplingScaleImageView.this.limitedScale(this.targetScale);
            if (this.panLimited) {
                SubsamplingScaleImageView subsamplingScaleImageView = SubsamplingScaleImageView.this;
                PointF pointF = this.targetSCenter;
                pointFLimitedSCenter = subsamplingScaleImageView.limitedSCenter(pointF.x, pointF.y, fLimitedScale, new PointF());
            } else {
                pointFLimitedSCenter = this.targetSCenter;
            }
            SubsamplingScaleImageView.this.anim = new Anim();
            SubsamplingScaleImageView.this.anim.scaleStart = SubsamplingScaleImageView.this.scale;
            SubsamplingScaleImageView.this.anim.scaleEnd = fLimitedScale;
            SubsamplingScaleImageView.this.anim.time = System.currentTimeMillis();
            SubsamplingScaleImageView.this.anim.sCenterEndRequested = pointFLimitedSCenter;
            SubsamplingScaleImageView.this.anim.sCenterStart = SubsamplingScaleImageView.this.getCenter();
            SubsamplingScaleImageView.this.anim.sCenterEnd = pointFLimitedSCenter;
            SubsamplingScaleImageView.this.anim.vFocusStart = SubsamplingScaleImageView.this.sourceToViewCoord(pointFLimitedSCenter);
            SubsamplingScaleImageView.this.anim.vFocusEnd = new PointF(width, height);
            SubsamplingScaleImageView.this.anim.duration = this.duration;
            SubsamplingScaleImageView.this.anim.interruptible = this.interruptible;
            SubsamplingScaleImageView.this.anim.easing = this.easing;
            SubsamplingScaleImageView.this.anim.origin = this.origin;
            SubsamplingScaleImageView.this.anim.time = System.currentTimeMillis();
            SubsamplingScaleImageView.this.anim.listener = this.listener;
            PointF pointF2 = this.vFocus;
            if (pointF2 != null) {
                float f10 = pointF2.x - (SubsamplingScaleImageView.this.anim.sCenterStart.x * fLimitedScale);
                float f11 = this.vFocus.y - (SubsamplingScaleImageView.this.anim.sCenterStart.y * fLimitedScale);
                ScaleAndTranslate scaleAndTranslate = new ScaleAndTranslate(fLimitedScale, new PointF(f10, f11));
                SubsamplingScaleImageView.this.fitToBounds(true, scaleAndTranslate);
                SubsamplingScaleImageView.this.anim.vFocusEnd = new PointF((scaleAndTranslate.vTranslate.x - f10) + this.vFocus.x, (scaleAndTranslate.vTranslate.y - f11) + this.vFocus.y);
            }
            SubsamplingScaleImageView.this.invalidate();
        }

        public AnimationBuilder withDuration(long j10) {
            this.duration = j10;
            return this;
        }

        public AnimationBuilder withEasing(int i10) {
            if (!SubsamplingScaleImageView.VALID_EASING_STYLES.contains(Integer.valueOf(i10))) {
                throw new IllegalArgumentException(b.a(i10, "Unknown easing type: "));
            }
            this.easing = i10;
            return this;
        }

        public AnimationBuilder withInterruptible(boolean z) {
            this.interruptible = z;
            return this;
        }

        public AnimationBuilder withOnAnimationEventListener(OnAnimationEventListener onAnimationEventListener) {
            this.listener = onAnimationEventListener;
            return this;
        }

        private AnimationBuilder(PointF pointF) {
            this.duration = 500L;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = SubsamplingScaleImageView.this.scale;
            this.targetSCenter = pointF;
            this.vFocus = null;
        }

        private AnimationBuilder(float f10) {
            this.duration = 500L;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = f10;
            this.targetSCenter = SubsamplingScaleImageView.this.getCenter();
            this.vFocus = null;
        }

        private AnimationBuilder(float f10, PointF pointF) {
            this.duration = 500L;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = f10;
            this.targetSCenter = pointF;
            this.vFocus = null;
        }

        private AnimationBuilder(float f10, PointF pointF, PointF pointF2) {
            this.duration = 500L;
            this.easing = 2;
            this.origin = 1;
            this.interruptible = true;
            this.panLimited = true;
            this.targetScale = f10;
            this.targetSCenter = pointF;
            this.vFocus = pointF2;
        }
    }

    public final void setImage(ImageSource imageSource, ImageSource imageSource2, ImageViewState imageViewState) {
        if (imageSource != null) {
            reset(true);
            if (imageViewState != null) {
                restoreState(imageViewState);
            }
            if (imageSource2 != null) {
                if (imageSource.getBitmap() == null) {
                    if (imageSource.getSWidth() > 0 && imageSource.getSHeight() > 0) {
                        this.sWidth = imageSource.getSWidth();
                        this.sHeight = imageSource.getSHeight();
                        this.pRegion = imageSource2.getSRegion();
                        if (imageSource2.getBitmap() != null) {
                            this.bitmapIsCached = imageSource2.isCached();
                            onPreviewLoaded(imageSource2.getBitmap());
                        } else {
                            Uri uri = imageSource2.getUri();
                            if (uri == null && imageSource2.getResource() != null) {
                                uri = Uri.parse("android.resource://" + getContext().getPackageName() + "/" + imageSource2.getResource());
                            }
                            execute(new BitmapLoadTask(this, getContext(), this.bitmapDecoderFactory, uri, true));
                        }
                    } else {
                        throw new IllegalArgumentException("Preview image cannot be used unless dimensions are provided for the main image");
                    }
                } else {
                    throw new IllegalArgumentException("Preview image cannot be used when a bitmap is provided for the main image");
                }
            }
            if (imageSource.getBitmap() != null && imageSource.getSRegion() != null) {
                onImageLoaded(Bitmap.createBitmap(imageSource.getBitmap(), imageSource.getSRegion().left, imageSource.getSRegion().top, imageSource.getSRegion().width(), imageSource.getSRegion().height()), 0, false);
                return;
            }
            if (imageSource.getBitmap() != null) {
                onImageLoaded(imageSource.getBitmap(), 0, imageSource.isCached());
                return;
            }
            this.sRegion = imageSource.getSRegion();
            Uri uri2 = imageSource.getUri();
            this.uri = uri2;
            if (uri2 == null && imageSource.getResource() != null) {
                this.uri = Uri.parse("android.resource://" + getContext().getPackageName() + "/" + imageSource.getResource());
            }
            if (!imageSource.getTile() && this.sRegion == null) {
                execute(new BitmapLoadTask(this, getContext(), this.bitmapDecoderFactory, this.uri, false));
                return;
            } else {
                execute(new TilesInitTask(this, getContext(), this.regionDecoderFactory, this.uri));
                return;
            }
        }
        throw new NullPointerException("imageSource must not be null");
    }

    public final PointF sourceToViewCoord(float f10, float f11, PointF pointF) {
        if (this.vTranslate == null) {
            return null;
        }
        pointF.set(sourceToViewX(f10), sourceToViewY(f11));
        return pointF;
    }

    public final PointF viewToSourceCoord(float f10, float f11, PointF pointF) {
        if (this.vTranslate == null) {
            return null;
        }
        pointF.set(viewToSourceX(f10), viewToSourceY(f11));
        return pointF;
    }

    private void fitToBounds(boolean z) {
        boolean z4;
        float f10 = 0.0f;
        if (this.vTranslate == null) {
            this.vTranslate = new PointF(0.0f, 0.0f);
            z4 = true;
        } else {
            z4 = false;
        }
        if (this.satTemp == null) {
            this.satTemp = new ScaleAndTranslate(f10, new PointF(0.0f, 0.0f));
        }
        this.satTemp.scale = this.scale;
        this.satTemp.vTranslate.set(this.vTranslate);
        fitToBounds(z, this.satTemp);
        this.scale = this.satTemp.scale;
        this.vTranslate.set(this.satTemp.vTranslate);
        if (!z4 || this.minimumScaleType == 4) {
            return;
        }
        this.vTranslate.set(vTranslateForSCenter(sWidth() / 2, sHeight() / 2, this.scale));
    }

    public SubsamplingScaleImageView(Context context) {
        this(context, null);
    }
}
