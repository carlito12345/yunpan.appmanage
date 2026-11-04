package com.hierynomus.protocol.commons;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Objects {
    private Objects() {
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hash(Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
