package rh;

import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class r extends t {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13804a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Serializable f13805b;

    public r(String str) {
        StringBuilder sbB = oh.f.b();
        oh.f.a(sbB, str, false);
        this.f13805b = oh.a.c(oh.f.l(sbB));
    }

    @Override // rh.p
    public final int a() {
        switch (this.f13804a) {
            case 0:
                return 6;
            default:
                return 8;
        }
    }

    @Override // rh.t
    public final boolean g(ph.q qVar) {
        switch (this.f13804a) {
            case 0:
                return oh.a.c(qVar.p()).contains((String) this.f13805b);
            default:
                return ((Pattern) this.f13805b).matcher(qVar.p()).find();
        }
    }

    public final String toString() {
        switch (this.f13804a) {
            case 0:
                return g.b.l((String) this.f13805b, ")", new StringBuilder(":contains("));
            default:
                return ":matches(" + ((Pattern) this.f13805b) + ")";
        }
    }

    public r(Pattern pattern) {
        this.f13805b = pattern;
    }
}
