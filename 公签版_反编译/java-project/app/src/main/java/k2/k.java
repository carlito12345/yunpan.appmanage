package k2;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import androidx.media3.exoplayer.video.x;
import ha.db;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class k extends GLSurfaceView {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f10068a;

    /* renamed from: b, reason: collision with root package name */
    public final SensorManager f10069b;

    /* renamed from: c, reason: collision with root package name */
    public final Sensor f10070c;

    /* renamed from: d, reason: collision with root package name */
    public final d f10071d;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f10072e;

    /* renamed from: f, reason: collision with root package name */
    public final i f10073f;

    /* renamed from: g, reason: collision with root package name */
    public SurfaceTexture f10074g;

    /* renamed from: h, reason: collision with root package name */
    public Surface f10075h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f10076i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10077j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f10078k;

    public k(Context context) {
        super(context, null);
        this.f10068a = new CopyOnWriteArrayList();
        this.f10072e = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.f10069b = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.f10070c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        i iVar = new i();
        this.f10073f = iVar;
        j jVar = new j(this, iVar);
        View.OnTouchListener lVar = new l(context, jVar);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.f10071d = new d(windowManager.getDefaultDisplay(), lVar, jVar);
        this.f10076i = true;
        setEGLContextClientVersion(2);
        setRenderer(jVar);
        setOnTouchListener(lVar);
    }

    public final void a() {
        boolean z = this.f10076i && this.f10077j;
        Sensor sensor = this.f10070c;
        if (sensor == null || z == this.f10078k) {
            return;
        }
        d dVar = this.f10071d;
        SensorManager sensorManager = this.f10069b;
        if (z) {
            sensorManager.registerListener(dVar, sensor, 0);
        } else {
            sensorManager.unregisterListener(dVar);
        }
        this.f10078k = z;
    }

    public a getCameraMotionListener() {
        return this.f10073f;
    }

    public x getVideoFrameMetadataListener() {
        return this.f10073f;
    }

    public Surface getVideoSurface() {
        return this.f10075h;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f10072e.post(new db(8, this));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f10077j = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f10077j = true;
        a();
    }

    public void setDefaultStereoMode(int i10) {
        this.f10073f.f10055k = i10;
    }

    public void setUseSensorRotation(boolean z) {
        this.f10076i = z;
        a();
    }
}
