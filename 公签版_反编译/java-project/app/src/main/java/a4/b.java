package a4;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f381a;

    /* renamed from: b, reason: collision with root package name */
    public final String f382b;

    /* renamed from: c, reason: collision with root package name */
    public final String f383c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f384d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f385e;

    public b(String str, String str2, String str3, ArrayList arrayList, ArrayList arrayList2) {
        this.f381a = str;
        this.f382b = str2;
        this.f383c = str3;
        this.f384d = arrayList;
        this.f385e = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f381a.equals(bVar.f381a) && this.f382b.equals(bVar.f382b) && this.f383c.equals(bVar.f383c) && this.f384d.equals(bVar.f384d)) {
            return this.f385e.equals(bVar.f385e);
        }
        return false;
    }

    public final int hashCode() {
        return this.f385e.hashCode() + ((this.f384d.hashCode() + org.bouncycastle.jcajce.provider.digest.a.c(org.bouncycastle.jcajce.provider.digest.a.c(this.f381a.hashCode() * 31, 31, this.f382b), 31, this.f383c)) * 31);
    }

    public final String toString() {
        return "ForeignKey{referenceTable='" + this.f381a + "', onDelete='" + this.f382b + " +', onUpdate='" + this.f383c + "', columnNames=" + this.f384d + ", referenceColumnNames=" + this.f385e + '}';
    }
}
