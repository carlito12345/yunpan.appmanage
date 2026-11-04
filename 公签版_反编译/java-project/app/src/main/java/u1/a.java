package u1;

import android.media.MediaFormat;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.xmlpull.v1.XmlPullParser;
import u7.y0;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static ExecutorService f15181a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f15182b = new Object();

    public static void a(String str, Throwable th2) {
        String strReplace;
        String str2;
        if (th2 == null) {
            str2 = null;
        } else {
            synchronized (f15182b) {
                Throwable cause = th2;
                while (true) {
                    if (cause == null) {
                        strReplace = Log.getStackTraceString(th2).trim().replace("\t", "    ");
                        break;
                    }
                    try {
                        if (cause instanceof UnknownHostException) {
                            strReplace = "UnknownHostException (no network)";
                            break;
                        }
                        cause = cause.getCause();
                    } finally {
                    }
                }
            }
            str2 = strReplace;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        str2.replace(SignParameters.NEW_LINE, "\n  ");
    }

    public static void b() throws h {
        StringBuilder sb2 = new StringBuilder();
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        boolean z = false;
        int i10 = 0;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z) {
                sb2.append('\n');
            }
            String strGluErrorString = GLU.gluErrorString(iGlGetError);
            if (strGluErrorString == null) {
                strGluErrorString = g.b.e(iGlGetError, new StringBuilder("error code: 0x"));
            }
            sb2.append("glError: ");
            sb2.append(strGluErrorString);
            Integer numValueOf = Integer.valueOf(iGlGetError);
            int i11 = i10 + 1;
            int iF = u7.a0.f(objArrCopyOf.length, i11);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i10] = numValueOf;
            z = true;
            i10 = i11;
        }
        if (z) {
            throw new h(sb2.toString(), u7.g0.i(i10, objArrCopyOf));
        }
    }

    public static void c(String str, boolean z) throws h {
        if (z) {
            return;
        }
        u7.e0 e0Var = u7.g0.f15471b;
        throw new h(str, y0.f15549e);
    }

    public static FloatBuffer d(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static void e(String str) {
        synchronized (f15182b) {
            a(str, null);
        }
    }

    public static void f(String str) {
        synchronized (f15182b) {
            a(str, null);
        }
    }

    public static void g(String str, Throwable th2) {
        synchronized (f15182b) {
            a(str, th2);
        }
    }

    public static synchronized Executor h() {
        try {
            if (f15181a == null) {
                String str = f0.f15206a;
                f15181a = Executors.newSingleThreadExecutor(new androidx.emoji2.text.a("ExoPlayer:BackgroundExecutor", 1));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f15181a;
    }

    public static String i(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            if (xmlPullParser.getAttributeName(i10).equals(str)) {
                return xmlPullParser.getAttributeValue(i10);
            }
        }
        return null;
    }

    public static void j(String str) {
        synchronized (f15182b) {
            a(str, null);
        }
    }

    public static boolean k(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals(str);
    }

    public static boolean l(String str) throws h {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        c("No EGL display.", !eGLDisplayEglGetDisplay.equals(EGL14.EGL_NO_DISPLAY));
        c("Error in eglInitialize.", EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0));
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError != 12288) {
            throw new h(g.b.e(iEglGetError, new StringBuilder("Error in getDefaultEglDisplay, error code: 0x")), u7.g0.r(Integer.valueOf(iEglGetError)));
        }
        String strEglQueryString = EGL14.eglQueryString(eGLDisplayEglGetDisplay, 12373);
        return strEglQueryString != null && strEglQueryString.contains(str);
    }

    public static boolean m(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals(str);
    }

    public static void n(MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    public static void o(MediaFormat mediaFormat, List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            mediaFormat.setByteBuffer(da.b.a(i10, "csd-"), ByteBuffer.wrap((byte[]) list.get(i10)));
        }
    }

    public static void p(String str) {
        synchronized (f15182b) {
            a(str, null);
        }
    }

    public static void q(String str, Throwable th2) {
        synchronized (f15182b) {
            a(str, th2);
        }
    }
}
