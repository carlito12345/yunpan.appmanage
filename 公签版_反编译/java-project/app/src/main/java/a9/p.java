package a9;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f514a;

    /* renamed from: b, reason: collision with root package name */
    public final int f515b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p(byte[] bArr, int i10) {
        this(bArr, 0, bArr.length);
        switch (i10) {
            case 1:
                int length = bArr.length;
                if (length < 0) {
                    throw new IllegalArgumentException("end < start");
                }
                if (length > bArr.length) {
                    throw new IllegalArgumentException("end > bytes.length");
                }
                this.f514a = bArr;
                this.f515b = length;
                return;
            default:
                return;
        }
    }

    public byte[] a() {
        int[] iArr = {this.f515b + 1};
        int iC = c(iArr);
        byte[] bArr = new byte[iC];
        System.arraycopy(this.f514a, iArr[0], bArr, 0, iC);
        return bArr;
    }

    public p[] b() {
        byte[] bArr = this.f514a;
        int i10 = this.f515b;
        byte b10 = bArr[i10];
        int[] iArr = {i10 + 1};
        int iC = c(iArr);
        if (b10 == 5) {
            return new p[0];
        }
        int i11 = iArr[0];
        ArrayList arrayList = new ArrayList();
        while (iC > 0) {
            int i12 = i11 + 1;
            iArr[0] = i12;
            int iC2 = c(iArr);
            int i13 = iArr[0];
            int i14 = i13 - i12;
            arrayList.add(new p(bArr, i11, i14 + 1 + iC2));
            i11 = i13 + iC2;
            iC = ((iC - 1) - i14) - iC2;
        }
        p[] pVarArr = new p[arrayList.size()];
        arrayList.toArray(pVarArr);
        return pVarArr;
    }

    public int c(int[] iArr) {
        int i10 = iArr[0];
        int i11 = i10 + 1;
        byte[] bArr = this.f514a;
        byte b10 = bArr[i10];
        int i12 = b10 & 255;
        if ((b10 & 128) != 0) {
            int i13 = b10 & Byte.MAX_VALUE;
            i12 = 0;
            while (true) {
                int i14 = i13 - 1;
                if (i13 <= 0) {
                    break;
                }
                int i15 = (i12 << 8) + (bArr[i11] & 255);
                i11++;
                i12 = i15;
                i13 = i14;
            }
        }
        iArr[0] = i11;
        return i12;
    }

    public int d() {
        return this.f514a[this.f515b] & 255;
    }

    public boolean e() {
        return d() == 3;
    }

    public boolean f(int i10) {
        return d() == ((i10 | CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ) & 255);
    }

    public boolean g() {
        return d() == 2;
    }

    public boolean h() {
        return d() == 6;
    }

    public boolean i() {
        return d() == 4;
    }

    public boolean j() {
        return d() == 48;
    }

    public p(byte[] bArr, int i10, int i11) throws q {
        this.f514a = bArr;
        this.f515b = i10;
        if (i10 + i11 > bArr.length) {
            throw new q();
        }
    }
}
