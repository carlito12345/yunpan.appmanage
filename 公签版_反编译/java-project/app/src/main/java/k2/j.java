package k2;

import a2.c0;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public final class j implements GLSurfaceView.Renderer, c {

    /* renamed from: a, reason: collision with root package name */
    public final i f10057a;

    /* renamed from: d, reason: collision with root package name */
    public final float[] f10060d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f10061e;

    /* renamed from: f, reason: collision with root package name */
    public final float[] f10062f;

    /* renamed from: g, reason: collision with root package name */
    public float f10063g;

    /* renamed from: h, reason: collision with root package name */
    public float f10064h;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ k f10067k;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f10058b = new float[16];

    /* renamed from: c, reason: collision with root package name */
    public final float[] f10059c = new float[16];

    /* renamed from: i, reason: collision with root package name */
    public final float[] f10065i = new float[16];

    /* renamed from: j, reason: collision with root package name */
    public final float[] f10066j = new float[16];

    public j(k kVar, i iVar) {
        this.f10067k = kVar;
        float[] fArr = new float[16];
        this.f10060d = fArr;
        float[] fArr2 = new float[16];
        this.f10061e = fArr2;
        float[] fArr3 = new float[16];
        this.f10062f = fArr3;
        this.f10057a = iVar;
        Matrix.setIdentityM(fArr, 0);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.setIdentityM(fArr3, 0);
        this.f10064h = 3.1415927f;
    }

    @Override // k2.c
    public final synchronized void a(float[] fArr, float f10) {
        float[] fArr2 = this.f10060d;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        float f11 = -f10;
        this.f10064h = f11;
        Matrix.setRotateM(this.f10061e, 0, -this.f10063g, (float) Math.cos(f11), (float) Math.sin(this.f10064h), 0.0f);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            Matrix.multiplyMM(this.f10066j, 0, this.f10060d, 0, this.f10062f, 0);
            Matrix.multiplyMM(this.f10065i, 0, this.f10061e, 0, this.f10066j, 0);
        }
        Matrix.multiplyMM(this.f10059c, 0, this.f10058b, 0, this.f10065i, 0);
        this.f10057a.d(this.f10059c);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i10, int i11) {
        float degrees;
        GLES20.glViewport(0, 0, i10, i11);
        float f10 = i10 / i11;
        if (f10 > 1.0f) {
            double dTan = Math.tan(Math.toRadians(45.0d));
            double d10 = f10;
            Double.isNaN(d10);
            degrees = (float) (Math.toDegrees(Math.atan(dTan / d10)) * 2.0d);
        } else {
            degrees = 90.0f;
        }
        Matrix.perspectiveM(this.f10058b, 0, degrees, f10, 0.1f, 100.0f);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        k kVar = this.f10067k;
        kVar.f10072e.post(new c0(kVar, 25, this.f10057a.e()));
    }
}
