package g;

import com.hsae.autosdk.p001os.SocConst;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[][] f5908c = {new byte[]{48, 48, 48, 48}, new byte[]{48, 48, 48, SocConst.Upgrade.CUPID_CMD}, new byte[]{48, 48, SocConst.Upgrade.CUPID_CMD, 48}, new byte[]{48, 48, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD}, new byte[]{48, SocConst.Upgrade.CUPID_CMD, 48, 48}, new byte[]{48, SocConst.Upgrade.CUPID_CMD, 48, SocConst.Upgrade.CUPID_CMD}, new byte[]{48, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, 48}, new byte[]{48, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD}, new byte[]{SocConst.Upgrade.CUPID_CMD, 48, 48, 48}, new byte[]{SocConst.Upgrade.CUPID_CMD, 48, 48, SocConst.Upgrade.CUPID_CMD}, new byte[]{SocConst.Upgrade.CUPID_CMD, 48, SocConst.Upgrade.CUPID_CMD, 48}, new byte[]{SocConst.Upgrade.CUPID_CMD, 48, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD}, new byte[]{SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, 48, 48}, new byte[]{SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, 48, SocConst.Upgrade.CUPID_CMD}, new byte[]{SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, 48}, new byte[]{SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD, SocConst.Upgrade.CUPID_CMD}};

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5909a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5910b;

    public a(int i10, byte[] bArr) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Negative length for BitArray");
        }
        if (bArr.length * 8 < i10) {
            throw new IllegalArgumentException("Byte array too short to represent bit array of given length");
        }
        this.f5910b = i10;
        int i11 = (i10 + 7) / 8;
        byte b10 = (byte) (255 << ((i11 * 8) - i10));
        byte[] bArr2 = new byte[i11];
        this.f5909a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i11);
        if (i11 > 0) {
            int i12 = i11 - 1;
            bArr2[i12] = (byte) (b10 & bArr2[i12]);
        }
    }

    public final Object clone() {
        return new a(this);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (aVar.f5910b != this.f5910b) {
            return false;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f5909a;
            if (i10 >= bArr.length) {
                return true;
            }
            if (bArr[i10] != aVar.f5909a[i10]) {
                return false;
            }
            i10++;
        }
    }

    public final int hashCode() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f5909a;
            if (i10 >= bArr.length) {
                return this.f5910b ^ i11;
            }
            i11 = (i11 * 31) + bArr[i10];
            i10++;
        }
    }

    public final String toString() {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        while (true) {
            bArr = this.f5909a;
            if (i10 >= bArr.length - 1) {
                break;
            }
            byte[][] bArr2 = f5908c;
            byteArrayOutputStream.write(bArr2[(bArr[i10] >> 4) & 15], 0, 4);
            byteArrayOutputStream.write(bArr2[bArr[i10] & 15], 0, 4);
            if (i10 % 8 == 7) {
                byteArrayOutputStream.write(10);
            } else {
                byteArrayOutputStream.write(32);
            }
            i10++;
        }
        int length = (bArr.length - 1) * 8;
        while (true) {
            int i11 = this.f5910b;
            if (length >= i11) {
                return new String(byteArrayOutputStream.toByteArray());
            }
            if (length < 0 || length >= i11) {
                break;
            }
            byteArrayOutputStream.write((bArr[length / 8] & (1 << (7 - (length % 8)))) != 0 ? 49 : 48);
            length++;
        }
        throw new ArrayIndexOutOfBoundsException(Integer.toString(length));
    }

    public a(a aVar) {
        this.f5910b = aVar.f5910b;
        this.f5909a = (byte[]) aVar.f5909a.clone();
    }
}
