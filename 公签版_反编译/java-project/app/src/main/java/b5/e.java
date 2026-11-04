package b5;

import l2.z;

/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: e, reason: collision with root package name */
    public static final e f2566e;

    /* renamed from: b, reason: collision with root package name */
    public int[] f2567b;

    /* renamed from: c, reason: collision with root package name */
    public int f2568c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2569d;

    static {
        e eVar = new e(0);
        f2566e = eVar;
        eVar.f2570a = false;
    }

    public e(int i10) {
        super(true);
        try {
            this.f2567b = new int[i10];
            this.f2568c = 0;
            this.f2569d = true;
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    public final void d(int i10) {
        c();
        int i11 = this.f2568c;
        int[] iArr = this.f2567b;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[z.a(i11, 3, 2, 10)];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f2567b = iArr2;
        }
        int[] iArr3 = this.f2567b;
        int i12 = this.f2568c;
        int i13 = i12 + 1;
        this.f2568c = i13;
        iArr3[i12] = i10;
        if (!this.f2569d || i13 <= 1) {
            return;
        }
        this.f2569d = i10 >= iArr3[i12 + (-1)];
    }

    public final int e(int i10) {
        if (i10 >= this.f2568c) {
            throw new IndexOutOfBoundsException("n >= size()");
        }
        try {
            return this.f2567b[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IndexOutOfBoundsException("n < 0");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f2569d != eVar.f2569d || this.f2568c != eVar.f2568c) {
            return false;
        }
        for (int i10 = 0; i10 < this.f2568c; i10++) {
            if (this.f2567b[i10] != eVar.f2567b[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i10, int i11) {
        c();
        if (i10 >= this.f2568c) {
            throw new IndexOutOfBoundsException("n >= size()");
        }
        try {
            this.f2567b[i10] = i11;
            this.f2569d = false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            if (i10 < 0) {
                throw new IllegalArgumentException("n < 0");
            }
        }
    }

    public final int hashCode() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f2568c; i11++) {
            i10 = (i10 * 31) + this.f2567b[i11];
        }
        return i10;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder((this.f2568c * 5) + 10);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f2568c; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(this.f2567b[i10]);
        }
        sb2.append('}');
        return sb2.toString();
    }
}
