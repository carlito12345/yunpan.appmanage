package a2;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class v1 extends s1.m {

    /* renamed from: i, reason: collision with root package name */
    public int f328i;

    /* renamed from: j, reason: collision with root package name */
    public int f329j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f330k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public byte[] f331m = u1.f0.f15207b;

    /* renamed from: n, reason: collision with root package name */
    public int f332n;

    /* renamed from: o, reason: collision with root package name */
    public long f333o;

    @Override // s1.m, s1.l
    public final ByteBuffer a() {
        int i10;
        if (super.b() && (i10 = this.f332n) > 0) {
            m(i10).put(this.f331m, 0, this.f332n).flip();
            this.f332n = 0;
        }
        return super.a();
    }

    @Override // s1.m, s1.l
    public final boolean b() {
        return super.b() && this.f332n == 0;
    }

    @Override // s1.l
    public final void e(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (i10 == 0) {
            return;
        }
        int iMin = Math.min(i10, this.l);
        this.f333o += iMin / this.f13912b.f13908d;
        this.l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.l > 0) {
            return;
        }
        int i11 = i10 - iMin;
        int length = (this.f332n + i11) - this.f331m.length;
        ByteBuffer byteBufferM = m(length);
        int iG = u1.f0.g(length, 0, this.f332n);
        byteBufferM.put(this.f331m, 0, iG);
        int iG2 = u1.f0.g(length - iG, 0, i11);
        byteBuffer.limit(byteBuffer.position() + iG2);
        byteBufferM.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i11 - iG2;
        int i13 = this.f332n - iG;
        this.f332n = i13;
        byte[] bArr = this.f331m;
        System.arraycopy(bArr, iG, bArr, 0, i13);
        byteBuffer.get(this.f331m, this.f332n, i12);
        this.f332n += i12;
        byteBufferM.flip();
    }

    @Override // s1.m, s1.l
    public final long h(long j10) {
        return Math.max(0L, j10 - u1.f0.K(this.f13912b.f13905a, this.f329j + this.f328i));
    }

    @Override // s1.m
    public final s1.i i(s1.i iVar) throws s1.k {
        if (!u1.f0.D(iVar.f13907c)) {
            throw new s1.k(iVar);
        }
        this.f330k = true;
        return (this.f328i == 0 && this.f329j == 0) ? s1.i.f13904e : iVar;
    }

    @Override // s1.m
    public final void j() {
        if (this.f330k) {
            this.f330k = false;
            int i10 = this.f329j;
            int i11 = this.f13912b.f13908d;
            this.f331m = new byte[i10 * i11];
            this.l = this.f328i * i11;
        }
        this.f332n = 0;
    }

    @Override // s1.m
    public final void k() {
        if (this.f330k) {
            if (this.f332n > 0) {
                this.f333o += r0 / this.f13912b.f13908d;
            }
            this.f332n = 0;
        }
    }

    @Override // s1.m
    public final void l() {
        this.f331m = u1.f0.f15207b;
    }
}
