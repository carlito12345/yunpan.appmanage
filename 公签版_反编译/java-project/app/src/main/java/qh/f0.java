package qh;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class f0 implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public final String f13283a;

    /* renamed from: b, reason: collision with root package name */
    public String f13284b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13285c;

    /* renamed from: d, reason: collision with root package name */
    public int f13286d = 0;

    public f0(String str, String str2, String str3) {
        this.f13284b = str;
        this.f13285c = str2;
        this.f13283a = str3;
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final f0 clone() {
        try {
            return (f0) super.clone();
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }

    public final boolean b(int i10) {
        return (i10 & this.f13286d) != 0;
    }

    public final boolean c() {
        return (this.f13286d & 1) != 0;
    }

    public final boolean d() {
        int i10 = this.f13286d;
        return ((i10 & 16) == 0 && (i10 & 2) == 0) ? false : true;
    }

    public final void e(int i10) {
        this.f13286d = i10 | this.f13286d | 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return Objects.equals(this.f13284b, f0Var.f13284b) && Objects.equals(this.f13283a, f0Var.f13283a) && Objects.equals(this.f13285c, f0Var.f13285c) && this.f13286d == f0Var.f13286d;
    }

    public final k3 f() {
        if (b(128)) {
            return k3.f13297c;
        }
        if (b(256)) {
            return k3.f13301e;
        }
        return null;
    }

    public final int hashCode() {
        return Objects.hash(this.f13284b, this.f13283a);
    }

    public final String toString() {
        return this.f13284b;
    }
}
