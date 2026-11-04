package tb;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f14994a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14995b;

    /* renamed from: c, reason: collision with root package name */
    public final p f14996c;

    /* renamed from: d, reason: collision with root package name */
    public Thread f14997d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f14998e;

    public q(r rVar, mb.g gVar, p pVar, String str) {
        this.f14998e = rVar;
        this.f14994a = gVar.D();
        this.f14996c = pVar;
        this.f14995b = str;
    }

    public final boolean a() {
        return this.f14998e.f15003e == this.f14997d && !Thread.interrupted();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10;
        this.f14997d = Thread.currentThread();
        sb.e eVar = new sb.e();
        StringBuilder sb2 = this.f14994a;
        int length = sb2.length();
        p pVar = this.f14996c;
        boolean z = pVar.f14992a;
        int i11 = pVar.f14993b;
        String str = this.f14995b;
        if (i11 != 1) {
            if (i11 == 2) {
                str = "\\b" + Pattern.quote(str) + "\\b";
            } else if (i11 == 3) {
            }
            Pattern patternCompile = Pattern.compile(str, (z ? 2 : 0) | 8);
            String string = sb2.toString();
            Matcher matcher = patternCompile.matcher(string);
            while (matcher.find() && a()) {
                eVar.a(sb.h.g(matcher.start(), matcher.end()));
                if (matcher.end() == string.length()) {
                    break;
                }
            }
        } else {
            int length2 = str.length();
            int i12 = 0;
            while (i12 != -1 && i12 < length && a()) {
                int length3 = sb2.length() - str.length();
                int length4 = str.length();
                while (true) {
                    if (i12 > length3) {
                        i12 = -1;
                        break;
                    }
                    while (i10 < length4) {
                        char cCharAt = sb2.charAt(i12 + i10);
                        char cCharAt2 = str.charAt(i10);
                        i10 = (cCharAt == cCharAt2 || (z && Character.toLowerCase(cCharAt) == Character.toLowerCase(cCharAt2))) ? i10 + 1 : 0;
                    }
                    break;
                    i12++;
                }
                if (i12 != -1) {
                    int i13 = i12 + length2;
                    eVar.a(sb.h.g(i12, i13));
                    i12 = i13;
                }
            }
        }
        if (a()) {
            this.f14998e.f14999a.Z(new s1.f(this, 2, eVar));
        }
    }
}
