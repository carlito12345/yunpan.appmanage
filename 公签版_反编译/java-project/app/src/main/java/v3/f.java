package v3;

import a2.a1;
import a2.s1;
import a2.y0;
import a2.z0;
import android.content.ClipDescription;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.LocationManager;
import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.lifecycle.r0;
import androidx.lifecycle.s0;
import androidx.lifecycle.v0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.hjq.permissions.permission.PermissionNames;
import com.thegrizzlylabs.sardineandroid.model.Propstat;
import com.thegrizzlylabs.sardineandroid.model.Resourcetype;
import f2.k1;
import f2.u0;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PushbackInputStream;
import java.lang.ref.ReferenceQueue;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.Call;
import okhttp3.Response;
import org.w3c.dom.Element;

/* loaded from: classes.dex */
public class f implements a1.h, rh.u, i3.d, s3.y {

    /* renamed from: e, reason: collision with root package name */
    public static f f16472e;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16473a;

    /* renamed from: b, reason: collision with root package name */
    public Object f16474b;

    /* renamed from: c, reason: collision with root package name */
    public Object f16475c;

    /* renamed from: d, reason: collision with root package name */
    public Object f16476d;

    public /* synthetic */ f(int i10, char c7) {
        this.f16473a = i10;
    }

    public static void G(PushbackInputStream pushbackInputStream, byte[] bArr, int i10) throws wf.a {
        if (eg.c.k(pushbackInputStream, bArr, 0, i10) != i10) {
            throw new wf.a("Could not fill buffer");
        }
    }

