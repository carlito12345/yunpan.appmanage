package d3;

import android.util.SparseArray;
import java.util.Arrays;
import java.util.List;
import l2.b0;
import l2.c0;
import l2.d0;
import l2.j;

/* loaded from: classes.dex */
public final class d implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final j f4366a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f4367b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4368c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4369d;

    public d(SparseArray sparseArray, long j10, int i10, long j11, long j12) {
        j jVar;
        int i11;
        this.f4367b = sparseArray;
        this.f4368c = j10;
        this.f4369d = i10;
        List list = (List) sparseArray.get(i10);
        if (list == null || list.isEmpty()) {
            jVar = null;
        } else {
            int size = list.size();
            int[] iArrCopyOf = new int[size];
            long[] jArrCopyOf = new long[size];
            long[] jArrCopyOf2 = new long[size];
            long[] jArrCopyOf3 = new long[size];
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                c cVar = (c) list.get(i13);
                jArrCopyOf3[i13] = cVar.f4363a;
                jArrCopyOf[i13] = cVar.f4364b;
            }
            while (true) {
                i11 = size - 1;
                if (i12 >= i11) {
                    break;
                }
                int i14 = i12 + 1;
                iArrCopyOf[i12] = (int) (jArrCopyOf[i14] - jArrCopyOf[i12]);
                jArrCopyOf2[i12] = jArrCopyOf3[i14] - jArrCopyOf3[i12];
                i12 = i14;
            }
            int i15 = i11;
            while (i15 > 0 && jArrCopyOf3[i15] >= j10) {
                i15--;
            }
            iArrCopyOf[i15] = (int) ((j11 + j12) - jArrCopyOf[i15]);
            jArrCopyOf2[i15] = j10 - jArrCopyOf3[i15];
            if (i15 < i11) {
                u1.a.p("Discarding trailing cue points with timestamps greater than total duration.");
                int i16 = i15 + 1;
                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i16);
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i16);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i16);
                jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i16);
            }
            jVar = new j(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
        }
        this.f4366a = jVar;
    }

    @Override // l2.c0
    public final boolean c() {
        List list = (List) this.f4367b.get(this.f4369d);
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        j jVar = this.f4366a;
        if (jVar != null) {
            return jVar.f(j10);
        }
        d0 d0Var = d0.f10441c;
        return new b0(d0Var, d0Var);
    }

    @Override // l2.c0
    public final long h() {
        return this.f4368c;
    }
}
