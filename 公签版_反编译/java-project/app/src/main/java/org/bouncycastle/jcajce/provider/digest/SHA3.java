package org.bouncycastle.jcajce.provider.digest;

import da.b;
import l2.z;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.digests.ParallelHash;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.digests.TupleHash;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.macs.KMAC;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;

/* loaded from: classes3.dex */
public class SHA3 {

    public static class Digest224 extends DigestSHA3 {
        public Digest224() {
            super(224);
        }
    }

    public static class Digest256 extends DigestSHA3 {
        public Digest256() {
            super(256);
        }
    }

    public static class Digest384 extends DigestSHA3 {
        public Digest384() {
            super(384);
        }
    }

    public static class Digest512 extends DigestSHA3 {
        public Digest512() {
            super(512);
        }
    }

    public static class DigestParallelHash extends BCMessageDigest implements Cloneable {
        public DigestParallelHash(int i10, int i11) {
            super(new ParallelHash(i10, null, 128, i11));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new ParallelHash((ParallelHash) this.digest);
            return bCMessageDigest;
        }
    }

    public static class DigestParallelHash128_256 extends DigestParallelHash {
        public DigestParallelHash128_256() {
            super(128, 256);
        }
    }

    public static class DigestParallelHash256_512 extends DigestParallelHash {
        public DigestParallelHash256_512() {
            super(256, 512);
        }
    }

    public static class DigestSHA3 extends BCMessageDigest implements Cloneable {
        public DigestSHA3(int i10) {
            super(new SHA3Digest(i10));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new SHA3Digest((SHA3Digest) this.digest);
            return bCMessageDigest;
        }
    }

    public static class DigestSHAKE extends BCMessageDigest implements Cloneable {
        public DigestSHAKE(int i10, int i11) {
            super(new SHAKEDigest(i10));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new SHAKEDigest((SHAKEDigest) this.digest);
            return bCMessageDigest;
        }
    }

    public static class DigestShake128_256 extends DigestSHAKE {
        public DigestShake128_256() {
            super(128, 256);
        }
    }

    public static class DigestShake256_512 extends DigestSHAKE {
        public DigestShake256_512() {
            super(256, 512);
        }
    }

    public static class DigestTupleHash extends BCMessageDigest implements Cloneable {
        public DigestTupleHash(int i10, int i11) {
            super(new TupleHash(i10, null, i11));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new TupleHash((TupleHash) this.digest);
            return bCMessageDigest;
        }
    }

    public static class DigestTupleHash128_256 extends DigestTupleHash {
        public DigestTupleHash128_256() {
            super(128, 256);
        }
    }

    public static class DigestTupleHash256_512 extends DigestTupleHash {
        public DigestTupleHash256_512() {
            super(256, 512);
        }
    }

    public static class HashMac224 extends HashMacSHA3 {
        public HashMac224() {
            super(224);
        }
    }

    public static class HashMac256 extends HashMacSHA3 {
        public HashMac256() {
            super(256);
        }
    }

    public static class HashMac384 extends HashMacSHA3 {
        public HashMac384() {
            super(384);
        }
    }

    public static class HashMac512 extends HashMacSHA3 {
        public HashMac512() {
            super(512);
        }
    }

    public static class HashMacSHA3 extends BaseMac {
        public HashMacSHA3(int i10) {
            super(new HMac(new SHA3Digest(i10)));
        }
    }

    public static class KMac128 extends BaseMac {
        public KMac128() {
            super(new KMAC(128, new byte[0]));
        }
    }

    public static class KMac256 extends BaseMac {
        public KMac256() {
            super(new KMAC(256, new byte[0]));
        }
    }

    public static class KeyFactory224 extends KeyFactorySHA3 {
        public KeyFactory224() {
            super(224, NISTObjectIdentifiers.id_hmacWithSHA3_224);
        }
    }

    public static class KeyFactory256 extends KeyFactorySHA3 {
        public KeyFactory256() {
            super(256, NISTObjectIdentifiers.id_hmacWithSHA3_256);
        }
    }