    public static int H(int i10, byte[] bArr) {
        return ((((bArr[i10 + 3] & 255) << 8) | (bArr[i10 + 2] & 255)) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    public static int K(int i10, byte[] bArr) {
        return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
    }

    public static void T(int i10, byte[] bArr) {
        bArr[3] = (byte) (i10 >>> 24);
        bArr[2] = (byte) (i10 >>> 16);
        bArr[1] = (byte) (i10 >>> 8);
        bArr[0] = (byte) (i10 & 255);
    }

    public static void W(byte[] bArr, long j10) {
        bArr[7] = (byte) (j10 >>> 56);
        bArr[6] = (byte) (j10 >>> 48);
        bArr[5] = (byte) (j10 >>> 40);
        bArr[4] = (byte) (j10 >>> 32);
        bArr[3] = (byte) (j10 >>> 24);
        bArr[2] = (byte) (j10 >>> 16);
        bArr[1] = (byte) (j10 >>> 8);
        bArr[0] = (byte) (j10 & 255);
    }

    public static f v(Call call, Response response) {
        f fVar = new f(19, (char) 0);
        fVar.f16475c = call;
        fVar.f16476d = response;
        return fVar;
    }

    public int A(m8.b bVar) {
        Iterator it = ((ArrayList) this.f16474b).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            n8.e eVar = (n8.e) it.next();
            m8.a aVar = eVar.f11326a;
            int iA = aVar.a(bVar);
            int iA2 = iA + 4;
            int iOrdinal = aVar.ordinal();
            int i11 = eVar.f11329d;
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    iA2 = ((i11 / 2) * 11) + iA2 + (i11 % 2 != 1 ? 0 : 6);
                } else if (iOrdinal == 4) {
                    iA2 += eVar.a() * 8;
                } else if (iOrdinal == 5) {
                    iA2 = iA + 12;
                } else if (iOrdinal == 6) {
                    iA2 += i11 * 13;
                }
            } else {
                int i12 = ((i11 / 3) * 10) + iA2;
                int i13 = i11 % 3;
                iA2 = i12 + (i13 != 1 ? i13 == 2 ? 7 : 0 : 4);
            }
            i10 += iA2;
        }
        return i10;
    }

    public void B(int i10) {
        String strValueOf;
        oh.a aVarA = ((oh.a) this.f16475c).a('\n');
        ph.g gVar = (ph.g) this.f16476d;
        int iMin = i10 * gVar.f12712d;
        int i11 = gVar.f12713e;
        String[] strArr = oh.f.f11806a;
        if (!(iMin >= 0)) {
            throw new nh.c("width must be >= 0");
        }
        nh.b.V(i11 >= -1);
        if (i11 != -1) {
            iMin = Math.min(iMin, i11);
        }
        if (iMin < 21) {
            strValueOf = oh.f.f11806a[iMin];
        } else {
            char[] cArr = new char[iMin];
            for (int i12 = 0; i12 < iMin; i12++) {
                cArr[i12] = ' ';
            }
            strValueOf = String.valueOf(cArr);
        }
        aVarA.b(strValueOf);
    }

    public void C(w1.h hVar, Uri uri, Map map, long j10, long j11, u0 u0Var) throws k1 {
        boolean z;
        l2.l lVar = new l2.l(hVar, j10, j11);
        this.f16476d = lVar;
        if (((l2.o) this.f16475c) != null) {
            return;
        }
        l2.o[] oVarArrA = ((l2.r) this.f16474b).a(uri, map);
        u7.d0 d0VarL = u7.g0.l(oVarArrA.length);
        boolean z4 = true;
        if (oVarArrA.length == 1) {
            this.f16475c = oVarArrA[0];
        } else {
            int length = oVarArrA.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                l2.o oVar = oVarArrA[i10];
                try {
                } catch (EOFException unused) {
                    z = ((l2.o) this.f16475c) != null || lVar.f10499d == j10;
                } catch (Throwable th2) {
                    if (((l2.o) this.f16475c) == null && lVar.f10499d != j10) {
                        z4 = false;
                    }
                    a9.o.t(z4);
                    lVar.f10501f = 0;
                    throw th2;
                }
                if (oVar.g(lVar)) {
                    this.f16475c = oVar;
                    lVar.f10501f = 0;
                    break;
                } else {
                    d0VarL.d(oVar.f());
                    z = ((l2.o) this.f16475c) != null || lVar.f10499d == j10;
                    a9.o.t(z);
                    lVar.f10501f = 0;
                    i10++;
                }
            }
            if (((l2.o) this.f16475c) == null) {
                StringBuilder sb2 = new StringBuilder("None of the available extractors (");
                bd.c cVar = new bd.c(", ");
                Iterator it = u7.q.t(u7.g0.n(oVarArrA), new a2.u0(19)).iterator();
                StringBuilder sb3 = new StringBuilder();
                cVar.d(sb3, it);
                sb2.append(sb3.toString());
                sb2.append(") could read the stream.");
                String string = sb2.toString();
                uri.getClass();
                throw new k1(string, d0VarL.g());
            }
        }
        ((l2.o) this.f16475c).c(u0Var);
    }

    public f[] D() throws Exception {
        Context context = (Context) this.f16475c;
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = (Uri) this.f16476d;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(DocumentsContract.buildDocumentUriUsingTree(uri, cursorQuery.getString(0)));
                    }
                } catch (Exception e7) {
                    e7.toString();
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (RuntimeException e10) {
                            throw e10;
                        }
                    }
                }
                try {
                    cursorQuery.close();
                } catch (RuntimeException e11) {
                    throw e11;
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (RuntimeException e12) {
                        throw e12;
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (Exception unused2) {
        }
        Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
        f[] fVarArr = new f[uriArr.length];
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            fVarArr[i10] = new f(13, this, context, uriArr[i10], false);
        }
        return fVarArr;
    }

    public boolean E(int i10, f0.d dVar, i0.f fVar) {
        int[] iArr = dVar.f5105p0;
        int i11 = iArr[0];
        g0.b bVar = (g0.b) this.f16475c;
        bVar.f5928a = i11;
        bVar.f5929b = iArr[1];
        bVar.f5930c = dVar.q();
        bVar.f5931d = dVar.k();
        bVar.f5936i = false;
        bVar.f5937j = i10;
        boolean z = bVar.f5928a == 3;
        boolean z4 = bVar.f5929b == 3;
        boolean z10 = z && dVar.W > 0.0f;
        boolean z11 = z4 && dVar.W > 0.0f;
        int[] iArr2 = dVar.f5108t;
        if (z10 && iArr2[0] == 4) {
            bVar.f5928a = 1;
        }
        if (z11 && iArr2[1] == 4) {
            bVar.f5929b = 1;
        }
        fVar.b(dVar, bVar);
        dVar.O(bVar.f5932e);
        dVar.L(bVar.f5933f);
        dVar.E = bVar.f5935h;
        dVar.I(bVar.f5934g);
        bVar.f5937j = 0;
        return bVar.f5936i;
    }

    public void F(Throwable th2) {
        ((View) this.f16474b).setVisibility(8);
    }

    public int I(PushbackInputStream pushbackInputStream) throws wf.a {
        byte[] bArr = (byte[]) this.f16475c;
        G(pushbackInputStream, bArr, 4);
        return H(0, bArr);
    }

    public long J(int i10, byte[] bArr) {
        int length = bArr.length - i10;
        byte[] bArr2 = (byte[]) this.f16476d;
        if (length < 8) {
            Arrays.fill(bArr2, (byte) 0);
        }
        System.arraycopy(bArr, i10, bArr2, 0, Math.min(bArr.length - i10, 8));
        return ((((((((((((((bArr2[7] & 255) << 8) | (bArr2[6] & 255)) << 8) | (bArr2[5] & 255)) << 8) | (bArr2[4] & 255)) << 8) | (bArr2[3] & 255)) << 8) | (bArr2[2] & 255)) << 8) | (bArr2[1] & 255)) << 8) | (bArr2[0] & 255);
    }

    public boolean L(Object obj) {
        if (obj instanceof b6.b) {
            ((b6.b) obj).b().f2578a = true;
        }
        switch (((gf.g) this.f16475c).f6150a) {
            case 9:
                break;
            default:
                ((List) obj).clear();
                break;
        }
        return ((w0.d) this.f16476d).c(obj);
    }

    public void M(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!((HashSet) this.f16474b).remove(mediaCodec) || (loudnessCodecController = (LoudnessCodecController) this.f16476d) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public void N(int i10) {
        LoudnessCodecController loudnessCodecController = (LoudnessCodecController) this.f16476d;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f16476d = null;
        }
        LoudnessCodecController loudnessCodecControllerCreate = LoudnessCodecController.create(i10, y7.a.f18969a, new d2.k(this));
        this.f16476d = loudnessCodecControllerCreate;
        Iterator it = ((HashSet) this.f16474b).iterator();
        while (it.hasNext()) {
            if (!loudnessCodecControllerCreate.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }

    public void O(f0.e eVar, int i10, int i11, int i12) {
        int i13 = eVar.f5078b0;
        int i14 = eVar.f5080c0;
        eVar.f5078b0 = 0;
        eVar.f5080c0 = 0;
        eVar.O(i11);
        eVar.L(i12);
        if (i13 < 0) {
            eVar.f5078b0 = 0;
        } else {
            eVar.f5078b0 = i13;
        }
        if (i14 < 0) {
            eVar.f5080c0 = 0;
        } else {
            eVar.f5080c0 = i14;
        }
        f0.e eVar2 = (f0.e) this.f16476d;
        eVar2.f5116t0 = i10;
        eVar2.U();
    }

    public void P() {
        com.yunpan.appmanage.util.c cVar;
        LocationManager locationManager = (LocationManager) this.f16475c;
        if (locationManager == null || (cVar = (com.yunpan.appmanage.util.c) this.f16476d) == null) {
            return;
        }
        locationManager.removeUpdates(cVar);
        this.f16476d = null;
    }

    public void S(f0.e eVar) {
        ArrayList arrayList = (ArrayList) this.f16474b;
        arrayList.clear();
        int size = eVar.f5114q0.size();
        for (int i10 = 0; i10 < size; i10++) {
            f0.d dVar = (f0.d) eVar.f5114q0.get(i10);
            int[] iArr = dVar.f5105p0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(dVar);
            }
        }
        eVar.s0.f5939a = true;
    }

    public void U(ByteArrayOutputStream byteArrayOutputStream, int i10) throws IOException {
        byte[] bArr = (byte[]) this.f16475c;
        T(i10, bArr);
        byteArrayOutputStream.write(bArr);
    }

    public void V(ByteArrayOutputStream byteArrayOutputStream, long j10) throws IOException {
        byte[] bArr = (byte[]) this.f16476d;
        W(bArr, j10);
        byteArrayOutputStream.write(bArr);
    }

    public void X(ByteArrayOutputStream byteArrayOutputStream, int i10) throws IOException {
        byte[] bArr = (byte[]) this.f16474b;
        bArr[1] = (byte) (i10 >>> 8);
        bArr[0] = (byte) (i10 & 255);
        byteArrayOutputStream.write(bArr);
    }

    @Override // s3.y
    public void a(u1.q qVar) {
        long jD;
        ((u1.d0) this.f16475c).getClass();
        String str = u1.f0.f15206a;
        u1.d0 d0Var = (u1.d0) this.f16475c;
        synchronized (d0Var) {
            try {
                long j10 = d0Var.f15202c;
                jD = j10 != -9223372036854775807L ? j10 + d0Var.f15201b : d0Var.d();
            } finally {
            }
        }
        long jE = ((u1.d0) this.f16475c).e();
        if (jD == -9223372036854775807L || jE == -9223372036854775807L) {
            return;
        }
        r1.p pVar = (r1.p) this.f16474b;
        if (jE != pVar.f13527t) {
            r1.o oVar = new r1.o(pVar);
            oVar.f13496s = jE;
            r1.p pVar2 = new r1.p(oVar);
            this.f16474b = pVar2;
            ((l2.j0) this.f16476d).g(pVar2);
        }
        int iA = qVar.a();
        ((l2.j0) this.f16476d).a(iA, qVar);
        ((l2.j0) this.f16476d).b(jD, 1, iA, 0, null);
    }

    @Override // a1.h
    public Uri b() {
        return (Uri) this.f16474b;
    }

    @Override // s3.y
    public void c(u1.d0 d0Var, l2.q qVar, s3.d0 d0Var2) {
        this.f16475c = d0Var;
        d0Var2.m();
        d0Var2.n();
        l2.j0 j0VarZ = qVar.z(d0Var2.f14064d, 5);
        this.f16476d = j0VarZ;
        j0VarZ.g((r1.p) this.f16474b);
    }

    @Override // i3.d
    public int d(long j10) {
        long[] jArr = (long[]) this.f16476d;
        int iA = u1.f0.a(jArr, j10, false);
        if (iA < jArr.length) {
            return iA;
        }
        return -1;
    }

    @Override // i3.d
    public long e(int i10) {
        a9.o.k(i10 >= 0);
        long[] jArr = (long[]) this.f16476d;
        a9.o.k(i10 < jArr.length);
        return jArr[i10];
    }

    @Override // a1.h
    public Uri g() {
        return (Uri) this.f16476d;
    }

    @Override // a1.h
    public ClipDescription getDescription() {
        return (ClipDescription) this.f16475c;
    }

    @Override // i3.d
    public List h(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i10 = 0;
        while (true) {
            List list = (List) this.f16474b;
            if (i10 >= list.size()) {
                break;
            }
            int i11 = i10 * 2;
            long[] jArr = (long[]) this.f16475c;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                r3.c cVar = (r3.c) list.get(i10);
                t1.b bVar = cVar.f13683a;
                if (bVar.f14668e == -3.4028235E38f) {
                    arrayList2.add(cVar);
                } else {
                    arrayList.add(bVar);
                }
            }
            i10++;
        }
        Collections.sort(arrayList2, new qa.e(4));
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            t1.b bVar2 = ((r3.c) arrayList2.get(i12)).f13683a;
            arrayList.add(new t1.b(bVar2.f14664a, bVar2.f14665b, bVar2.f14666c, bVar2.f14667d, (-1) - i12, 1, bVar2.f14670g, bVar2.f14671h, bVar2.f14672i, bVar2.f14676n, bVar2.f14677o, bVar2.f14673j, bVar2.f14674k, bVar2.l, bVar2.f14675m, bVar2.f14678p, bVar2.f14679q, bVar2.r));
        }
        return arrayList;
    }

    @Override // rh.u
    public void i(ph.q qVar, int i10) {
        if (qVar.getClass() == ph.x.class) {
            r((ph.x) qVar, 0, i10);
        } else if (qVar instanceof ph.l) {
            n((ph.l) qVar, i10);
        } else {
            o((ph.p) qVar, i10);
        }
    }

    @Override // i3.d
    public int j() {
        return ((long[]) this.f16476d).length;
    }

    @Override // a1.h
    public Object k() {
        return null;
    }

    public Object l() {
        Object objA = ((w0.d) this.f16476d).a();
        if (objA == null) {
            objA = ((b6.a) this.f16474b).create();
            if (Log.isLoggable("FactoryPools", 2)) {
                objA.getClass().toString();
            }
        }
        if (objA instanceof b6.b) {
            ((b6.b) objA).b().f2578a = false;
        }
        return objA;
    }

    public synchronized void m(h5.s sVar, h5.t tVar) {
        h5.b bVar = (h5.b) ((HashMap) this.f16474b).put(sVar, new h5.b(sVar, tVar, (ReferenceQueue) this.f16475c));
        if (bVar != null) {
            bVar.f6526c = null;
            bVar.clear();
        }
    }

    public void n(ph.l lVar, int i10) {
        lVar.s((oh.a) this.f16475c, (ph.g) this.f16476d);
    }

    public void o(ph.p pVar, int i10) {
        pVar.s((oh.a) this.f16475c, (ph.g) this.f16476d);
    }

    @Override // rh.u
    public void p(ph.q qVar, int i10) {
        if (qVar instanceof ph.l) {
            q((ph.l) qVar, i10);
        }
    }

    public void q(ph.l lVar, int i10) {
        lVar.J((oh.a) this.f16475c, (ph.g) this.f16476d);
    }

    public void r(ph.x xVar, int i10, int i11) {
        String strA = xVar.A();
        ph.g gVar = (ph.g) this.f16476d;
        ph.n.c((oh.a) this.f16475c, strA, gVar, i10 | 1);
    }

    public boolean s() throws Exception {
        Context context = (Context) this.f16475c;
        Uri uri = (Uri) this.f16476d;
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String strU = com.bumptech.glide.d.U(context, uri, "mime_type");
        int iT = (int) com.bumptech.glide.d.T(context, uri, "flags", 0);
        if (TextUtils.isEmpty(strU)) {
            return false;
        }
        return (iT & 4) != 0 || ("vnd.android.document/directory".equals(strU) && (iT & 8) != 0) || !(TextUtils.isEmpty(strU) || (iT & 2) == 0);
    }

    public void t(h5.b bVar) {
        h5.z zVar;
        synchronized (this) {
            ((HashMap) this.f16474b).remove(bVar.f6524a);
            if (bVar.f6525b && (zVar = bVar.f6526c) != null) {
                ((h5.n) this.f16476d).e(bVar.f6524a, new h5.t(zVar, true, false, bVar.f6524a, (h5.n) this.f16476d));
            }
        }
    }

    public String toString() {
        switch (this.f16473a) {
            case 20:
                StringBuilder sb2 = new StringBuilder();
                Iterator it = ((ArrayList) this.f16474b).iterator();
                n8.e eVar = null;
                while (it.hasNext()) {
                    n8.e eVar2 = (n8.e) it.next();
                    if (eVar != null) {
                        sb2.append(",");
                    }
                    sb2.append(eVar2.toString());
                    eVar = eVar2;
                }
                return sb2.toString();
            case 24:
                StringBuilder sb3 = new StringBuilder("<");
                String str = (String) this.f16474b;
                if (str != null) {
                    sb3.append(str);
                    sb3.append(":");
                }
                sb3.append((String) this.f16475c);
                sb3.append('>');
                return sb3.toString();
            default:
                return super.toString();
        }
    }

    public Bitmap u(BitmapFactory.Options options) {
        switch (this.f16473a) {
            case 21:
                return BitmapFactory.decodeStream(new a6.a(a6.c.c((ByteBuffer) this.f16474b)), null, options);
            case 22:
                o5.w wVar = (o5.w) ((com.bumptech.glide.load.data.i) this.f16474b).f3361b;
                wVar.reset();
                return BitmapFactory.decodeStream(wVar, null, options);
            default:
                return BitmapFactory.decodeFileDescriptor(((com.bumptech.glide.load.data.i) this.f16476d).f().getFileDescriptor(), null, options);
        }
    }

    public r0 w(Class cls, String str) {
        r0 r0VarB;
        ue.d.e(str, "key");
        v0 v0Var = (v0) this.f16474b;
        v0Var.getClass();
        LinkedHashMap linkedHashMap = v0Var.f1824a;
        r0 r0Var = (r0) linkedHashMap.get(str);
        boolean zIsInstance = cls.isInstance(r0Var);
        androidx.lifecycle.u0 u0Var = (androidx.lifecycle.u0) this.f16475c;
        if (!zIsInstance) {
            p1.c cVar = new p1.c((p1.b) this.f16476d);
            cVar.f12565a.put(s0.f1810b, str);
            try {
                r0VarB = u0Var.e(cls, cVar);
            } catch (AbstractMethodError unused) {
                r0VarB = u0Var.b(cls);
            }
            ue.d.e(r0VarB, "viewModel");
            r0 r0Var2 = (r0) linkedHashMap.put(str, r0VarB);
            if (r0Var2 != null) {
                r0Var2.b();
            }
            return r0VarB;
        }
        androidx.lifecycle.p0 p0Var = u0Var instanceof androidx.lifecycle.p0 ? (androidx.lifecycle.p0) u0Var : null;
        if (p0Var != null) {
            ue.d.b(r0Var);
            androidx.lifecycle.o oVar = p0Var.f1801d;
            if (oVar != null) {
                b4.e eVar = p0Var.f1802e;
                ue.d.b(eVar);
                androidx.lifecycle.l0.a(r0Var, eVar, oVar);
            }
        }
        ue.d.c(r0Var, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        return r0Var;
    }

    public long x() {
        l2.l lVar = (l2.l) this.f16476d;
        if (lVar != null) {
            return lVar.f10499d;
        }
        return -1L;
    }

    public void y() throws InterruptedException {
        Context context = (Context) this.f16474b;
        this.f16475c = (LocationManager) context.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        if (n0.g.a(context, PermissionNames.ACCESS_FINE_LOCATION) != 0) {
            com.yunpan.appmanage.util.a0.u("没有定位权限");
            return;
        }
        if (!((LocationManager) this.f16475c).isProviderEnabled("gps")) {
            com.yunpan.appmanage.util.a0.u("GPS模块未开启");
            return;
        }
        com.yunpan.appmanage.util.c cVar = new com.yunpan.appmanage.util.c(this);
        this.f16476d = cVar;
        try {
            ((LocationManager) this.f16475c).requestLocationUpdates("gps", 0L, 0.0f, cVar, Looper.getMainLooper());
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                do {
                    Thread.sleep(500L);
                    if (((com.yunpan.appmanage.util.c) this.f16476d) == null) {
                        break;
                    }
                } while (System.currentTimeMillis() - jCurrentTimeMillis < 6666);
            } catch (Exception unused) {
            }
            if (((com.yunpan.appmanage.util.c) this.f16476d) != null) {
                P();
                com.yunpan.appmanage.util.a0.u("无法获取GPS时间");
            }
        } catch (Exception unused2) {
            P();
        }
    }

    public ImageHeaderParser$ImageType z() throws Throwable {
        switch (this.f16473a) {
            case 21:
                return android.support.v4.media.session.b.o((ArrayList) this.f16475c, a6.c.c((ByteBuffer) this.f16474b));
            case 22:
                o5.w wVar = (o5.w) ((com.bumptech.glide.load.data.i) this.f16474b).f3361b;
                wVar.reset();
                return android.support.v4.media.session.b.n((ArrayList) this.f16476d, wVar, (a2.k1) this.f16475c);
            default:
                com.bumptech.glide.load.data.i iVar = (com.bumptech.glide.load.data.i) this.f16476d;
                a2.k1 k1Var = (a2.k1) this.f16474b;
                ArrayList arrayList = (ArrayList) this.f16475c;
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    f5.e eVar = (f5.e) arrayList.get(i10);
                    o5.w wVar2 = null;
                    try {
                        o5.w wVar3 = new o5.w(new FileInputStream(iVar.f().getFileDescriptor()), k1Var);
                        try {
                            ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = eVar.c(wVar3);
                            wVar3.A();
                            iVar.f();
                            if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                                return imageHeaderParser$ImageTypeC;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            wVar2 = wVar3;
                            if (wVar2 != null) {
                                wVar2.A();
                            }
                            iVar.f();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public /* synthetic */ f(int i10, Object obj, Object obj2, Object obj3, boolean z) {
        this.f16473a = i10;
        this.f16474b = obj;
        this.f16475c = obj2;
        this.f16476d = obj3;
    }

    public /* synthetic */ f(Object obj, Object obj2, Object obj3, int i10) {
        this.f16473a = i10;
        this.f16476d = obj;
        this.f16474b = obj2;
        this.f16475c = obj3;
    }

    public f(byte b10, int i10) {
        this.f16473a = i10;
        switch (i10) {
            case 8:
                this.f16474b = new d0.d();
                this.f16475c = new d0.d();
                this.f16476d = new d0.g[32];
                break;
            case 9:
                d2.l lVar = d2.l.f4291a;
                this.f16474b = new HashSet();
                this.f16475c = lVar;
                break;
            case 10:
                this.f16474b = new byte[2];
                this.f16475c = new byte[4];
                this.f16476d = new byte[8];
                break;
            case 11:
            case 12:
            case 13:
            default:
                this.f16474b = new androidx.leanback.widget.u(1);
                androidx.leanback.widget.u uVar = new androidx.leanback.widget.u(0);
                this.f16475c = uVar;
                this.f16476d = uVar;
                break;
            case 14:
                ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new h5.a(0));
                this.f16474b = new HashMap();
                this.f16475c = new ReferenceQueue();
                executorServiceNewSingleThreadExecutor.execute(new androidx.activity.h(10, this));
                break;
        }
    }

    private final void Q() {
    }

    private final void R() {
    }

    @Override // a1.h
    public void f() {
    }

    public f(Context context) {
        this.f16473a = 7;
        this.f16474b = context.getApplicationContext();
    }

    public f(ArrayList arrayList) {
        this.f16473a = 28;
        this.f16474b = Collections.unmodifiableList(new ArrayList(arrayList));
        this.f16475c = new long[arrayList.size() * 2];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            r3.c cVar = (r3.c) arrayList.get(i10);
            int i11 = i10 * 2;
            long[] jArr = (long[]) this.f16475c;
            jArr[i11] = cVar.f13684b;
            jArr[i11 + 1] = cVar.f13685c;
        }
        long[] jArr2 = (long[]) this.f16475c;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f16476d = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    public f(v0 v0Var, androidx.lifecycle.u0 u0Var, p1.b bVar) {
        this.f16473a = 5;
        ue.d.e(v0Var, "store");
        ue.d.e(bVar, "defaultCreationExtras");
        this.f16474b = v0Var;
        this.f16475c = u0Var;
        this.f16476d = bVar;
    }

    public f(int i10) {
        this.f16473a = 18;
        this.f16474b = new long[i10];
        this.f16475c = new BitSet(i10);
        this.f16476d = new long[i10];
    }

    public f(String str) {
        this.f16473a = 29;
        r1.o oVar = new r1.o();
        oVar.f13491m = r1.e0.l("video/mp2t");
        oVar.f13492n = r1.e0.l(str);
        this.f16474b = new r1.p(oVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(v0 v0Var, androidx.lifecycle.u0 u0Var) {
        this(v0Var, u0Var, p1.a.f12564b);
        this.f16473a = 5;
        ue.d.e(v0Var, "store");
    }

    public f(l2.r rVar) {
        this.f16473a = 11;
        this.f16474b = rVar;
    }

    public f(Context context, LocationManager locationManager) {
        this.f16473a = 26;
        this.f16476d = new q.j0();
        this.f16474b = context;
        this.f16475c = locationManager;
    }

    public f(f0.e eVar) {
        this.f16473a = 12;
        this.f16474b = new ArrayList();
        this.f16475c = new g0.b();
        this.f16476d = eVar;
    }

    public f(q9.a aVar, com.thegrizzlylabs.sardineandroid.model.Response response) throws NumberFormatException {
        String creationdate;
        String getlastmodified;
        Resourcetype resourcetype;
        String getcontentlength;
        this.f16473a = 27;
        aVar.getClass();
        List<Propstat> propstat = response.getPropstat();
        String getcontenttype = null;
        if (propstat.isEmpty()) {
            creationdate = null;
        } else {
            for (Propstat propstat2 : propstat) {
                if (propstat2.getProp() != null) {
                    creationdate = propstat2.getProp().getCreationdate();
                    break;
                }
            }
            creationdate = null;
        }
        t9.b.b(creationdate);
        List<Propstat> propstat3 = response.getPropstat();
        if (propstat3.isEmpty()) {
            getlastmodified = null;
        } else {
            for (Propstat propstat4 : propstat3) {
                if (propstat4.getProp() != null) {
                    getlastmodified = propstat4.getProp().getGetlastmodified();
                    break;
                }
            }
            getlastmodified = null;
        }
        this.f16474b = t9.b.b(getlastmodified);
        List<Propstat> propstat5 = response.getPropstat();
        if (!propstat5.isEmpty()) {
            Iterator<Propstat> it = propstat5.iterator();
            while (true) {
                if (it.hasNext()) {
                    Propstat next = it.next();
                    if (next.getProp() != null) {
                        Resourcetype resourcetype2 = next.getProp().getResourcetype();
                        if (resourcetype2 != null && resourcetype2.getCollection() != null) {
                            getcontenttype = "httpd/unix-directory";
                            break;
                        } else if (next.getProp().getGetcontenttype() != null) {
                            getcontenttype = next.getProp().getGetcontenttype();
                            break;
                        }
                    }
                } else {
                    getcontenttype = "application/octet-stream";
                    break;
                }
            }
        }
        this.f16475c = getcontenttype;
        List<Propstat> propstat6 = response.getPropstat();
        long j10 = -1;
        if (!propstat6.isEmpty()) {
            for (Propstat propstat7 : propstat6) {
                if (propstat7.getProp() != null && (getcontentlength = propstat7.getProp().getGetcontentlength()) != null) {
                    try {
                        j10 = Long.parseLong(getcontentlength);
                        break;
                    } catch (NumberFormatException unused) {
                        q9.a.f13170c.warning("Failed to parse content length ".concat(getcontentlength));
                    }
                }
            }
        }
        this.f16476d = Long.valueOf(j10);
        List<Propstat> propstat8 = response.getPropstat();
        if (!propstat8.isEmpty()) {
            Iterator<Propstat> it2 = propstat8.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Propstat next2 = it2.next();
                if (next2.getProp() != null) {
                    next2.getProp().getGetetag();
                    break;
                }
            }
        }
        List<Propstat> propstat9 = response.getPropstat();
        if (!propstat9.isEmpty()) {
            Iterator<Propstat> it3 = propstat9.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Propstat next3 = it3.next();
                if (next3.getProp() != null) {
                    next3.getProp().getDisplayname();
                    break;
                }
            }
        }
        List<Propstat> propstat10 = response.getPropstat();
        if (propstat10.isEmpty()) {
            Collections.emptyList();
        } else {
            ArrayList arrayList = new ArrayList();
            for (Propstat propstat11 : propstat10) {
                if (propstat11.getProp() != null && (resourcetype = propstat11.getProp().getResourcetype()) != null) {
                    if (resourcetype.getCollection() != null) {
                        arrayList.add(new sc.a("DAV:", "collection", "D"));
                    }
                    if (resourcetype.getPrincipal() != null) {
                        arrayList.add(new sc.a("DAV:", "principal", "D"));
                    }
                    Iterator<Element> it4 = resourcetype.getAny().iterator();
                    while (it4.hasNext()) {
                        arrayList.add(t9.b.c(it4.next()));
                    }
                }
            }
        }
        List<Propstat> propstat12 = response.getPropstat();
        if (!propstat12.isEmpty()) {
            Iterator<Propstat> it5 = propstat12.iterator();
            while (true) {
                if (!it5.hasNext()) {
                    break;
                }
                Propstat next4 = it5.next();
                if (next4.getProp() != null) {
                    Resourcetype resourcetype3 = next4.getProp().getResourcetype();
                    if (resourcetype3 == null || resourcetype3.getCollection() == null) {
                        next4.getProp().getGetcontentlanguage();
                    }
                }
            }
        }
        List<Propstat> propstat13 = response.getPropstat();
        if (!propstat13.isEmpty()) {
            HashMap map = new HashMap();
            for (Propstat propstat14 : propstat13) {
                if (propstat14.getProp() != null) {
                    for (Element element : propstat14.getProp().getAny()) {
                        map.put(t9.b.c(element), element.getTextContent());
                    }
                }
            }
        }
        List<Propstat> propstat15 = response.getPropstat();
        if (!propstat15.isEmpty()) {
            Iterator<Propstat> it6 = propstat15.iterator();
            while (true) {
                if (!it6.hasNext()) {
                    break;
                }
                Propstat next5 = it6.next();
                if (next5.getProp() != null) {
                    next5.getProp().getLockdiscovery();
                    break;
                }
            }
        }
        List<Propstat> propstat16 = response.getPropstat();
        if (propstat16.isEmpty()) {
            return;
        }
        for (Propstat propstat17 : propstat16) {
            if (propstat17.getProp() != null) {
                propstat17.getProp().getSupportedlock();
                return;
            }
        }
    }

    public f(s1.l[] lVarArr) {
        this.f16473a = 3;
        s1 s1Var = new s1();
        s1.r rVar = new s1.r();
        s1.l[] lVarArr2 = new s1.l[lVarArr.length + 2];
        this.f16474b = lVarArr2;
        System.arraycopy(lVarArr, 0, lVarArr2, 0, lVarArr.length);
        this.f16475c = s1Var;
        this.f16476d = rVar;
        lVarArr2[lVarArr.length] = s1Var;
        lVarArr2[lVarArr.length + 1] = rVar;
    }

    public f(a6.n nVar, ArrayList arrayList, a2.k1 k1Var) {
        this.f16473a = 22;
        a6.h.c(k1Var, "Argument must not be null");
        this.f16475c = k1Var;
        a6.h.c(arrayList, "Argument must not be null");
        this.f16476d = arrayList;
        this.f16474b = new com.bumptech.glide.load.data.i(nVar, k1Var);
    }

    public f(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, a2.k1 k1Var) {
        this.f16473a = 23;
        a6.h.c(k1Var, "Argument must not be null");
        this.f16474b = k1Var;
        a6.h.c(arrayList, "Argument must not be null");
        this.f16475c = arrayList;
        this.f16476d = new com.bumptech.glide.load.data.i(parcelFileDescriptor);
    }

    public f(h5.n nVar, w5.f fVar, h5.r rVar) {
        this.f16473a = 17;
        this.f16476d = nVar;
        this.f16475c = fVar;
        this.f16474b = rVar;
    }

    public f(kf.f fVar, m8.b bVar, n8.d dVar) {
        m8.a aVar;
        int i10;
        int i11;
        int i12;
        int i13;
        this.f16473a = 20;
        this.f16476d = fVar;
        this.f16474b = new ArrayList();
        n8.d dVar2 = dVar;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            aVar = m8.a.ECI;
            if (dVar2 == null) {
                break;
            }
            int i16 = i14 + dVar2.f11323d;
            m8.a aVar2 = m8.a.BYTE;
            m8.a aVar3 = dVar2.f11320a;
            int i17 = dVar2.f11322c;
            n8.d dVar3 = dVar2.f11324e;
            boolean z = (aVar3 == aVar2 && dVar3 == null && i17 != 0) || !(dVar3 == null || i17 == dVar3.f11322c);
            i10 = z ? 1 : i15;
            if (dVar3 == null || dVar3.f11320a != aVar3 || z) {
                i12 = i10;
                ((ArrayList) this.f16474b).add(0, new n8.e(this, aVar3, dVar2.f11321b, i17, i16));
                i13 = 0;
            } else {
                i12 = i10;
                i13 = i16;
            }
            if (z) {
                ((ArrayList) this.f16474b).add(0, new n8.e(this, aVar, dVar2.f11321b, dVar2.f11322c, 0));
            }
            i15 = i12;
            i14 = i13;
            dVar2 = dVar3;
        }
        if (fVar.f10290c) {
            n8.e eVar = (n8.e) ((ArrayList) this.f16474b).get(0);
            if (eVar != null && eVar.f11326a != aVar && i15 != 0) {
                ((ArrayList) this.f16474b).add(0, new n8.e(this, aVar, 0, 0, 0));
            }
            ((ArrayList) this.f16474b).add(((n8.e) ((ArrayList) this.f16474b).get(0)).f11326a == aVar ? 1 : 0, new n8.e(this, m8.a.FNC1_FIRST_POSITION, 0, 0, 0));
        }
        int i18 = bVar.f10999a;
        int i19 = 26;
        int iC = d0.f.c(i18 <= 9 ? 1 : i18 <= 26 ? 2 : 3);
        if (iC == 0) {
            i19 = 9;
        } else if (iC != 1) {
            i10 = 27;
            i19 = 40;
        } else {
            i10 = 10;
        }
        int iA = A(bVar);
        while (true) {
            i11 = fVar.f10289b;
            if (i18 >= i19 || n8.b.c(iA, m8.b.a(i18), i11)) {
                break;
            } else {
                i18++;
            }
        }
        while (i18 > i10 && n8.b.c(iA, m8.b.a(i18 - 1), i11)) {
            i18--;
        }
        this.f16475c = m8.b.a(i18);
    }

    public f(a1 a1Var) {
        this.f16473a = 2;
        this.f16476d = a1Var;
        Handler handlerK = u1.f0.k(null);
        this.f16474b = handlerK;
        z0 z0Var = new z0(this);
        this.f16475c = z0Var;
        a1Var.f83a.registerStreamEventCallback(new y0(0, handlerK), z0Var);
    }
}
