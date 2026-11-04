package zf;

import ag.m;
import androidx.room.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19546c;

    /* renamed from: d, reason: collision with root package name */
    public int f19547d;

    public a(i iVar, m mVar, char[] cArr, boolean z) {
        super(iVar, mVar, cArr, z);
        this.f19546c = new byte[16];
        this.f19547d = 0;
    }

    @Override // zf.b
    public final tf.d A(m mVar, char[] cArr, boolean z) throws IOException {
        tf.b bVar = new tf.b(cArr, mVar.f709e, z);
        this.f19548a.write(bVar.f15095j);
        this.f19548a.write(bVar.f15094i);
        return bVar;
    }

    @Override // zf.b
    public final void r() throws IllegalStateException, IOException {
        int i10 = this.f19547d;
        if (i10 != 0) {
            super.write(this.f19546c, 0, i10);
            this.f19547d = 0;
        }
        s sVar = ((tf.b) this.f19549b).f15087b;
        if (((ByteArrayOutputStream) sVar.f2428d).size() > 0) {
            sVar.e(0);
        }
        byte[] bArr = new byte[10];
        System.arraycopy(((Mac) sVar.f2427c).doFinal(), 0, bArr, 0, 10);
        i iVar = this.f19548a;
        iVar.getClass();
        iVar.write(bArr, 0, 10);
        super.r();
    }

    @Override // zf.b, java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // zf.b, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // zf.b, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f19547d;
        int i14 = 16 - i13;
        byte[] bArr2 = this.f19546c;
        if (i11 >= i14) {
            System.arraycopy(bArr, i10, bArr2, i13, 16 - i13);
            super.write(bArr2, 0, bArr2.length);
            int i15 = 16 - this.f19547d;
            int i16 = i11 - i15;
            this.f19547d = 0;
            if (i16 != 0 && (i12 = i16 % 16) != 0) {
                System.arraycopy(bArr, (i16 + i15) - i12, bArr2, 0, i12);
                this.f19547d = i12;
                i16 -= i12;
            }
            super.write(bArr, i15, i16);
            return;
        }
        System.arraycopy(bArr, i10, bArr2, i13, i11);
        this.f19547d += i11;
    }
}
