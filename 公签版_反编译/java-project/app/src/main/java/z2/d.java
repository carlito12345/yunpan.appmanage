package z2;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class d extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19402b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19403c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19404d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f19405e;

    /* renamed from: f, reason: collision with root package name */
    public final i[] f19406f;

    public d(String str, boolean z, boolean z4, String[] strArr, i[] iVarArr) {
        super("CTOC");
        this.f19402b = str;
        this.f19403c = z;
        this.f19404d = z4;
        this.f19405e = strArr;
        this.f19406f = iVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f19403c == dVar.f19403c && this.f19404d == dVar.f19404d && Objects.equals(this.f19402b, dVar.f19402b) && Arrays.equals(this.f19405e, dVar.f19405e) && Arrays.equals(this.f19406f, dVar.f19406f);
    }

    public final int hashCode() {
        int i10 = (((527 + (this.f19403c ? 1 : 0)) * 31) + (this.f19404d ? 1 : 0)) * 31;
        String str = this.f19402b;
        return i10 + (str != null ? str.hashCode() : 0);
    }
}
