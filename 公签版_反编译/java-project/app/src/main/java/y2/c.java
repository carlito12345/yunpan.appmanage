package y2;

import java.util.Arrays;
import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class c implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f18891a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18892b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18893c;

    public c(String str, String str2, byte[] bArr) {
        this.f18891a = bArr;
        this.f18892b = str;
        this.f18893c = str2;
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final void b(a0 a0Var) {
        String str = this.f18892b;
        if (str != null) {
            a0Var.f13371a = str;
        }
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f18891a, ((c) obj).f18891a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f18891a);
    }

    public final String toString() {
        return "ICY: title=\"" + this.f18892b + "\", url=\"" + this.f18893c + "\", rawMetadata.length=\"" + this.f18891a.length + "\"";
    }
}
