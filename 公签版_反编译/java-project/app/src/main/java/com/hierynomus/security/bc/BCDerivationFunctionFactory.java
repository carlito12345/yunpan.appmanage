package com.hierynomus.security.bc;

import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.security.DerivationFunction;
import com.hierynomus.security.jce.derivationfunction.CounterDerivationParameters;
import da.b;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.generators.KDFCounterBytesGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KDFCounterParameters;

/* loaded from: classes.dex */
public class BCDerivationFunctionFactory {
    private static final Map<String, Factory<DerivationFunction>> lookup;

    public static abstract class BCDerivationFunction implements DerivationFunction {
        private final org.bouncycastle.crypto.DerivationFunction function;

        public BCDerivationFunction(org.bouncycastle.crypto.DerivationFunction derivationFunction) {
            this.function = derivationFunction;
        }

        public abstract DerivationParameters createParams(com.hierynomus.security.jce.derivationfunction.DerivationParameters derivationParameters);

        @Override // com.hierynomus.security.DerivationFunction
        public int generateBytes(byte[] bArr, int i10, int i11) {
            return this.function.generateBytes(bArr, i10, i11);
        }

        @Override // com.hierynomus.security.DerivationFunction
        public void init(com.hierynomus.security.jce.derivationfunction.DerivationParameters derivationParameters) {
            this.function.init(createParams(derivationParameters));
        }
    }

    static {
        HashMap map = new HashMap();
        lookup = map;
        map.put("KDF/Counter/HMACSHA256", new Factory<DerivationFunction>() { // from class: com.hierynomus.security.bc.BCDerivationFunctionFactory.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.hierynomus.protocol.commons.Factory
            public DerivationFunction create() {
                return new BCDerivationFunction(new KDFCounterBytesGenerator(new HMac(new SHA256Digest()))) { // from class: com.hierynomus.security.bc.BCDerivationFunctionFactory.1.1
                    @Override // com.hierynomus.security.bc.BCDerivationFunctionFactory.BCDerivationFunction
                    public DerivationParameters createParams(com.hierynomus.security.jce.derivationfunction.DerivationParameters derivationParameters) {
                        if (!(derivationParameters instanceof CounterDerivationParameters)) {
                            throw new IllegalArgumentException("Parameters should be a CounterDerivationParameters");
                        }
                        CounterDerivationParameters counterDerivationParameters = (CounterDerivationParameters) derivationParameters;
                        return new KDFCounterParameters(counterDerivationParameters.getSeed(), counterDerivationParameters.getFixedCounterSuffix(), counterDerivationParameters.getCounterLength());
                    }
                };
            }
        });
    }

    public static DerivationFunction create(String str) {
        Factory<DerivationFunction> factory = lookup.get(str);
        if (factory != null) {
            return factory.create();
        }
        throw new IllegalArgumentException(b.c("Unknown DerivationFunction ", str));
    }
}
