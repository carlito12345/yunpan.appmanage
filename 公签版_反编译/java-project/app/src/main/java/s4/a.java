package s4;

import a2.y0;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.yunpan.appmanage.ui.ActivityDownload;
import h5.z;
import ha.wd;
import ha.z6;
import io.github.muntashirakon.adb.AdbProtocol;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.function.IntConsumer$CC;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.IntConsumer;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import tb.y;
import ua.g8;
import w.s0;
import x9.b6;
import x9.u5;
import y1.x;

/* loaded from: classes.dex */
public final class a implements t5.a, wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14292a;

    /* renamed from: b, reason: collision with root package name */
    public Object f14293b;

    /* renamed from: c, reason: collision with root package name */
    public Object f14294c;

    /* renamed from: d, reason: collision with root package name */
    public Object f14295d;

    public a(i5.c cVar, d3.g gVar, t5.c cVar2) {
        this.f14292a = 2;
        this.f14293b = cVar;
        this.f14294c = gVar;
        this.f14295d = cVar2;
    }

    public static ag.j a(ag.l lVar, int i10, long j10) {
        ArrayList arrayList;
        ag.j jVar = new ag.j();
        jVar.f567b = 10;
        jVar.f684c = 44L;
        ag.c cVar = lVar.f698b;
        if (cVar != null && (arrayList = cVar.f665a) != null && arrayList.size() > 0) {
            ag.f fVar = (ag.f) lVar.f698b.f665a.get(0);
            jVar.f685d = fVar.f675v;
            jVar.f686e = fVar.f649c;
        }
        ag.d dVar = lVar.f699c;
        jVar.f687f = dVar.f666c;
        jVar.f688g = dVar.f667d;
        long size = lVar.f698b.f665a.size();
        jVar.f689h = lVar.f702f ? b(lVar.f699c.f666c, lVar.f698b.f665a) : size;
        jVar.f690i = size;
        jVar.f691j = i10;
        jVar.f692k = j10;
        return jVar;
    }

    public static long b(int i10, ArrayList arrayList) throws wf.a {
        if (arrayList == null) {
            throw new wf.a("file headers are null, cannot calculate number of entries on this disk");
        }
        Iterator it = arrayList.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (((ag.f) it.next()).f676w == i10) {
                i11++;
            }
        }
        return i11;
    }

    public static a j(Context context, AttributeSet attributeSet, int[] iArr, int i10) {
        return new a(context, context.obtainStyledAttributes(attributeSet, iArr, i10, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void m(ag.l lVar, OutputStream outputStream) {
        if (outputStream instanceof zf.g) {
            zf.g gVar = (zf.g) outputStream;
            lVar.f699c.f669f = ((zf.d) gVar).f19552b;
            gVar.getClass();
        }
        if (lVar.f704h) {
            if (lVar.f701e == null) {
                lVar.f701e = new ag.j();
            }
            if (lVar.f700d == null) {
                lVar.f700d = new ag.i();
            }
            lVar.f701e.f692k = lVar.f699c.f669f;
            ag.i iVar = lVar.f700d;
            iVar.f681c = 0;
            iVar.f683e = 1;
        }
        ag.d dVar = lVar.f699c;
        dVar.f666c = 0;
        dVar.f667d = 0;
    }

    public static void n(ag.b bVar, v3.f fVar) throws wf.a {
        List list = bVar.f662s;
        if (list == null || list.size() <= 0) {
            return;
        }
        List list2 = bVar.f662s;
        ag.a aVar = null;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ag.e eVar = (ag.e) it.next();
                if (eVar != null && eVar.f672c == 39169) {
                    byte[] bArr = eVar.f674e;
                    if (bArr == null || bArr.length != 7) {
                        throw new wf.a("corrupt AES extra data records");
                    }
                    aVar = new ag.a();
                    aVar.f567b = 12;
                    aVar.f644c = eVar.f673d;
                    int i10 = 0;
                    int iK = v3.f.K(0, bArr);
                    for (int i11 : d0.f.d(2)) {
                        if (android.support.v4.media.session.a.i(i11) == iK) {
                            aVar.f645d = i11;
                            byte[] bArr2 = new byte[2];
                            System.arraycopy(bArr, 2, bArr2, 0, 2);
                            aVar.f646e = new String(bArr2);
                            int i12 = bArr[4] & 255;
                            int[] iArrD = d0.f.d(3);
                            int length = iArrD.length;
                            int i13 = 0;
                            while (true) {
                                if (i13 >= length) {
                                    break;
                                }
                                int i14 = iArrD[i13];
                                if (android.support.v4.media.session.a.g(i14) == i12) {
                                    i10 = i14;
                                    break;
                                }
                                i13++;
                            }
                            aVar.f647f = i10;
                            aVar.f648g = android.support.v4.media.session.a.c(v3.f.K(5, bArr));
                        }
                    }
                    throw new wf.a("Unsupported Aes version");
                }
            }
        }
        if (aVar != null) {
            bVar.f661q = aVar;
            bVar.f658m = 4;
        }
    }

    public static ag.k q(List list, v3.f fVar, long j10, long j11, long j12, int i10) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ag.e eVar = (ag.e) it.next();
            if (eVar != null && 1 == eVar.f672c) {
                ag.k kVar = new ag.k();
                byte[] bArr = eVar.f674e;
                int i11 = eVar.f673d;
                if (i11 <= 0) {
                    return null;
                }
                int i12 = 0;
                if (i11 > 0 && j10 == 4294967295L) {
                    kVar.f694d = fVar.J(0, bArr);
                    i12 = 8;
                }
                if (i12 < eVar.f673d && j11 == 4294967295L) {
                    kVar.f693c = fVar.J(i12, bArr);
                    i12 += 8;
                }
                if (i12 < eVar.f673d && j12 == 4294967295L) {
                    kVar.f695e = fVar.J(i12, bArr);
                    i12 += 8;
                }
                if (i12 < eVar.f673d && i10 == 65535) {
                    kVar.f696f = v3.f.H(i12, bArr);
                }
                return kVar;
            }
        }
        return null;
    }

    public static void u(RandomAccessFile randomAccessFile, long j10) throws IOException {
        if (randomAccessFile instanceof yf.g) {
            ((yf.g) randomAccessFile).f19171c.seek(j10);
        } else {
            randomAccessFile.seek(j10);
        }
    }

    public static void x(ag.l lVar, int i10, long j10, ByteArrayOutputStream byteArrayOutputStream, v3.f fVar) throws IOException {
        long jB;
        byte[] bArr = new byte[8];
        fVar.U(byteArrayOutputStream, (int) 101010256);
        fVar.X(byteArrayOutputStream, lVar.f699c.f666c);
        fVar.X(byteArrayOutputStream, lVar.f699c.f667d);
        long size = lVar.f698b.f665a.size();
        if (lVar.f702f) {
            jB = b(lVar.f699c.f666c, lVar.f698b.f665a);
        } else {
            jB = size;
        }
        if (jB > 65535) {
            jB = 65535;
        }
        fVar.X(byteArrayOutputStream, (int) jB);
        if (size > 65535) {
            size = 65535;
        }
        fVar.X(byteArrayOutputStream, (int) size);
        fVar.U(byteArrayOutputStream, i10);
        if (j10 > 4294967295L) {
            v3.f.W(bArr, 4294967295L);
            byteArrayOutputStream.write(bArr, 0, 4);
        } else {
            v3.f.W(bArr, j10);
            byteArrayOutputStream.write(bArr, 0, 4);
        }
        String str = lVar.f699c.f671h;
        if (!eg.c.h(str)) {
            fVar.X(byteArrayOutputStream, 0);
            return;
        }
        byte[] bytes = str.getBytes(eg.d.f4975c);
        fVar.X(byteArrayOutputStream, bytes.length);
        byteArrayOutputStream.write(bytes);
    }

    public static void z(ag.j jVar, ByteArrayOutputStream byteArrayOutputStream, v3.f fVar) throws IOException {
        fVar.U(byteArrayOutputStream, (int) ta.q.e(jVar.f567b));
        fVar.V(byteArrayOutputStream, jVar.f684c);
        fVar.X(byteArrayOutputStream, jVar.f685d);
        fVar.X(byteArrayOutputStream, jVar.f686e);
        fVar.U(byteArrayOutputStream, jVar.f687f);
        fVar.U(byteArrayOutputStream, jVar.f688g);
        fVar.V(byteArrayOutputStream, jVar.f689h);
        fVar.V(byteArrayOutputStream, jVar.f690i);
        fVar.V(byteArrayOutputStream, jVar.f691j);
        fVar.V(byteArrayOutputStream, jVar.f692k);
    }

    @Override // ha.wd
    public void D() {
        ActivityDownload activityDownload = (ActivityDownload) this.f14295d;
        u5 u5Var = new u5(activityDownload.V.b(), (String) this.f14293b, (b6) this.f14294c, false, ActivityDownload.x(activityDownload, false) + ((String) this.f14293b));
        if (activityDownload.R.b() > 0) {
            u5Var.f18350g = (ba.r) activityDownload.R.t(0);
        }
        activityDownload.V.q(u5Var);
        activityDownload.f3973t0.execute(new androidx.emoji2.text.j(activityDownload.V.b() - 1, 5, activityDownload));
    }

    @Override // t5.a
    public z c(z zVar, f5.i iVar) {
        Drawable drawable = (Drawable) zVar.get();
        if (drawable instanceof BitmapDrawable) {
            return ((d3.g) this.f14294c).c(o5.d.b(((BitmapDrawable) drawable).getBitmap(), (i5.c) this.f14293b), iVar);
        }
        if (drawable instanceof s5.b) {
            return ((t5.c) this.f14295d).c(zVar, iVar);
        }
        return null;
    }

    public ColorStateList d(int i10) {
        int resourceId;
        ColorStateList colorStateListD;
        TypedArray typedArray = (TypedArray) this.f14294c;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (colorStateListD = n0.g.d((Context) this.f14293b, resourceId)) == null) ? typedArray.getColorStateList(i10) : colorStateListD;
    }

    public Drawable e(int i10) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f14294c;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) ? typedArray.getDrawable(i10) : com.bumptech.glide.d.x((Context) this.f14293b, resourceId);
    }

    public Drawable f(int i10) {
        int resourceId;
        Drawable drawableG;
        if (!((TypedArray) this.f14294c).hasValue(i10) || (resourceId = ((TypedArray) this.f14294c).getResourceId(i10, 0)) == 0) {
            return null;
        }
        w.s sVarA = w.s.a();
        Context context = (Context) this.f14293b;
        synchronized (sVarA) {
            drawableG = sVarA.f17251a.g(context, resourceId, true);
        }
        return drawableG;
    }

    public Typeface g(int i10, int i11, s0 s0Var) {
        int resourceId = ((TypedArray) this.f14294c).getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.f14295d) == null) {
            this.f14295d = new TypedValue();
        }
        TypedValue typedValue = (TypedValue) this.f14295d;
        ThreadLocal threadLocal = o0.o.f11472a;
        Context context = (Context) this.f14293b;
        if (context.isRestricted()) {
            return null;
        }
        return o0.o.c(context, resourceId, typedValue, i11, s0Var, true, false);
    }

    public y h(char c7) {
        a aVar;
        y yVar = (y) ((HashMap) this.f14293b).get(Character.valueOf(c7));
        return (yVar != null || (aVar = (a) this.f14295d) == null) ? yVar : aVar.h(c7);
    }

    public List i(char c7) {
        a aVar;
        List arrayList = (List) ((HashMap) this.f14294c).get(Character.valueOf(c7));
        if (arrayList == null && (aVar = (a) this.f14295d) != null) {
            arrayList = new ArrayList(aVar.i(c7));
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    public ArrayList k(int i10, byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < i10) {
            ag.e eVar = new ag.e();
            eVar.f672c = v3.f.K(i11, bArr);
            int iK = v3.f.K(i11 + 2, bArr);
            eVar.f673d = iK;
            int i12 = i11 + 4;
            if (iK > 0) {
                byte[] bArr2 = new byte[iK];
                System.arraycopy(bArr, i12, bArr2, 0, iK);
                eVar.f674e = bArr2;
            }
            i11 = i12 + iK;
            arrayList.add(eVar);
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    public void l(y9.d dVar) throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException {
        y9.f fVar;
        byte[] bArrA;
        byte[] bArr = y9.e.f19002a;
        if (dVar.f18995a != (dVar.f19000f ^ (-1))) {
            return;
        }
        if (dVar.f18998d != 0) {
            byte[] bArr2 = dVar.f19001g;
            int length = bArr2.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                byte b10 = bArr2[i11];
                i10 = b10 >= 0 ? i10 + b10 : b10 + 256 + i10;
            }
            if (i10 != dVar.f18999e) {
                return;
            }
        }
        try {
            switch (dVar.f18995a) {
                case AdbProtocol.A_CLSE /* 1163086915 */:
                case AdbProtocol.A_WRTE /* 1163154007 */:
                case AdbProtocol.A_OKAY /* 1497451343 */:
                    if (((y9.b) this.f14294c).f18986g && (fVar = (y9.f) ((HashMap) this.f14293b).get(Integer.valueOf(dVar.f18997c))) != null) {
                        synchronized (fVar) {
                            try {
                                int i12 = dVar.f18995a;
                                if (i12 == 1497451343) {
                                    fVar.f19005c = dVar.f18996b;
                                    fVar.f19006d.set(true);
                                    fVar.notify();
                                } else if (i12 == 1163154007) {
                                    fVar.f19007e.f19010b.add(dVar.f19001g);
                                    byte[] bArrA2 = y9.e.a(AdbProtocol.A_OKAY, fVar.f19004b, fVar.f19005c, null);
                                    y9.b bVar = fVar.f19003a;
                                    bVar.f18983d.write(bArrA2);
                                    bVar.f18983d.flush();
                                } else if (i12 == 1163086915) {
                                    ((HashMap) this.f14293b).remove(Integer.valueOf(dVar.f18997c));
                                    fVar.r();
                                }
                            } finally {
                            }
                        }
                        return;
                    }
                    return;
                case AdbProtocol.A_AUTH /* 1213486401 */:
                    y9.b bVar2 = (y9.b) this.f14294c;
                    bVar2.l = "等待授权";
                    if (dVar.f18996b == 1) {
                        if (bVar2.f18988i) {
                            bArrA = y9.e.a(AdbProtocol.A_AUTH, 3, 0, bVar2.f18987h.b());
                        } else {
                            y9.c cVar = bVar2.f18987h;
                            byte[] bArr3 = dVar.f19001g;
                            cVar.getClass();
                            Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
                            cipher.init(1, cVar.f18993a.getPrivate());
                            cipher.update(y9.c.f18992d);
                            bArrA = y9.e.a(AdbProtocol.A_AUTH, 2, 0, cipher.doFinal(bArr3));
                            ((y9.b) this.f14294c).f18988i = true;
                        }
                        ((y9.b) this.f14294c).f18983d.write(bArrA);
                        ((y9.b) this.f14294c).f18983d.flush();
                        return;
                    }
                    return;
                case AdbProtocol.A_CNXN /* 1314410051 */:
                    y9.b bVar3 = (y9.b) this.f14294c;
                    bVar3.l = "已连接";
                    synchronized (bVar3) {
                        ((y9.b) this.f14294c).getClass();
                        y9.b bVar4 = (y9.b) this.f14294c;
                        bVar4.f18986g = true;
                        bVar4.notifyAll();
                    }
                    return;
                default:
                    return;
            }
        } catch (Exception unused) {
            ((y9.b) this.f14294c).f18990k = true;
        }
        ((y9.b) this.f14294c).f18990k = true;
    }

    public ag.l o(RandomAccessFile randomAccessFile, ag.h hVar) throws IOException {
        byte b10;
        List listEmptyList;
        byte[] bArr;
        ag.f fVar;
        byte[] bArr2;
        ag.l lVar;
        byte[] bArr3;
        ag.c cVar;
        byte[] bArr4;
        ArrayList arrayList;
        byte[] bArr5;
        a aVar = this;
        v3.f fVar2 = (v3.f) aVar.f14294c;
        if (randomAccessFile.length() == 0) {
            return new ag.l();
        }
        if (randomAccessFile.length() < 22) {
            throw new wf.a("Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file");
        }
        ag.l lVar2 = new ag.l();
        aVar.f14293b = lVar2;
        try {
            lVar2.f699c = aVar.p(randomAccessFile, fVar2, hVar);
            ag.l lVar3 = (ag.l) aVar.f14293b;
            ag.d dVar = lVar3.f699c;
            if (dVar.f668e == 0) {
                return lVar3;
            }
            long j10 = dVar.f670g;
            ag.i iVar = new ag.i();
            u(randomAccessFile, j10 - 20);
            byte[] bArr6 = (byte[]) fVar2.f16475c;
            randomAccessFile.readFully(bArr6);
            int i10 = 0;
            long jH = v3.f.H(0, bArr6);
            byte[] bArr7 = (byte[]) fVar2.f16476d;
            if (jH == 117853008) {
                ((ag.l) aVar.f14293b).f704h = true;
                iVar.f567b = 9;
                randomAccessFile.readFully(bArr6);
                iVar.f681c = v3.f.H(0, bArr6);
                randomAccessFile.readFully(bArr7);
                iVar.f682d = fVar2.J(0, bArr7);
                randomAccessFile.readFully(bArr6);
                iVar.f683e = v3.f.H(0, bArr6);
            } else {
                ((ag.l) aVar.f14293b).f704h = false;
                iVar = null;
            }
            lVar3.f700d = iVar;
            ag.l lVar4 = (ag.l) aVar.f14293b;
            boolean z = lVar4.f704h;
            byte[] bArr8 = (byte[]) fVar2.f16474b;
            if (z) {
                ag.i iVar2 = lVar4.f700d;
                if (iVar2 == null) {
                    throw new wf.a("invalid zip64 end of central directory locator");
                }
                long j11 = iVar2.f682d;
                if (j11 < 0) {
                    throw new wf.a("invalid offset for start of end of central directory record");
                }
                randomAccessFile.seek(j11);
                ag.j jVar = new ag.j();
                randomAccessFile.readFully(bArr6);
                if (v3.f.H(0, bArr6) != 101075792) {
                    throw new wf.a("invalid signature for zip64 end of central directory record");
                }
                jVar.f567b = 10;
                randomAccessFile.readFully(bArr7);
                jVar.f684c = fVar2.J(0, bArr7);
                randomAccessFile.readFully(bArr8);
                jVar.f685d = v3.f.K(0, bArr8);
                randomAccessFile.readFully(bArr8);
                jVar.f686e = v3.f.K(0, bArr8);
                randomAccessFile.readFully(bArr6);
                jVar.f687f = v3.f.H(0, bArr6);
                randomAccessFile.readFully(bArr6);
                jVar.f688g = v3.f.H(0, bArr6);
                randomAccessFile.readFully(bArr7);
                jVar.f689h = fVar2.J(0, bArr7);
                randomAccessFile.readFully(bArr7);
                jVar.f690i = fVar2.J(0, bArr7);
                randomAccessFile.readFully(bArr7);
                jVar.f691j = fVar2.J(0, bArr7);
                randomAccessFile.readFully(bArr7);
                jVar.f692k = fVar2.J(0, bArr7);
                long j12 = jVar.f684c - 44;
                if (j12 > 0) {
                    randomAccessFile.readFully(new byte[(int) j12]);
                }
                lVar4.f701e = jVar;
                ag.l lVar5 = (ag.l) aVar.f14293b;
                ag.j jVar2 = lVar5.f701e;
                if (jVar2 == null || jVar2.f687f <= 0) {
                    lVar5.f702f = false;
                } else {
                    lVar5.f702f = true;
                }
            }
            ag.l lVar6 = (ag.l) aVar.f14293b;
            ag.c cVar2 = new ag.c(0);
            ArrayList arrayList2 = new ArrayList();
            ag.l lVar7 = (ag.l) aVar.f14293b;
            boolean z4 = lVar7.f704h;
            long j13 = z4 ? lVar7.f701e.f692k : lVar7.f699c.f669f;
            long j14 = z4 ? lVar7.f701e.f690i : lVar7.f699c.f668e;
            randomAccessFile.seek(j13);
            byte[] bArr9 = new byte[2];
            byte[] bArr10 = new byte[4];
            int i11 = 0;
            while (i11 < j14) {
                ag.f fVar3 = new ag.f();
                randomAccessFile.readFully(bArr6);
                int i12 = i11;
                if (v3.f.H(i10, bArr6) != 33639248) {
                    throw new wf.a("Expected central directory entry not found (#" + (i12 + 1) + ")");
                }
                fVar3.f567b = 3;
                randomAccessFile.readFully(bArr8);
                fVar3.f675v = v3.f.K(i10, bArr8);
                randomAccessFile.readFully(bArr8);
                fVar3.f649c = v3.f.K(i10, bArr8);
                byte[] bArr11 = new byte[2];
                randomAccessFile.readFully(bArr11);
                fVar3.l = eg.c.g(bArr11[i10], i10);
                fVar3.f659n = eg.c.g(bArr11[i10], 3);
                fVar3.r = eg.c.g(bArr11[1], 3);
                fVar3.f650d = (byte[]) bArr11.clone();
                randomAccessFile.readFully(bArr8);
                fVar3.f651e = android.support.v4.media.session.a.c(v3.f.K(0, bArr8));
                randomAccessFile.readFully(bArr6);
                fVar3.f652f = v3.f.H(0, bArr6);
                randomAccessFile.readFully(bArr10);
                fVar3.f653g = fVar2.J(0, bArr10);
                Arrays.fill(bArr7, (byte) 0);
                randomAccessFile.readFully(bArr7, 0, 4);
                fVar3.f654h = fVar2.J(0, bArr7);
                Arrays.fill(bArr7, (byte) 0);
                randomAccessFile.readFully(bArr7, 0, 4);
                fVar3.f655i = fVar2.J(0, bArr7);
                randomAccessFile.readFully(bArr8);
                int iK = v3.f.K(0, bArr8);
                randomAccessFile.readFully(bArr8);
                fVar3.f656j = v3.f.K(0, bArr8);
                randomAccessFile.readFully(bArr8);
                int iK2 = v3.f.K(0, bArr8);
                randomAccessFile.readFully(bArr8);
                fVar3.f676w = v3.f.K(0, bArr8);
                randomAccessFile.readFully(bArr9);
                randomAccessFile.readFully(bArr10);
                fVar3.f677x = (byte[]) bArr10.clone();
                randomAccessFile.readFully(bArr10);
                byte[] bArr12 = bArr9;
                ag.c cVar3 = cVar2;
                fVar3.f678y = fVar2.J(0, bArr10);
                if (iK <= 0) {
                    throw new wf.a("Invalid entry name in file header");
                }
                byte[] bArr13 = new byte[iK];
                randomAccessFile.readFully(bArr13);
                String strJ = qf.c.j(bArr13, fVar3.r, null);
                fVar3.f657k = strJ;
                byte[] bArr14 = fVar3.f677x;
                byte b11 = bArr14[0];
                fVar3.f663t = (b11 != 0 && eg.c.g(b11, 4)) || ((b10 = bArr14[3]) != 0 && eg.c.g(b10, 6)) || strJ.endsWith("/") || strJ.endsWith("\\");
                int i13 = fVar3.f656j;
                if (i13 > 0) {
                    if (i13 < 4) {
                        if (i13 > 0) {
                            randomAccessFile.skipBytes(i13);
                        }
                        listEmptyList = null;
                    } else {
                        byte[] bArr15 = new byte[i13];
                        randomAccessFile.read(bArr15);
                        try {
                            listEmptyList = aVar.k(i13, bArr15);
                        } catch (Exception unused) {
                            listEmptyList = Collections.emptyList();
                        }
                    }
                    fVar3.f662s = listEmptyList;
                }
                List list = fVar3.f662s;
                if (list == null || list.size() <= 0) {
                    bArr = bArr10;
                    fVar = fVar3;
                    bArr2 = bArr8;
                    lVar = lVar6;
                    bArr3 = bArr6;
                    cVar = cVar3;
                    bArr4 = bArr12;
                    arrayList = arrayList2;
                    bArr5 = bArr7;
                } else {
                    bArr = bArr10;
                    fVar = fVar3;
                    bArr4 = bArr12;
                    cVar = cVar3;
                    bArr3 = bArr6;
                    arrayList = arrayList2;
                    lVar = lVar6;
                    bArr2 = bArr8;
                    bArr5 = bArr7;
                    ag.k kVarQ = q(fVar3.f662s, fVar2, fVar3.f655i, fVar3.f654h, fVar3.f678y, fVar3.f676w);
                    if (kVarQ != null) {
                        fVar.f660p = kVarQ;
                        long j15 = kVarQ.f694d;
                        if (j15 != -1) {
                            fVar.f655i = j15;
                        }
                        long j16 = kVarQ.f693c;
                        if (j16 != -1) {
                            fVar.f654h = j16;
                        }
                        long j17 = kVarQ.f695e;
                        if (j17 != -1) {
                            fVar.f678y = j17;
                        }
                        int i14 = kVarQ.f696f;
                        if (i14 != -1) {
                            fVar.f676w = i14;
                        }
                    }
                }
                n(fVar, fVar2);
                if (iK2 > 0) {
                    byte[] bArr16 = new byte[iK2];
                    randomAccessFile.readFully(bArr16);
                    fVar.z = qf.c.j(bArr16, fVar.r, null);
                }
                if (fVar.l) {
                    if (fVar.f661q != null) {
                        fVar.f658m = 4;
                    } else {
                        fVar.f658m = 2;
                        arrayList.add(fVar);
                        i11 = i12 + 1;
                        cVar2 = cVar;
                        arrayList2 = arrayList;
                        bArr9 = bArr4;
                        bArr6 = bArr3;
                        bArr7 = bArr5;
                        bArr10 = bArr;
                        bArr8 = bArr2;
                        lVar6 = lVar;
                        i10 = 0;
                        aVar = this;
                    }
                }
                arrayList.add(fVar);
                i11 = i12 + 1;
                cVar2 = cVar;
                arrayList2 = arrayList;
                bArr9 = bArr4;
                bArr6 = bArr3;
                bArr7 = bArr5;
                bArr10 = bArr;
                bArr8 = bArr2;
                lVar6 = lVar;
                i10 = 0;
                aVar = this;
            }
            ag.c cVar4 = cVar2;
            byte[] bArr17 = bArr8;
            ag.l lVar8 = lVar6;
            cVar4.f665a = arrayList2;
            randomAccessFile.readFully(bArr6);
            if (v3.f.H(0, r22) == 84233040) {
                randomAccessFile.readFully(bArr17);
                int iK3 = v3.f.K(0, bArr17);
                if (iK3 > 0) {
                    byte[] bArr18 = new byte[iK3];
                    randomAccessFile.readFully(bArr18);
                    new String(bArr18);
                }
            }
            lVar8.f698b = cVar4;
            return (ag.l) this.f14293b;
        } catch (wf.a e7) {
            throw e7;
        } catch (IOException e10) {
            e10.printStackTrace();
            throw new wf.a(e10);
        }
    }

    public ag.d p(RandomAccessFile randomAccessFile, v3.f fVar, ag.h hVar) throws IOException {
        long length = randomAccessFile.length();
        if (length < 22) {
            throw new wf.a("Zip file size less than size of zip headers. Probably not a zip file.");
        }
        long length2 = length - 22;
        u(randomAccessFile, length2);
        byte[] bArr = (byte[]) ((v3.f) this.f14294c).f16475c;
        randomAccessFile.readFully(bArr);
        if (v3.f.H(0, bArr) != 101010256) {
            length2 = randomAccessFile.length() - 22;
            for (long length3 = randomAccessFile.length() < 65536 ? randomAccessFile.length() : 65536L; length3 > 0 && length2 > 0; length3--) {
                length2--;
                u(randomAccessFile, length2);
                randomAccessFile.readFully(bArr);
                if (v3.f.H(0, bArr) != 101010256) {
                }
            }
            throw new wf.a("Zip headers not found. Probably not a zip file");
        }
        u(randomAccessFile, 4 + length2);
        ag.d dVar = new ag.d();
        dVar.f567b = 4;
        byte[] bArr2 = (byte[]) fVar.f16474b;
        randomAccessFile.readFully(bArr2);
        dVar.f666c = v3.f.K(0, bArr2);
        randomAccessFile.readFully(bArr2);
        dVar.f667d = v3.f.K(0, bArr2);
        randomAccessFile.readFully(bArr2);
        v3.f.K(0, bArr2);
        randomAccessFile.readFully(bArr2);
        dVar.f668e = v3.f.K(0, bArr2);
        byte[] bArr3 = (byte[]) fVar.f16475c;
        randomAccessFile.readFully(bArr3);
        v3.f.H(0, bArr3);
        dVar.f670g = length2;
        byte[] bArr4 = (byte[]) this.f14295d;
        randomAccessFile.readFully(bArr4);
        dVar.f669f = fVar.J(0, bArr4);
        randomAccessFile.readFully(bArr2);
        int iK = v3.f.K(0, bArr2);
        String strJ = null;
        if (iK > 0) {
            try {
                byte[] bArr5 = new byte[iK];
                randomAccessFile.readFully(bArr5);
                strJ = qf.c.j(bArr5, false, eg.d.f4975c);
            } catch (IOException unused) {
            }
        }
        if (strJ != null) {
            dVar.f671h = strJ;
        }
        ((ag.l) this.f14293b).f702f = dVar.f666c > 0;
        return dVar;
    }

    public void r() {
        ((TypedArray) this.f14294c).recycle();
    }

    public void s(i2.a aVar) {
        z1.i iVar = (z1.i) ((HashMap) this.f14293b).remove(aVar);
        iVar.getClass();
        y1.f fVar = (y1.f) ((y1.g) this.f14295d).f18690p.get(iVar);
        if (fVar != null) {
            synchronized (fVar) {
                fVar.f18652d--;
            }
        }
    }

    @Override // ha.wd
    public void t() {
        boolean z = false;
        int i10 = Build.VERSION.SDK_INT;
        ActivityDownload activityDownload = (ActivityDownload) this.f14295d;
        if (i10 < 24 && !Environment.getExternalStorageState().equals("mounted")) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (kVar.f4073v.isEmpty() && !kVar.f4058m) {
                int i11 = ActivityDownload.P0;
                da.g gVar = activityDownload.A;
                new z6(gVar, gVar, "检测到您的设备没有内置SD卡(内部存储)，而且系统低于安卓7，所以必须插入SD卡或U盘方可使用，因为低于7.0的系统没有SD卡来存储数据的话，无法调用系统安装器来安装应用，虽然管家可以存储在/data/data/，但这是应用私有目录，低于安卓7的系统安装器是无权限读取的，，除非您有系统写入权限（右上角）", "", "明白了", "", new s9.a(4, z)).show();
                return;
            }
        }
        u5 u5Var = new u5(activityDownload.V.b(), (String) this.f14293b, (b6) this.f14294c, true, ActivityDownload.x(activityDownload, true) + ((String) this.f14293b));
        if (activityDownload.R.b() > 0) {
            u5Var.f18350g = (ba.r) activityDownload.R.t(0);
        }
        activityDownload.V.q(u5Var);
        activityDownload.f3973t0.execute(new androidx.emoji2.text.j(activityDownload.V.b() - 1, 5, activityDownload));
    }

    public String toString() {
        switch (this.f14292a) {
            case 3:
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append((String) this.f14293b);
                sb2.append('{');
                kf.d dVar = (kf.d) ((kf.d) this.f14294c).f10287c;
                String str = "";
                while (dVar != null) {
                    v3.f fVar = (v3.f) dVar.f10286b;
                    sb2.append(str);
                    if (fVar == null || !v3.f.class.isArray()) {
                        sb2.append(fVar);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{fVar});
                        sb2.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    dVar = (kf.d) dVar.f10287c;
                    str = ", ";
                }
                sb2.append('}');
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public synchronized void v() {
        ((y1.g) this.f14295d).f18678c.e();
    }

    public void w(ag.l lVar, ByteArrayOutputStream byteArrayOutputStream, v3.f fVar) throws IOException {
        ArrayList arrayList;
        Iterator it;
        int i10 = 2;
        int i11 = 0;
        ag.c cVar = lVar.f698b;
        if (cVar == null || (arrayList = cVar.f665a) == null || arrayList.size() <= 0) {
            return;
        }
        Iterator it2 = lVar.f698b.f665a.iterator();
        while (it2.hasNext()) {
            ag.f fVar2 = (ag.f) it2.next();
            byte[] bArr = (byte[]) this.f14295d;
            byte[] bArr2 = (byte[]) this.f14294c;
            if (fVar2 == null) {
                throw new wf.a("input parameters is null, cannot write local file header");
            }
            try {
                byte[] bArr3 = new byte[i10];
                // fill-array-data instruction
                bArr3[0] = 0;
                bArr3[1] = 0;
                boolean z = fVar2.f654h >= 4294967295L || fVar2.f655i >= 4294967295L || fVar2.f678y >= 4294967295L || fVar2.f676w >= 65535;
                fVar.U(byteArrayOutputStream, (int) ta.q.e(fVar2.f567b));
                fVar.X(byteArrayOutputStream, fVar2.f675v);
                fVar.X(byteArrayOutputStream, fVar2.f649c);
                byteArrayOutputStream.write(fVar2.f650d);
                fVar.X(byteArrayOutputStream, android.support.v4.media.session.a.d(fVar2.f651e));
                v3.f.W(bArr2, fVar2.f652f);
                byteArrayOutputStream.write(bArr2, i11, 4);
                v3.f.W(bArr2, fVar2.f653g);
                byteArrayOutputStream.write(bArr2, i11, 4);
                if (z) {
                    v3.f.W(bArr2, 4294967295L);
                    byteArrayOutputStream.write(bArr2, i11, 4);
                    byteArrayOutputStream.write(bArr2, i11, 4);
                    lVar.f704h = true;
                } else {
                    v3.f.W(bArr2, fVar2.f654h);
                    byteArrayOutputStream.write(bArr2, i11, 4);
                    v3.f.W(bArr2, fVar2.f655i);
                    byteArrayOutputStream.write(bArr2, i11, 4);
                }
                byte[] bytes = new byte[i11];
                if (eg.c.h(fVar2.f657k)) {
                    bytes = fVar2.f657k.getBytes(eg.d.f4975c);
                }
                fVar.X(byteArrayOutputStream, bytes.length);
                byte[] bArr4 = new byte[4];
                if (z) {
                    it = it2;
                    v3.f.W(bArr2, 4294967295L);
                    System.arraycopy(bArr2, 0, bArr4, 0, 4);
                } else {
                    it = it2;
                    v3.f.W(bArr2, fVar2.f678y);
                    System.arraycopy(bArr2, 0, bArr4, 0, 4);
                }
                int i12 = z ? 32 : 0;
                if (fVar2.f661q != null) {
                    i12 += 11;
                }
                List<ag.e> list = fVar2.f662s;
                if (list != null) {
                    for (ag.e eVar : list) {
                        long j10 = eVar.f672c;
                        if (j10 != 39169 && j10 != 1) {
                            i12 += eVar.f673d + 4;
                        }
                    }
                }
                fVar.X(byteArrayOutputStream, i12);
                String str = fVar2.z;
                byte[] bytes2 = new byte[0];
                if (eg.c.h(str)) {
                    bytes2 = str.getBytes(eg.d.f4975c);
                }
                fVar.X(byteArrayOutputStream, bytes2.length);
                if (z) {
                    v3.f.T(65535, bArr);
                    byteArrayOutputStream.write(bArr, 0, 2);
                } else {
                    fVar.X(byteArrayOutputStream, fVar2.f676w);
                }
                byteArrayOutputStream.write(bArr3);
                byteArrayOutputStream.write(fVar2.f677x);
                byteArrayOutputStream.write(bArr4);
                if (bytes.length > 0) {
                    byteArrayOutputStream.write(bytes);
                }
                if (z) {
                    lVar.f704h = true;
                    fVar.X(byteArrayOutputStream, (int) 1);
                    fVar.X(byteArrayOutputStream, 28);
                    fVar.V(byteArrayOutputStream, fVar2.f655i);
                    fVar.V(byteArrayOutputStream, fVar2.f654h);
                    fVar.V(byteArrayOutputStream, fVar2.f678y);
                    fVar.U(byteArrayOutputStream, fVar2.f676w);
                }
                ag.a aVar = fVar2.f661q;
                if (aVar != null) {
                    fVar.X(byteArrayOutputStream, (int) ta.q.e(aVar.f567b));
                    fVar.X(byteArrayOutputStream, aVar.f644c);
                    fVar.X(byteArrayOutputStream, android.support.v4.media.session.a.i(aVar.f645d));
                    byteArrayOutputStream.write(aVar.f646e.getBytes(eg.d.f4975c));
                    i11 = 0;
                    byteArrayOutputStream.write(new byte[]{(byte) android.support.v4.media.session.a.g(aVar.f647f)});
                    fVar.X(byteArrayOutputStream, android.support.v4.media.session.a.d(aVar.f648g));
                } else {
                    i11 = 0;
                }
                y(fVar2, byteArrayOutputStream);
                if (bytes2.length > 0) {
                    byteArrayOutputStream.write(bytes2);
                }
                it2 = it;
                i10 = 2;
            } catch (Exception e7) {
                throw new wf.a(e7);
            }
        }
    }

    public void y(ag.f fVar, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        byte[] bArr;
        List list = fVar.f662s;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ag.e eVar : fVar.f662s) {
            long j10 = eVar.f672c;
            if (j10 != 39169 && j10 != 1) {
                int i10 = (int) j10;
                v3.f fVar2 = (v3.f) this.f14293b;
                fVar2.X(byteArrayOutputStream, i10);
                fVar2.X(byteArrayOutputStream, eVar.f673d);
                if (eVar.f673d > 0 && (bArr = eVar.f674e) != null) {
                    byteArrayOutputStream.write(bArr);
                }
            }
        }
    }

    public a(y9.b bVar) {
        this.f14292a = 13;
        this.f14293b = new HashMap();
        this.f14294c = bVar;
        this.f14295d = new LinkedBlockingQueue();
        new fg.b(new g8(13, this), 1).start();
    }

    public a(CodeEditor codeEditor) {
        this.f14292a = 14;
        ue.d.e(codeEditor, "editor");
        this.f14293b = codeEditor;
        this.f14294c = new ArrayList(64);
        this.f14295d = new Stack();
    }

    public a(a aVar) {
        this.f14292a = 0;
        w4.b bVar = (w4.b) aVar.f14293b;
        int iG = bVar.g();
        this.f14293b = new f[iG];
        this.f14294c = new f[iG];
        this.f14295d = new f[iG];
        int length = bVar.f2559b.length;
        for (int i10 = 0; i10 < length; i10++) {
            w4.a aVar2 = (w4.a) bVar.d(i10);
            w4.g gVar = aVar2.f17444b;
            f fVar = new f(((w4.f) gVar.d(0)).f17459b);
            f[] fVarArr = (f[]) this.f14293b;
            int i11 = aVar2.f17443a;
            fVarArr[i11] = fVar;
            w4.p pVar = gVar.g().f17459b;
            ((f[]) this.f14294c)[i11] = new f(pVar);
            ((f[]) this.f14295d)[i11] = new f(pVar);
        }
    }

    public a(w4.b bVar) {
        this.f14292a = 7;
        this.f14293b = bVar;
        this.f14294c = null;
        this.f14295d = null;
    }

    public a(a aVar, int[] iArr, a aVar2) {
        this.f14292a = 1;
        if (iArr == null) {
            throw new NullPointerException("order == null");
        }
        if (aVar2 != null) {
            this.f14293b = aVar;
            this.f14294c = iArr;
            this.f14295d = aVar2;
            return;
        }
        throw new NullPointerException("addresses == null");
    }

    public a(int i10) {
        this.f14292a = i10;
        switch (i10) {
            case 9:
                this.f14294c = new v3.f((byte) 0, 10);
                this.f14295d = new byte[4];
                break;
            case 10:
                this.f14293b = new v3.f((byte) 0, 10);
                this.f14294c = new byte[8];
                this.f14295d = new byte[4];
                break;
            default:
                this.f14293b = new HashMap();
                this.f14294c = new HashMap();
                this.f14295d = null;
                break;
        }
    }

    public a(Runnable runnable) {
        this.f14292a = 8;
        this.f14294c = new CopyOnWriteArrayList();
        this.f14295d = new HashMap();
        this.f14293b = runnable;
    }

    public a(Context context, TypedArray typedArray) {
        this.f14292a = 6;
        this.f14293b = context;
        this.f14294c = typedArray;
    }

    public a(String str) {
        this.f14292a = 3;
        kf.d dVar = new kf.d(18, false);
        this.f14294c = dVar;
        this.f14295d = dVar;
        this.f14293b = str;
    }

    public a(ActivityDownload activityDownload, String str, b6 b6Var) {
        this.f14292a = 5;
        this.f14295d = activityDownload;
        this.f14293b = str;
        this.f14294c = b6Var;
    }

    public a(y1.g gVar, z1.i iVar) {
        this.f14292a = 11;
        this.f14295d = gVar;
        this.f14293b = new HashMap();
        this.f14294c = iVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, y1.w] */
    public a(x xVar, ContextWrapper contextWrapper) {
        this.f14292a = 12;
        this.f14295d = xVar;
        this.f14293b = new WeakReference(contextWrapper);
        ?? r02 = new IntConsumer() { // from class: y1.w
            @Override // java.util.function.IntConsumer
            public final void accept(int i10) {
                x xVar2 = (x) this.f18842a.f14295d;
                if (xVar2.Z0) {
                    return;
                }
                xVar2.W(1, 19, Integer.valueOf(i10));
            }

            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
                return IntConsumer$CC.$default$andThen(this, intConsumer);
            }
        };
        this.f14294c = r02;
        contextWrapper.registerDeviceIdChangeListener(new y0(2, xVar.f18870x.a(xVar.f18868v, null)), r02);
    }
}
