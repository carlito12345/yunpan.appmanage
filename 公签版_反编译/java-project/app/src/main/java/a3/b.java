package a3;

import a9.o;
import java.util.ArrayList;
import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class b implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f371a;

    public b(ArrayList arrayList) {
        this.f371a = arrayList;
        boolean z = false;
        if (!arrayList.isEmpty()) {
            long j10 = ((a) arrayList.get(0)).f369b;
            int i10 = 1;
            while (true) {
                if (i10 >= arrayList.size()) {
                    break;
                }
                if (((a) arrayList.get(i10)).f368a < j10) {
                    z = true;
                    break;
                } else {
                    j10 = ((a) arrayList.get(i10)).f369b;
                    i10++;
                }
            }
        }
        o.k(!z);
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final /* synthetic */ void b(a0 a0Var) {
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        return this.f371a.equals(((b) obj).f371a);
    }

    public final int hashCode() {
        return this.f371a.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.f371a;
    }
}
