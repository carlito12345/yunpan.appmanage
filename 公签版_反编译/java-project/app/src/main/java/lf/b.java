package lf;

import java.util.Locale;
import mf.h;

/* loaded from: classes.dex */
public final class b extends ab.a {

    /* renamed from: d, reason: collision with root package name */
    public static final b f10717d = new b();

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f10718c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i10, int i11) {
        super(i10, 3);
        this.f10718c = i11;
    }

    @Override // ab.a
    public final String f(h hVar, Locale locale) {
        switch (this.f10718c) {
            case 0:
                return "";
            case 1:
                return String.valueOf(this.f567b != 0);
            case 2:
                return String.valueOf(this.f567b);
            case 3:
                int i10 = this.f567b;
                short s8 = (short) (i10 & 255);
                return android.support.v4.media.session.a.s(new StringBuilder(), i10 >> 8, s8 != 0 ? s8 != 1 ? s8 != 2 ? s8 != 3 ? s8 != 4 ? s8 != 5 ? g.b.e(s8, new StringBuilder("unknown unit:0x")) : "mm" : "in" : "pt" : "sp" : "dp" : "px");
            case 4:
                int i11 = this.f567b;
                short s10 = (short) (i11 & 15);
                String strE = s10 != 0 ? s10 != 1 ? g.b.e(s10, new StringBuilder("unknown type:0x")) : "%p" : "%";
                return Float.intBitsToFloat(i11 >> 4) + strE;
            default:
                return g.b.e(this.f567b, new StringBuilder("0x"));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b() {
        super(-1, 3);
        this.f10718c = 0;
    }
}
