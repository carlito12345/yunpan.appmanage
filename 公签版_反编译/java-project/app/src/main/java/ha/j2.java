package ha;

import android.content.res.AssetFileDescriptor;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.text.method.KeyListener;
import android.util.Log;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.google.android.material.snackbar.BaseTransientBottomBar$Behavior;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;

/* loaded from: classes.dex */
public class j2 implements wd, i3.h, b6.a, l2.q, l5.r, vc.g, o5.d0, p0.m, androidx.lifecycle.u0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7237a;

    public /* synthetic */ j2(int i10) {
        this.f7237a = i10;
    }

    public static int h(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }

    @Override // o5.d0
    public void C(MediaMetadataRetriever mediaMetadataRetriever, Object obj) throws IllegalArgumentException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // ha.wd
    public void D() {
        int i10 = this.f7237a;
    }

    @Override // androidx.lifecycle.u0
    public androidx.lifecycle.r0 b(Class cls) {
        return new q1.b();
    }

    @Override // b6.a
    public Object create() {
        try {
            return new j5.i(MessageDigest.getInstance("SHA-256"));
        } catch (NoSuchAlgorithmException e7) {
            throw new RuntimeException(e7);
        }
    }

    public int d(int i10) {
        return i10 == 7 ? 6 : 3;
    }

    @Override // androidx.lifecycle.u0
    public androidx.lifecycle.r0 e(Class cls, p1.c cVar) {
        return b(cls);
    }

    public void f(Level level, String str) {
        switch (this.f7237a) {
            case 16:
                PrintStream printStream = System.out;
                if (level != null) {
                    level.toString();
                }
                printStream.getClass();
                break;
            default:
                if (level != Level.OFF) {
                    Log.println(h(level), "EventBus", str);
                    break;
                }
                break;
        }
    }

    public void g(Level level, String str, Throwable th2) {
        switch (this.f7237a) {
            case 16:
                PrintStream printStream = System.out;
                if (level != null) {
                    level.toString();
                }
                printStream.getClass();
                th2.printStackTrace(printStream);
                break;
            default:
                if (level != Level.OFF) {
                    int iH = h(level);
                    StringBuilder sbB = d0.f.b(str, SignParameters.NEW_LINE);
                    sbB.append(Log.getStackTraceString(th2));
                    Log.println(iH, "EventBus", sbB.toString());
                    break;
                }
                break;
        }
    }

    @Override // vc.g
    public int i(int i10, int i11, byte[] bArr) {
        rd.a.b(i10, bArr);
        rd.a.b(i10 + 4, bArr);
        rd.a.b(i10 + 8, bArr);
        rd.a.b(i10 + 12, bArr);
        int i12 = i10 + 16;
        int i13 = i11 - 16;
        byte[] bArr2 = new byte[i13];
        if (i13 > 0) {
            System.arraycopy(bArr, i12, bArr2, 0, i13);
        }
        return i12 - i10;
    }

    @Override // i3.h
    public i3.j k(r1.p pVar) {
        throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
    }

    @Override // l5.r
    public l5.q l(l5.w wVar) {
        return new l5.z(wVar.c(l5.g.class, InputStream.class), 1);
    }

    @Override // i3.h
    public boolean m(r1.p pVar) {
        return false;
    }

    @Override // o5.d0
    public void o(MediaExtractor mediaExtractor, Object obj) throws IOException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // l2.q
    public void q() {
        throw new UnsupportedOperationException();
    }

    @Override // l2.q
    public void s(l2.c0 c0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // ha.wd
    public void t() {
        int i10 = this.f7237a;
    }

    public String toString() {
        switch (this.f7237a) {
            case 14:
                return "EmptyConsumer";
            case 22:
                return null;
            default:
                return super.toString();
        }
    }

    @Override // p0.m
    public int u(Object obj) {
        return ((o0.g) obj).f11458b;
    }

    @Override // p0.m
    public boolean v(Object obj) {
        return ((o0.g) obj).f11459c;
    }

    @Override // i3.h
    public int x(r1.p pVar) {
        return 1;
    }

    @Override // l2.q
    public l2.j0 z(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    public j2(BaseTransientBottomBar$Behavior baseTransientBottomBar$Behavior) {
        this.f7237a = 26;
        baseTransientBottomBar$Behavior.f3458e = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        baseTransientBottomBar$Behavior.f3459f = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        baseTransientBottomBar$Behavior.f3457d = 0;
    }

    private final void A() {
    }

    private final void B() {
    }

    private final void E() {
    }

    private final void F() {
    }

    private final void G() {
    }

    private final void H() {
    }

    private final void I() {
    }

    private final void J() {
    }

    private final void K() {
    }

    private final void L() {
    }

    private final void M() {
    }

    private final void N() {
    }

    private final void n() {
    }

    private final void p() {
    }

    private final void r() {
    }

    private final void y() {
    }

    public void O(boolean z) {
    }

    public KeyListener c(KeyListener keyListener) {
        return keyListener;
    }

    public InputConnection j(InputConnection inputConnection, EditorInfo editorInfo) {
        return inputConnection;
    }
}
