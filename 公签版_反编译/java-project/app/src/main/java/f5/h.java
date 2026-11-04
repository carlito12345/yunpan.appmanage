package f5;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: e, reason: collision with root package name */
    public static final m7.e f5619e = new m7.e(22);

    /* renamed from: a, reason: collision with root package name */
    public final Object f5620a;

    /* renamed from: b, reason: collision with root package name */
    public final g f5621b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5622c;

    /* renamed from: d, reason: collision with root package name */
    public volatile byte[] f5623d;

    public h(String str, Object obj, g gVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f5622c = str;
        this.f5620a = obj;
        this.f5621b = gVar;
    }

    public static h a(Object obj, String str) {
        return new h(str, obj, f5619e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f5622c.equals(((h) obj).f5622c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5622c.hashCode();
    }

    public final String toString() {
        return g.b.l(this.f5622c, "'}", new StringBuilder("Option{key='"));
    }
}
