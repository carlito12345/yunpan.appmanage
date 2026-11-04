package com.hierynomus.ntlm.messages;

import com.hierynomus.ntlm.functions.NtlmFunctions;
import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
class Utils {
    public static byte[] EMPTY = new byte[0];

    private Utils() {
    }

    public static byte[] ensureNotNull(byte[] bArr) {
        return bArr != null ? bArr : EMPTY;
    }

    public static int writeOffsettedByteArrayFields(Buffer.PlainBuffer plainBuffer, byte[] bArr, int i10) {
        if (bArr == null) {
            bArr = EMPTY;
        }
        plainBuffer.putUInt16(bArr.length);
        plainBuffer.putUInt16(bArr.length);
        plainBuffer.putUInt32(i10);
        return i10 + bArr.length;
    }

    public static byte[] ensureNotNull(String str) {
        return str != null ? NtlmFunctions.unicode(str) : EMPTY;
    }
}
