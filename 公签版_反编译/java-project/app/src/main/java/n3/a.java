package n3;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import i3.d;
import i3.i;
import i3.j;
import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import t1.b;
import u1.f;
import u1.q;
import u7.g0;

/* loaded from: classes.dex */
public final class a implements j {

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f11294d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f11295e = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f11296a = new StringBuilder();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11297b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final q f11298c = new q();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b a(Spanned spanned, String str) {
        char c7;
        char c10;
        float f10;
        float f11;
        if (str == null) {
            return new b(spanned, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (!str.equals("{\\an1}")) {
                    c7 = 65535;
                    break;
                } else {
                    c7 = 0;
                    break;
                }
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c7 = 6;
                    break;
                }
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c7 = 3;
                    break;
                }
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c7 = 1;
                    break;
                }
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c7 = 7;
                    break;
                }
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c7 = 4;
                    break;
                }
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c7 = 2;
                    break;
                }
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c7 = '\b';
                    break;
                }
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c7 = 5;
                    break;
                }
                break;
        }
        int i10 = (c7 == 0 || c7 == 1 || c7 == 2) ? 0 : (c7 == 3 || c7 == 4 || c7 == 5) ? 2 : 1;
        switch (str.hashCode()) {
            case -685620710:
                if (!str.equals("{\\an1}")) {
                    c10 = 65535;
                    break;
                } else {
                    c10 = 0;
                    break;
                }
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c10 = 1;
                    break;
                }
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c10 = 2;
                    break;
                }
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c10 = 6;
                    break;
                }
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c10 = 7;
                    break;
                }
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c10 = 3;
                    break;
                }
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c10 = 4;
                    break;
                }
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        int i11 = (c10 == 0 || c10 == 1 || c10 == 2) ? 2 : (c10 == 3 || c10 == 4 || c10 == 5) ? 0 : 1;
        if (i10 == 0) {
            f10 = 0.08f;
        } else if (i10 == 1) {
            f10 = 0.5f;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            f10 = 0.92f;
        }
        if (i11 == 0) {
            f11 = 0.08f;
        } else if (i11 == 1) {
            f11 = 0.5f;
        } else {
            if (i11 != 2) {
                throw new IllegalArgumentException();
            }
            f11 = 0.92f;
        }
        return new b(spanned, null, null, null, f11, 0, i11, f10, i10, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
    }

    public static long c(Matcher matcher, int i10) {
        String strGroup = matcher.group(i10 + 1);
        long j10 = strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L;
        String strGroup2 = matcher.group(i10 + 2);
        strGroup2.getClass();
        long j11 = (Long.parseLong(strGroup2) * 60000) + j10;
        String strGroup3 = matcher.group(i10 + 3);
        strGroup3.getClass();
        long j12 = (Long.parseLong(strGroup3) * 1000) + j11;
        String strGroup4 = matcher.group(i10 + 4);
        if (strGroup4 != null) {
            j12 += Long.parseLong(strGroup4);
        }
        return j12 * 1000;
    }

    @Override // i3.j
    public final void b(byte[] bArr, int i10, int i11, i iVar, f fVar) throws NumberFormatException {
        f fVar2;
        String strP;
        String str;
        a aVar = this;
        f fVar3 = fVar;
        q qVar = aVar.f11298c;
        qVar.M(i10 + i11, bArr);
        qVar.O(i10);
        Charset charsetK = qVar.K();
        if (charsetK == null) {
            charsetK = StandardCharsets.UTF_8;
        }
        long j10 = iVar.f8497a;
        ArrayList arrayList = (j10 == -9223372036854775807L || !iVar.f8498b) ? null : new ArrayList();
        while (true) {
            String strP2 = qVar.p(charsetK);
            if (strP2 == null) {
                break;
            }
            if (!strP2.isEmpty()) {
                try {
                    Integer.parseInt(strP2);
                    strP = qVar.p(charsetK);
                } catch (NumberFormatException unused) {
                    fVar2 = fVar3;
                    u1.a.p("Skipping invalid index: ".concat(strP2));
                }
                if (strP == null) {
                    u1.a.p("Unexpected end");
                    break;
                }
                Matcher matcher = f11294d.matcher(strP);
                if (matcher.matches()) {
                    long jC = c(matcher, 1);
                    long jC2 = c(matcher, 6);
                    StringBuilder sb2 = aVar.f11296a;
                    sb2.setLength(0);
                    ArrayList arrayList2 = aVar.f11297b;
                    arrayList2.clear();
                    for (String strP3 = qVar.p(charsetK); !TextUtils.isEmpty(strP3); strP3 = qVar.p(charsetK)) {
                        if (sb2.length() > 0) {
                            sb2.append("<br>");
                        }
                        String strTrim = strP3.trim();
                        StringBuilder sb3 = new StringBuilder(strTrim);
                        Matcher matcher2 = f11295e.matcher(strTrim);
                        int i12 = 0;
                        while (matcher2.find()) {
                            String strGroup = matcher2.group();
                            arrayList2.add(strGroup);
                            Matcher matcher3 = matcher2;
                            int iStart = matcher2.start() - i12;
                            int length = strGroup.length();
                            sb3.replace(iStart, iStart + length, "");
                            i12 += length;
                            matcher2 = matcher3;
                            jC = jC;
                        }
                        sb2.append(sb3.toString());
                        jC = jC;
                    }
                    long j11 = jC;
                    Spanned spannedFromHtml = Html.fromHtml(sb2.toString());
                    int i13 = 0;
                    while (true) {
                        if (i13 >= arrayList2.size()) {
                            str = null;
                            break;
                        }
                        str = (String) arrayList2.get(i13);
                        if (str.matches("\\{\\\\an[1-9]\\}")) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                    if (j10 == -9223372036854775807L || jC2 >= j10) {
                        i3.a aVar2 = new i3.a(j11, jC2 - j11, g0.r(a(spannedFromHtml, str)));
                        fVar2 = fVar;
                        fVar2.accept(aVar2);
                    } else {
                        if (arrayList != null) {
                            arrayList.add(new i3.a(j11, jC2 - j11, g0.r(a(spannedFromHtml, str))));
                        }
                        fVar2 = fVar;
                    }
                } else {
                    fVar2 = fVar3;
                    u1.a.p("Skipping invalid timing: ".concat(strP));
                }
                fVar3 = fVar2;
                aVar = this;
            }
        }
        f fVar4 = fVar3;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                fVar4.accept((i3.a) it.next());
            }
        }
    }

    @Override // i3.j
    public final /* synthetic */ d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    @Override // i3.j
    public final /* synthetic */ void reset() {
    }
}
