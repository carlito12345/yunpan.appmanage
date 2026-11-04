package y1;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class k extends r1.g0 {

    /* renamed from: c, reason: collision with root package name */
    public final int f18711c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18712d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18713e;

    /* renamed from: f, reason: collision with root package name */
    public final r1.p f18714f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18715g;

    /* renamed from: h, reason: collision with root package name */
    public final f2.c0 f18716h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f18717i;

    public k(int i10, Exception exc, int i11) {
        this(i10, exc, i11, null, -1, null, 4, null, false);
    }

    public final k a(f2.c0 c0Var) {
        String message = getMessage();
        String str = u1.f0.f15206a;
        return new k(message, getCause(), this.f13449a, this.f18711c, this.f18712d, this.f18713e, this.f18714f, this.f18715g, c0Var, this.f13450b, this.f18717i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(String str, Throwable th2, int i10, int i11, String str2, int i12, r1.p pVar, int i13, f2.c0 c0Var, long j10, boolean z) {
        super(str, th2, i10, j10);
        Bundle bundle = Bundle.EMPTY;
        a9.o.k(!z || i11 == 1);
        a9.o.k(th2 != null || i11 == 3);
        this.f18711c = i11;
        this.f18712d = str2;
        this.f18713e = i12;
        this.f18714f = pVar;
        this.f18715g = i13;
        this.f18716h = c0Var;
        this.f18717i = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public k(int i10, Exception exc, int i11, String str, int i12, r1.p pVar, int i13, f2.c0 c0Var, boolean z) {
        String string;
        String str2;
        if (i10 == 0) {
            string = "Source error";
        } else if (i10 == 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" error, index=");
            sb2.append(i12);
            sb2.append(", format=");
            sb2.append(pVar);
            sb2.append(", format_supported=");
            String str3 = u1.f0.f15206a;
            if (i13 == 0) {
                str2 = "NO";
            } else if (i13 == 1) {
                str2 = "NO_UNSUPPORTED_SUBTYPE";
            } else if (i13 == 2) {
                str2 = "NO_UNSUPPORTED_DRM";
            } else if (i13 == 3) {
                str2 = "NO_EXCEEDS_CAPABILITIES";
            } else if (i13 == 4) {
                str2 = "YES";
            } else {
                throw new IllegalStateException();
            }
            sb2.append(str2);
            string = sb2.toString();
        } else if (i10 != 3) {
            string = "Unexpected runtime error";
        } else {
            string = "Remote error";
        }
        this(TextUtils.isEmpty(null) ? string : g.b.j(string, ": null"), exc, i11, i10, str, i12, pVar, i13, c0Var, SystemClock.elapsedRealtime(), z);
    }
}
