package com.bumptech.glide;

import a6.q;

/* loaded from: classes.dex */
public final class a implements Cloneable {
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final a clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }

    public final boolean b(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        Object obj2 = y5.b.f18968a;
        ((a) obj).getClass();
        char[] cArr = q.f446a;
        return obj2.equals(obj2);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b(obj);
    }

    public final int hashCode() {
        return y5.b.f18968a.hashCode();
    }
}
