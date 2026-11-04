package com.hierynomus.security.jce;

import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.security.DerivationFunction;
import com.hierynomus.security.jce.derivationfunction.KDFCounterHMacSHA256;
import da.b;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class JceDerivationFunctionFactory {
    private static final Map<String, Factory<DerivationFunction>> lookup;

    static {
        HashMap map = new HashMap();
        lookup = map;
        map.put("KDF/Counter/HMACSHA256", new Factory<DerivationFunction>() { // from class: com.hierynomus.security.jce.JceDerivationFunctionFactory.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.hierynomus.protocol.commons.Factory
            public DerivationFunction create() {
                try {
                    return new KDFCounterHMacSHA256();
                } catch (NoSuchAlgorithmException unused) {
                    return null;
                }
            }
        });
    }

    public static DerivationFunction create(String str) {
        Factory<DerivationFunction> factory = lookup.get(str);
        if (factory == null) {
            throw new IllegalArgumentException(b.c("Unknown DerivationFunction ", str));
        }
        DerivationFunction derivationFunctionCreate = factory.create();
        if (derivationFunctionCreate != null) {
            return derivationFunctionCreate;
        }
        throw new IllegalArgumentException(g.b.A("DerivationFunction ", str, " not supported!"));
    }
}
