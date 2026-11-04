package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class SipHash implements Mac {

    /* renamed from: c, reason: collision with root package name */
    protected final int f12014c;

    /* renamed from: d, reason: collision with root package name */
    protected final int f12015d;

    /* renamed from: k0, reason: collision with root package name */
    protected long f12016k0;

    /* renamed from: k1, reason: collision with root package name */
    protected long f12017k1;

    /* renamed from: m, reason: collision with root package name */
    protected long f12018m;

    /* renamed from: v0, reason: collision with root package name */
    protected long f12019v0;

    /* renamed from: v1, reason: collision with root package name */
    protected long f12020v1;

    /* renamed from: v2, reason: collision with root package name */
    protected long f12021v2;

    /* renamed from: v3, reason: collision with root package name */
    protected long f12022v3;
    protected int wordCount;
    protected int wordPos;

    public SipHash() {
        this.f12018m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f12014c = 2;
        this.f12015d = 4;
    }

    public static long rotateLeft(long j10, int i10) {
        return (j10 >>> (-i10)) | (j10 << i10);
    }

    public void applySipRounds(int i10) {
        long jRotateLeft = this.f12019v0;
        long jRotateLeft2 = this.f12020v1;
        long jRotateLeft3 = this.f12021v2;
        long jRotateLeft4 = this.f12022v3;
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = jRotateLeft + jRotateLeft2;
            long j11 = jRotateLeft3 + jRotateLeft4;
            long jRotateLeft5 = rotateLeft(jRotateLeft2, 13) ^ j10;
            long jRotateLeft6 = rotateLeft(jRotateLeft4, 16) ^ j11;
            long j12 = j11 + jRotateLeft5;
            jRotateLeft = rotateLeft(j10, 32) + jRotateLeft6;
            jRotateLeft2 = rotateLeft(jRotateLeft5, 17) ^ j12;
            jRotateLeft4 = rotateLeft(jRotateLeft6, 21) ^ jRotateLeft;
            jRotateLeft3 = rotateLeft(j12, 32);
        }
        this.f12019v0 = jRotateLeft;
        this.f12020v1 = jRotateLeft2;
        this.f12021v2 = jRotateLeft3;
        this.f12022v3 = jRotateLeft4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i10) {
        Pack.longToLittleEndian(doFinal(), bArr, i10);
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f12014c + "-" + this.f12015d;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f12016k0 = Pack.littleEndianToLong(key, 0);
        this.f12017k1 = Pack.littleEndianToLong(key, 8);
        reset();
    }

    public void processMessageWord() {
        this.wordCount++;
        this.f12022v3 ^= this.f12018m;
        applySipRounds(this.f12014c);
        this.f12019v0 ^= this.f12018m;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        long j10 = this.f12016k0;
        this.f12019v0 = 8317987319222330741L ^ j10;
        long j11 = this.f12017k1;
        this.f12020v1 = 7237128888997146477L ^ j11;
        this.f12021v2 = j10 ^ 7816392313619706465L;
        this.f12022v3 = 8387220255154660723L ^ j11;
        this.f12018m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) {
        this.f12018m = (this.f12018m >>> 8) | ((b10 & 255) << 56);
        int i10 = this.wordPos + 1;
        this.wordPos = i10;
        if (i10 == 8) {
            processMessageWord();
            this.wordPos = 0;
        }
    }

    public SipHash(int i10, int i11) {
        this.f12018m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f12014c = i10;
        this.f12015d = i11;
    }

    public long doFinal() {
        this.f12018m = ((this.f12018m >>> ((7 - this.wordPos) << 3)) >>> 8) | ((((this.wordCount << 3) + r2) & 255) << 56);
        processMessageWord();
        this.f12021v2 ^= 255;
        applySipRounds(this.f12015d);
        long j10 = ((this.f12019v0 ^ this.f12020v1) ^ this.f12021v2) ^ this.f12022v3;
        reset();
        return j10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = i11 & (-8);
        int i13 = this.wordPos;
        int i14 = 0;
        if (i13 == 0) {
            while (i14 < i12) {
                this.f12018m = Pack.littleEndianToLong(bArr, i10 + i14);
                processMessageWord();
                i14 += 8;
            }
            while (i14 < i11) {
                long j10 = this.f12018m >>> 8;
                this.f12018m = j10;
                this.f12018m = j10 | ((bArr[i10 + i14] & 255) << 56);
                i14++;
            }
            this.wordPos = i11 - i12;
            return;
        }
        int i15 = i13 << 3;
        int i16 = 0;
        while (i16 < i12) {
            long jLittleEndianToLong = Pack.littleEndianToLong(bArr, i10 + i16);
            this.f12018m = (this.f12018m >>> (-i15)) | (jLittleEndianToLong << i15);
            processMessageWord();
            this.f12018m = jLittleEndianToLong;
            i16 += 8;
        }
        while (i16 < i11) {
            long j11 = this.f12018m >>> 8;
            this.f12018m = j11;
            this.f12018m = j11 | ((bArr[i10 + i16] & 255) << 56);
            int i17 = this.wordPos + 1;
            this.wordPos = i17;
            if (i17 == 8) {
                processMessageWord();
                this.wordPos = 0;
            }
            i16++;
        }
    }
}
