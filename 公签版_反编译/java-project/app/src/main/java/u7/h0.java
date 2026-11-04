package u7;

/* loaded from: classes.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15473a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15474b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f15475c;

    public h0(Object obj, Object obj2, Object obj3) {
        this.f15473a = obj;
        this.f15474b = obj2;
        this.f15475c = obj3;
    }

    public final IllegalArgumentException a() {
        StringBuilder sb2 = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f15473a;
        sb2.append(obj);
        sb2.append("=");
        sb2.append(this.f15474b);
        sb2.append(" and ");
        sb2.append(obj);
        sb2.append("=");
        sb2.append(this.f15475c);
        return new IllegalArgumentException(sb2.toString());
    }
}
