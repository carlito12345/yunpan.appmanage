package ag;

import java.util.List;

/* loaded from: classes.dex */
public abstract class b extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public int f649c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f650d;

    /* renamed from: e, reason: collision with root package name */
    public int f651e;

    /* renamed from: f, reason: collision with root package name */
    public long f652f;

    /* renamed from: g, reason: collision with root package name */
    public long f653g;

    /* renamed from: h, reason: collision with root package name */
    public long f654h;

    /* renamed from: i, reason: collision with root package name */
    public long f655i;

    /* renamed from: j, reason: collision with root package name */
    public int f656j;

    /* renamed from: k, reason: collision with root package name */
    public String f657k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public int f658m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f659n;

    /* renamed from: p, reason: collision with root package name */
    public k f660p;

    /* renamed from: q, reason: collision with root package name */
    public a f661q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public List f662s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f663t;

    public b() {
        super(2, false);
        this.f653g = 0L;
        this.f654h = 0L;
        this.f655i = 0L;
        this.f658m = 1;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            return this.f657k.equals(((b) obj).f657k);
        }
        return false;
    }
}
