package a0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class u implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ int[] f66a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object[] f67b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ int f68c;

    public u() {
        int i10;
        int i11 = 4;
        while (true) {
            i10 = 40;
            if (i11 >= 32) {
                break;
            }
            int i12 = (1 << i11) - 12;
            if (40 <= i12) {
                i10 = i12;
                break;
            }
            i11++;
        }
        int i13 = i10 / 4;
        this.f66a = new int[i13];
        this.f67b = new Object[i13];
    }

    public final void a(int i10, Object obj) {
        int i11 = this.f68c;
        if (i11 != 0 && i10 <= this.f66a[i11 - 1]) {
            d(i10, obj);
            return;
        }
        if (i11 >= this.f66a.length) {
            int i12 = (i11 + 1) * 4;
            int i13 = 4;
            while (true) {
                if (i13 >= 32) {
                    break;
                }
                int i14 = (1 << i13) - 12;
                if (i12 <= i14) {
                    i12 = i14;
                    break;
                }
                i13++;
            }
            int i15 = i12 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f66a, i15);
            ue.d.d(iArrCopyOf, "copyOf(...)");
            this.f66a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f67b, i15);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f67b = objArrCopyOf;
        }
        this.f66a[i11] = i10;
        this.f67b[i11] = obj;
        this.f68c = i11 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final u clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        ue.d.c(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        u uVar = (u) objClone;
        uVar.f66a = (int[]) this.f66a.clone();
        uVar.f67b = (Object[]) this.f67b.clone();
        return uVar;
    }

    public final Object c(int i10) {
        Object obj;
        int iA = b0.a.a(this.f68c, i10, this.f66a);
        if (iA < 0 || (obj = this.f67b[iA]) == l.f38b) {
            return null;
        }
        return obj;
    }

    public final void d(int i10, Object obj) {
        int iA = b0.a.a(this.f68c, i10, this.f66a);
        if (iA >= 0) {
            this.f67b[iA] = obj;
            return;
        }
        int i11 = iA ^ (-1);
        int i12 = this.f68c;
        if (i11 < i12) {
            Object[] objArr = this.f67b;
            if (objArr[i11] == l.f38b) {
                this.f66a[i11] = i10;
                objArr[i11] = obj;
                return;
            }
        }
        if (i12 >= this.f66a.length) {
            int i13 = (i12 + 1) * 4;
            int i14 = 4;
            while (true) {
                if (i14 >= 32) {
                    break;
                }
                int i15 = (1 << i14) - 12;
                if (i13 <= i15) {
                    i13 = i15;
                    break;
                }
                i14++;
            }
            int i16 = i13 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f66a, i16);
            ue.d.d(iArrCopyOf, "copyOf(...)");
            this.f66a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f67b, i16);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f67b = objArrCopyOf;
        }
        int i17 = this.f68c;
        if (i17 - i11 != 0) {
            int[] iArr = this.f66a;
            int i18 = i11 + 1;
            je.i.e0(i18, i11, iArr, iArr, i17);
            Object[] objArr2 = this.f67b;
            je.i.d0(i18, i11, this.f68c, objArr2, objArr2);
        }
        this.f66a[i11] = i10;
        this.f67b[i11] = obj;
        this.f68c++;
    }

    public final Object e(int i10) {
        Object[] objArr = this.f67b;
        if (i10 < objArr.length) {
            return objArr[i10];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final String toString() {
        int i10 = this.f68c;
        if (i10 <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(i10 * 28);
        sb2.append('{');
        int i11 = this.f68c;
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            sb2.append(this.f66a[i12]);
            sb2.append('=');
            Object objE = e(i12);
            if (objE != this) {
                sb2.append(objE);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }
}
