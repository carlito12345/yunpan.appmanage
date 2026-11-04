package r3;

import android.text.Layout;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f13697c;

    /* renamed from: a, reason: collision with root package name */
    public long f13695a = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f13696b = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f13698d = 2;

    /* renamed from: e, reason: collision with root package name */
    public float f13699e = -3.4028235E38f;

    /* renamed from: f, reason: collision with root package name */
    public int f13700f = 1;

    /* renamed from: g, reason: collision with root package name */
    public int f13701g = 0;

    /* renamed from: h, reason: collision with root package name */
    public float f13702h = -3.4028235E38f;

    /* renamed from: i, reason: collision with root package name */
    public int f13703i = Integer.MIN_VALUE;

    /* renamed from: j, reason: collision with root package name */
    public float f13704j = 1.0f;

    /* renamed from: k, reason: collision with root package name */
    public int f13705k = Integer.MIN_VALUE;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final t1.a a() {
        Layout.Alignment alignment;
        float f10 = this.f13702h;
        float f11 = -3.4028235E38f;
        if (f10 == -3.4028235E38f) {
            int i10 = this.f13698d;
            f10 = i10 != 4 ? i10 != 5 ? 0.5f : 1.0f : 0.0f;
        }
        int i11 = this.f13703i;
        if (i11 == Integer.MIN_VALUE) {
            int i12 = this.f13698d;
            if (i12 == 1) {
                i11 = 0;
            } else if (i12 == 3) {
                i11 = 2;
            } else if (i12 != 4) {
                if (i12 != 5) {
                    i11 = 1;
                }
            }
        }
        t1.a aVar = new t1.a();
        int i13 = this.f13698d;
        if (i13 == 1) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else if (i13 == 2) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        } else if (i13 == 3) {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        } else if (i13 != 4) {
            if (i13 != 5) {
                org.bouncycastle.jcajce.provider.digest.a.o(i13, "Unknown textAlignment: ");
                alignment = null;
            }
        }
        aVar.f14643c = alignment;
        float f12 = this.f13699e;
        int i14 = this.f13700f;
        if (f12 == -3.4028235E38f || i14 != 0 || (f12 >= 0.0f && f12 <= 1.0f)) {
            if (f12 != -3.4028235E38f) {
                f11 = f12;
            } else if (i14 == 0) {
                f11 = 1.0f;
            }
        }
        aVar.f14645e = f11;
        aVar.f14646f = i14;
        aVar.f14647g = this.f13701g;
        aVar.f14648h = f10;
        aVar.f14649i = i11;
        float f13 = this.f13704j;
        if (i11 == 0) {
            f10 = 1.0f - f10;
        } else if (i11 == 1) {
            f10 = f10 <= 0.5f ? f10 * 2.0f : (1.0f - f10) * 2.0f;
        } else if (i11 != 2) {
            throw new IllegalStateException(String.valueOf(i11));
        }
        aVar.l = Math.min(f13, f10);
        aVar.f14655p = this.f13705k;
        CharSequence charSequence = this.f13697c;
        if (charSequence != null) {
            aVar.f14641a = charSequence;
            aVar.f14642b = null;
        }
        return aVar;
    }
}
