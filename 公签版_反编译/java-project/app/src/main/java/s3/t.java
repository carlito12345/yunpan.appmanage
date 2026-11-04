package s3;

import java.util.Arrays;
import y1.v0;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14243a;

    /* renamed from: b, reason: collision with root package name */
    public int f14244b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14245c;

    /* renamed from: d, reason: collision with root package name */
    public int f14246d;

    /* renamed from: e, reason: collision with root package name */
    public Object f14247e;

    public t(int i10) {
        this.f14244b = i10;
        byte[] bArr = new byte[131];
        this.f14247e = bArr;
        bArr[2] = 1;
    }

    public void a(int i10, int i11, byte[] bArr) {
        if (this.f14243a) {
            int i12 = i11 - i10;
            byte[] bArr2 = (byte[]) this.f14247e;
            int length = bArr2.length;
            int i13 = this.f14246d;
            if (length < i13 + i12) {
                this.f14247e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, (byte[]) this.f14247e, this.f14246d, i12);
            this.f14246d += i12;
        }
    }

    public boolean b(int i10) {
        if (!this.f14243a) {
            return false;
        }
        this.f14246d -= i10;
        this.f14243a = false;
        this.f14245c = true;
        return true;
    }

    public void c(int i10) {
        this.f14243a |= i10 > 0;
        this.f14244b += i10;
    }

    public void d() {
        this.f14243a = false;
        this.f14245c = false;
    }

    public void e(int i10) {
        a9.o.t(!this.f14243a);
        boolean z = i10 == this.f14244b;
        this.f14243a = z;
        if (z) {
            this.f14246d = 3;
            this.f14245c = false;
        }
    }

    public t(v0 v0Var) {
        this.f14247e = v0Var;
    }
}
