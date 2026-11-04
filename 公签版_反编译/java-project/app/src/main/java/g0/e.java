package g0;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import ha.db;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5939a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5940b;

    /* renamed from: c, reason: collision with root package name */
    public Object f5941c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5942d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5943e;

    /* renamed from: f, reason: collision with root package name */
    public Object f5944f;

    /* renamed from: g, reason: collision with root package name */
    public Object f5945g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f5946h;

    public e() {
        this.f5939a = false;
        this.f5940b = false;
        this.f5946h = new ArrayBlockingQueue(1000);
    }

    public void a(f fVar, int i10, int i11, ArrayList arrayList, l lVar) {
        o oVar = fVar.f5950d;
        if (oVar.f5972c == null) {
            f0.e eVar = (f0.e) this.f5941c;
            if (oVar == eVar.f5081d || oVar == eVar.f5083e) {
                return;
            }
            if (lVar == null) {
                lVar = new l(oVar);
                arrayList.add(lVar);
            }
            oVar.f5972c = lVar;
            lVar.f5962b.add(oVar);
            f fVar2 = oVar.f5977h;
            Iterator it = fVar2.f5957k.iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar instanceof f) {
                    a((f) dVar, i10, 0, arrayList, lVar);
                }
            }
            f fVar3 = oVar.f5978i;
            Iterator it2 = fVar3.f5957k.iterator();
            while (it2.hasNext()) {
                d dVar2 = (d) it2.next();
                if (dVar2 instanceof f) {
                    a((f) dVar2, i10, 1, arrayList, lVar);
                }
            }
            if (i10 == 1 && (oVar instanceof m)) {
                Iterator it3 = ((m) oVar).f5963k.f5957k.iterator();
                while (it3.hasNext()) {
                    d dVar3 = (d) it3.next();
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i10, 2, arrayList, lVar);
                    }
                }
            }
            Iterator it4 = fVar2.l.iterator();
            while (it4.hasNext()) {
                a((f) it4.next(), i10, 0, arrayList, lVar);
            }
            Iterator it5 = fVar3.l.iterator();
            while (it5.hasNext()) {
                a((f) it5.next(), i10, 1, arrayList, lVar);
            }
            if (i10 == 1 && (oVar instanceof m)) {
                Iterator it6 = ((m) oVar).f5963k.l.iterator();
                while (it6.hasNext()) {
                    a((f) it6.next(), i10, 2, arrayList, lVar);
                }
            }
        }
    }

    public void b(f0.e eVar) {
        int iQ;
        int i10;
        int iK;
        Iterator it = eVar.f5114q0.iterator();
        while (it.hasNext()) {
            f0.d dVar = (f0.d) it.next();
            int[] iArr = dVar.f5105p0;
            int i11 = iArr[0];
            int i12 = iArr[1];
            if (dVar.f5088g0 == 8) {
                dVar.f5075a = true;
            } else {
                float f10 = dVar.f5111w;
                if (f10 < 1.0f && i11 == 3) {
                    dVar.r = 2;
                }
                float f11 = dVar.z;
                if (f11 < 1.0f && i12 == 3) {
                    dVar.f5107s = 2;
                }
                if (dVar.W > 0.0f) {
                    if (i11 == 3 && (i12 == 2 || i12 == 1)) {
                        dVar.r = 3;
                    } else if (i12 == 3 && (i11 == 2 || i11 == 1)) {
                        dVar.f5107s = 3;
                    } else if (i11 == 3 && i12 == 3) {
                        if (dVar.r == 0) {
                            dVar.r = 3;
                        }
                        if (dVar.f5107s == 0) {
                            dVar.f5107s = 3;
                        }
                    }
                }
                f0.c cVar = dVar.K;
                f0.c cVar2 = dVar.I;
                if (i11 == 3 && dVar.r == 1 && (cVar2.f5071f == null || cVar.f5071f == null)) {
                    i11 = 2;
                }
                f0.c cVar3 = dVar.L;
                f0.c cVar4 = dVar.J;
                int i13 = (i12 == 3 && dVar.f5107s == 1 && (cVar4.f5071f == null || cVar3.f5071f == null)) ? 2 : i12;
                k kVar = dVar.f5081d;
                kVar.f5973d = i11;
                int i14 = dVar.r;
                kVar.f5970a = i14;
                m mVar = dVar.f5083e;
                mVar.f5973d = i13;
                int i15 = dVar.f5107s;
                mVar.f5970a = i15;
                if ((i11 == 4 || i11 == 1 || i11 == 2) && (i13 == 4 || i13 == 1 || i13 == 2)) {
                    int iQ2 = dVar.q();
                    if (i11 == 4) {
                        iQ = (eVar.q() - cVar2.f5072g) - cVar.f5072g;
                        i11 = 1;
                    } else {
                        iQ = iQ2;
                    }
                    int iK2 = dVar.k();
                    if (i13 == 4) {
                        iK = (eVar.k() - cVar4.f5072g) - cVar3.f5072g;
                        i10 = 1;
                    } else {
                        i10 = i13;
                        iK = iK2;
                    }
                    i(i11, iQ, i10, iK, dVar);
                    dVar.f5081d.f5974e.d(dVar.q());
                    dVar.f5083e.f5974e.d(dVar.k());
                    dVar.f5075a = true;
                } else {
                    int[] iArr2 = eVar.f5105p0;
                    f0.c[] cVarArr = dVar.Q;
                    if (i11 == 3 && (i13 == 2 || i13 == 1)) {
                        if (i14 == 3) {
                            if (i13 == 2) {
                                i(2, 0, 2, 0, dVar);
                            }
                            int iK3 = dVar.k();
                            i(1, (int) ((iK3 * dVar.W) + 0.5f), 1, iK3, dVar);
                            dVar.f5081d.f5974e.d(dVar.q());
                            dVar.f5083e.f5974e.d(dVar.k());
                            dVar.f5075a = true;
                        } else if (i14 == 1) {
                            i(2, 0, i13, 0, dVar);
                            dVar.f5081d.f5974e.f5958m = dVar.q();
                        } else if (i14 == 2) {
                            int i16 = iArr2[0];
                            if (i16 == 1 || i16 == 4) {
                                i(1, (int) ((f10 * eVar.q()) + 0.5f), i13, dVar.k(), dVar);
                                dVar.f5081d.f5974e.d(dVar.q());
                                dVar.f5083e.f5974e.d(dVar.k());
                                dVar.f5075a = true;
                            }
                        } else if (cVarArr[0].f5071f == null || cVarArr[1].f5071f == null) {
                            i(2, 0, i13, 0, dVar);
                            dVar.f5081d.f5974e.d(dVar.q());
                            dVar.f5083e.f5974e.d(dVar.k());
                            dVar.f5075a = true;
                        }
                    }
                    if (i13 == 3 && (i11 == 2 || i11 == 1)) {
                        if (i15 == 3) {
                            if (i11 == 2) {
                                i(2, 0, 2, 0, dVar);
                            }
                            int iQ3 = dVar.q();
                            float f12 = dVar.W;
                            if (dVar.X == -1) {
                                f12 = 1.0f / f12;
                            }
                            i(1, iQ3, 1, (int) ((iQ3 * f12) + 0.5f), dVar);
                            dVar.f5081d.f5974e.d(dVar.q());
                            dVar.f5083e.f5974e.d(dVar.k());
                            dVar.f5075a = true;
                        } else if (i15 == 1) {
                            i(i11, 0, 2, 0, dVar);
                            dVar.f5083e.f5974e.f5958m = dVar.k();
                        } else if (i15 == 2) {
                            int i17 = iArr2[1];
                            if (i17 == 1 || i17 == 4) {
                                i(i11, dVar.q(), 1, (int) ((f11 * eVar.k()) + 0.5f), dVar);
                                dVar.f5081d.f5974e.d(dVar.q());
                                dVar.f5083e.f5974e.d(dVar.k());
                                dVar.f5075a = true;
                            }
                        } else if (cVarArr[2].f5071f == null || cVarArr[3].f5071f == null) {
                            i(2, 0, i13, 0, dVar);
                            dVar.f5081d.f5974e.d(dVar.q());
                            dVar.f5083e.f5974e.d(dVar.k());
                            dVar.f5075a = true;
                        }
                    }
                    if (i11 == 3 && i13 == 3) {
                        if (i14 == 1 || i15 == 1) {
                            i(2, 0, 2, 0, dVar);
                            dVar.f5081d.f5974e.f5958m = dVar.q();
                            dVar.f5083e.f5974e.f5958m = dVar.k();
                        } else if (i15 == 2 && i14 == 2 && iArr2[0] == 1 && iArr2[1] == 1) {
                            i(1, (int) ((f10 * eVar.q()) + 0.5f), 1, (int) ((f11 * eVar.k()) + 0.5f), dVar);
                            dVar.f5081d.f5974e.d(dVar.q());
                            dVar.f5083e.f5974e.d(dVar.k());
                            dVar.f5075a = true;
                        }
                    }
                }
            }
        }
    }

    public void c() {
        ArrayList arrayList = (ArrayList) this.f5943e;
        arrayList.clear();
        f0.e eVar = (f0.e) this.f5942d;
        eVar.f5081d.f();
        eVar.f5083e.f();
        arrayList.add(eVar.f5081d);
        arrayList.add(eVar.f5083e);
        Iterator it = eVar.f5114q0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            f0.d dVar = (f0.d) it.next();
            if (dVar instanceof f0.h) {
                arrayList.add(new i((f0.h) dVar));
            } else {
                if (dVar.x()) {
                    if (dVar.f5077b == null) {
                        dVar.f5077b = new c(dVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f5077b);
                } else {
                    arrayList.add(dVar.f5081d);
                }
                if (dVar.y()) {
                    if (dVar.f5079c == null) {
                        dVar.f5079c = new c(dVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f5079c);
                } else {
                    arrayList.add(dVar.f5083e);
                }
                if (dVar instanceof f0.i) {
                    arrayList.add(new j(dVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((o) it2.next()).f();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            o oVar = (o) it3.next();
            if (oVar.f5971b != eVar) {
                oVar.d();
            }
        }
        ArrayList arrayList2 = (ArrayList) this.f5944f;
        arrayList2.clear();
        f0.e eVar2 = (f0.e) this.f5941c;
        h(eVar2.f5081d, 0, arrayList2);
        h(eVar2.f5083e, 1, arrayList2);
        this.f5939a = false;
    }

    public void d() {
        q4.a.e((OutputStream) this.f5944f);
        q4.a.e((InputStream) this.f5943e);
        Process process = (Process) this.f5942d;
        if (process != null) {
            process.destroy();
        }
        try {
            oa.b bVar = (oa.b) this.f5941c;
            if (bVar != null) {
                bVar.destroy();
            }
        } catch (Exception unused) {
        }
        ((ArrayBlockingQueue) this.f5946h).clear();
        this.f5944f = null;
        this.f5943e = null;
        this.f5942d = null;
        this.f5941c = null;
        fg.b bVar2 = (fg.b) this.f5945g;
        if (bVar2 == null || !bVar2.isAlive()) {
            return;
        }
        try {
            ((fg.b) this.f5945g).interrupt();
        } catch (Exception unused2) {
        }
        this.f5945g = null;
    }

    public int e(f0.e eVar, int i10) {
        ArrayList arrayList;
        int i11;
        int i12;
        long jMax;
        float f10;
        f0.e eVar2 = eVar;
        ArrayList arrayList2 = (ArrayList) this.f5944f;
        int size = arrayList2.size();
        int i13 = 0;
        long jMax2 = 0;
        while (i13 < size) {
            o oVar = ((l) arrayList2.get(i13)).f5961a;
            if (!(oVar instanceof c) ? !(i10 != 0 ? (oVar instanceof m) : (oVar instanceof k)) : ((c) oVar).f5975f != i10) {
                f fVar = (i10 == 0 ? eVar2.f5081d : eVar2.f5083e).f5977h;
                f fVar2 = (i10 == 0 ? eVar2.f5081d : eVar2.f5083e).f5978i;
                boolean zContains = oVar.f5977h.l.contains(fVar);
                f fVar3 = oVar.f5978i;
                boolean zContains2 = fVar3.l.contains(fVar2);
                long j10 = oVar.j();
                f fVar4 = oVar.f5977h;
                if (zContains && zContains2) {
                    long jB = l.b(fVar4, 0L);
                    ArrayList arrayList3 = arrayList2;
                    i11 = size;
                    long jA = l.a(fVar3, 0L);
                    long j11 = jB - j10;
                    int i14 = fVar3.f5952f;
                    arrayList = arrayList3;
                    i12 = i13;
                    if (j11 >= (-i14)) {
                        j11 += i14;
                    }
                    long j12 = (-jA) - j10;
                    long j13 = fVar4.f5952f;
                    long j14 = j12 - j13;
                    if (j14 >= j13) {
                        j14 -= j13;
                    }
                    f0.d dVar = oVar.f5971b;
                    if (i10 == 0) {
                        f10 = dVar.f5082d0;
                    } else if (i10 == 1) {
                        f10 = dVar.f5084e0;
                    } else {
                        dVar.getClass();
                        f10 = -1.0f;
                    }
                    float f11 = f10 > 0.0f ? (long) ((j11 / (1.0f - f10)) + (j14 / f10)) : 0L;
                    jMax = (fVar4.f5952f + ((((long) ((f11 * f10) + 0.5f)) + j10) + ((long) g.b.b(1.0f, f10, f11, 0.5f)))) - fVar3.f5952f;
                } else {
                    arrayList = arrayList2;
                    i11 = size;
                    i12 = i13;
                    jMax = zContains ? Math.max(l.b(fVar4, fVar4.f5952f), fVar4.f5952f + j10) : zContains2 ? Math.max(-l.a(fVar3, fVar3.f5952f), (-fVar3.f5952f) + j10) : (oVar.j() + fVar4.f5952f) - fVar3.f5952f;
                }
            } else {
                arrayList = arrayList2;
                i11 = size;
                i12 = i13;
                jMax = 0;
            }
            jMax2 = Math.max(jMax2, jMax);
            i13 = i12 + 1;
            eVar2 = eVar;
            size = i11;
            arrayList2 = arrayList;
        }
        return (int) jMax2;
    }

    public void f(String str) {
        IGjAdbFace iGjAdbFace;
        d();
        Thread.sleep(500L);
        q4.a.c();
        if (Build.VERSION.SDK_INT >= 26 && (iGjAdbFace = fa.a.f5646a.f5651b) != null) {
            try {
                this.f5941c = iGjAdbFace.getNewProcess();
                this.f5943e = new ParcelFileDescriptor.AutoCloseInputStream(((oa.b) this.f5941c).getInputStream());
                this.f5944f = new ParcelFileDescriptor.AutoCloseOutputStream(((oa.b) this.f5941c).getOutputStream());
                System.out.getClass();
                g("exec 2>&1");
            } catch (Exception e7) {
                e7.printStackTrace();
                oa.b bVar = (oa.b) this.f5941c;
                if (bVar != null) {
                    bVar.destroy();
                }
                this.f5941c = null;
                q4.a.e((InputStream) this.f5943e);
                q4.a.e((OutputStream) this.f5944f);
                this.f5943e = null;
                this.f5944f = null;
                this.f5942d = null;
            }
        }
        if (((oa.b) this.f5941c) == null) {
            ProcessBuilder processBuilder = new ProcessBuilder(str);
            processBuilder.redirectErrorStream(true);
            Process processStart = processBuilder.start();
            this.f5942d = processStart;
            this.f5943e = processStart.getInputStream();
            this.f5944f = ((Process) this.f5942d).getOutputStream();
        }
        fg.b bVar2 = new fg.b(new db(18, this), 1);
        this.f5945g = bVar2;
        bVar2.start();
    }

    public void g(String str) {
        ((OutputStream) this.f5944f).write(str.getBytes(Charset.forName(HTTP.UTF_8)));
        ((OutputStream) this.f5944f).write(10);
        ((OutputStream) this.f5944f).flush();
    }

    public void h(o oVar, int i10, ArrayList arrayList) {
        f fVar;
        Iterator it = oVar.f5977h.f5957k.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            fVar = oVar.f5978i;
            if (!zHasNext) {
                break;
            }
            d dVar = (d) it.next();
            if (dVar instanceof f) {
                a((f) dVar, i10, 0, arrayList, null);
            } else if (dVar instanceof o) {
                a(((o) dVar).f5977h, i10, 0, arrayList, null);
            }
        }
        Iterator it2 = fVar.f5957k.iterator();
        while (it2.hasNext()) {
            d dVar2 = (d) it2.next();
            if (dVar2 instanceof f) {
                a((f) dVar2, i10, 1, arrayList, null);
            } else if (dVar2 instanceof o) {
                a(((o) dVar2).f5978i, i10, 1, arrayList, null);
            }
        }
        if (i10 == 1) {
            Iterator it3 = ((m) oVar).f5963k.f5957k.iterator();
            while (it3.hasNext()) {
                d dVar3 = (d) it3.next();
                if (dVar3 instanceof f) {
                    a((f) dVar3, i10, 2, arrayList, null);
                }
            }
        }
    }

    public void i(int i10, int i11, int i12, int i13, f0.d dVar) {
        b bVar = (b) this.f5946h;
        bVar.f5928a = i10;
        bVar.f5929b = i12;
        bVar.f5930c = i11;
        bVar.f5931d = i13;
        ((i0.f) this.f5945g).b(dVar, bVar);
        dVar.O(bVar.f5932e);
        dVar.L(bVar.f5933f);
        dVar.E = bVar.f5935h;
        dVar.I(bVar.f5934g);
    }

    public void j() {
        a aVar;
        Iterator it = ((f0.e) this.f5941c).f5114q0.iterator();
        while (it.hasNext()) {
            f0.d dVar = (f0.d) it.next();
            if (!dVar.f5075a) {
                int[] iArr = dVar.f5105p0;
                boolean z = false;
                int i10 = iArr[0];
                int i11 = iArr[1];
                int i12 = dVar.r;
                int i13 = dVar.f5107s;
                boolean z4 = i10 == 2 || (i10 == 3 && i12 == 1);
                if (i11 == 2 || (i11 == 3 && i13 == 1)) {
                    z = true;
                }
                g gVar = dVar.f5081d.f5974e;
                boolean z10 = gVar.f5956j;
                g gVar2 = dVar.f5083e.f5974e;
                boolean z11 = gVar2.f5956j;
                if (z10 && z11) {
                    i(1, gVar.f5953g, 1, gVar2.f5953g, dVar);
                    dVar.f5075a = true;
                } else if (z10 && z) {
                    i(1, gVar.f5953g, 2, gVar2.f5953g, dVar);
                    if (i11 == 3) {
                        dVar.f5083e.f5974e.f5958m = dVar.k();
                    } else {
                        dVar.f5083e.f5974e.d(dVar.k());
                        dVar.f5075a = true;
                    }
                } else if (z11 && z4) {
                    i(2, gVar.f5953g, 1, gVar2.f5953g, dVar);
                    if (i10 == 3) {
                        dVar.f5081d.f5974e.f5958m = dVar.q();
                    } else {
                        dVar.f5081d.f5974e.d(dVar.q());
                        dVar.f5075a = true;
                    }
                }
                if (dVar.f5075a && (aVar = dVar.f5083e.l) != null) {
                    aVar.d(dVar.f5076a0);
                }
            }
        }
    }

    public void k() {
        this.f5939a = true;
        d();
    }

    public e(f0.e eVar) {
        this.f5939a = true;
        this.f5940b = true;
        this.f5943e = new ArrayList();
        new ArrayList();
        this.f5945g = null;
        this.f5946h = new b();
        this.f5944f = new ArrayList();
        this.f5941c = eVar;
        this.f5942d = eVar;
    }
}
