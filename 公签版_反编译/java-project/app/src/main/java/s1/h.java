package s1;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import u7.y0;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final y0 f13900a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f13901b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public ByteBuffer[] f13902c = new ByteBuffer[0];

    /* renamed from: d, reason: collision with root package name */
    public boolean f13903d;

    public h(y0 y0Var) {
        this.f13900a = y0Var;
        i iVar = i.f13904e;
        this.f13903d = false;
    }

    public final i a(i iVar) throws k {
        if (iVar.equals(i.f13904e)) {
            throw new k(iVar);
        }
        int i10 = 0;
        while (true) {
            y0 y0Var = this.f13900a;
            if (i10 >= y0Var.size()) {
                return iVar;
            }
            l lVar = (l) y0Var.get(i10);
            i iVarC = lVar.c(iVar);
            if (lVar.g()) {
                a9.o.t(!iVarC.equals(i.f13904e));
                iVar = iVarC;
            }
            i10++;
        }
    }

    public final void b() {
        j jVar = j.f13909b;
        ArrayList arrayList = this.f13901b;
        arrayList.clear();
        this.f13903d = false;
        long jH = jVar.f13910a;
        int i10 = 0;
        while (true) {
            y0 y0Var = this.f13900a;
            if (i10 >= y0Var.size()) {
                break;
            }
            l lVar = (l) y0Var.get(i10);
            lVar.d(new j(jH));
            if (lVar.g()) {
                jH = lVar.h(jH);
                a9.o.t(jH >= 0);
                arrayList.add(lVar);
            }
            i10++;
        }
        this.f13902c = new ByteBuffer[arrayList.size()];
        for (int i11 = 0; i11 <= c(); i11++) {
            this.f13902c[i11] = ((l) arrayList.get(i11)).a();
        }
    }

    public final int c() {
        return this.f13902c.length - 1;
    }

    public final boolean d() {
        return this.f13903d && ((l) this.f13901b.get(c())).b() && !this.f13902c[c()].hasRemaining();
    }

    public final boolean e() {
        return !this.f13901b.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        y0 y0Var = this.f13900a;
        if (y0Var.size() != hVar.f13900a.size()) {
            return false;
        }
        for (int i10 = 0; i10 < y0Var.size(); i10++) {
            if (y0Var.get(i10) != hVar.f13900a.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public final void f(ByteBuffer byteBuffer) {
        boolean z;
        for (boolean z4 = true; z4; z4 = z) {
            z = false;
            int i10 = 0;
            while (i10 <= c()) {
                if (!this.f13902c[i10].hasRemaining()) {
                    ArrayList arrayList = this.f13901b;
                    l lVar = (l) arrayList.get(i10);
                    if (!lVar.b()) {
                        ByteBuffer byteBuffer2 = i10 > 0 ? this.f13902c[i10 - 1] : byteBuffer.hasRemaining() ? byteBuffer : l.f13911a;
                        long jRemaining = byteBuffer2.remaining();
                        lVar.e(byteBuffer2);
                        this.f13902c[i10] = lVar.a();
                        z |= jRemaining - ((long) byteBuffer2.remaining()) > 0 || this.f13902c[i10].hasRemaining();
                    } else if (!this.f13902c[i10].hasRemaining() && i10 < c()) {
                        ((l) arrayList.get(i10 + 1)).f();
                    }
                }
                i10++;
            }
        }
    }

    public final int hashCode() {
        return this.f13900a.hashCode();
    }
}
