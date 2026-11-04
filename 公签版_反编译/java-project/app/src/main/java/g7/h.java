package g7;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import b1.o;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public final class h {
    public static final int l;

    /* renamed from: m, reason: collision with root package name */
    public static boolean f6097m;

    /* renamed from: n, reason: collision with root package name */
    public static Constructor f6098n;

    /* renamed from: o, reason: collision with root package name */
    public static Object f6099o;

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f6100a;

    /* renamed from: b, reason: collision with root package name */
    public final TextPaint f6101b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6102c;

    /* renamed from: d, reason: collision with root package name */
    public int f6103d;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6109j;

    /* renamed from: e, reason: collision with root package name */
    public Layout.Alignment f6104e = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: f, reason: collision with root package name */
    public int f6105f = Integer.MAX_VALUE;

    /* renamed from: g, reason: collision with root package name */
    public float f6106g = 1.0f;

    /* renamed from: h, reason: collision with root package name */
    public int f6107h = l;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6108i = true;

    /* renamed from: k, reason: collision with root package name */
    public TextUtils.TruncateAt f6110k = null;

    static {
        l = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    public h(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f6100a = charSequence;
        this.f6101b = textPaint;
        this.f6102c = i10;
        this.f6103d = charSequence.length();
    }

    public final StaticLayout a() throws g, NoSuchMethodException, SecurityException, ClassNotFoundException {
        Class<?> clsI;
        if (this.f6100a == null) {
            this.f6100a = "";
        }
        int iMax = Math.max(0, this.f6102c);
        CharSequence charSequenceEllipsize = this.f6100a;
        int i10 = this.f6105f;
        TextPaint textPaint = this.f6101b;
        if (i10 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.f6110k);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f6103d);
        this.f6103d = iMin;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            if (this.f6109j && this.f6105f == 1) {
                this.f6104e = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
            builderObtain.setAlignment(this.f6104e);
            builderObtain.setIncludePad(this.f6108i);
            builderObtain.setTextDirection(this.f6109j ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.f6110k;
            if (truncateAt != null) {
                builderObtain.setEllipsize(truncateAt);
            }
            builderObtain.setMaxLines(this.f6105f);
            float f10 = this.f6106g;
            if (f10 != 1.0f) {
                builderObtain.setLineSpacing(0.0f, f10);
            }
            if (this.f6105f > 1) {
                builderObtain.setHyphenationFrequency(this.f6107h);
            }
            return builderObtain.build();
        }
        if (!f6097m) {
            try {
                boolean z = this.f6109j && i11 >= 23;
                if (i11 >= 18) {
                    clsI = o.i();
                    f6099o = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                } else {
                    ClassLoader classLoader = h.class.getClassLoader();
                    String str = this.f6109j ? "RTL" : "LTR";
                    Class<?> clsLoadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                    Class<?> clsLoadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                    f6099o = clsLoadClass2.getField(str).get(clsLoadClass2);
                    clsI = clsLoadClass;
                }
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Constructor declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, clsI, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
                f6098n = declaredConstructor;
                declaredConstructor.setAccessible(true);
                f6097m = true;
            } catch (Exception e7) {
                throw new g(e7);
            }
        }
        try {
            Constructor constructor = f6098n;
            constructor.getClass();
            Integer numValueOf = Integer.valueOf(this.f6103d);
            Integer numValueOf2 = Integer.valueOf(iMax);
            Layout.Alignment alignment = this.f6104e;
            Object obj = f6099o;
            obj.getClass();
            return (StaticLayout) constructor.newInstance(charSequenceEllipsize, 0, numValueOf, textPaint, numValueOf2, alignment, obj, Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f6108i), null, Integer.valueOf(iMax), Integer.valueOf(this.f6105f));
        } catch (Exception e10) {
            throw new g(e10);
        }
    }
}
