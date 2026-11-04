package com.burgstaller.okhttp.digest.fromhttpclient;

import g.b;
import java.util.Collection;

/* loaded from: classes.dex */
public class Args {
    public static void check(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends CharSequence> T notBlank(T t10, String str) {
        if (t10 == null) {
            throw new IllegalArgumentException(b.j(str, " may not be null"));
        }
        if (t10.toString().trim().length() != 0) {
            return t10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be blank"));
    }

    public static <T extends CharSequence> T notEmpty(T t10, String str) {
        if (t10 == null) {
            throw new IllegalArgumentException(b.j(str, " may not be null"));
        }
        if (t10.length() != 0) {
            return t10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be empty"));
    }

    public static int notNegative(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be negative"));
    }

    public static <T> T notNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be null"));
    }

    public static int positive(int i10, String str) {
        if (i10 > 0) {
            return i10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be negative or zero"));
    }

    public static void check(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static long notNegative(long j10, String str) {
        if (j10 >= 0) {
            return j10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be negative"));
    }

    public static long positive(long j10, String str) {
        if (j10 > 0) {
            return j10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be negative or zero"));
    }

    public static <E, T extends Collection<E>> T notEmpty(T t10, String str) {
        if (t10 != null) {
            if (t10.isEmpty()) {
                throw new IllegalArgumentException(b.j(str, " may not be empty"));
            }
            return t10;
        }
        throw new IllegalArgumentException(b.j(str, " may not be null"));
    }
}
