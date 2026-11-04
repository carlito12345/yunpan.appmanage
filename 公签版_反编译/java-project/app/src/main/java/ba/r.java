package ba;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public int f2739a;

    /* renamed from: b, reason: collision with root package name */
    public String f2740b;

    /* renamed from: c, reason: collision with root package name */
    public String f2741c;

    /* renamed from: d, reason: collision with root package name */
    public String f2742d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2743e;

    /* renamed from: f, reason: collision with root package name */
    public String f2744f;

    /* renamed from: g, reason: collision with root package name */
    public String f2745g;

    /* renamed from: h, reason: collision with root package name */
    public String f2746h;

    /* renamed from: i, reason: collision with root package name */
    public String f2747i;

    /* renamed from: j, reason: collision with root package name */
    public final String f2748j;

    /* renamed from: k, reason: collision with root package name */
    public String f2749k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public String f2750m;

    /* renamed from: n, reason: collision with root package name */
    public int f2751n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f2752o;

    public r(String str, String str2, String str3) {
        this.f2746h = "";
        this.f2747i = "";
        this.l = "";
        this.f2751n = 1;
        this.f2752o = false;
        this.f2748j = str;
        this.f2741c = str2;
        this.f2742d = str3;
        a();
    }

    public final void a() {
        int iIndexOf = this.f2741c.indexOf("/", 10);
        if (iIndexOf == -1) {
            this.f2740b = this.f2741c;
        } else {
            this.f2740b = this.f2741c.substring(0, iIndexOf);
        }
    }

    public r(String str, String str2, String str3, int i10) {
        this.f2746h = "";
        this.l = "";
        this.f2751n = 1;
        this.f2752o = false;
        this.f2748j = "单文件解析";
        this.f2741c = str;
        this.f2742d = str2;
        this.f2747i = str3;
        a();
    }
}
