package com.hierynomus.utils;

import com.hierynomus.protocol.commons.Charsets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Strings {
    public static boolean isNotBlank(String str) {
        return (str == null || str.trim().isEmpty()) ? false : true;
    }

    public static String join(List<String> list, char c7) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 > 0) {
                sb2.append(c7);
            }
            sb2.append(list.get(i10));
        }
        return sb2.toString();
    }

    public static byte[] nullTerminatedBytes(String str) {
        byte[] bArr = new byte[str.length() + 1];
        System.arraycopy(str.getBytes(Charsets.US_ASCII), 0, bArr, 0, str.length());
        return bArr;
    }

    public static List<String> split(String str, char c7) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            int iIndexOf = str.indexOf(c7, i10);
            if (iIndexOf == -1) {
                arrayList.add(str.substring(i10));
                return arrayList;
            }
            arrayList.add(str.substring(i10, iIndexOf));
            i10 = iIndexOf + 1;
        }
    }
}
