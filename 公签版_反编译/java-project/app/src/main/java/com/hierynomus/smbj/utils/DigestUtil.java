package com.hierynomus.smbj.utils;

import com.hierynomus.security.MessageDigest;

/* loaded from: classes.dex */
public class DigestUtil {
    public static byte[] digest(MessageDigest messageDigest, byte[] bArr, byte[] bArr2) {
        messageDigest.reset();
        messageDigest.update(bArr);
        messageDigest.update(bArr2);
        return messageDigest.digest();
    }
}
