package yf;

import androidx.room.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PushbackInputStream;
import java.util.Arrays;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f19150e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f19151f;

    /* renamed from: g, reason: collision with root package name */
    public int f19152g;

    /* renamed from: h, reason: collision with root package name */
    public int f19153h;

    /* renamed from: i, reason: collision with root package name */
    public int f19154i;

    /* renamed from: j, reason: collision with root package name */
    public int f19155j;

    /* renamed from: k, reason: collision with root package name */
    public int f19156k;
    public int l;

    public a(i iVar, ag.g gVar, char[] cArr, boolean z) {
        super(iVar, gVar, cArr, z);
        this.f19150e = new byte[1];
        this.f19151f = new byte[16];
        this.f19152g = 0;
        this.f19153h = 0;
        this.f19154i = 0;
        this.f19155j = 0;
        this.f19156k = 0;
        this.l = 0;
    }

    @Override // yf.b
    public final tf.c A(ag.g gVar, char[] cArr, boolean z) throws IOException {
        ag.a aVar = gVar.f661q;
        if (aVar == null) {
            throw new IOException("invalid aes extra data record");
        }
        int i10 = aVar.f647f;
        if (i10 == 0) {
            throw new IOException("Invalid aes key strength in aes extra data record");
        }
        byte[] bArr = new byte[android.support.v4.media.session.a.h(i10)];
        J(bArr);
        byte[] bArr2 = new byte[2];
        J(bArr2);
        return new tf.a(aVar, cArr, bArr, bArr2, z);
    }

    public final void K(int i10, byte[] bArr) {
        int i11 = this.f19154i;
        int i12 = this.f19153h;
        if (i11 >= i12) {
            i11 = i12;
        }
        this.l = i11;
        System.arraycopy(this.f19151f, this.f19152g, bArr, i10, i11);
        int i13 = this.l;
        int i14 = this.f19152g + i13;
        this.f19152g = i14;
        if (i14 >= 15) {
            this.f19152g = 15;
        }
        int i15 = this.f19153h - i13;
        this.f19153h = i15;
        if (i15 <= 0) {
            this.f19153h = 0;
        }
        this.f19156k += i13;
        this.f19154i -= i13;
        this.f19155j += i13;
    }

    @Override // yf.b
    public final void r(PushbackInputStream pushbackInputStream, int i10) throws IllegalStateException, IOException {
        byte[] bArr = new byte[10];
        if (eg.c.j(pushbackInputStream, bArr) != 10) {
            throw new wf.a("Invalid AES Mac bytes. Could not read sufficient data");
        }
        s sVar = ((tf.a) this.f19158b).f15082b;
        if (((ByteArrayOutputStream) sVar.f2428d).size() > 0) {
            sVar.e(i10);
        }
        byte[] bArr2 = new byte[10];
        System.arraycopy(((Mac) sVar.f2427c).doFinal(), 0, bArr2, 0, 10);
        if (!Arrays.equals(bArr, bArr2)) {
            throw new IOException("Reached end of data for this entry, but aes verification failed");
        }
    }

    @Override // yf.b, java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19150e;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // yf.b, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // yf.b, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        this.f19154i = i11;
        this.f19155j = i10;
        this.f19156k = 0;
        if (this.f19153h != 0) {
            K(i10, bArr);
            int i12 = this.f19156k;
            if (i12 == i11) {
                return i12;
            }
        }
        if (this.f19154i < 16) {
            byte[] bArr2 = this.f19151f;
            int i13 = super.read(bArr2, 0, bArr2.length);
            this.f19152g = 0;
            if (i13 == -1) {
                this.f19153h = 0;
                int i14 = this.f19156k;
                if (i14 > 0) {
                    return i14;
                }
                return -1;
            }
            this.f19153h = i13;
            K(this.f19155j, bArr);
            int i15 = this.f19156k;
            if (i15 == i11) {
                return i15;
            }
        }
        int i16 = this.f19155j;
        int i17 = this.f19154i;
        int i18 = super.read(bArr, i16, i17 - (i17 % 16));
        if (i18 == -1) {
            int i19 = this.f19156k;
            if (i19 > 0) {
                return i19;
            }
            return -1;
        }
        return i18 + this.f19156k;
    }
}
