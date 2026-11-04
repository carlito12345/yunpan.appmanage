package f3;

import l2.g0;

/* loaded from: classes.dex */
public final class k implements g0 {

    /* renamed from: b, reason: collision with root package name */
    public static final k f5516b = new k(true);

    /* renamed from: c, reason: collision with root package name */
    public static final k f5517c = new k(false);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5518a;

    public k(boolean z) {
        this.f5518a = z;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("IncorrectFragmentation{expected=");
        sb2.append(!this.f5518a);
        sb2.append("}");
        return sb2.toString();
    }
}
