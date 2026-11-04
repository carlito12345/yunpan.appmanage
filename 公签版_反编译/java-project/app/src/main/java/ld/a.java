package ld;

import id.d;
import vc.f;

/* loaded from: classes.dex */
public final class a extends id.c implements id.a {
    public int A;
    public int B;
    public byte[] C;
    public long D;
    public int E;

    /* renamed from: y, reason: collision with root package name */
    public final /* synthetic */ int f10712y = 1;
    public byte[] z;

    public a(f fVar, byte[] bArr) {
        super(fVar, 9);
        this.C = bArr;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        switch (this.f10712y) {
        }
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        switch (this.f10712y) {
            case 0:
                rd.a.e(49L, bArr, i10);
                bArr[2 + i10] = 0;
                bArr[i10 + 3] = 0;
                rd.a.f(this.B, bArr, i10 + 4);
                rd.a.g(this.D, bArr, i10 + 8);
                System.arraycopy(this.z, 0, bArr, i10 + 16, 16);
                long j10 = 0;
                rd.a.f(j10, bArr, i10 + 32);
                rd.a.f(j10, bArr, i10 + 36);
                rd.a.f(this.E, bArr, i10 + 40);
                rd.a.e(0L, bArr, i10 + 44);
                rd.a.e(0L, bArr, i10 + 46);
                bArr[i10 + 48] = 0;
                return (i10 + 49) - i10;
            default:
                rd.a.e(49L, bArr, i10);
                rd.a.f(this.B, bArr, i10 + 4);
                rd.a.g(this.D, bArr, i10 + 8);
                System.arraycopy(this.C, 0, bArr, i10 + 16, 16);
                long j11 = 0;
                rd.a.f(j11, bArr, i10 + 32);
                rd.a.f(this.E, bArr, i10 + 36);
                rd.a.e(0L, bArr, i10 + 40);
                rd.a.e(0L, bArr, i10 + 42);
                rd.a.f(j11, bArr, i10 + 44);
                int i11 = i10 + 48;
                rd.a.e(i11 - this.f8658d, bArr, i10 + 2);
                int i12 = this.B;
                if (i11 + i12 > bArr.length) {
                    throw new IllegalArgumentException(String.format("Data exceeds buffer size ( remain buffer: %d data length: %d)", Integer.valueOf(bArr.length - i11), Integer.valueOf(this.B)));
                }
                System.arraycopy(this.z, this.A, bArr, i11, i12);
                return (i11 + this.B) - i10;
        }
    }

    @Override // id.c
    public final d q0(vc.b bVar) {
        switch (this.f10712y) {
            case 0:
                return new b(bVar.e(), this.C, this.A);
            default:
                return new c(bVar.e());
        }
    }

    @Override // ad.c
    public final int size() {
        switch (this.f10712y) {
            case 0:
                return id.b.o0(113, 0);
            default:
                return id.b.o0(this.B + 112, 0);
        }
    }

    @Override // id.a
    public final void w(byte[] bArr) {
        switch (this.f10712y) {
            case 0:
                this.z = bArr;
                break;
            default:
                this.C = bArr;
                break;
        }
    }

    public a(f fVar, byte[] bArr, byte[] bArr2, int i10) {
        super(fVar, 8);
        this.z = bArr;
        this.C = bArr2;
        this.A = i10;
    }
}
