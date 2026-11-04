package bi;

/* loaded from: classes3.dex */
public final class b extends a {
    public /* synthetic */ b(int i10) {
        super(i10);
    }

    public void c(int i10, int i11, byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        int i12 = this.f2818a;
        int iMin = Math.min(i11, i12);
        int i13 = 0;
        while (true) {
            bArr3 = (byte[]) this.f2819b;
            if (i13 >= iMin) {
                break;
            }
            bArr2[i13] = (byte) (bArr[i10 + i13] - bArr3[i13]);
            i13++;
        }
        if (i11 >= i12) {
            System.arraycopy(bArr, (i10 + i11) - i12, bArr3, 0, i12);
        } else {
            System.arraycopy(bArr3, i13, bArr3, 0, i12 - i13);
            System.arraycopy(bArr, i10, bArr3, i12 - i13, i11);
        }
        while (i13 < i11) {
            int i14 = i10 + i13;
            bArr2[i13] = (byte) (bArr[i14] - bArr[i14 - i12]);
            i13++;
        }
    }
}
