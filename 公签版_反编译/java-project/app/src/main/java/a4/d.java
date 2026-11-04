package a4;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f390a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f391b;

    /* renamed from: c, reason: collision with root package name */
    public final List f392c;

    /* renamed from: d, reason: collision with root package name */
    public final List f393d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
    public d(String str, boolean z, List list, List list2) {
        this.f390a = str;
        this.f391b = z;
        this.f392c = list;
        this.f393d = list2;
        if (list2.isEmpty()) {
            int size = list.size();
            list2 = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                list2.add("ASC");
            }
        }
        this.f393d = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f391b != dVar.f391b || !this.f392c.equals(dVar.f392c) || !ue.d.a(this.f393d, dVar.f393d)) {
            return false;
        }
        String str = this.f390a;
        boolean zStartsWith = str.startsWith("index_");
        String str2 = dVar.f390a;
        return zStartsWith ? str2.startsWith("index_") : str.equals(str2);
    }

    public final int hashCode() {
        String str = this.f390a;
        return this.f393d.hashCode() + ((this.f392c.hashCode() + ((((str.startsWith("index_") ? -1184239155 : str.hashCode()) * 31) + (this.f391b ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "Index{name='" + this.f390a + "', unique=" + this.f391b + ", columns=" + this.f392c + ", orders=" + this.f393d + "'}";
    }
}
