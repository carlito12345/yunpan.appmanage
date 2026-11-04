package com.hierynomus.security.bc;

import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.security.AEADBlockCipher;
import com.hierynomus.security.Cipher;
import com.hierynomus.security.SecurityException;
import da.b;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.GCMParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.CCMBlockCipher;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes.dex */
public class BCAEADCipherFactory {
    private static final Map<String, Factory<AEADBlockCipher>> lookup;

    public static abstract class BCAEADBlockCipher implements AEADBlockCipher {
        private org.bouncycastle.crypto.modes.AEADBlockCipher wrappedCipher;

        public BCAEADBlockCipher(org.bouncycastle.crypto.modes.AEADBlockCipher aEADBlockCipher) {
            this.wrappedCipher = aEADBlockCipher;
        }

        public abstract CipherParameters createParams(byte[] bArr, GCMParameterSpec gCMParameterSpec);

        @Override // com.hierynomus.security.AEADBlockCipher
        public byte[] doFinal(byte[] bArr, int i10, int i11) throws SecurityException {
            byte[] bArr2 = new byte[this.wrappedCipher.getOutputSize(i11)];
            try {
                this.wrappedCipher.doFinal(bArr2, this.wrappedCipher.processBytes(bArr, i10, i11, bArr2, 0));
                return bArr2;
            } catch (InvalidCipherTextException e7) {
                throw new SecurityException(e7);
            }
        }

        @Override // com.hierynomus.security.AEADBlockCipher
        public void init(Cipher.CryptMode cryptMode, byte[] bArr, GCMParameterSpec gCMParameterSpec) {
            this.wrappedCipher.init(cryptMode == Cipher.CryptMode.ENCRYPT, createParams(bArr, gCMParameterSpec));
        }

        @Override // com.hierynomus.security.AEADBlockCipher
        public void reset() {
            this.wrappedCipher.reset();
        }

        @Override // com.hierynomus.security.AEADBlockCipher
        public byte[] update(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[this.wrappedCipher.getUpdateOutputSize(i11)];
            this.wrappedCipher.processBytes(bArr, i10, i11, bArr2, 0);
            return bArr2;
        }

        @Override // com.hierynomus.security.AEADBlockCipher
        public void updateAAD(byte[] bArr, int i10, int i11) {
            this.wrappedCipher.processAADBytes(bArr, i10, i11);
        }
    }

    static {
        HashMap map = new HashMap();
        lookup = map;
        map.put("AES/CCM/NoPadding", new Factory<AEADBlockCipher>() { // from class: com.hierynomus.security.bc.BCAEADCipherFactory.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.hierynomus.protocol.commons.Factory
            public AEADBlockCipher create() {
                return new BCAEADBlockCipher(new CCMBlockCipher(new AESEngine())) { // from class: com.hierynomus.security.bc.BCAEADCipherFactory.1.1
                    @Override // com.hierynomus.security.bc.BCAEADCipherFactory.BCAEADBlockCipher
                    public CipherParameters createParams(byte[] bArr, GCMParameterSpec gCMParameterSpec) {
                        return new AEADParameters(new KeyParameter(bArr), gCMParameterSpec.getTLen(), gCMParameterSpec.getIV());
                    }
                };
            }
        });
        map.put("AES/GCM/NoPadding", new Factory<AEADBlockCipher>() { // from class: com.hierynomus.security.bc.BCAEADCipherFactory.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.hierynomus.protocol.commons.Factory
            public AEADBlockCipher create() {
                return new BCAEADBlockCipher(new GCMBlockCipher(new AESEngine())) { // from class: com.hierynomus.security.bc.BCAEADCipherFactory.2.1
                    @Override // com.hierynomus.security.bc.BCAEADCipherFactory.BCAEADBlockCipher
                    public CipherParameters createParams(byte[] bArr, GCMParameterSpec gCMParameterSpec) {
                        return new AEADParameters(new KeyParameter(bArr), gCMParameterSpec.getTLen(), gCMParameterSpec.getIV());
                    }
                };
            }
        });
    }

    public static AEADBlockCipher create(String str) {
        Factory<AEADBlockCipher> factory = lookup.get(str);
        if (factory != null) {
            return factory.create();
        }
        throw new IllegalArgumentException(b.c("Unknown AEADCipher ", str));
    }
}
