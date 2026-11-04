package x4;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: a, reason: collision with root package name */
    public final b f18116a;

    public c(b bVar) {
        if (bVar.f2570a) {
            throw new b5.g("mutable instance");
        }
        this.f18116a = bVar;
    }

    @Override // b5.h
    public final String a() {
        return this.f18116a.f("{", "}", true);
    }

    @Override // x4.a
    public final int c(a aVar) {
        return this.f18116a.compareTo(((c) aVar).f18116a);
    }

    @Override // x4.a
    public final String d() {
        return "array";
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        return this.f18116a.equals(((c) obj).f18116a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f18116a.f2559b);
    }

    public final String toString() {
        return this.f18116a.f("array{", "}", false);
    }
}
