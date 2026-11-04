package com.hierynomus.security.bc;

import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.security.Cipher;
import com.hierynomus.security.SecurityException;
import da.b;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.engines.DESEngine;
import org.bouncycastle.crypto.engines.RC4Engine;
import org.bouncycastle.crypto.params.DESedeParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes.dex */
public class BCCipherFactory {
    private static final Map<String, Factory<Cipher>> lookup;

    public static abstract class BCBlockCipher implements Cipher {
        private BufferedBlockCipher wrappedCipher;

        public BCBlockCipher(BufferedBlockCipher bufferedBlockCipher) {
            this.wrappedCipher = bufferedBlockCipher;
        }

        public abstract CipherParameters createParams(byte[] bArr);

        @Override // com.hierynomus.security.Cipher
        public int doFinal(byte[] bArr, int i10) throws SecurityException {
            try {
                return this.wrappedCipher.doFinal(bArr, i10);
            } catch (InvalidCipherTextException e7) {
                throw new SecurityException(e7);
            }
        }

        @Override // com.hierynomus.security.Cipher
        public void init(Cipher.CryptMode cryptMode, byte[] bArr) {
            this.wrappedCipher.init(cryptMode == Cipher.CryptMode.ENCRYPT, createParams(bArr));
        }

        @Override // com.hierynomus.security.Cipher
        public void reset() {
            this.wrappedCipher.reset();
        }

        @Override // com.hierynomus.security.Cipher
        public int update(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
            return this.wrappedCipher.processBytes(bArr, i10, i11, bArr2, i12);
        }
    }

    public static abstract class BCStreamCipher implements Cipher {
        private StreamCipher streamCipher;

        public BCStreamCipher(StreamCipher streamCipher) {
            this.streamCipher = streamCipher;
        }

        public abstract CipherParameters createParams(byte[] bArr);

        @Override // com.hierynomus.security.Cipher
        public int doFinal(byte[] bArr, int i10) {
            this.streamCipher.reset();
            return 0;
        }

        @Override // com.hierynomus.security.Cipher
        public void init(Cipher.CryptMode cryptMode, byte[] bArr) {
            this.streamCipher.init(cryptMode == Cipher.CryptMode.ENCRYPT, createParams(bArr));
        }

        @Override // com.hierynomus.security.Cipher
        public void reset() {
            this.streamCipher.reset();
        }

        @Override // com.hierynomus.security.Cipher
        public int update(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
            return this.streamCipher.processBytes(bArr, i10, i11, bArr2, i12);
        }
    }

    static {
        HashMap map = new HashMap();
        lookup = map;
        map.put("DES/ECB/NoPadding", new Factory<Cipher>() { // from class: com.hierynomus.security.bc.BCCipherFactory.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.hierynomus.protocol.commons.Factory
            public Cipher create() {
                return new BCBlockCipher(new BufferedBlockCipher(new DESEngine())) { // from class: com.hierynomus.security.bc.BCCipherFactory.1.1
                    @Override // com.hierynomus.security.bc.BCCipherFactory.BCBlockCipher
                    public CipherParameters createParams(byte[] bArr) {
                        return new DESedeParameters(bArr);
                    }
                };
            }
        });
        map.put("RC4", new Factory<Cipher>() { // from class: com.hierynomus.security.bc.BCCipherFactory.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.hierynomus.protocol.commons.Factory
            public Cipher create() {
                return new BCStreamCipher(new RC4Engine()) { // from class: com.hierynomus.security.bc.BCCipherFactory.2.1
                    @Override // com.hierynomus.security.bc.BCCipherFactory.BCStreamCipher
                    public CipherParameters createParams(byte[] bArr) {
                        return new KeyParameter(bArr);
                    }
                };
            }
        });
    }

    public static Cipher create(String str) {
        Factory<Cipher> factory = lookup.get(str);
        if (factory != null) {
            return factory.create();
        }
        throw new IllegalArgumentException(b.c("Unknown Cipher ", str));
    }
}
