package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes3.dex */
public class ECCSIKeyGenerationParameters extends KeyGenerationParameters {
    private final ECPoint G;
    private final Digest digest;

    /* renamed from: id, reason: collision with root package name */
    private final byte[] f12060id;
    private final ECPoint kpak;
    private final BigInteger ksak;

    /* renamed from: n, reason: collision with root package name */
    private final int f12061n;

    /* renamed from: q, reason: collision with root package name */
    private final BigInteger f12062q;

    public ECCSIKeyGenerationParameters(SecureRandom secureRandom, X9ECParameters x9ECParameters, Digest digest, byte[] bArr) {
        super(secureRandom, x9ECParameters.getCurve().getA().bitLength());
        BigInteger order = x9ECParameters.getCurve().getOrder();
        this.f12062q = order;
        ECPoint g10 = x9ECParameters.getG();
        this.G = g10;
        this.digest = digest;
        this.f12060id = Arrays.clone(bArr);
        int iBitLength = x9ECParameters.getCurve().getA().bitLength();
        this.f12061n = iBitLength;
        BigInteger bigIntegerMod = BigIntegers.createRandomBigInteger(iBitLength, secureRandom).mod(order);
        this.ksak = bigIntegerMod;
        this.kpak = g10.multiply(bigIntegerMod).normalize();
    }

    public BigInteger computeSSK(BigInteger bigInteger) {
        return this.ksak.add(bigInteger).mod(this.f12062q);
    }

    public Digest getDigest() {
        return this.digest;
    }

    public ECPoint getG() {
        return this.G;
    }

    public byte[] getId() {
        return Arrays.clone(this.f12060id);
    }

    public ECPoint getKPAK() {
        return this.kpak;
    }

    public int getN() {
        return this.f12061n;
    }

    public BigInteger getQ() {
        return this.f12062q;
    }
}
