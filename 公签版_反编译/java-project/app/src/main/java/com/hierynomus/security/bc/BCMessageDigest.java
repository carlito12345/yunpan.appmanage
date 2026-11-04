package com.hierynomus.security.bc;

import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.security.MessageDigest;
import g.b;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD4Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;

/* loaded from: classes.dex */
public class BCMessageDigest implements MessageDigest {
    private static Map<String, Factory<Digest>> lookup;
    private final Digest digest;

    static {
        HashMap map = new HashMap();
        lookup = map;
        map.put("SHA-512", new Factory<Digest>() { // from class: com.hierynomus.security.bc.BCMessageDigest.1
            @Override // com.hierynomus.protocol.commons.Factory
            public Digest create() {
                return new SHA512Digest();
            }
        });
        lookup.put("SHA256", new Factory<Digest>() { // from class: com.hierynomus.security.bc.BCMessageDigest.2
            @Override // com.hierynomus.protocol.commons.Factory
            public Digest create() {
                return new SHA256Digest();
            }
        });
        lookup.put("MD4", new Factory<Digest>() { // from class: com.hierynomus.security.bc.BCMessageDigest.3
            @Override // com.hierynomus.protocol.commons.Factory
            public Digest create() {
                return new MD4Digest();
            }
        });
        lookup.put("MD5", new Factory<Digest>() { // from class: com.hierynomus.security.bc.BCMessageDigest.4
            @Override // com.hierynomus.protocol.commons.Factory
            public Digest create() {
                return new MD5Digest();
            }
        });
    }

    public BCMessageDigest(String str) {
        this.digest = getDigest(str);
    }

    private Digest getDigest(String str) {
        Factory<Digest> factory = lookup.get(str);
        if (factory != null) {
            return factory.create();
        }
        throw new IllegalArgumentException(b.A("No MessageDigest ", str, " defined in BouncyCastle"));
    }

    @Override // com.hierynomus.security.MessageDigest
    public byte[] digest() {
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // com.hierynomus.security.MessageDigest
    public int getDigestLength() {
        return this.digest.getDigestSize();
    }

    @Override // com.hierynomus.security.MessageDigest
    public void reset() {
        this.digest.reset();
    }

    @Override // com.hierynomus.security.MessageDigest
    public void update(byte b10) {
        this.digest.update(b10);
    }

    @Override // com.hierynomus.security.MessageDigest
    public void update(byte[] bArr) {
        this.digest.update(bArr, 0, bArr.length);
    }

    @Override // com.hierynomus.security.MessageDigest
    public void update(byte[] bArr, int i10, int i11) {
        this.digest.update(bArr, i10, i11);
    }
}
