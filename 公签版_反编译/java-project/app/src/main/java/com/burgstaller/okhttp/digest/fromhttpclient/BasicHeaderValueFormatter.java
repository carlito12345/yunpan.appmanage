package com.burgstaller.okhttp.digest.fromhttpclient;

import com.hierynomus.smbfs.SmbPath;

/* loaded from: classes.dex */
public class BasicHeaderValueFormatter {
    public static final BasicHeaderValueFormatter DEFAULT = new BasicHeaderValueFormatter();

    public void doFormatValue(StringBuilder sb2, String str, boolean z) {
        if (!z) {
            for (int i10 = 0; i10 < str.length() && !z; i10++) {
                z = isSeparator(str.charAt(i10));
            }
        }
        if (z) {
            sb2.append('\"');
        }
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (isUnsafe(cCharAt)) {
                sb2.append(SmbPath.SEPARATOR);
            }
            sb2.append(cCharAt);
        }
        if (z) {
            sb2.append('\"');
        }
    }

    public StringBuilder formatNameValuePair(StringBuilder sb2, NameValuePair nameValuePair, boolean z) {
        sb2.append(nameValuePair.getName());
        String value = nameValuePair.getValue();
        if (value != null) {
            sb2.append('=');
            doFormatValue(sb2, value, z);
        }
        return sb2;
    }

    public boolean isSeparator(char c7) {
        return " ;,:@()<>\\\"/[]?={}\t".indexOf(c7) >= 0;
    }

    public boolean isUnsafe(char c7) {
        return "\"\\".indexOf(c7) >= 0;
    }
}
