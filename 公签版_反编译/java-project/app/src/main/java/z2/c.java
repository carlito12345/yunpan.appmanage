package z2;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19396b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19397c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19398d;

    /* renamed from: e, reason: collision with root package name */
    public final long f19399e;

    /* renamed from: f, reason: collision with root package name */
    public final long f19400f;

    /* renamed from: g, reason: collision with root package name */
    public final i[] f19401g;

    public c(String str, int i10, int i11, long j10, long j11, i[] iVarArr) {
        super("CHAP");
        this.f19396b = str;
        this.f19397c = i10;
        this.f19398d = i11;
        this.f19399e = j10;
        this.f19400f = j11;
        this.f19401g = iVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f19397c == cVar.f19397c && this.f19398d == cVar.f19398d && this.f19399e == cVar.f19399e && this.f19400f == cVar.f19400f && Objects.equals(this.f19396b, cVar.f19396b) && Arrays.equals(this.f19401g, cVar.f19401g);
    }

    public final int hashCode() {
        int i10 = (((((((527 + this.f19397c) * 31) + this.f19398d) * 31) + ((int) this.f19399e)) * 31) + ((int) this.f19400f)) * 31;
        String str = this.f19396b;
        return i10 + (str != null ? str.hashCode() : 0);
    }
}
