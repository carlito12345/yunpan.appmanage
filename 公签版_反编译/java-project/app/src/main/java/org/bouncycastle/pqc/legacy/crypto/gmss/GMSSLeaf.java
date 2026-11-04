package org.bouncycastle.pqc.legacy.crypto.gmss;

import android.support.v4.media.session.a;
import d0.f;
import g.b;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes3.dex */
public class GMSSLeaf {
    private byte[] concHashs;
    private GMSSRandom gmssRandom;

    /* renamed from: i, reason: collision with root package name */
    private int f12448i;

    /* renamed from: j, reason: collision with root package name */
    private int f12449j;
    private int keysize;
    private byte[] leaf;
    private int mdsize;
    private Digest messDigestOTS;
    byte[] privateKeyOTS;
    private byte[] seed;
    private int steps;
    private int two_power_w;

    /* renamed from: w, reason: collision with root package name */
    private int f12450w;

    public GMSSLeaf(Digest digest, int i10, int i11) {
        this.f12450w = i10;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        double d10 = digestSize << 3;
        double d11 = i10;
        Double.isNaN(d10);
        Double.isNaN(d11);
        int iCeil = (int) Math.ceil(d10 / d11);
        double log = getLog((iCeil << i10) + 1);
        Double.isNaN(log);
        Double.isNaN(d11);
        int iCeil2 = iCeil + ((int) Math.ceil(log / d11));
        this.keysize = iCeil2;
        int i12 = 1 << i10;
        this.two_power_w = i12;
        double d12 = ((i12 - 1) * iCeil2) + 1 + iCeil2;
        double d13 = i11;
        Double.isNaN(d12);
        Double.isNaN(d13);
        this.steps = (int) Math.ceil(d12 / d13);
        int i13 = this.mdsize;
        this.seed = new byte[i13];
        this.leaf = new byte[i13];
        this.privateKeyOTS = new byte[i13];
        this.concHashs = new byte[i13 * this.keysize];
    }

    private int getLog(int i10) {
        int i11 = 1;
        int i12 = 2;
        while (i12 < i10) {
            i12 <<= 1;
            i11++;
        }
        return i11;
    }

    private void updateLeafCalc() {
        byte[] bArr = new byte[this.messDigestOTS.getDigestSize()];
        for (int i10 = 0; i10 < this.steps + 10000; i10++) {
            int i11 = this.f12448i;
            if (i11 == this.keysize && this.f12449j == this.two_power_w - 1) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.concHashs;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.leaf = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                return;
            }
            if (i11 == 0 || this.f12449j == this.two_power_w - 1) {
                this.f12448i = i11 + 1;
                this.f12449j = 0;
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr4 = this.privateKeyOTS;
                digest2.update(bArr4, 0, bArr4.length);
                this.privateKeyOTS = bArr;
                this.messDigestOTS.doFinal(bArr, 0);
                int i12 = this.f12449j + 1;
                this.f12449j = i12;
                if (i12 == this.two_power_w - 1) {
                    byte[] bArr5 = this.privateKeyOTS;
                    byte[] bArr6 = this.concHashs;
                    int i13 = this.mdsize;
                    System.arraycopy(bArr5, 0, bArr6, (this.f12448i - 1) * i13, i13);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.steps + " " + this.f12448i + " " + this.f12449j);
    }

    public byte[] getLeaf() {
        return Arrays.clone(this.leaf);
    }

    public byte[][] getStatByte() {
        return new byte[][]{this.privateKeyOTS, this.seed, this.concHashs, this.leaf};
    }

    public int[] getStatInt() {
        return new int[]{this.f12448i, this.f12449j, this.steps, this.f12450w};
    }

    public void initLeafCalc(byte[] bArr) {
        this.f12448i = 0;
        this.f12449j = 0;
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, this.seed.length);
        this.seed = this.gmssRandom.nextSeed(bArr2);
    }

    public GMSSLeaf nextLeaf() {
        GMSSLeaf gMSSLeaf = new GMSSLeaf(this);
        gMSSLeaf.updateLeafCalc();
        return gMSSLeaf;
    }

    public String toString() {
        String strS = "";
        for (int i10 = 0; i10 < 4; i10++) {
            strS = a.s(b.m(strS), getStatInt()[i10], " ");
        }
        StringBuilder sbB = f.b(strS, " ");
        sbB.append(this.mdsize);
        sbB.append(" ");
        sbB.append(this.keysize);
        sbB.append(" ");
        String strS2 = a.s(sbB, this.two_power_w, " ");
        byte[][] statByte = getStatByte();
        for (int i11 = 0; i11 < 4; i11++) {
            strS2 = statByte[i11] != null ? b.l(new String(Hex.encode(statByte[i11])), " ", b.m(strS2)) : b.j(strS2, "null ");
        }
        return strS2;
    }

    public GMSSLeaf(Digest digest, int i10, int i11, byte[] bArr) {
        this.f12450w = i10;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        double d10 = digestSize << 3;
        double d11 = i10;
        Double.isNaN(d10);
        Double.isNaN(d11);
        int iCeil = (int) Math.ceil(d10 / d11);
        double log = getLog((iCeil << i10) + 1);
        Double.isNaN(log);
        Double.isNaN(d11);
        int iCeil2 = iCeil + ((int) Math.ceil(log / d11));
        this.keysize = iCeil2;
        int i12 = 1 << i10;
        this.two_power_w = i12;
        double d12 = ((i12 - 1) * iCeil2) + 1 + iCeil2;
        double d13 = i11;
        Double.isNaN(d12);
        Double.isNaN(d13);
        this.steps = (int) Math.ceil(d12 / d13);
        int i13 = this.mdsize;
        this.seed = new byte[i13];
        this.leaf = new byte[i13];
        this.privateKeyOTS = new byte[i13];
        this.concHashs = new byte[i13 * this.keysize];
        initLeafCalc(bArr);
    }

    public GMSSLeaf(Digest digest, byte[][] bArr, int[] iArr) {
        this.f12448i = iArr[0];
        this.f12449j = iArr[1];
        this.steps = iArr[2];
        this.f12450w = iArr[3];
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        double d10 = digestSize << 3;
        double d11 = this.f12450w;
        Double.isNaN(d10);
        Double.isNaN(d11);
        int iCeil = (int) Math.ceil(d10 / d11);
        double log = getLog((iCeil << this.f12450w) + 1);
        double d12 = this.f12450w;
        Double.isNaN(log);
        Double.isNaN(d12);
        this.keysize = iCeil + ((int) Math.ceil(log / d12));
        this.two_power_w = 1 << this.f12450w;
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.concHashs = bArr[2];
        this.leaf = bArr[3];
    }

    private GMSSLeaf(GMSSLeaf gMSSLeaf) {
        this.messDigestOTS = gMSSLeaf.messDigestOTS;
        this.mdsize = gMSSLeaf.mdsize;
        this.keysize = gMSSLeaf.keysize;
        this.gmssRandom = gMSSLeaf.gmssRandom;
        this.leaf = Arrays.clone(gMSSLeaf.leaf);
        this.concHashs = Arrays.clone(gMSSLeaf.concHashs);
        this.f12448i = gMSSLeaf.f12448i;
        this.f12449j = gMSSLeaf.f12449j;
        this.two_power_w = gMSSLeaf.two_power_w;
        this.f12450w = gMSSLeaf.f12450w;
        this.steps = gMSSLeaf.steps;
        this.seed = Arrays.clone(gMSSLeaf.seed);
        this.privateKeyOTS = Arrays.clone(gMSSLeaf.privateKeyOTS);
    }
}
