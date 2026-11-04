package j3;

import a9.o;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e {
    public static final boolean[] A;
    public static final int[] B;
    public static final int[] C;
    public static final int[] D;
    public static final int[] E;

    /* renamed from: v, reason: collision with root package name */
    public static final int f9696v = c(2, 2, 2, 0);

    /* renamed from: w, reason: collision with root package name */
    public static final int f9697w;

    /* renamed from: x, reason: collision with root package name */
    public static final int[] f9698x;

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f9699y;
    public static final int[] z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9700a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final SpannableStringBuilder f9701b = new SpannableStringBuilder();

    /* renamed from: c, reason: collision with root package name */
    public boolean f9702c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9703d;

    /* renamed from: e, reason: collision with root package name */
    public int f9704e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9705f;

    /* renamed from: g, reason: collision with root package name */
    public int f9706g;

    /* renamed from: h, reason: collision with root package name */
    public int f9707h;

    /* renamed from: i, reason: collision with root package name */
    public int f9708i;

    /* renamed from: j, reason: collision with root package name */
    public int f9709j;

    /* renamed from: k, reason: collision with root package name */
    public int f9710k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f9711m;

    /* renamed from: n, reason: collision with root package name */
    public int f9712n;

    /* renamed from: o, reason: collision with root package name */
    public int f9713o;

    /* renamed from: p, reason: collision with root package name */
    public int f9714p;

    /* renamed from: q, reason: collision with root package name */
    public int f9715q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f9716s;

    /* renamed from: t, reason: collision with root package name */
    public int f9717t;

    /* renamed from: u, reason: collision with root package name */
    public int f9718u;

    static {
        int iC = c(0, 0, 0, 0);
        f9697w = iC;
        int iC2 = c(0, 0, 0, 3);
        f9698x = new int[]{0, 0, 0, 0, 0, 2, 0};
        f9699y = new int[]{0, 0, 0, 0, 0, 0, 2};
        z = new int[]{3, 3, 3, 3, 3, 3, 1};
        A = new boolean[]{false, false, false, true, true, true, false};
        B = new int[]{iC, iC2, iC, iC, iC2, iC, iC};
        C = new int[]{0, 1, 2, 3, 4, 3, 4};
        D = new int[]{0, 0, 0, 0, 0, 3, 3};
        E = new int[]{iC, iC, iC, iC, iC, iC2, iC2};
    }

    public e() {
        d();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int c(int i10, int i11, int i12, int i13) {
        int i14;
        o.m(i10, 4);
        o.m(i11, 4);
        o.m(i12, 4);
        o.m(i13, 4);
        if (i13 == 0 || i13 == 1) {
            i14 = 255;
        } else if (i13 == 2) {
            i14 = 127;
        } else if (i13 == 3) {
            i14 = 0;
        }
        return Color.argb(i14, i10 > 1 ? 255 : 0, i11 > 1 ? 255 : 0, i12 > 1 ? 255 : 0);
    }

    public final void a(char c7) {
        SpannableStringBuilder spannableStringBuilder = this.f9701b;
        if (c7 != '\n') {
            spannableStringBuilder.append(c7);
            return;
        }
        ArrayList arrayList = this.f9700a;
        arrayList.add(b());
        spannableStringBuilder.clear();
        if (this.f9713o != -1) {
            this.f9713o = 0;
        }
        if (this.f9714p != -1) {
            this.f9714p = 0;
        }
        if (this.f9715q != -1) {
            this.f9715q = 0;
        }
        if (this.f9716s != -1) {
            this.f9716s = 0;
        }
        while (true) {
            if (arrayList.size() < this.f9709j && arrayList.size() < 15) {
                this.f9718u = arrayList.size();
                return;
            }
            arrayList.remove(0);
        }
    }

    public final SpannableString b() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f9701b);
        int length = spannableStringBuilder.length();
        if (length > 0) {
            if (this.f9713o != -1) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.f9713o, length, 33);
            }
            if (this.f9714p != -1) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), this.f9714p, length, 33);
            }
            if (this.f9715q != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.r), this.f9715q, length, 33);
            }
            if (this.f9716s != -1) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f9717t), this.f9716s, length, 33);
            }
        }
        return new SpannableString(spannableStringBuilder);
    }

    public final void d() {
        this.f9700a.clear();
        this.f9701b.clear();
        this.f9713o = -1;
        this.f9714p = -1;
        this.f9715q = -1;
        this.f9716s = -1;
        this.f9718u = 0;
        this.f9702c = false;
        this.f9703d = false;
        this.f9704e = 4;
        this.f9705f = false;
        this.f9706g = 0;
        this.f9707h = 0;
        this.f9708i = 0;
        this.f9709j = 15;
        this.f9710k = 0;
        this.l = 0;
        this.f9711m = 0;
        int i10 = f9697w;
        this.f9712n = i10;
        this.r = f9696v;
        this.f9717t = i10;
    }

    public final void e(boolean z4, boolean z10) {
        int i10 = this.f9713o;
        SpannableStringBuilder spannableStringBuilder = this.f9701b;
        if (i10 != -1) {
            if (!z4) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.f9713o, spannableStringBuilder.length(), 33);
                this.f9713o = -1;
            }
        } else if (z4) {
            this.f9713o = spannableStringBuilder.length();
        }
        if (this.f9714p == -1) {
            if (z10) {
                this.f9714p = spannableStringBuilder.length();
            }
        } else {
            if (z10) {
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), this.f9714p, spannableStringBuilder.length(), 33);
            this.f9714p = -1;
        }
    }

    public final void f(int i10, int i11) {
        int i12 = this.f9715q;
        SpannableStringBuilder spannableStringBuilder = this.f9701b;
        if (i12 != -1 && this.r != i10) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(this.r), this.f9715q, spannableStringBuilder.length(), 33);
        }
        if (i10 != f9696v) {
            this.f9715q = spannableStringBuilder.length();
            this.r = i10;
        }
        if (this.f9716s != -1 && this.f9717t != i11) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f9717t), this.f9716s, spannableStringBuilder.length(), 33);
        }
        if (i11 != f9697w) {
            this.f9716s = spannableStringBuilder.length();
            this.f9717t = i11;
        }
    }
}
