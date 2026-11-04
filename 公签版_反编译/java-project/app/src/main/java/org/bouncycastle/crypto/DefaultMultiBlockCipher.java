package org.bouncycastle.crypto;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public abstract class DefaultMultiBlockCipher implements MultiBlockCipher {
    @Override // org.bouncycastle.crypto.MultiBlockCipher
    public int getMultiBlockSize() {
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.MultiBlockCipher
    public int processBlocks(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        int multiBlockSize = getMultiBlockSize();
        int i13 = i11 * multiBlockSize;
        if (bArr == bArr2 && Arrays.segmentsOverlap(i10, i13, i12, i13)) {
            bArr = new byte[i13];
            System.arraycopy(bArr2, i10, bArr, 0, i13);
            i10 = 0;
        }
        int iProcessBlock = 0;
        for (int i14 = 0; i14 != i11; i14++) {
            iProcessBlock += processBlock(bArr, i10, bArr2, i12 + iProcessBlock);
            i10 += multiBlockSize;
        }
        return iProcessBlock;
    }
}
