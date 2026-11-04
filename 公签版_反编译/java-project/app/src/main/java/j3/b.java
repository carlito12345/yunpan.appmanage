package j3;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9669a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9670b;

    /* renamed from: c, reason: collision with root package name */
    public final StringBuilder f9671c;

    /* renamed from: d, reason: collision with root package name */
    public int f9672d;

    /* renamed from: e, reason: collision with root package name */
    public int f9673e;

    /* renamed from: f, reason: collision with root package name */
    public int f9674f;

    /* renamed from: g, reason: collision with root package name */
    public int f9675g;

    /* renamed from: h, reason: collision with root package name */
    public int f9676h;

    public b(int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f9669a = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f9670b = arrayList2;
        StringBuilder sb2 = new StringBuilder();
        this.f9671c = sb2;
        this.f9675g = i10;
        arrayList.clear();
        arrayList2.clear();
        sb2.setLength(0);
        this.f9672d = 15;
        this.f9673e = 0;
        this.f9674f = 0;
        this.f9676h = i11;
    }

    public final void a(char c7) {
        StringBuilder sb2 = this.f9671c;
        if (sb2.length() < 32) {
            sb2.append(c7);
        }
    }

    public final void b() {
        StringBuilder sb2 = this.f9671c;
        int length = sb2.length();
        if (length > 0) {
            sb2.delete(length - 1, length);
            ArrayList arrayList = this.f9669a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                a aVar = (a) arrayList.get(size);
                int i10 = aVar.f9668c;
                if (i10 != length) {
                    return;
                }
                aVar.f9668c = i10 - 1;
            }
        }
    }

    public final t1.b c(int i10) {
        float f10;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i11 = 0;
        while (true) {
            ArrayList arrayList = this.f9670b;
            if (i11 >= arrayList.size()) {
                break;
            }
            spannableStringBuilder.append((CharSequence) arrayList.get(i11));
            spannableStringBuilder.append('\n');
            i11++;
        }
        spannableStringBuilder.append((CharSequence) d());
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        int i12 = this.f9673e + this.f9674f;
        int length = (32 - i12) - spannableStringBuilder.length();
        int i13 = i12 - length;
        int i14 = i10 != Integer.MIN_VALUE ? i10 : (this.f9675g != 2 || (Math.abs(i13) >= 3 && length >= 0)) ? (this.f9675g != 2 || i13 <= 0) ? 0 : 2 : 1;
        if (i14 != 1) {
            if (i14 == 2) {
                i12 = 32 - length;
            }
            f10 = ((i12 / 32.0f) * 0.8f) + 0.1f;
        } else {
            f10 = 0.5f;
        }
        int i15 = this.f9672d;
        if (i15 > 7) {
            i15 -= 17;
        } else if (this.f9675g == 1) {
            i15 -= this.f9676h - 1;
        }
        return new t1.b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, null, null, i15, 1, Integer.MIN_VALUE, f10, i14, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
    }

    public final SpannableString d() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f9671c);
        int length = spannableStringBuilder.length();
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        int i14 = -1;
        int i15 = -1;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.f9669a;
            if (i10 >= arrayList.size()) {
                break;
            }
            a aVar = (a) arrayList.get(i10);
            boolean z4 = aVar.f9667b;
            int i16 = aVar.f9666a;
            if (i16 != 8) {
                boolean z10 = i16 == 7;
                if (i16 != 7) {
                    i15 = c.B[i16];
                }
                z = z10;
            }
            int i17 = aVar.f9668c;
            i10++;
            if (i17 != (i10 < arrayList.size() ? ((a) arrayList.get(i10)).f9668c : length)) {
                if (i11 != -1 && !z4) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i17, 33);
                    i11 = -1;
                } else if (i11 == -1 && z4) {
                    i11 = i17;
                }
                if (i12 != -1 && !z) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i12, i17, 33);
                    i12 = -1;
                } else if (i12 == -1 && z) {
                    i12 = i17;
                }
                if (i15 != i14) {
                    if (i14 != -1) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(i14), i13, i17, 33);
                    }
                    i14 = i15;
                    i13 = i17;
                }
            }
        }
        if (i11 != -1 && i11 != length) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i11, length, 33);
        }
        if (i12 != -1 && i12 != length) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i12, length, 33);
        }
        if (i13 != length && i14 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i14), i13, length, 33);
        }
        return new SpannableString(spannableStringBuilder);
    }

    public final boolean e() {
        return this.f9669a.isEmpty() && this.f9670b.isEmpty() && this.f9671c.length() == 0;
    }
}
