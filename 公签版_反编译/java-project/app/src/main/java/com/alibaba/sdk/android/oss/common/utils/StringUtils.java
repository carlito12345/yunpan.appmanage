package com.alibaba.sdk.android.oss.common.utils;

import android.support.v4.media.session.a;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class StringUtils {
    public static final Charset UTF8 = Charset.forName("utf-8");

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public static String join(String str, String... strArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            sb2.append(strArr[i10]);
            if (i10 < strArr.length - 1) {
                sb2.append(str);
            }
        }
        return sb2.toString();
    }

    public static String replaceEach(String str, String[] strArr, String[] strArr2) {
        String str2;
        String str3;
        int length;
        int length2 = strArr.length;
        int length3 = strArr2.length;
        if (isNullOrEmpty(str) || (length2 == 0 && length3 == 0)) {
            return str;
        }
        if (length2 != length3) {
            throw new IllegalArgumentException(a.o("Search and Replace array lengths don't match: ", length2, length3, " vs "));
        }
        boolean[] zArr = new boolean[length2];
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < length2; i12++) {
            if (!zArr[i12] && !isNullOrEmpty(strArr[i12]) && strArr2[i12] != null) {
                int iIndexOf = str.indexOf(strArr[i12]);
                if (iIndexOf == -1) {
                    zArr[i12] = true;
                } else if (i10 == -1 || iIndexOf < i10) {
                    i11 = i12;
                    i10 = iIndexOf;
                }
            }
        }
        if (i10 == -1) {
            return str;
        }
        int i13 = 0;
        for (int i14 = 0; i14 < strArr.length; i14++) {
            if (strArr[i14] != null && (str3 = strArr2[i14]) != null && (length = str3.length() - strArr[i14].length()) > 0) {
                i13 += length * 3;
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length() + Math.min(i13, str.length() / 5));
        int length4 = 0;
        while (i10 != -1) {
            while (length4 < i10) {
                sb2.append(str.charAt(length4));
                length4++;
            }
            sb2.append(strArr2[i11]);
            length4 = strArr[i11].length() + i10;
            i10 = -1;
            i11 = -1;
            for (int i15 = 0; i15 < length2; i15++) {
                if (!zArr[i15] && (str2 = strArr[i15]) != null && !str2.isEmpty() && strArr2[i15] != null) {
                    int iIndexOf2 = str.indexOf(strArr[i15], length4);
                    if (iIndexOf2 == -1) {
                        zArr[i15] = true;
                    } else if (i10 == -1 || iIndexOf2 < i10) {
                        i11 = i15;
                        i10 = iIndexOf2;
                    }
                }
            }
        }
        int length5 = str.length();
        while (length4 < length5) {
            sb2.append(str.charAt(length4));
            length4++;
        }
        return sb2.toString();
    }

    public static String trim(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String join(String str, Collection<String> collection) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            sb2.append(it.next());
            if (i10 < collection.size() - 1) {
                sb2.append(str);
            }
            i10++;
        }
        return sb2.toString();
    }
}
