package com.hierynomus.security.bc;

import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.security.Mac;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.macs.CMac;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes.dex */
public class BCMac implements Mac {
    private static Map<String, Factory<org.bouncycastle.crypto.Mac>> lookup;
    private final org.bouncycastle.crypto.Mac mac;

    static {
        HashMap map = new HashMap();
        lookup = map;
        map.put("HMACSHA256", new Factory<org.bouncycastle.crypto.Mac>() { // from class: com.hierynomus.security.bc.BCMac.1
            @Override // com.hierynomus.protocol.commons.Factory
            public org.bouncycastle.crypto.Mac create() {
                return new HMac(new SHA256Digest());
            }
        });
        lookup.put("HMACMD5", new Factory<org.bouncycastle.crypto.Mac>() { // from class: com.hierynomus.security.bc.BCMac.2
            @Override // com.hierynomus.protocol.commons.Factory
            public org.bouncycastle.crypto.Mac create() {
                return new HMac(new MD5Digest());
            }
        });
        lookup.put("AESCMAC", new Factory<org.bouncycastle.crypto.Mac>() { // from class: com.hierynomus.security.bc.BCMac.3
            @Override // com.hierynomus.protocol.commons.Factory
            public org.bouncycastle.crypto.Mac create() {
                return new CMac(new AESEngine());
            }
        });
    }

    public BCMac(String str) {
        this.mac = getMacFactory(str).create();
    }

    private Factory<org.bouncycastle.crypto.Mac> getMacFactory(String str) {
        Factory<org.bouncycastle.crypto.Mac> factory = lookup.get(str.toUpperCase());
        if (factory != null) {
            return factory;
        }
        throw new IllegalArgumentException("No Mac defined for ".concat(str));
    }

    @Override // com.hierynomus.security.Mac
    public byte[] doFinal() {
        byte[] bArr = new byte[this.mac.getMacSize()];
        this.mac.doFinal(bArr, 0);
        return bArr;
    }

    @Override // com.hierynomus.security.Mac
    public void init(byte[] bArr) {
        this.mac.init(new KeyParameter(bArr));
    }

    @Override // com.hierynomus.security.Mac
    public void reset() {
        this.mac.reset();
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte b10) {
        this.mac.update(b10);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte[] bArr) {
        this.mac.update(bArr, 0, bArr.length);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte[] bArr, int i10, int i11) {
        this.mac.update(bArr, i10, i11);
    }
}
