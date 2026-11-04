package com.hierynomus.security.mac;

import com.hierynomus.security.Mac;
import com.hierynomus.security.MessageDigest;
import com.hierynomus.security.SecurityException;

/* loaded from: classes.dex */
public class HmacT64 implements Mac {
    private static final int BLOCK_LENGTH = 64;
    private static final byte IPAD = 54;
    private static final byte OPAD = 92;
    private MessageDigest md5;
    private byte[] ipad = new byte[64];
    private byte[] opad = new byte[64];

    public HmacT64(MessageDigest messageDigest) {
        this.md5 = messageDigest;
    }

    @Override // com.hierynomus.security.Mac
    public byte[] doFinal() {
        try {
            byte[] bArrDigest = this.md5.digest();
            this.md5.update(this.opad);
            this.md5.update(bArrDigest);
            return this.md5.digest();
        } finally {
            reset();
        }
    }

    @Override // com.hierynomus.security.Mac
    public void init(byte[] bArr) throws SecurityException {
        if (bArr == null) {
            throw new SecurityException("Missing key data");
        }
        int iMin = Math.min(bArr.length, 64);
        for (int i10 = 0; i10 < iMin; i10++) {
            this.ipad[i10] = (byte) (54 ^ bArr[i10]);
            this.opad[i10] = (byte) (92 ^ bArr[i10]);
        }
        while (iMin < 64) {
            this.ipad[iMin] = IPAD;
            this.opad[iMin] = OPAD;
            iMin++;
        }
        reset();
    }

    @Override // com.hierynomus.security.Mac
    public void reset() {
        this.md5.reset();
        MessageDigest messageDigest = this.md5;
        byte[] bArr = this.ipad;
        messageDigest.update(bArr, 0, bArr.length);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte b10) {
        this.md5.update(b10);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte[] bArr) {
        this.md5.update(bArr);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte[] bArr, int i10, int i11) {
        this.md5.update(bArr, i10, i11);
    }
}
