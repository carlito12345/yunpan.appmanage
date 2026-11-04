package de;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class b extends MessageDigest implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4621a;

    /* renamed from: b, reason: collision with root package name */
    public final MessageDigest f4622b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f4623c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f4624d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(byte[] bArr, int i10) {
        super("HMACT64");
        this.f4621a = i10;
        switch (i10) {
            case 1:
                super("HMACT64");
                this.f4623c = new byte[64];
                this.f4624d = new byte[64];
                int iMin = Math.min(bArr.length, 64);
                for (int i11 = 0; i11 < iMin; i11++) {
                    this.f4623c[i11] = (byte) (54 ^ bArr[i11]);
                    this.f4624d[i11] = (byte) (92 ^ bArr[i11]);
                }
                while (iMin < 64) {
                    this.f4623c[iMin] = 54;
                    this.f4624d[iMin] = 92;
                    iMin++;
                }
                this.f4622b = ge.a.k();
                engineReset();
                return;
            default:
                this.f4623c = new byte[64];
                this.f4624d = new byte[64];
                int iMin2 = Math.min(bArr.length, 64);
                for (int i12 = 0; i12 < iMin2; i12++) {
                    this.f4623c[i12] = (byte) (54 ^ bArr[i12]);
                    this.f4624d[i12] = (byte) (92 ^ bArr[i12]);
                }
                while (iMin2 < 64) {
                    this.f4623c[iMin2] = 54;
                    this.f4624d[iMin2] = 92;
                    iMin2++;
                }
                try {
                    this.f4622b = MessageDigest.getInstance("MD5");
                    engineReset();
                    return;
                } catch (Exception e7) {
                    throw new IllegalStateException(e7.getMessage());
                }
        }
    }

    @Override // java.security.MessageDigest, java.security.MessageDigestSpi
    public final Object clone() {
        switch (this.f4621a) {
            case 0:
                try {
                    return new b(this);
                } catch (CloneNotSupportedException e7) {
                    throw new IllegalStateException(e7.getMessage());
                }
            default:
                try {
                    return new b(this, (byte) 0);
                } catch (CloneNotSupportedException e10) {
                    throw new IllegalStateException(e10.getMessage());
                }
        }
    }

    @Override // java.security.MessageDigestSpi
    public final byte[] engineDigest() {
        switch (this.f4621a) {
            case 0:
                MessageDigest messageDigest = this.f4622b;
                byte[] bArrDigest = messageDigest.digest();
                messageDigest.update(this.f4624d);
                return messageDigest.digest(bArrDigest);
            default:
                MessageDigest messageDigest2 = this.f4622b;
                byte[] bArrDigest2 = messageDigest2.digest();
                messageDigest2.update(this.f4624d);
                return messageDigest2.digest(bArrDigest2);
        }
    }

    @Override // java.security.MessageDigestSpi
    public final int engineGetDigestLength() {
        switch (this.f4621a) {
        }
        return this.f4622b.getDigestLength();
    }

    @Override // java.security.MessageDigestSpi
    public final void engineReset() {
        switch (this.f4621a) {
            case 0:
                MessageDigest messageDigest = this.f4622b;
                messageDigest.reset();
                messageDigest.update(this.f4623c);
                break;
            default:
                MessageDigest messageDigest2 = this.f4622b;
                messageDigest2.reset();
                messageDigest2.update(this.f4623c);
                break;
        }
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte b10) {
        switch (this.f4621a) {
            case 0:
                this.f4622b.update(b10);
                break;
            default:
                this.f4622b.update(b10);
                break;
        }
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte[] bArr, int i10, int i11) {
        switch (this.f4621a) {
            case 0:
                this.f4622b.update(bArr, i10, i11);
                break;
            default:
                this.f4622b.update(bArr, i10, i11);
                break;
        }
    }

    @Override // java.security.MessageDigestSpi
    public final int engineDigest(byte[] bArr, int i10, int i11) {
        switch (this.f4621a) {
            case 0:
                MessageDigest messageDigest = this.f4622b;
                byte[] bArrDigest = messageDigest.digest();
                messageDigest.update(this.f4624d);
                messageDigest.update(bArrDigest);
                try {
                    return messageDigest.digest(bArr, i10, i11);
                } catch (Exception unused) {
                    throw new IllegalStateException();
                }
            default:
                MessageDigest messageDigest2 = this.f4622b;
                byte[] bArrDigest2 = messageDigest2.digest();
                messageDigest2.update(this.f4624d);
                messageDigest2.update(bArrDigest2);
                try {
                    return messageDigest2.digest(bArr, i10, i11);
                } catch (Exception unused2) {
                    throw new IllegalStateException();
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(b bVar) {
        super("HMACT64");
        this.f4621a = 0;
        this.f4623c = new byte[64];
        this.f4624d = new byte[64];
        this.f4623c = bVar.f4623c;
        this.f4624d = bVar.f4624d;
        this.f4622b = (MessageDigest) bVar.f4622b.clone();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(b bVar, byte b10) {
        super("HMACT64");
        this.f4621a = 1;
        this.f4623c = new byte[64];
        this.f4624d = new byte[64];
        this.f4623c = bVar.f4623c;
        this.f4624d = bVar.f4624d;
        this.f4622b = (MessageDigest) bVar.f4622b.clone();
    }
}
