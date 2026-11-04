package a0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class k implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f33a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ long[] f34b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f35c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ int f36d;

    public k() {
        int i10;
        int i11 = 4;
        while (true) {
            i10 = 80;
            if (i11 >= 32) {
                break;
            }
            int i12 = (1 << i11) - 12;
            if (80 <= i12) {
                i10 = i12;
                break;
            }
            i11++;
        }
        int i13 = i10 / 8;
        this.f34b = new long[i13];
        this.f35c = new Object[i13];
    }

    public final void a(long j10, Long l) {
        int i10 = this.f36d;
        if (i10 != 0 && j10 <= this.f34b[i10 - 1]) {
            h(l, j10);
            return;
        }
        if (this.f33a) {
            long[] jArr = this.f34b;
            if (i10 >= jArr.length) {
                Object[] objArr = this.f35c;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    Object obj = objArr[i12];
                    if (obj != l.f37a) {
                        if (i12 != i11) {
                            jArr[i11] = jArr[i12];
                            objArr[i11] = obj;
                            objArr[i12] = null;
                        }
                        i11++;
                    }
                }
                this.f33a = false;
                this.f36d = i11;
            }
        }
        int i13 = this.f36d;
        if (i13 >= this.f34b.length) {
            int i14 = (i13 + 1) * 8;
            int i15 = 4;
            while (true) {
                if (i15 >= 32) {
                    break;
                }
                int i16 = (1 << i15) - 12;
                if (i14 <= i16) {
                    i14 = i16;
                    break;
                }
                i15++;
            }
            int i17 = i14 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f34b, i17);
            ue.d.d(jArrCopyOf, "copyOf(...)");
            this.f34b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f35c, i17);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f35c = objArrCopyOf;
        }
        this.f34b[i13] = j10;
        this.f35c[i13] = l;
        this.f36d = i13 + 1;
    }

    public final void b() {
        int i10 = this.f36d;
        Object[] objArr = this.f35c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f36d = 0;
        this.f33a = false;
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final k clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        ue.d.c(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        k kVar = (k) objClone;
        kVar.f34b = (long[]) this.f34b.clone();
        kVar.f35c = (Object[]) this.f35c.clone();
        return kVar;
    }

    public final Object d(long j10) {
        Object obj;
        int iB = b0.a.b(this.f34b, this.f36d, j10);
        if (iB < 0 || (obj = this.f35c[iB]) == l.f37a) {
            return null;
        }
        return obj;
    }

    public final Object e(long j10) {
        Object obj;
        int iB = b0.a.b(this.f34b, this.f36d, j10);
        if (iB < 0 || (obj = this.f35c[iB]) == l.f37a) {
            return -1L;
        }
        return obj;
    }

    public final int f(long j10) {
        if (this.f33a) {
            int i10 = this.f36d;
            long[] jArr = this.f34b;
            Object[] objArr = this.f35c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != l.f37a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f33a = false;
            this.f36d = i11;
        }
        return b0.a.b(this.f34b, this.f36d, j10);
    }

    public final long g(int i10) {
        if (!(i10 >= 0 && i10 < this.f36d)) {
            b0.a.c("Expected index to be within 0..size()-1, but was " + i10);
            throw null;
        }
        if (this.f33a) {
            int i11 = this.f36d;
            long[] jArr = this.f34b;
            Object[] objArr = this.f35c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != l.f37a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f33a = false;
            this.f36d = i12;
        }
        return this.f34b[i10];
    }

    public final void h(Object obj, long j10) {
        int iB = b0.a.b(this.f34b, this.f36d, j10);
        if (iB >= 0) {
            this.f35c[iB] = obj;
            return;
        }
        int iB2 = iB ^ (-1);
        int i10 = this.f36d;
        Object obj2 = l.f37a;
        if (iB2 < i10) {
            Object[] objArr = this.f35c;
            if (objArr[iB2] == obj2) {
                this.f34b[iB2] = j10;
                objArr[iB2] = obj;
                return;
            }
        }
        if (this.f33a) {
            long[] jArr = this.f34b;
            if (i10 >= jArr.length) {
                Object[] objArr2 = this.f35c;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    Object obj3 = objArr2[i12];
                    if (obj3 != obj2) {
                        if (i12 != i11) {
                            jArr[i11] = jArr[i12];
                            objArr2[i11] = obj3;
                            objArr2[i12] = null;
                        }
                        i11++;
                    }
                }
                this.f33a = false;
                this.f36d = i11;
                iB2 = b0.a.b(this.f34b, i11, j10) ^ (-1);
            }
        }
        int i13 = this.f36d;
        if (i13 >= this.f34b.length) {
            int i14 = (i13 + 1) * 8;
            int i15 = 4;
            while (true) {
                if (i15 >= 32) {
                    break;
                }
                int i16 = (1 << i15) - 12;
                if (i14 <= i16) {
                    i14 = i16;
                    break;
                }
                i15++;
            }
            int i17 = i14 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f34b, i17);
            ue.d.d(jArrCopyOf, "copyOf(...)");
            this.f34b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f35c, i17);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f35c = objArrCopyOf;
        }
        int i18 = this.f36d - iB2;
        if (i18 != 0) {
            long[] jArr2 = this.f34b;
            int i19 = iB2 + 1;
            ue.d.e(jArr2, "<this>");
            System.arraycopy(jArr2, iB2, jArr2, i19, i18);
            Object[] objArr3 = this.f35c;
            je.i.d0(i19, iB2, this.f36d, objArr3, objArr3);
        }
        this.f34b[iB2] = j10;
        this.f35c[iB2] = obj;
        this.f36d++;
    }

    public final void i(long j10) {
        int iB = b0.a.b(this.f34b, this.f36d, j10);
        if (iB >= 0) {
            Object[] objArr = this.f35c;
            Object obj = objArr[iB];
            Object obj2 = l.f37a;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f33a = true;
            }
        }
    }

    public final int j() {
        if (this.f33a) {
            int i10 = this.f36d;
            long[] jArr = this.f34b;
            Object[] objArr = this.f35c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != l.f37a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f33a = false;
            this.f36d = i11;
        }
        return this.f36d;
    }

    public final Object k(int i10) {
        if (!(i10 >= 0 && i10 < this.f36d)) {
            b0.a.c("Expected index to be within 0..size()-1, but was " + i10);
            throw null;
        }
        if (this.f33a) {
            int i11 = this.f36d;
            long[] jArr = this.f34b;
            Object[] objArr = this.f35c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != l.f37a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f33a = false;
            this.f36d = i12;
        }
        return this.f35c[i10];
    }

    public final String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f36d * 28);
        sb2.append('{');
        int i10 = this.f36d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(g(i11));
            sb2.append('=');
            Object objK = k(i11);
            if (objK != sb2) {
                sb2.append(objK);
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
