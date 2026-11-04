package s3;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14061a;

    /* renamed from: b, reason: collision with root package name */
    public int f14062b;

    /* renamed from: c, reason: collision with root package name */
    public int f14063c;

    /* renamed from: d, reason: collision with root package name */
    public int f14064d;

    /* renamed from: e, reason: collision with root package name */
    public final Serializable f14065e;

    /* renamed from: f, reason: collision with root package name */
    public Object f14066f;

    /* JADX WARN: Multi-variable type inference failed */
    public d0(byte[] bArr, int i10) {
        this.f14061a = 2;
        this.f14065e = bArr;
        this.f14063c = i10;
        this.f14062b = i10;
        this.f14064d = 0;
        this.f14066f = this;
    }

    public void a(int i10) {
        int i11 = this.f14063c + i10;
        this.f14063c = i11;
        int i12 = this.f14062b;
        int i13 = i11 - i12;
        d0 d0Var = (d0) this.f14066f;
        if (i13 > d0Var.f14064d) {
            d0Var.f14064d = i11 - i12;
        }
    }

    public void b(int i10) {
        int i11 = i10 - 1;
        int i12 = this.f14063c - this.f14062b;
        a(((i11 ^ (-1)) & (i12 + i11)) - i12);
    }

    public int c() {
        b(4);
        int iD = a9.o.D(this.f14063c, (byte[]) this.f14065e);
        a(4);
        return iD;
    }

    public int d() {
        b(2);
        short sB = a9.o.B(this.f14063c, (byte[]) this.f14065e);
        a(2);
        return sB;
    }

    public int e() {
        int i10 = ((byte[]) this.f14065e)[this.f14063c] & 255;
        a(1);
        return i10;
    }

    public String f() throws ch.a {
        String str;
        b(4);
        int i10 = this.f14063c;
        byte[] bArr = (byte[]) this.f14065e;
        int iD = a9.o.D(i10, bArr);
        int i11 = i10 + 12;
        if (iD != 0) {
            int i12 = (iD - 1) * 2;
            try {
                if (i12 < 0 || i12 > 65535) {
                    throw new ch.a("invalid array conformance");
                }
                str = new String(bArr, i11, i12, "UTF-16LE");
                i11 += i12 + 2;
            } catch (UnsupportedEncodingException unused) {
            }
        } else {
            str = null;
        }
        a(i11 - this.f14063c);
        return str;
    }

    public d0 g(int i10) {
        d0 d0Var = new d0((byte[]) this.f14065e, this.f14062b);
        d0Var.f14063c = i10;
        d0Var.f14066f = (d0) this.f14066f;
        return d0Var;
    }

    public void h(int i10) {
        b(4);
        a9.o.H(i10, this.f14063c, (byte[]) this.f14065e);
        a(4);
    }

    public void i(Object obj) {
        if (obj == null) {
            h(0);
        } else {
            h(System.identityHashCode(obj));
        }
    }

    public void j(int i10) {
        b(2);
        short s8 = (short) i10;
        int i11 = this.f14063c;
        byte[] bArr = (byte[]) this.f14065e;
        bArr[i11] = (byte) (s8 & 255);
        bArr[i11 + 1] = (byte) ((s8 >> 8) & 255);
        a(2);
    }

    public void k(int i10) {
        ((byte[]) this.f14065e)[this.f14063c] = (byte) (i10 & 255);
        a(1);
    }

    public void l(String str) {
        b(4);
        int i10 = this.f14063c;
        int length = str.length();
        int i11 = length + 1;
        byte[] bArr = (byte[]) this.f14065e;
        a9.o.H(i11, i10, bArr);
        a9.o.H(0, i10 + 4, bArr);
        a9.o.H(i11, i10 + 8, bArr);
        int i12 = i10 + 12;
        try {
            System.arraycopy(str.getBytes("UTF-16LE"), 0, bArr, i12, length * 2);
        } catch (UnsupportedEncodingException unused) {
        }
        int i13 = (length * 2) + i12;
        bArr[i13] = 0;
        bArr[i13 + 1] = 0;
        a((i13 + 2) - this.f14063c);
    }

    public void m() {
        int i10 = this.f14064d;
        this.f14064d = i10 == Integer.MIN_VALUE ? this.f14062b : i10 + this.f14063c;
        this.f14066f = ((String) this.f14065e) + this.f14064d;
    }

    public void n() {
        if (this.f14064d == Integer.MIN_VALUE) {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    public synchronized void o(Object obj) {
        Object[] objArr = (Object[]) this.f14065e;
        int i10 = this.f14063c;
        int i11 = i10 + 1;
        this.f14063c = i11;
        objArr[i10] = obj;
        if (i11 == this.f14062b) {
            ((wb.b) this.f14066f).h(this.f14064d, objArr);
        }
    }

    public String toString() {
        switch (this.f14061a) {
            case 2:
                return "start=" + this.f14062b + ",index=" + this.f14063c + ",length=" + ((d0) this.f14066f).f14064d;
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Serializable, java.lang.Object[]] */
    public d0(int i10, wb.b bVar) {
        this.f14061a = 1;
        this.f14063c = 0;
        this.f14064d = 0;
        this.f14062b = i10;
        this.f14065e = new Object[i10];
        this.f14066f = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d0(int i10, int i11) {
        this(Integer.MIN_VALUE, i10, i11);
        this.f14061a = 0;
    }

    public d0(int i10, int i11, int i12) {
        String str;
        this.f14061a = 0;
        if (i10 != Integer.MIN_VALUE) {
            str = i10 + "/";
        } else {
            str = "";
        }
        this.f14065e = str;
        this.f14062b = i11;
        this.f14063c = i12;
        this.f14064d = Integer.MIN_VALUE;
        this.f14066f = "";
    }
}
