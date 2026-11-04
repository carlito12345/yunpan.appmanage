package zh;

import java.security.MessageDigest;
import java.util.zip.CRC32;

/* loaded from: classes3.dex */
public final class a extends bi.a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19575c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f19576d;

    public a(int i10) {
        this.f19575c = i10;
        switch (i10) {
            case 1:
                this.f2818a = 32;
                this.f2819b = "SHA-256";
                this.f19576d = MessageDigest.getInstance("SHA-256");
                break;
            default:
                this.f19576d = new CRC32();
                this.f2818a = 4;
                this.f2819b = "CRC32";
                break;
        }
    }

    @Override // bi.a
    public final byte[] a() {
        switch (this.f19575c) {
            case 0:
                byte[] bArr = new byte[4];
                CRC32 crc32 = (CRC32) this.f19576d;
                q4.a.Z(0, (int) crc32.getValue(), bArr);
                crc32.reset();
                return bArr;
            default:
                MessageDigest messageDigest = (MessageDigest) this.f19576d;
                byte[] bArrDigest = messageDigest.digest();
                messageDigest.reset();
                return bArrDigest;
        }
    }

    @Override // bi.a
    public final void b(byte[] bArr, int i10, int i11) {
        switch (this.f19575c) {
            case 0:
                ((CRC32) this.f19576d).update(bArr, i10, i11);
                break;
            default:
                ((MessageDigest) this.f19576d).update(bArr, i10, i11);
                break;
        }
    }
}
