package org.bouncycastle.crypto.engines;

import l2.z;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class NoekeonEngine implements BlockCipher {
    private static final int SIZE = 16;
    private static final byte[] roundConstants = {Byte.MIN_VALUE, 27, 54, 108, -40, -85, 77, -102, 47, 94, PSSSigner.TRAILER_IMPLICIT, 99, -58, -105, 53, 106, -44};
    private boolean _forEncryption;

    /* renamed from: k, reason: collision with root package name */
    private final int[] f11968k = new int[4];
    private boolean _initialised = false;

    private int decryptBlock(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int iBigEndianToInt = Pack.bigEndianToInt(bArr, i10);
        int iBigEndianToInt2 = Pack.bigEndianToInt(bArr, i10 + 4);
        int iBigEndianToInt3 = Pack.bigEndianToInt(bArr, i10 + 8);
        int iBigEndianToInt4 = Pack.bigEndianToInt(bArr, i10 + 12);
        int[] iArr = this.f11968k;
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = iArr[3];
        int i16 = 16;
        while (true) {
            int i17 = iBigEndianToInt ^ iBigEndianToInt3;
            int iRotateLeft = i17 ^ (Integers.rotateLeft(i17, 8) ^ Integers.rotateLeft(i17, 24));
            int i18 = iBigEndianToInt2 ^ i13;
            int i19 = iBigEndianToInt4 ^ i15;
            int i20 = i18 ^ i19;
            int iRotateLeft2 = (Integers.rotateLeft(i20, 24) ^ Integers.rotateLeft(i20, 8)) ^ i20;
            int i21 = i18 ^ iRotateLeft;
            int i22 = (iBigEndianToInt3 ^ i14) ^ iRotateLeft2;
            int i23 = i19 ^ iRotateLeft;
            int i24 = ((iBigEndianToInt ^ i12) ^ iRotateLeft2) ^ (roundConstants[i16] & 255);
            i16--;
            if (i16 < 0) {
                Pack.intToBigEndian(i24, bArr2, i11);
                Pack.intToBigEndian(i21, bArr2, i11 + 4);
                Pack.intToBigEndian(i22, bArr2, i11 + 8);
                Pack.intToBigEndian(i23, bArr2, i11 + 12);
                return 16;
            }
            int iRotateLeft3 = Integers.rotateLeft(i21, 1);
            int iRotateLeft4 = Integers.rotateLeft(i22, 5);
            int iRotateLeft5 = Integers.rotateLeft(i23, 2);
            int i25 = iRotateLeft3 ^ (iRotateLeft5 | iRotateLeft4);
            int i26 = i25 ^ (-1);
            int i27 = i24 ^ (iRotateLeft4 & i26);
            int i28 = (iRotateLeft4 ^ (i26 ^ iRotateLeft5)) ^ i27;
            int i29 = i25 ^ (i27 | i28);
            int i30 = iRotateLeft5 ^ (i28 & i29);
            iBigEndianToInt2 = Integers.rotateLeft(i29, 31);
            iBigEndianToInt3 = Integers.rotateLeft(i28, 27);
            int iRotateLeft6 = Integers.rotateLeft(i27, 30);
            iBigEndianToInt = i30;
            iBigEndianToInt4 = iRotateLeft6;
        }
    }

    private int encryptBlock(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int iBigEndianToInt = Pack.bigEndianToInt(bArr, i10);
        int iBigEndianToInt2 = Pack.bigEndianToInt(bArr, i10 + 4);
        int iBigEndianToInt3 = Pack.bigEndianToInt(bArr, i10 + 8);
        int iBigEndianToInt4 = Pack.bigEndianToInt(bArr, i10 + 12);
        int[] iArr = this.f11968k;
        int i12 = 0;
        int i13 = iArr[0];
        int i14 = iArr[1];
        int i15 = iArr[2];
        int i16 = iArr[3];
        while (true) {
            int i17 = iBigEndianToInt ^ (roundConstants[i12] & 255);
            int i18 = i17 ^ iBigEndianToInt3;
            int iRotateLeft = i18 ^ (Integers.rotateLeft(i18, 8) ^ Integers.rotateLeft(i18, 24));
            int i19 = iBigEndianToInt2 ^ i14;
            int i20 = iBigEndianToInt4 ^ i16;
            int i21 = i19 ^ i20;
            int iRotateLeft2 = i21 ^ (Integers.rotateLeft(i21, 24) ^ Integers.rotateLeft(i21, 8));
            int i22 = (i17 ^ i13) ^ iRotateLeft2;
            int i23 = i19 ^ iRotateLeft;
            int i24 = (iBigEndianToInt3 ^ i15) ^ iRotateLeft2;
            int i25 = i20 ^ iRotateLeft;
            i12++;
            if (i12 > 16) {
                Pack.intToBigEndian(i22, bArr2, i11);
                Pack.intToBigEndian(i23, bArr2, i11 + 4);
                Pack.intToBigEndian(i24, bArr2, i11 + 8);
                Pack.intToBigEndian(i25, bArr2, i11 + 12);
                return 16;
            }
            int iRotateLeft3 = Integers.rotateLeft(i23, 1);
            int iRotateLeft4 = Integers.rotateLeft(i24, 5);
            int iRotateLeft5 = Integers.rotateLeft(i25, 2);
            int i26 = iRotateLeft3 ^ (iRotateLeft5 | iRotateLeft4);
            int i27 = i26 ^ (-1);
            int i28 = i22 ^ (iRotateLeft4 & i27);
            int i29 = (iRotateLeft4 ^ (i27 ^ iRotateLeft5)) ^ i28;
            int i30 = i26 ^ (i28 | i29);
            int i31 = iRotateLeft5 ^ (i29 & i30);
            iBigEndianToInt2 = Integers.rotateLeft(i30, 31);
            iBigEndianToInt3 = Integers.rotateLeft(i29, 27);
            int iRotateLeft6 = Integers.rotateLeft(i28, 30);
            iBigEndianToInt = i31;
            iBigEndianToInt4 = iRotateLeft6;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Noekeon";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(z.l("invalid parameter passed to Noekeon init - ", cipherParameters));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("Key length not 128 bits.");
        }
        Pack.bigEndianToInt(key, 0, this.f11968k, 0, 4);
        if (!z) {
            int[] iArr = this.f11968k;
            int i10 = iArr[0];
            int i11 = iArr[1];
            int i12 = iArr[2];
            int i13 = iArr[3];
            int i14 = i10 ^ i12;
            int iRotateLeft = i14 ^ (Integers.rotateLeft(i14, 8) ^ Integers.rotateLeft(i14, 24));
            int i15 = i11 ^ i13;
            int iRotateLeft2 = (Integers.rotateLeft(i15, 8) ^ Integers.rotateLeft(i15, 24)) ^ i15;
            int i16 = i11 ^ iRotateLeft;
            int i17 = i13 ^ iRotateLeft;
            int[] iArr2 = this.f11968k;
            iArr2[0] = i10 ^ iRotateLeft2;
            iArr2[1] = i16;
            iArr2[2] = i12 ^ iRotateLeft2;
            iArr2[3] = i17;
        }
        this._forEncryption = z;
        this._initialised = true;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (!this._initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i10 > bArr.length - 16) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 <= bArr2.length - 16) {
            return this._forEncryption ? encryptBlock(bArr, i10, bArr2, i11) : decryptBlock(bArr, i10, bArr2, i11);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
