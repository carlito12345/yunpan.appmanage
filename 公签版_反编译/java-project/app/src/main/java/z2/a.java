package z2;

import j$.util.Objects;
import java.util.Arrays;
import r1.a0;

/* loaded from: classes.dex */
public final class a extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19391b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19392c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19393d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f19394e;

    public a(int i10, String str, String str2, byte[] bArr) {
        super("APIC");
        this.f19391b = str;
        this.f19392c = str2;
        this.f19393d = i10;
        this.f19394e = bArr;
    }

    @Override // z2.i, r1.c0
    public final void b(a0 a0Var) {
        a0Var.a(this.f19393d, this.f19394e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f19393d == aVar.f19393d && Objects.equals(this.f19391b, aVar.f19391b) && Objects.equals(this.f19392c, aVar.f19392c) && Arrays.equals(this.f19394e, aVar.f19394e);
    }

    public final int hashCode() {
        int i10 = (527 + this.f19393d) * 31;
        String str = this.f19391b;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f19392c;
        return Arrays.hashCode(this.f19394e) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": mimeType=" + this.f19391b + ", description=" + this.f19392c;
    }
}
