package i3;

import a9.o;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import f2.c0;
import ha.jd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import u1.q;
import u7.g0;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements u1.f, u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8499a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f8500b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8501c;

    public /* synthetic */ k(l lVar, long j10, int i10) {
        this.f8501c = lVar;
        this.f8500b = j10;
        this.f8499a = i10;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        z1.h hVar = (z1.h) ((z1.b) obj);
        hVar.getClass();
        z1.a aVar = (z1.a) this.f8501c;
        c0 c0Var = aVar.f19331d;
        if (c0Var != null) {
            String strD = hVar.f19367c.d(aVar.f19329b, c0Var);
            HashMap map = hVar.f19373i;
            Long l = (Long) map.get(strD);
            HashMap map2 = hVar.f19372h;
            Long l8 = (Long) map2.get(strD);
            map.put(strD, Long.valueOf((l == null ? 0L : l.longValue()) + this.f8500b));
            map2.put(strD, Long.valueOf((l8 != null ? l8.longValue() : 0L) + this.f8499a));
        }
    }

    @Override // u1.f
    public void accept(Object obj) {
        a aVar = (a) obj;
        l lVar = (l) this.f8501c;
        lVar.f8509h.getClass();
        g0 g0Var = aVar.f8484a;
        long j10 = aVar.f8486c;
        jd jdVar = new jd(11);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(g0Var.size());
        Iterator<E> it = g0Var.iterator();
        while (it.hasNext()) {
            arrayList.add((Bundle) jdVar.apply(it.next()));
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayList);
        bundle.putLong("d", j10);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        q qVar = lVar.f8504c;
        qVar.getClass();
        qVar.M(bArrMarshall.length, bArrMarshall);
        lVar.f8502a.a(bArrMarshall.length, qVar);
        long j11 = this.f8500b;
        long j12 = aVar.f8485b;
        if (j12 == -9223372036854775807L) {
            o.t(lVar.f8509h.f13527t == Long.MAX_VALUE);
        } else {
            long j13 = lVar.f8509h.f13527t;
            j11 = j13 == Long.MAX_VALUE ? j11 + j12 : j12 + j13;
        }
        lVar.f8502a.b(j11, this.f8499a | 1, bArrMarshall.length, 0, null);
    }

    public /* synthetic */ k(z1.a aVar, int i10, long j10, long j11) {
        this.f8501c = aVar;
        this.f8499a = i10;
        this.f8500b = j10;
    }
}
