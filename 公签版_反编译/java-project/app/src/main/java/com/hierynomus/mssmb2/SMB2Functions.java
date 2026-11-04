package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.Charsets;

/* loaded from: classes.dex */
public class SMB2Functions {
    private static final byte[] EMPTY_BYTES = new byte[0];

    public static byte[] unicode(String str) {
        return str == null ? EMPTY_BYTES : str.getBytes(Charsets.UTF_16LE);
    }
}
