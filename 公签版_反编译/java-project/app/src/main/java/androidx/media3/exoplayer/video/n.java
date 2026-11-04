package androidx.media3.exoplayer.video;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Locale;

/* loaded from: classes.dex */
public final class n extends HandlerThread implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public u1.g f1941a;

    /* renamed from: b, reason: collision with root package name */
    public Handler f1942b;

    /* renamed from: c, reason: collision with root package name */
    public Error f1943c;

    /* renamed from: d, reason: collision with root package name */
    public RuntimeException f1944d;

    /* renamed from: e, reason: collision with root package name */
    public o f1945e;

    public n() {
        super("ExoPlayer:PlaceholderSurface");
    }

    public final void a(int i10) throws u1.h {
        EGLSurface eGLSurfaceEglCreatePbufferSurface;
        this.f1941a.getClass();
        u1.g gVar = this.f1941a;
        gVar.getClass();
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        u1.a.c("eglGetDisplay failed", eGLDisplayEglGetDisplay != null);
        int[] iArr = new int[2];
        u1.a.c("eglInitialize failed", EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1));
        gVar.f15218c = eGLDisplayEglGetDisplay;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        boolean zEglChooseConfig = EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, u1.g.f15215g, 0, eGLConfigArr, 0, 1, iArr2, 0);
        boolean z = zEglChooseConfig && iArr2[0] > 0 && eGLConfigArr[0] != null;
        Object[] objArr = {Boolean.valueOf(zEglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]};
        String str = u1.f0.f15206a;
        u1.a.c(String.format(Locale.US, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", objArr), z);
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(gVar.f15218c, eGLConfig, EGL14.EGL_NO_CONTEXT, i10 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        u1.a.c("eglCreateContext failed", eGLContextEglCreateContext != null);
        gVar.f15219d = eGLContextEglCreateContext;
        EGLDisplay eGLDisplay = gVar.f15218c;
        if (i10 == 1) {
            eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i10 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            u1.a.c("eglCreatePbufferSurface failed", eGLSurfaceEglCreatePbufferSurface != null);
        }
        u1.a.c("eglMakeCurrent failed", EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext));
        gVar.f15220e = eGLSurfaceEglCreatePbufferSurface;
        int[] iArr3 = gVar.f15217b;
        GLES20.glGenTextures(1, iArr3, 0);
        u1.a.b();
        SurfaceTexture surfaceTexture = new SurfaceTexture(iArr3[0]);
        gVar.f15221f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(gVar);
        SurfaceTexture surfaceTexture2 = this.f1941a.f15221f;
        surfaceTexture2.getClass();
        this.f1945e = new o(this, surfaceTexture2, i10 != 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        this.f1941a.getClass();
        u1.g gVar = this.f1941a;
        gVar.f15216a.removeCallbacks(gVar);
        try {
            SurfaceTexture surfaceTexture = gVar.f15221f;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, gVar.f15217b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = gVar.f15218c;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = gVar.f15218c;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = gVar.f15220e;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(gVar.f15218c, gVar.f15220e);
            }
            EGLContext eGLContext = gVar.f15219d;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(gVar.f15218c, eGLContext);
            }
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay3 = gVar.f15218c;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(gVar.f15218c);
            }
            gVar.f15218c = null;
            gVar.f15219d = null;
            gVar.f15220e = null;
            gVar.f15221f = null;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        try {
            if (i10 != 1) {
                if (i10 != 2) {
                    return true;
                }
                try {
                    b();
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                return true;
            }
            try {
                try {
                    a(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (u1.h e7) {
                    u1.a.g("Failed to initialize placeholder surface", e7);
                    this.f1944d = new IllegalStateException(e7);
                    synchronized (this) {
                        notify();
                    }
                }
            } catch (Error e10) {
                u1.a.g("Failed to initialize placeholder surface", e10);
                this.f1943c = e10;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e11) {
                u1.a.g("Failed to initialize placeholder surface", e11);
                this.f1944d = e11;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }
}
