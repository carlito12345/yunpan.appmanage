package org.bouncycastle.pqc.crypto.mlkem;

import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes3.dex */
abstract class Symmetric {
    final int xofBlockBytes;

    public static class ShakeSymmetric extends Symmetric {
        private final SHA3Digest sha3Digest256;
        private final SHA3Digest sha3Digest512;
        private final SHAKEDigest shakeDigest;
        private final SHAKEDigest xof;

        public ShakeSymmetric() {
            super(168);
            this.xof = new SHAKEDigest(128);
            this.shakeDigest = new SHAKEDigest(256);
            this.sha3Digest256 = new SHA3Digest(256);
            this.sha3Digest512 = new SHA3Digest(512);
        }

        @Override // org.bouncycastle.pqc.crypto.mlkem.Symmetric
        public void hash_g(byte[] bArr, byte[] bArr2) {
            this.sha3Digest512.update(bArr2, 0, bArr2.length);
            this.sha3Digest512.doFinal(bArr, 0);
        }

        @Override // org.bouncycastle.pqc.crypto.mlkem.Symmetric
        public void hash_h(byte[] bArr, byte[] bArr2, int i10) {
            this.sha3Digest256.update(bArr2, 0, bArr2.length);
            this.sha3Digest256.doFinal(bArr, i10);
        }

        @Override // org.bouncycastle.pqc.crypto.mlkem.Symmetric
        public void kdf(byte[] bArr, byte[] bArr2) {
            this.shakeDigest.update(bArr2, 0, bArr2.length);
            this.shakeDigest.doFinal(bArr, 0, bArr.length);
        }

        @Override // org.bouncycastle.pqc.crypto.mlkem.Symmetric
        public void prf(byte[] bArr, byte[] bArr2, byte b10) {
            int length = bArr2.length + 1;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            bArr3[bArr2.length] = b10;
            this.shakeDigest.update(bArr3, 0, length);
            this.shakeDigest.doFinal(bArr, 0, bArr.length);
        }

        @Override // org.bouncycastle.pqc.crypto.mlkem.Symmetric
        public void xofAbsorb(byte[] bArr, byte b10, byte b11) {
            this.xof.reset();
            byte[] bArr2 = new byte[bArr.length + 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr2[bArr.length] = b10;
            bArr2[bArr.length + 1] = b11;
            this.xof.update(bArr2, 0, bArr.length + 2);
        }

        @Override // org.bouncycastle.pqc.crypto.mlkem.Symmetric
        public void xofSqueezeBlocks(byte[] bArr, int i10, int i11) {
            this.xof.doOutput(bArr, i10, i11);
        }
    }

    public Symmetric(int i10) {
        this.xofBlockBytes = i10;
    }

    public abstract void hash_g(byte[] bArr, byte[] bArr2);

    public abstract void hash_h(byte[] bArr, byte[] bArr2, int i10);

    public abstract void kdf(byte[] bArr, byte[] bArr2);

    public abstract void prf(byte[] bArr, byte[] bArr2, byte b10);

    public abstract void xofAbsorb(byte[] bArr, byte b10, byte b11);

    public abstract void xofSqueezeBlocks(byte[] bArr, int i10, int i11);
}
