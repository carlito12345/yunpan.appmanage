package p3;

import a9.o;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import g.b;
import i3.d;
import i3.i;
import i3.j;
import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;
import org.mozilla.universalchardet.prober.HebrewProber;
import u1.f;
import u1.f0;
import u1.q;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class a implements j {

    /* renamed from: a, reason: collision with root package name */
    public final q f12567a = new q();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12568b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12569c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12570d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12571e;

    /* renamed from: f, reason: collision with root package name */
    public final float f12572f;

    /* renamed from: g, reason: collision with root package name */
    public final int f12573g;

    public a(List list) {
        if (list.size() != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f12569c = 0;
            this.f12570d = -1;
            this.f12571e = "sans-serif";
            this.f12568b = false;
            this.f12572f = 0.85f;
            this.f12573g = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f12569c = bArr[24];
        this.f12570d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f12571e = "Serif".equals(new String(bArr, 43, bArr.length - 43, StandardCharsets.UTF_8)) ? "serif" : "sans-serif";
        int i10 = bArr[25] * 20;
        this.f12573g = i10;
        boolean z = (bArr[0] & HebrewProber.SPACE) != 0;
        this.f12568b = z;
        if (z) {
            this.f12572f = f0.f(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i10, 0.0f, 0.95f);
        } else {
            this.f12572f = 0.85f;
        }
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    public static void c(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            int i15 = i14 | 33;
            boolean z = (i10 & 1) != 0;
            boolean z4 = (i10 & 2) != 0;
            if (z) {
                if (z4) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                }
            } else if (z4) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
            }
            boolean z10 = (i10 & 4) != 0;
            if (z10) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
            }
            if (z10 || z || z4) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
        }
    }

    @Override // i3.j
    public final void b(byte[] bArr, int i10, int i11, i iVar, f fVar) {
        String strZ;
        q qVar = this.f12567a;
        qVar.M(i10 + i11, bArr);
        qVar.O(i10);
        int i12 = 2;
        o.k(qVar.a() >= 2);
        int I = qVar.I();
        if (I == 0) {
            strZ = "";
        } else {
            int i13 = qVar.f15267b;
            Charset charsetK = qVar.K();
            int i14 = I - (qVar.f15267b - i13);
            if (charsetK == null) {
                charsetK = StandardCharsets.UTF_8;
            }
            strZ = qVar.z(charsetK, i14);
        }
        if (strZ.isEmpty()) {
            e0 e0Var = g0.f15471b;
            fVar.accept(new i3.a(-9223372036854775807L, -9223372036854775807L, y0.f15549e));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strZ);
        c(spannableStringBuilder, this.f12569c, 0, 0, spannableStringBuilder.length(), 16711680);
        a(spannableStringBuilder, this.f12570d, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f12571e;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f10 = this.f12572f;
        while (qVar.a() >= 8) {
            int i15 = qVar.f15267b;
            int iO = qVar.o();
            int iO2 = qVar.o();
            if (iO2 == 1937013100) {
                o.k(qVar.a() >= i12);
                int I2 = qVar.I();
                int i16 = 0;
                while (i16 < I2) {
                    o.k(qVar.a() >= 12);
                    int I3 = qVar.I();
                    int I4 = qVar.I();
                    qVar.P(i12);
                    int iB = qVar.B();
                    qVar.P(1);
                    int iO3 = qVar.o();
                    if (I4 > spannableStringBuilder.length()) {
                        StringBuilder sbN = b.n("Truncating styl end (", I4, ") to cueText.length() (");
                        sbN.append(spannableStringBuilder.length());
                        sbN.append(").");
                        u1.a.p(sbN.toString());
                        I4 = spannableStringBuilder.length();
                    }
                    if (I3 >= I4) {
                        u1.a.p("Ignoring styl with start (" + I3 + ") >= end (" + I4 + ").");
                    } else {
                        int i17 = I4;
                        c(spannableStringBuilder, iB, this.f12569c, I3, i17, 0);
                        a(spannableStringBuilder, iO3, this.f12570d, I3, i17, 0);
                    }
                    i16++;
                    i12 = 2;
                }
            } else if (iO2 == 1952608120 && this.f12568b) {
                i12 = 2;
                o.k(qVar.a() >= 2);
                f10 = f0.f(qVar.I() / this.f12573g, 0.0f, 0.95f);
            } else {
                i12 = 2;
            }
            qVar.O(i15 + iO);
        }
        fVar.accept(new i3.a(-9223372036854775807L, -9223372036854775807L, g0.r(new t1.b(spannableStringBuilder, null, null, null, f10, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0))));
    }

    @Override // i3.j
    public final /* synthetic */ d e(int i10, int i11, byte[] bArr) {
        return b.a(this, bArr, i11);
    }

    @Override // i3.j
    public final /* synthetic */ void reset() {
    }
}
