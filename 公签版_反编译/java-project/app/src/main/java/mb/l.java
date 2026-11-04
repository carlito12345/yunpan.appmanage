package mb;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: e, reason: collision with root package name */
    public static final l[] f11087e = new l[8];

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f11088a;

    /* renamed from: b, reason: collision with root package name */
    public int f11089b;

    /* renamed from: c, reason: collision with root package name */
    public int f11090c;

    /* renamed from: d, reason: collision with root package name */
    public int f11091d;

    public final int a() {
        char cCharAt;
        int i10 = this.f11090c;
        this.f11089b = i10;
        if (i10 == this.f11091d) {
            return 2;
        }
        char cCharAt2 = this.f11088a.charAt(i10);
        if (cCharAt2 == '\n') {
            this.f11090c = this.f11089b + 1;
            return 1;
        }
        if (cCharAt2 == '\r') {
            int i11 = this.f11089b;
            if (i11 + 1 >= this.f11091d || this.f11088a.charAt(i11 + 1) != '\n') {
                this.f11090c = this.f11089b + 1;
            } else {
                this.f11090c = this.f11089b + 2;
            }
            return 1;
        }
        this.f11090c = this.f11089b + 1;
        while (true) {
            int i12 = this.f11090c;
            if (i12 >= this.f11091d || (cCharAt = this.f11088a.charAt(i12)) == '\n' || cCharAt == '\r') {
                return 0;
            }
            this.f11090c++;
        }
    }

    public final void b() {
        synchronized (l.class) {
            int i10 = 0;
            while (true) {
                try {
                    l[] lVarArr = f11087e;
                    if (i10 >= 8) {
                        break;
                    }
                    if (lVarArr[i10] == null) {
                        lVarArr[i10] = this;
                        this.f11088a = null;
                        this.f11089b = 0;
                        this.f11091d = 0;
                        break;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
