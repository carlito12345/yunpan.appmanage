package r1;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final c0[] f13430a;

    /* renamed from: b, reason: collision with root package name */
    public final long f13431b;

    public d0(c0... c0VarArr) {
        this(-9223372036854775807L, c0VarArr);
    }

    public final d0 a(c0... c0VarArr) {
        if (c0VarArr.length == 0) {
            return this;
        }
        String str = u1.f0.f15206a;
        c0[] c0VarArr2 = this.f13430a;
        Object[] objArrCopyOf = Arrays.copyOf(c0VarArr2, c0VarArr2.length + c0VarArr.length);
        System.arraycopy(c0VarArr, 0, objArrCopyOf, c0VarArr2.length, c0VarArr.length);
        return new d0(this.f13431b, (c0[]) objArrCopyOf);
    }

    public final d0 b(d0 d0Var) {
        return d0Var == null ? this : a(d0Var.f13430a);
    }

    public final c0 c(Class cls, t7.e eVar) {
        c0[] c0VarArr = this.f13430a;
        int length = c0VarArr.length;
        int i10 = 0;
        while (true) {
            c0 c0Var = null;
            if (i10 >= length) {
                return null;
            }
            c0 c0Var2 = c0VarArr[i10];
            if (cls.isAssignableFrom(c0Var2.getClass())) {
                c0 c0Var3 = (c0) cls.cast(c0Var2);
                if (eVar.apply(c0Var3)) {
                    c0Var = c0Var3;
                }
            }
            if (c0Var != null) {
                return c0Var;
            }
            i10++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final u7.y0 d(Class cls, t7.e eVar) {
        c0 c0Var;
        u7.e0 e0Var = u7.g0.f15471b;
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = 0;
        for (c0 c0Var2 : this.f13430a) {
            if (cls.isAssignableFrom(c0Var2.getClass())) {
                c0Var = (c0) cls.cast(c0Var2);
                if (!eVar.apply(c0Var)) {
                    c0Var = null;
                }
            }
            if (c0Var != null) {
                int i11 = i10 + 1;
                int iF = u7.a0.f(objArrCopyOf.length, i11);
                if (iF > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                }
                objArrCopyOf[i10] = c0Var;
                i10 = i11;
            }
        }
        return u7.g0.i(i10, objArrCopyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d0.class != obj.getClass()) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return Arrays.equals(this.f13430a, d0Var.f13430a) && this.f13431b == d0Var.f13431b;
    }

    public final int hashCode() {
        return p000if.a.U(this.f13431b) + (Arrays.hashCode(this.f13430a) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("entries=");
        sb2.append(Arrays.toString(this.f13430a));
        long j10 = this.f13431b;
        if (j10 == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j10;
        }
        sb2.append(str);
        return sb2.toString();
    }

    public d0(long j10, c0... c0VarArr) {
        this.f13431b = j10;
        this.f13430a = c0VarArr;
    }

    public d0(List list) {
        this((c0[]) list.toArray(new c0[0]));
    }
}