    public static class KeyFactory384 extends KeyFactorySHA3 {
        public KeyFactory384() {
            super(384, NISTObjectIdentifiers.id_hmacWithSHA3_384);
        }
    }

    public static class KeyFactory512 extends KeyFactorySHA3 {
        public KeyFactory512() {
            super(512, NISTObjectIdentifiers.id_hmacWithSHA3_512);
        }
    }

    public static class KeyFactoryKMAC extends BaseSecretKeyFactory {
        public KeyFactoryKMAC(int i10, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
            super(b.a(i10, "KMAC"), aSN1ObjectIdentifier);
        }
    }

    public static class KeyFactoryKMAC128 extends KeyFactoryKMAC {
        public KeyFactoryKMAC128() {
            super(128, NISTObjectIdentifiers.id_KmacWithSHAKE128);
        }
    }

    public static class KeyFactoryKMAC256 extends KeyFactoryKMAC {
        public KeyFactoryKMAC256() {
            super(256, NISTObjectIdentifiers.id_KmacWithSHAKE256);
        }
    }

    public static class KeyFactorySHA3 extends BaseSecretKeyFactory {
        public KeyFactorySHA3(int i10, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
            super(b.a(i10, "HmacSHA3-"), aSN1ObjectIdentifier);
        }
    }

    public static class KeyGenerator224 extends KeyGeneratorSHA3 {
        public KeyGenerator224() {
            super(224);
        }
    }

    public static class KeyGenerator256 extends KeyGeneratorSHA3 {
        public KeyGenerator256() {
            super(256);
        }
    }

    public static class KeyGenerator384 extends KeyGeneratorSHA3 {
        public KeyGenerator384() {
            super(384);
        }
    }

    public static class KeyGenerator512 extends KeyGeneratorSHA3 {
        public KeyGenerator512() {
            super(512);
        }
    }

