package d2;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import ce.u0;
import ce.v0;
import ce.w0;
import ce.w1;
import ce.x1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import s3.d0;
import u1.f0;

/* loaded from: classes.dex */
public final class f implements n, xd.c {

    /* renamed from: h, reason: collision with root package name */
    public static int f4253h = 1;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4254a;

    /* renamed from: b, reason: collision with root package name */
    public int f4255b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4256c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4257d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f4258e;

    /* renamed from: f, reason: collision with root package name */
    public Object f4259f;

    /* renamed from: g, reason: collision with root package name */
    public Object f4260g;

    /* JADX WARN: Removed duplicated region for block: B:41:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f(String str, ce.p pVar) throws ch.a {
        String str2;
        this.f4254a = 1;
        this.f4255b = 0;
        this.f4259f = null;
        this.f4260g = null;
        this.f4256c = true;
        char[] charArray = str.toCharArray();
        String strSubstring = null;
        xd.b bVar = null;
        String strTrim = null;
        int length = 0;
        char c7 = 0;
        int i10 = 0;
        do {
            char c10 = charArray[length];
            if (c7 != 0) {
                if (c7 == 1) {
                    if (c10 != '\\') {
                        c7 = 2;
                        if (c10 == '[') {
                        }
                    }
                    i10 = length + 1;
                } else if (c7 != 2) {
                    if (c7 != 5) {
                        length = charArray.length;
                    } else if (c10 == '=') {
                        strTrim = str.substring(i10, length).trim();
                        i10 = length + 1;
                    } else if (c10 == ',' || c10 == ']') {
                        String strTrim2 = str.substring(i10, length).trim();
                        strTrim = strTrim == null ? "endpoint" : strTrim;
                        bVar.getClass();
                        if (strTrim.equals("endpoint")) {
                            String string = strTrim2.toString();
                            bVar.f18445c = string;
                            String lowerCase = string.toLowerCase();
                            if (!lowerCase.startsWith("\\pipe\\") || (str2 = (String) xd.b.f18442h.get(lowerCase.substring(6))) == null) {
                                throw new ch.a("Bad endpoint: " + bVar.f18445c);
                            }
                            int iIndexOf = str2.indexOf(58);
                            int i11 = iIndexOf + 1;
                            int iIndexOf2 = str2.indexOf(46, i11);
                            bVar.f18447e = new xd.f(str2.substring(0, iIndexOf));
                            bVar.f18448f = Integer.parseInt(str2.substring(i11, iIndexOf2));
                            bVar.f18449g = Integer.parseInt(str2.substring(iIndexOf2 + 1));
                        } else {
                            if (bVar.f18446d == null) {
                                bVar.f18446d = new HashMap();
                            }
                            bVar.f18446d.put(strTrim, strTrim2);
                        }
                        strTrim = null;
                    }
                } else if (c10 == '[') {
                    str.substring(i10, length).trim().getClass();
                    bVar = new xd.b(strSubstring, str.substring(i10, length));
                    i10 = length + 1;
                    c7 = 5;
                }
            } else if (c10 == ':') {
                strSubstring = str.substring(i10, length);
                i10 = length + 1;
                c7 = 1;
            }
            length++;
        } while (length < charArray.length);
        if (bVar == null || bVar.f18445c == null) {
            throw new ch.a("Invalid binding URL: ".concat(str));
        }
        this.f4257d = bVar;
        StringBuilder sb2 = new StringBuilder("smb1://");
        sb2.append(bVar.f18444b);
        sb2.append("/IPC$/");
        String strP = android.support.v4.media.session.a.p(bVar.f18445c, 6, sb2);
        HashMap map = bVar.f18446d;
        String str3 = (String) (map != null ? map.get("server") : null);
        String strConcat = str3 != null ? "&server=".concat(str3) : "";
        HashMap map2 = bVar.f18446d;
        strConcat = str3 != null ? g.b.k(strConcat, "&address=", (String) (map2 != null ? map2.get("address") : null)) : strConcat;
        this.f4258e = new w0(strConcat.length() > 0 ? android.support.v4.media.session.a.p(strConcat, 1, d0.f.b(strP, "?")) : strP, pVar);
    }

    public static void b(f fVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i10) {
        v3.f fVar2;
        LoudnessCodecController loudnessCodecController;
        i iVar = (i) fVar.f4258e;
        a9.o.t(iVar.f4276c == null);
        iVar.f4275b.start();
        Handler handler = new Handler(iVar.f4275b.getLooper());
        MediaCodec mediaCodec = (MediaCodec) fVar.f4257d;
        mediaCodec.setCallback(iVar, handler);
        iVar.f4276c = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, mediaCrypto, i10);
        Trace.endSection();
        ((o) fVar.f4259f).start();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (fVar2 = (v3.f) fVar.f4260g) != null && ((loudnessCodecController = (LoudnessCodecController) fVar2.f16476d) == null || loudnessCodecController.addMediaCodec(mediaCodec))) {
            a9.o.t(((HashSet) fVar2.f16474b).add(mediaCodec));
        }
        fVar.f4255b = 1;
    }

    public static String c(int i10, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i10 == 1) {
            sb2.append("Audio");
        } else if (i10 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i10);
            sb2.append(")");
        }
        return sb2.toString();
    }

    @Override // d2.n
    public ByteBuffer C(int i10) {
        return ((MediaCodec) this.f4257d).getInputBuffer(i10);
    }

    @Override // d2.n
    public void E(Surface surface) {
        ((MediaCodec) this.f4257d).setOutputSurface(surface);
    }

    @Override // d2.n
    public ByteBuffer H(int i10) {
        return ((MediaCodec) this.f4257d).getOutputBuffer(i10);
    }

    @Override // d2.n
    public void I(ArrayList arrayList) {
        ((MediaCodec) this.f4257d).subscribeToVendorParameters(arrayList);
    }

    @Override // d2.n
    public void L(ArrayList arrayList) {
        ((MediaCodec) this.f4257d).unsubscribeFromVendorParameters(arrayList);
    }

    @Override // d2.n
    public void a() {
        v3.f fVar;
        v3.f fVar2;
        try {
            if (this.f4255b == 1) {
                ((o) this.f4259f).shutdown();
                i iVar = (i) this.f4258e;
                synchronized (iVar.f4274a) {
                    iVar.f4285m = true;
                    iVar.f4275b.quit();
                    iVar.a();
                }
            }
            this.f4255b = 2;
            if (this.f4256c) {
                return;
            }
            try {
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 30 && i10 < 33) {
                    ((MediaCodec) this.f4257d).stop();
                }
                if (i10 >= 35 && (fVar2 = (v3.f) this.f4260g) != null) {
                    fVar2.M((MediaCodec) this.f4257d);
                }
                ((MediaCodec) this.f4257d).release();
                this.f4256c = true;
            } finally {
            }
        } catch (Throwable th2) {
            if (!this.f4256c) {
                try {
                    int i11 = Build.VERSION.SDK_INT;
                    if (i11 >= 30 && i11 < 33) {
                        ((MediaCodec) this.f4257d).stop();
                    }
                    if (i11 >= 35 && (fVar = (v3.f) this.f4260g) != null) {
                        fVar.M((MediaCodec) this.f4257d);
                    }
                    ((MediaCodec) this.f4257d).release();
                    this.f4256c = true;
                } finally {
                }
            }
            throw th2;
        }
    }

    @Override // d2.n
    public void d(int i10, x1.c cVar, long j10, int i11) {
        ((o) this.f4259f).d(i10, cVar, j10, i11);
    }

    @Override // d2.n
    public void e(Bundle bundle) {
        ((o) this.f4259f).e(bundle);
    }

    public void f(byte[] bArr, boolean z) throws IOException {
        if (bArr.length < 4280) {
            throw new IllegalArgumentException("buffer too small");
        }
        int iR = (!this.f4256c || z) ? ((u0) this.f4259f).r(0, bArr.length, bArr) : ((u0) this.f4259f).read(bArr, 0, 1024);
        if (bArr[0] != 5 && bArr[1] != 0) {
            throw new IOException("Unexpected DCERPC PDU header");
        }
        this.f4256c = (bArr[3] & 2) == 2;
        short sB = a9.o.B(8, bArr);
        if (sB > 4280) {
            throw new IOException(da.b.a(sB, "Unexpected fragment length: "));
        }
        while (iR < sB) {
            iR += ((u0) this.f4259f).r(iR, sB - iR, bArr);
        }
    }

    @Override // d2.n
    public void flush() {
        ((o) this.f4259f).flush();
        ((MediaCodec) this.f4257d).flush();
        i iVar = (i) this.f4258e;
        synchronized (iVar.f4274a) {
            iVar.l++;
            Handler handler = iVar.f4276c;
            String str = f0.f15206a;
            handler.post(new a2.h(16, iVar));
        }
        ((MediaCodec) this.f4257d).start();
    }

    @Override // d2.n
    public void g(int i10, int i11, long j10, int i12) {
        ((o) this.f4259f).g(i10, i11, j10, i12);
    }

    @Override // d2.n
    public void h(int i10) {
        ((MediaCodec) this.f4257d).releaseOutputBuffer(i10, false);
    }

    public void i(byte[] bArr, int i10, int i11, boolean z) throws IOException {
        v0 v0Var = (v0) this.f4260g;
        if (v0Var != null && !v0Var.f3200a.v()) {
            throw new IOException("DCERPC pipe is no longer open");
        }
        u0 u0Var = (u0) this.f4259f;
        w0 w0Var = (w0) this.f4258e;
        if (u0Var == null) {
            if (w0Var.B == null) {
                int i12 = w0Var.D;
                if ((i12 & 512) == 512) {
                    w0Var.B = new w1(w0Var);
                } else {
                    w0Var.B = new u0(w0Var, (i12 & (-65281)) | 32);
                }
            }
            this.f4259f = w0Var.B;
        }
        if (((v0) this.f4260g) == null) {
            if (w0Var.C == null) {
                int i13 = w0Var.D;
                if ((i13 & 512) == 512) {
                    w0Var.C = new x1(w0Var);
                } else {
                    w0Var.C = new v0(w0Var, (i13 & (-65281)) | 32);
                }
            }
            this.f4260g = w0Var.C;
        }
        if (z) {
            ((v0) this.f4260g).A(i10, i11, 1, bArr);
        } else {
            ((v0) this.f4260g).write(bArr, i10, i11);
        }
    }

    @Override // d2.n
    public void j(androidx.media3.exoplayer.video.l lVar, Handler handler) {
        ((MediaCodec) this.f4257d).setOnFrameRenderedListener(new d(this, lVar, 0), handler);
    }

    @Override // d2.n
    public MediaFormat k() {
        MediaFormat mediaFormat;
        i iVar = (i) this.f4258e;
        synchronized (iVar.f4274a) {
            try {
                mediaFormat = iVar.f4281h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mediaFormat;
    }

    @Override // d2.n
    public void l(a2.c0 c0Var) {
        a2.c0 c0Var2 = new a2.c0(this, 17, c0Var);
        i iVar = (i) this.f4258e;
        synchronized (iVar.f4274a) {
            iVar.b();
            c0Var2.run();
        }
    }

    @Override // d2.n
    public boolean m(a1.i iVar) {
        i iVar2 = (i) this.f4258e;
        synchronized (iVar2.f4274a) {
            iVar2.f4287o = iVar;
        }
        return true;
    }

    @Override // d2.n
    public void n() {
        ((MediaCodec) this.f4257d).detachOutputSurface();
    }

    @Override // d2.n
    public void o(int i10, long j10) {
        ((MediaCodec) this.f4257d).releaseOutputBuffer(i10, j10);
    }

    @Override // d2.n
    public int p() {
        int i10;
        ((o) this.f4259f).h();
        i iVar = (i) this.f4258e;
        synchronized (iVar.f4274a) {
            try {
                iVar.b();
                i10 = -1;
                if (!(iVar.l > 0 || iVar.f4285m)) {
                    a0.g gVar = iVar.f4277d;
                    int i11 = gVar.f23a;
                    int i12 = gVar.f24b;
                    if (!(i11 == i12)) {
                        if (i11 == i12) {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        i10 = ((int[]) gVar.f26d)[i11];
                        gVar.f23a = (i11 + 1) & gVar.f25c;
                    }
                }
            } finally {
            }
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void q(xd.e eVar) throws ch.a {
        int i10;
        if (this.f4255b == 0) {
            synchronized (this) {
                try {
                    try {
                        this.f4255b = 1;
                        q(new xd.a((xd.b) this.f4257d, this));
                    } catch (IOException e7) {
                        this.f4255b = 0;
                        throw e7;
                    }
                } finally {
                }
            }
        }
        byte[] bArrA = ce.b.a();
        try {
            d0 d0Var = new d0(bArrA, 0);
            eVar.f18451c = 3;
            int i11 = f4253h;
            f4253h = i11 + 1;
            eVar.f18453e = i11;
            eVar.v(d0Var);
            int i12 = ((d0) d0Var.f14066f).f14064d - 24;
            int i13 = 0;
            boolean z = true;
            while (i13 < i12) {
                int i14 = i12 - i13;
                if (i14 + 24 > 4280) {
                    eVar.f18451c &= -3;
                    i14 = 4256;
                } else {
                    eVar.f18451c |= 2;
                    eVar.f18454f = i14;
                    z = false;
                }
                eVar.f18452d = i14 + 24;
                if (i13 > 0) {
                    eVar.f18451c &= -2;
                }
                if ((eVar.f18451c & 3) != 3) {
                    d0Var.f14062b = i13;
                    d0Var.f14063c = i13;
                    d0Var.f14064d = 0;
                    d0Var.f14066f = d0Var;
                    eVar.u0(d0Var);
                    d0Var.h(eVar.f18454f);
                    d0Var.j(0);
                    d0Var.j(eVar.w0());
                }
                i(bArrA, i13, eVar.f18452d, z);
                i13 += i14;
            }
            f(bArrA, z);
            d0Var.f14064d = 0;
            d0Var.f14066f = d0Var;
            d0Var.f14063c = 8;
            ((d0) d0Var.f14066f).f14064d = d0Var.d();
            d0Var.f14063c = 0;
            eVar.s0(d0Var);
            if (eVar.f18450b != 2) {
                i10 = 24;
            } else {
                if (!((eVar.f18451c & 2) == 2)) {
                    i10 = eVar.f18452d;
                }
            }
            byte[] bArr = null;
            d0 d0Var2 = null;
            while (true) {
                if ((eVar.f18451c & 2) == 2) {
                    break;
                }
                if (bArr == null) {
                    bArr = new byte[4280];
                    d0Var2 = new d0(bArr, 0);
                }
                f(bArr, z);
                int i15 = d0Var2.f14062b;
                d0Var2.f14064d = 0;
                d0Var2.f14066f = d0Var2;
                d0Var2.f14063c = 8;
                ((d0) d0Var2.f14066f).f14064d = d0Var2.d();
                d0Var2.f14063c = d0Var2.f14062b;
                d0Var2.f14064d = 0;
                d0Var2.f14066f = d0Var2;
                eVar.s0(d0Var2);
                int i16 = eVar.f18452d - 24;
                int i17 = i10 + i16;
                if (i17 > bArrA.length) {
                    byte[] bArr2 = new byte[i17];
                    System.arraycopy(bArrA, 0, bArr2, 0, i10);
                    bArrA = bArr2;
                }
                System.arraycopy(bArr, 24, bArrA, i10, i16);
                i10 = i17;
            }
            eVar.s(new d0(bArrA, 0));
            ce.b.c(bArrA);
            ch.a aVarX0 = eVar.x0();
            if (aVarX0 != null) {
                throw aVarX0;
            }
        } catch (Throwable th2) {
            ce.b.c(bArrA);
            throw th2;
        }
    }

    public String toString() {
        switch (this.f4254a) {
            case 1:
                return ((xd.b) this.f4257d).toString();
            default:
                return super.toString();
        }
    }

    @Override // d2.n
    public int u(MediaCodec.BufferInfo bufferInfo) {
        int i10;
        ((o) this.f4259f).h();
        i iVar = (i) this.f4258e;
        synchronized (iVar.f4274a) {
            try {
                iVar.b();
                i10 = -1;
                if (!(iVar.l > 0 || iVar.f4285m)) {
                    a0.g gVar = iVar.f4278e;
                    int i11 = gVar.f23a;
                    int i12 = gVar.f24b;
                    if (!(i11 == i12)) {
                        if (i11 == i12) {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        i10 = ((int[]) gVar.f26d)[i11];
                        gVar.f23a = (i11 + 1) & gVar.f25c;
                        if (i10 >= 0) {
                            iVar.f4281h.getClass();
                            MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) iVar.f4279f.remove();
                            bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                        } else if (i10 == -2) {
                            iVar.f4281h = (MediaFormat) iVar.f4280g.remove();
                        }
                    }
                }
            } finally {
            }
        }
        return i10;
    }

    @Override // d2.n
    public void y(int i10) {
        ((MediaCodec) this.f4257d).setVideoScalingMode(i10);
    }

    public f(MediaCodec mediaCodec, HandlerThread handlerThread, o oVar, v3.f fVar) {
        this.f4254a = 0;
        this.f4257d = mediaCodec;
        this.f4258e = new i(handlerThread);
        this.f4259f = oVar;
        this.f4260g = fVar;
        this.f4255b = 0;
    }
}
