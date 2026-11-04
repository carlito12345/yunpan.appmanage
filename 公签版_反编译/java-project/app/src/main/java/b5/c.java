package b5;

import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class c extends f implements h {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f2559b;

    public c(int i10) {
        super(i10 != 0);
        try {
            this.f2559b = new Object[i10];
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    @Override // b5.h
    public String a() {
        String name = getClass().getName();
        return f(name.substring(name.lastIndexOf(46) + 1) + '{', "}", true);
    }

    public y4.c b(int i10) {
        return (y4.c) d(i10);
    }

    public final Object d(int i10) {
        try {
            Object obj = this.f2559b[i10];
            if (obj != null) {
                return obj;
            }
            throw new NullPointerException("unset: " + i10);
        } catch (ArrayIndexOutOfBoundsException unused) {
            if (i10 < 0) {
                throw new IndexOutOfBoundsException("n < 0");
            }
            throw new IndexOutOfBoundsException("n >= size()");
        }
    }

    public final void e(int i10, Object obj) {
        c();
        try {
            this.f2559b[i10] = obj;
        } catch (ArrayIndexOutOfBoundsException unused) {
            if (i10 >= 0) {
                throw new IndexOutOfBoundsException("n >= size()");
            }
            throw new IndexOutOfBoundsException("n < 0");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f2559b, ((c) obj).f2559b);
    }

    public final String f(String str, String str2, boolean z) {
        Object[] objArr = this.f2559b;
        int length = objArr.length;
        StringBuilder sb2 = new StringBuilder((length * 10) + 10);
        if (str != null) {
            sb2.append(str);
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            if (z) {
                sb2.append(((h) objArr[i10]).a());
            } else {
                sb2.append(objArr[i10]);
            }
        }
        if (str2 != null) {
            sb2.append(str2);
        }
        return sb2.toString();
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f2559b);
    }

    public final String toString() {
        String name = getClass().getName();
        return f(name.substring(name.lastIndexOf(46) + 1) + '{', "}", false);
    }
}