    public static class KeyGeneratorSHA3 extends BaseKeyGenerator {
        public KeyGeneratorSHA3(int i10) {
            super(b.a(i10, "HMACSHA3-"), i10, new CipherKeyGenerator());
        }
    }

    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = SHA3.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb2 = new StringBuilder();
            String str = PREFIX;
            a.q(str, "$Digest512", "MessageDigest.SHA3-512", z.t(str, "$Digest384", "MessageDigest.SHA3-384", z.t(str, "$Digest256", "MessageDigest.SHA3-256", z.t(str, "$Digest224", "MessageDigest.SHA3-224", sb2, configurableProvider), configurableProvider), configurableProvider), configurableProvider);
            a.s(configurableProvider, str, "$Digest224", "MessageDigest", NISTObjectIdentifiers.id_sha3_224);
            a.s(configurableProvider, str, "$Digest256", "MessageDigest", NISTObjectIdentifiers.id_sha3_256);
            a.s(configurableProvider, str, "$Digest384", "MessageDigest", NISTObjectIdentifiers.id_sha3_384);
            configurableProvider.addAlgorithm("MessageDigest", NISTObjectIdentifiers.id_sha3_512, str + "$Digest512");
            a.q(str, "$DigestShake128_256", "MessageDigest.SHAKE128-256", z.t(str, "$DigestShake256_512", "MessageDigest.SHAKE256-512", new StringBuilder(), configurableProvider), configurableProvider);
            a.s(configurableProvider, str, "$DigestShake256_512", "MessageDigest", NISTObjectIdentifiers.id_shake256);
            a.s(configurableProvider, str, "$DigestShake128_256", "MessageDigest", NISTObjectIdentifiers.id_shake128);
            addHMACAlgorithm(configurableProvider, "SHA3-224", g.b.l(str, "$HashMac224", a.h("Alg.Alias.MessageDigest.SHAKE256", "SHAKE256-512", "Alg.Alias.MessageDigest.SHAKE128", "SHAKE128-256", configurableProvider)), g.b.j(str, "$KeyGenerator224"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_hmacWithSHA3_224;
            addHMACAlias(configurableProvider, "SHA3-224", aSN1ObjectIdentifier);
            StringBuilder sbA = z.A("HMACSHA3-224", str, z.s(str, "$KeyFactory224", "SecretKeyFactory.HMACSHA3-224", "Alg.Alias.SecretKeyFactory.", configurableProvider), aSN1ObjectIdentifier, configurableProvider);
            sbA.append("$HashMac256");
            addHMACAlgorithm(configurableProvider, "SHA3-256", sbA.toString(), g.b.j(str, "$KeyGenerator256"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_hmacWithSHA3_256;
            addHMACAlias(configurableProvider, "SHA3-256", aSN1ObjectIdentifier2);
            StringBuilder sbA2 = z.A("HMACSHA3-256", str, z.s(str, "$KeyFactory256", "SecretKeyFactory.HMACSHA3-256", "Alg.Alias.SecretKeyFactory.", configurableProvider), aSN1ObjectIdentifier2, configurableProvider);
            sbA2.append("$HashMac384");
            addHMACAlgorithm(configurableProvider, "SHA3-384", sbA2.toString(), g.b.j(str, "$KeyGenerator384"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_hmacWithSHA3_384;
            addHMACAlias(configurableProvider, "SHA3-384", aSN1ObjectIdentifier3);
            StringBuilder sbA3 = z.A("HMACSHA3-384", str, z.s(str, "$KeyFactory384", "SecretKeyFactory.HMACSHA3-384", "Alg.Alias.SecretKeyFactory.", configurableProvider), aSN1ObjectIdentifier3, configurableProvider);
            sbA3.append("$HashMac512");
            addHMACAlgorithm(configurableProvider, "SHA3-512", sbA3.toString(), g.b.j(str, "$KeyGenerator512"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_hmacWithSHA3_512;
            addHMACAlias(configurableProvider, "SHA3-512", aSN1ObjectIdentifier4);
            StringBuilder sbA4 = z.A("HMACSHA3-512", str, z.s(str, "$KeyFactory512", "SecretKeyFactory.HMACSHA3-512", "Alg.Alias.SecretKeyFactory.", configurableProvider), aSN1ObjectIdentifier4, configurableProvider);
            sbA4.append("$KMac128");
            addKMACAlgorithm(configurableProvider, "128", sbA4.toString(), g.b.j(str, "$KeyGenerator256"));
            StringBuilder sbA5 = z.A("KMAC128", str, z.s(str, "$KeyFactoryKMAC128", "SecretKeyFactory.KMAC128", "Alg.Alias.SecretKeyFactory.", configurableProvider), NISTObjectIdentifiers.id_Kmac128, configurableProvider);
            sbA5.append("$KMac256");
            addKMACAlgorithm(configurableProvider, "256", sbA5.toString(), g.b.j(str, "$KeyGenerator512"));
            a.r(a.i("$DigestTupleHash256_512", "MessageDigest.TUPLEHASH256-512", str, z.A("KMAC256", str, z.s(str, "$KeyFactoryKMAC256", "SecretKeyFactory.KMAC256", "Alg.Alias.SecretKeyFactory.", configurableProvider), NISTObjectIdentifiers.id_Kmac256, configurableProvider), configurableProvider), "$DigestTupleHash128_256", configurableProvider, "MessageDigest.TUPLEHASH128-256");
            a.q(str, "$DigestParallelHash128_256", "MessageDigest.PARALLELHASH128-256", z.t(str, "$DigestParallelHash256_512", "MessageDigest.PARALLELHASH256-512", a.h("Alg.Alias.MessageDigest.TUPLEHASH256", "TUPLEHASH256-512", "Alg.Alias.MessageDigest.TUPLEHASH128", "TUPLEHASH128-256", configurableProvider), configurableProvider), configurableProvider);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.PARALLELHASH256", "PARALLELHASH256-512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.PARALLELHASH128", "PARALLELHASH128-256");
        }
    }

    private SHA3() {
    }
}
