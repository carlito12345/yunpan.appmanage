package lf;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final short f10714a;

    /* renamed from: b, reason: collision with root package name */
    public final short f10715b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10716c;

    public a(int i10, int i11, long j10) {
        this.f10714a = (short) i10;
        this.f10715b = (short) i11;
        this.f10716c = com.bumptech.glide.c.r(j10);
    }

    public final int a() {
        return this.f10716c - this.f10715b;
    }
}
