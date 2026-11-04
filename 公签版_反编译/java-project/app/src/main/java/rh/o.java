package rh;

import j$.util.Collection;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class o extends p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13802a;

    /* renamed from: b, reason: collision with root package name */
    public final Pattern f13803b;

    public /* synthetic */ o(Pattern pattern, int i10) {
        this.f13802a = i10;
        this.f13803b = pattern;
    }

    @Override // rh.p
    public final int a() {
        switch (this.f13802a) {
            case 0:
                return 8;
            case 1:
                return 7;
            case 2:
                return 7;
            default:
                return 8;
        }
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        switch (this.f13802a) {
            case 0:
                return this.f13803b.matcher(lVar2.M()).find();
            case 1:
                return this.f13803b.matcher(lVar2.K()).find();
            case 2:
                return this.f13803b.matcher((String) Collection.EL.stream(lVar2.f12723e).map(new a2.n(6)).collect(oh.f.k(""))).find();
            default:
                lVar2.getClass();
                return this.f13803b.matcher((String) q4.a.b0(lVar2, ph.q.class).map(new a2.n(6)).collect(oh.f.k(""))).find();
        }
    }

    public final String toString() {
        switch (this.f13802a) {
            case 0:
                return ":matches(" + this.f13803b + ")";
            case 1:
                return ":matchesOwn(" + this.f13803b + ")";
            case 2:
                return ":matchesWholeOwnText(" + this.f13803b + ")";
            default:
                return ":matchesWholeText(" + this.f13803b + ")";
        }
    }
}
