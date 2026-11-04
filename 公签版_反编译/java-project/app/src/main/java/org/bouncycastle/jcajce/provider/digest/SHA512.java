package org.bouncycastle.jcajce.provider.digest;

import g.b;
import l2.z;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHA512tDigest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.macs.OldHMac;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.bouncycastle.pqc.crypto.sphincs.SPHINCSKeyParameters;

/* loaded from: classes3.dex */
public class SHA512 {

    public static class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new SHA512Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            Digest digest = (Digest) super.clone();
            digest.digest = new SHA512Digest((SHA512Digest) this.digest);
            return digest;
        }
    }

    public static class DigestT extends BCMessageDigest implements Cloneable {
        public DigestT(int i10) {
            super(new SHA512tDigest(i10));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            DigestT digestT = (DigestT) super.clone();
            digestT.digest = new SHA512tDigest((SHA512tDigest) this.digest);
            return digestT;
        }
    }

    public static class DigestT224 extends DigestT {
        public DigestT224() {
            super(224);
        }
    }

    public static class DigestT256 extends DigestT {
        public DigestT256() {
            super(256);
        }
    }

    public static class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new SHA512Digest()));
        }
    }

    public static class HashMacT224 extends BaseMac {
        public HashMacT224() {
            super(new HMac(new SHA512tDigest(224)));
        }
    }

    public static class HashMacT256 extends BaseMac {
        public HashMacT256() {
            super(new HMac(new SHA512tDigest(256)));
        }
    }

    public static class KeyFactory extends BaseSecretKeyFactory {
        public KeyFactory() {
            super("HmacSHA512", null);
        }
    }

    public static class KeyFactory224 extends BaseSecretKeyFactory {
        public KeyFactory224() {
            super("HmacSHA512/224", null);
        }
    }

    public static class KeyFactory256 extends BaseSecretKeyFactory {
        public KeyFactory256() {
            super("HmacSHA512/256", null);
        }
    }

    public static class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACSHA512", 512, new CipherKeyGenerator());
        }
    }

    public static class KeyGeneratorT224 extends BaseKeyGenerator {
        public KeyGeneratorT224() {
            super("HMACSHA512/224", 224, new CipherKeyGenerator());
        }
    }

    public static class KeyGeneratorT256 extends BaseKeyGenerator {
        public KeyGeneratorT256() {
            super("HMACSHA512/256", 256, new CipherKeyGenerator());
        }
    }

    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = SHA512.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb2 = new StringBuilder();
            String str = PREFIX;
            a.q(str, "$Digest", "MessageDigest.SHA-512", sb2, configurableProvider);
            a.r(z.A("SHA-512", str, z.v(configurableProvider, "Alg.Alias.MessageDigest.SHA512", "SHA-512", "Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha512, configurableProvider), "$DigestT224", configurableProvider, "MessageDigest.SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512/224", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512224", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA-512(224)", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512(224)", "SHA-512/224");
            a.r(z.A("SHA-512/224", str, new StringBuilder("Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha512_224, configurableProvider), "$DigestT256", configurableProvider, "MessageDigest.SHA-512/256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512/256", SPHINCSKeyParameters.SHA512_256);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512256", SPHINCSKeyParameters.SHA512_256);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA-512(256)", SPHINCSKeyParameters.SHA512_256);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512(256)", SPHINCSKeyParameters.SHA512_256);
            StringBuilder sbI = a.i("$HashMac", "Mac.PBEWITHHMACSHA512", str, a.i("$OldSHA512", "Mac.OLDHMACSHA512", str, z.A(SPHINCSKeyParameters.SHA512_256, str, new StringBuilder("Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha512_256, configurableProvider), configurableProvider), configurableProvider);
            sbI.append("$HashMac");
            addHMACAlgorithm(configurableProvider, "SHA512", sbI.toString(), b.j(str, "$KeyGenerator"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.id_hmacWithSHA512;
            addHMACAlias(configurableProvider, "SHA512", aSN1ObjectIdentifier);
            addHMACAlgorithm(configurableProvider, "SHA512/224", b.j(str, "$HashMacT224"), b.j(str, "$KeyGeneratorT224"));
            addHMACAlgorithm(configurableProvider, "SHA512/256", b.j(str, "$HashMacT256"), b.j(str, "$KeyGeneratorT256"));
            a.r(z.A("HMACSHA512", str, z.s(str, "$KeyFactory", "SecretKeyFactory.HMACSHA512", "Alg.Alias.SecretKeyFactory.", configurableProvider), aSN1ObjectIdentifier, configurableProvider), "$KeyFactory224", configurableProvider, "SecretKeyFactory.HMACSHA512/224");
            a.r(z.A("HMACSHA512/224", str, z.v(configurableProvider, "Alg.Alias.SecretKeyFactory.HMACSHA512(224)", "HMACSHA512/224", "Alg.Alias.SecretKeyFactory."), PKCSObjectIdentifiers.id_hmacWithSHA512_224, configurableProvider), "$KeyFactory256", configurableProvider, "SecretKeyFactory.HMACSHA512/256");
            z.y(z.v(configurableProvider, "Alg.Alias.SecretKeyFactory.HMACSHA512(256)", "HMACSHA512/256", "Alg.Alias.SecretKeyFactory."), PKCSObjectIdentifiers.id_hmacWithSHA512_256, configurableProvider, "HMACSHA512/256");
        }
    }

    public static class OldSHA512 extends BaseMac {
        public OldSHA512() {
            super(new OldHMac(new SHA512Digest()));
        }
    }

    private SHA512() {
    }
}
