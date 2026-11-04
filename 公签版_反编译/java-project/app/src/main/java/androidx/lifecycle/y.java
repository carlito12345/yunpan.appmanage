package androidx.lifecycle;

/* loaded from: classes.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.fragment.app.y f1827a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1828b;

    /* renamed from: c, reason: collision with root package name */
    public int f1829c = -1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ z f1830d;

    public y(z zVar, androidx.fragment.app.y yVar) {
        this.f1830d = zVar;
        this.f1827a = yVar;
    }

    public final void c(boolean z) {
        if (z == this.f1828b) {
            return;
        }
        this.f1828b = z;
        int i10 = z ? 1 : -1;
        z zVar = this.f1830d;
        int i11 = zVar.f1834c;
        zVar.f1834c = i10 + i11;
        if (!zVar.f1835d) {
            zVar.f1835d = true;
            while (true) {
                try {
                    int i12 = zVar.f1834c;
                    if (i11 == i12) {
                        break;
                    } else {
                        i11 = i12;
                    }
                } finally {
                    zVar.f1835d = false;
                }
            }
        }
        if (this.f1828b) {
            zVar.c(this);
        }
    }

    public void d() {
    }

    public abstract boolean e();
}
