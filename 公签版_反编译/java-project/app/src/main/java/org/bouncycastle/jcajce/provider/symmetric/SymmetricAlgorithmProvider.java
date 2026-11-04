package org.bouncycastle.jcajce.provider.symmetric;

import g.b;
import l2.z;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: classes3.dex */
abstract class SymmetricAlgorithmProvider extends AlgorithmProvider {
    public void addCMacAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-CMAC", str2);
        StringBuilder sbS = z.s(str, "-CMAC", b.A("Alg.Alias.Mac.", str, "CMAC"), "KeyGenerator.", configurableProvider);
        sbS.append(str);
        sbS.append("-CMAC");
        configurableProvider.addAlgorithm(sbS.toString(), str3);
        configurableProvider.addAlgorithm(b.A("Alg.Alias.KeyGenerator.", str, "CMAC"), str + "-CMAC");
    }

    public void addGMacAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-GMAC", str2);
        StringBuilder sbS = z.s(str, "-GMAC", b.A("Alg.Alias.Mac.", str, "GMAC"), "KeyGenerator.", configurableProvider);
        sbS.append(str);
        sbS.append("-GMAC");
        configurableProvider.addAlgorithm(sbS.toString(), str3);
        configurableProvider.addAlgorithm(b.A("Alg.Alias.KeyGenerator.", str, "GMAC"), str + "-GMAC");
    }

    public void addPoly1305Algorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac.POLY1305-" + str, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.POLY1305" + str, "POLY1305-" + str);
        configurableProvider.addAlgorithm("KeyGenerator.POLY1305-" + str, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.POLY1305" + str, "POLY1305-" + str);
    }
}
