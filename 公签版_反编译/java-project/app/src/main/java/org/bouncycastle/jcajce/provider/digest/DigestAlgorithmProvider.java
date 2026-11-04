package org.bouncycastle.jcajce.provider.digest;

import da.b;
import l2.z;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: classes3.dex */
abstract class DigestAlgorithmProvider extends AlgorithmProvider {
    public void addHMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String strC = b.c("HMAC", str);
        configurableProvider.addAlgorithm("Mac." + strC, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC-" + str, strC);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC/" + str, strC);
        configurableProvider.addAlgorithm("KeyGenerator." + strC, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC-" + str, strC);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC/" + str, strC);
    }

    public void addHMACAlias(ConfigurableProvider configurableProvider, String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String strC = b.c("HMAC", str);
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + aSN1ObjectIdentifier, strC);
        z.y(new StringBuilder("Alg.Alias.KeyGenerator."), aSN1ObjectIdentifier, configurableProvider, strC);
    }

    public void addKMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String strC = b.c("KMAC", str);
        configurableProvider.addAlgorithm("Mac." + strC, str2);
        configurableProvider.addAlgorithm("KeyGenerator." + strC, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.KMAC" + str, strC);
    }
}
