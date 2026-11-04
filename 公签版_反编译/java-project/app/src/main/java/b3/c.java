package b3;

import gf.g;
import j3.f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m7.e;
import r1.c0;
import u1.d0;
import u1.q;

/* loaded from: classes.dex */
public final class c extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final q f2537b = new q();

    /* renamed from: c, reason: collision with root package name */
    public final f f2538c = new f();

    /* renamed from: d, reason: collision with root package name */
    public d0 f2539d;

    @Override // nh.b
    public final r1.d0 r(u2.a aVar, ByteBuffer byteBuffer) {
        c0 dVar;
        List list;
        long jD;
        d0 d0Var = this.f2539d;
        if (d0Var == null || aVar.f15316j != d0Var.e()) {
            d0 d0Var2 = new d0(aVar.f18089g);
            this.f2539d = d0Var2;
            d0Var2.a(aVar.f18089g - aVar.f15316j);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        q qVar = this.f2537b;
        qVar.M(iLimit, bArrArray);
        f fVar = this.f2538c;
        fVar.k(iLimit, bArrArray);
        fVar.o(39);
        long jG = (fVar.g(1) << 32) | fVar.g(32);
        fVar.o(20);
        int iG = fVar.g(12);
        int iG2 = fVar.g(8);
        qVar.P(14);
        if (iG2 == 0) {
            dVar = new d();
        } else if (iG2 == 255) {
            long jD2 = qVar.D();
            int i10 = iG - 4;
            qVar.l(0, i10, new byte[i10]);
            dVar = new a(jD2, jG, 0);
        } else if (iG2 == 4) {
            int iB = qVar.B();
            ArrayList arrayList = new ArrayList(iB);
            for (int i11 = 0; i11 < iB; i11++) {
                qVar.D();
                boolean z = (qVar.B() & 128) != 0;
                ArrayList arrayList2 = new ArrayList();
                if (!z) {
                    int iB2 = qVar.B();
                    boolean z4 = (iB2 & 64) != 0;
                    boolean z10 = (iB2 & 32) != 0;
                    if (z4) {
                        qVar.D();
                    }
                    if (!z4) {
                        int iB3 = qVar.B();
                        ArrayList arrayList3 = new ArrayList(iB3);
                        for (int i12 = 0; i12 < iB3; i12++) {
                            qVar.B();
                            qVar.D();
                            arrayList3.add(new g(8));
                        }
                        arrayList2 = arrayList3;
                    }
                    if (z10) {
                        qVar.B();
                        qVar.D();
                    }
                    qVar.I();
                    qVar.B();
                    qVar.B();
                }
                arrayList.add(new e(arrayList2));
            }
            dVar = new d(arrayList);
        } else if (iG2 == 5) {
            d0 d0Var3 = this.f2539d;
            qVar.D();
            boolean z11 = (qVar.B() & 128) != 0;
            List listEmptyList = Collections.emptyList();
            if (z11) {
                list = listEmptyList;
                jD = -9223372036854775807L;
            } else {
                int iB4 = qVar.B();
                boolean z12 = (iB4 & 64) != 0;
                boolean z13 = (32 & iB4) != 0;
                boolean z14 = (iB4 & 16) != 0;
                jD = (!z12 || z14) ? -9223372036854775807L : a.d(jG, qVar);
                if (!z12) {
                    int iB5 = qVar.B();
                    ArrayList arrayList4 = new ArrayList(iB5);
                    for (int i13 = 0; i13 < iB5; i13++) {
                        qVar.B();
                        d0Var3.b(!z14 ? a.d(jG, qVar) : -9223372036854775807L);
                        arrayList4.add(new e(7));
                    }
                    listEmptyList = arrayList4;
                }
                if (z13) {
                    qVar.B();
                    qVar.D();
                }
                qVar.I();
                qVar.B();
                qVar.B();
                list = listEmptyList;
            }
            dVar = new a(jD, d0Var3.b(jD), list);
        } else if (iG2 != 6) {
            dVar = null;
        } else {
            d0 d0Var4 = this.f2539d;
            long jD3 = a.d(jG, qVar);
            dVar = new a(jD3, d0Var4.b(jD3), 2);
        }
        return dVar == null ? new r1.d0(new c0[0]) : new r1.d0(dVar);
    }
}
