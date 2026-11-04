package com.hierynomus.protocol.commons;

import g.b;

/* loaded from: classes.dex */
public class ByteArrayUtils {
    static final char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static boolean equals(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        if (bArr.length < i10 + i12 || bArr2.length < i11 + i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (bArr[i10 + i13] != bArr2[i11 + i13]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] parseHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Hex string is null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(b.A("Hex string '", str, "' should have even length."));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((parseHexDigit(str.charAt(i11)) << 4) + parseHexDigit(str.charAt(i11 + 1)));
        }
        return bArr;
    }

    private static int parseHexDigit(char c7) {
        if (c7 >= '0' && c7 <= '9') {
            return c7 - '0';
        }
        if (c7 >= 'a' && c7 <= 'f') {
            return c7 - 'W';
        }
        if (c7 >= 'A' && c7 <= 'F') {
            return c7 - '7';
        }
        throw new IllegalArgumentException("Digit '" + c7 + "' out of bounds [0-9a-fA-F]");
    }

    public static String printHex(byte[] bArr) {
        return printHex(bArr, 0, bArr.length);
    }

    public static String toHex(byte[] bArr) {
        return toHex(bArr, 0, bArr.length);
    }

    public static String printHex(byte[] bArr, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            byte b10 = bArr[i10 + i12];
            if (sb2.length() > 0) {
                sb2.append(' ');
            }
            char[] cArr = digits;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }

    public static String toHex(byte[] bArr, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            byte b10 = bArr[i10 + i12];
            char[] cArr = digits;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
