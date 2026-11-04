package rh;

import j$.util.Collection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes3.dex */
public final class h extends p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13790a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13791b;

    public /* synthetic */ h(String str, int i10, boolean z) {
        this.f13790a = i10;
        this.f13791b = str;
    }

    @Override // rh.p
    public int a() {
        switch (this.f13790a) {
            case 0:
                return 2;
            case 1:
                return 6;
            case 2:
                return 8;
            case 3:
            case 4:
            case 6:
            default:
                return super.a();
            case 5:
                return 10;
            case 7:
                return 10;
            case 8:
                return 2;
            case 9:
                return 1;
        }
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        switch (this.f13790a) {
            case 0:
                return lVar2.j(this.f13791b);
            case 1:
                ph.c cVarC = lVar2.c();
                cVarC.getClass();
                ArrayList arrayList = new ArrayList(cVarC.f12706a);
                for (int i10 = 0; i10 < cVarC.f12706a; i10++) {
                    String str = cVarC.f12707b[i10];
                    if (!ph.c.i(str)) {
                        arrayList.add(new ph.a(str, (String) cVarC.f12708c[i10], cVarC));
                    }
                }
                Iterator it = Collections.unmodifiableList(arrayList).iterator();
                while (it.hasNext()) {
                    if (oh.a.c(((ph.a) it.next()).f12700a).startsWith(this.f13791b)) {
                        return true;
                    }
                }
                return false;
            case 2:
                ph.c cVar = lVar2.f12724f;
                if (cVar == null) {
                    return false;
                }
                String strE = cVar.e(Name.LABEL);
                int length = strE.length();
                String str2 = this.f13791b;
                int length2 = str2.length();
                if (length == 0 || length < length2) {
                    return false;
                }
                if (length == length2) {
                    return str2.equalsIgnoreCase(strE);
                }
                boolean z = false;
                int i11 = 0;
                for (int i12 = 0; i12 < length; i12++) {
                    if (Character.isWhitespace(strE.charAt(i12))) {
                        if (!z) {
                            continue;
                        } else {
                            if (i12 - i11 == length2 && strE.regionMatches(true, i11, str2, 0, length2)) {
                                return true;
                            }
                            z = false;
                        }
                    } else if (!z) {
                        i11 = i12;
                        z = true;
                    }
                }
                if (z && length - i11 == length2) {
                    return strE.regionMatches(true, i11, str2, 0, length2);
                }
                return false;
            case 3:
                lVar2.getClass();
                StringBuilder sbB = oh.f.b();
                org.bouncycastle.jcajce.provider.digest.a.a(new ph.j(0, sbB), lVar2);
                return oh.a.c(oh.f.l(sbB)).contains(this.f13791b);
            case 4:
                return oh.a.c(lVar2.K()).contains(this.f13791b);
            case 5:
                return oh.a.c(lVar2.M()).contains(this.f13791b);
            case 6:
                return ((String) Collection.EL.stream(lVar2.f12723e).map(new a2.n(6)).collect(oh.f.k(""))).contains(this.f13791b);
            case 7:
                lVar2.getClass();
                return ((String) q4.a.b0(lVar2, ph.q.class).map(new a2.n(6)).collect(oh.f.k(""))).contains(this.f13791b);
            case 8:
                ph.c cVar2 = lVar2.f12724f;
                return this.f13791b.equals(cVar2 != null ? cVar2.e(Name.MARK) : "");
            case 9:
                return lVar2.l(this.f13791b);
            case 10:
                return lVar2.f12722d.f13285c.endsWith(this.f13791b);
            default:
                return lVar2.f12722d.f13285c.startsWith(this.f13791b);
        }
    }

    public final String toString() {
        switch (this.f13790a) {
            case 0:
                return g.b.l(this.f13791b, "]", new StringBuilder("["));
            case 1:
                return g.b.l(this.f13791b, "]", new StringBuilder("[^"));
            case 2:
                return "." + this.f13791b;
            case 3:
                return g.b.l(this.f13791b, ")", new StringBuilder(":containsData("));
            case 4:
                return g.b.l(this.f13791b, ")", new StringBuilder(":containsOwn("));
            case 5:
                return g.b.l(this.f13791b, ")", new StringBuilder(":contains("));
            case 6:
                return g.b.l(this.f13791b, ")", new StringBuilder(":containsWholeOwnText("));
            case 7:
                return g.b.l(this.f13791b, ")", new StringBuilder(":containsWholeText("));
            case 8:
                return "#" + this.f13791b;
            case 9:
                return this.f13791b;
            case 10:
                return "*|" + this.f13791b;
            default:
                return g.b.l(this.f13791b, "|*", new StringBuilder());
        }
    }

    public h(String str, int i10) {
        this.f13790a = i10;
        switch (i10) {
            case 3:
                this.f13791b = oh.a.c(str);
                break;
            case 4:
                StringBuilder sbB = oh.f.b();
                oh.f.a(sbB, str, false);
                this.f13791b = oh.a.c(oh.f.l(sbB));
                break;
            case 5:
                StringBuilder sbB2 = oh.f.b();
                oh.f.a(sbB2, str, false);
                this.f13791b = oh.a.c(oh.f.l(sbB2));
                break;
            default:
                nh.b.d0(str);
                this.f13791b = oh.a.c(str);
                break;
        }
    }
}
