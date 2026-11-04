package h;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f6248a;

    public o(byte[] bArr) {
        this.f6248a = (byte[]) bArr.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        return Arrays.equals(this.f6248a, (byte[]) ((o) obj).f6248a.clone());
    }

    public final int hashCode() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f6248a;
            if (i10 >= bArr.length) {
                return i11;
            }
            i11 += bArr[i10] * i10;
            i10++;
        }
    }

    public final String toString() {
        return g.b.j("KeyIdentifier [\n" + new a.c().c(this.f6248a), "]\n");
    }

    public o(PublicKey publicKey) throws NoSuchAlgorithmException, IOException {
        g.g gVar = new g.g(publicKey.getEncoded());
        if (gVar.f5922a == 48) {
            a1.i iVar = gVar.f5924c;
            d.d(new g.g((g.e) iVar.f76b));
            g.e eVar = (g.e) iVar.f76b;
            if (eVar.read() == 3) {
                int iQ = a1.i.q(eVar.read(), eVar) - 1;
                int i10 = (iQ * 8) - eVar.read();
                byte[] bArr = new byte[iQ];
                if (iQ != 0 && eVar.read(bArr) != iQ) {
                    throw new IOException("short read of DER bit string");
                }
                byte[] bArr2 = (byte[]) new g.a(i10, bArr).f5909a.clone();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    messageDigest.update(bArr2);
                    this.f6248a = messageDigest.digest();
                    return;
                } catch (NoSuchAlgorithmException unused) {
                    throw new IOException("SHA1 not supported");
                }
            }
            throw new IOException("DER input not a bit string");
        }
        throw new IOException("PublicKey value is not a valid X.509 public key");
    }
}
