package a4;

/* loaded from: classes.dex */
public final class c implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f386a;

    /* renamed from: b, reason: collision with root package name */
    public final int f387b;

    /* renamed from: c, reason: collision with root package name */
    public final String f388c;

    /* renamed from: d, reason: collision with root package name */
    public final String f389d;

    public c(String str, int i10, int i11, String str2) {
        this.f386a = i10;
        this.f387b = i11;
        this.f388c = str;
        this.f389d = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c cVar = (c) obj;
        ue.d.e(cVar, "other");
        int i10 = this.f386a - cVar.f386a;
        return i10 == 0 ? this.f387b - cVar.f387b : i10;
    }
}
