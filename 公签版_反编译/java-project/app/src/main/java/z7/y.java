package z7;

import java.io.IOException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public static final u f19482a;

    /* renamed from: b, reason: collision with root package name */
    public static final v f19483b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ y[] f19484c;

    static {
        u uVar = new u();
        f19482a = uVar;
        v vVar = new v();
        f19483b = vVar;
        f19484c = new y[]{uVar, vVar, new y() { // from class: z7.w
            public static Double b(String str, h8.a aVar) throws h8.c, NumberFormatException {
                try {
                    Double dValueOf = Double.valueOf(str);
                    if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                        boolean z = true;
                        if (aVar.f6695p != 1) {
                            z = false;
                        }
                        if (!z) {
                            throw new h8.c("JSON forbids NaN and infinities: " + dValueOf + "; at path " + aVar.Q());
                        }
                    }
                    return dValueOf;
                } catch (NumberFormatException e7) {
                    StringBuilder sbD = da.b.d("Cannot parse ", str, "; at path ");
                    sbD.append(aVar.Q());
                    throw new androidx.fragment.app.b0(12, sbD.toString(), e7);
                }
            }

            @Override // z7.y
            public final Number a(h8.a aVar) throws IOException {
                String strC0 = aVar.c0();
                if (strC0.indexOf(46) >= 0) {
                    return b(strC0, aVar);
                }
                try {
                    return Long.valueOf(Long.parseLong(strC0));
                } catch (NumberFormatException unused) {
                    return b(strC0, aVar);
                }
            }
        }, new y() { // from class: z7.x
            @Override // z7.y
            public final Number a(h8.a aVar) throws IOException {
                String strC0 = aVar.c0();
                try {
                    return b8.h.j(strC0);
                } catch (NumberFormatException e7) {
                    StringBuilder sbD = da.b.d("Cannot parse ", strC0, "; at path ");
                    sbD.append(aVar.Q());
                    throw new androidx.fragment.app.b0(12, sbD.toString(), e7);
                }
            }
        }};
    }

    public y(String str, int i10) {
    }

    public static y valueOf(String str) {
        return (y) Enum.valueOf(y.class, str);
    }

    public static y[] values() {
        return (y[]) f19484c.clone();
    }

    public abstract Number a(h8.a aVar);
}
