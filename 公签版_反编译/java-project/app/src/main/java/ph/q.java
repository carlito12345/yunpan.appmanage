package ph;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public abstract class q implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public static final List f12740c = Collections.emptyList();

    /* renamed from: a, reason: collision with root package name */
    public l f12741a;

    /* renamed from: b, reason: collision with root package name */
    public int f12742b;

    public String a(String str) {
        nh.b.b0(str);
        if (!k() || c().h(str) == -1) {
            return "";
        }
        String strD = d();
        String strE = c().e(str);
        Pattern pattern = oh.f.f11809d;
        String strReplaceAll = pattern.matcher(strD).replaceAll("");
        String strReplaceAll2 = pattern.matcher(strE).replaceAll("");
        try {
            try {
                strReplaceAll2 = oh.f.m(strReplaceAll2, new URL(strReplaceAll)).toExternalForm();
            } catch (MalformedURLException unused) {
                strReplaceAll2 = new URL(strReplaceAll2).toExternalForm();
            }
            return strReplaceAll2;
        } catch (MalformedURLException unused2) {
            return oh.f.f11808c.matcher(strReplaceAll2).find() ? strReplaceAll2 : "";
        }
    }

    public String b(String str) {
        nh.b.d0(str);
        if (!k()) {
            return "";
        }
        String strE = c().e(str);
        return strE.length() > 0 ? strE : str.startsWith("abs:") ? a(str.substring(4)) : "";
    }

    public abstract c c();

    public abstract String d();

    public abstract int e();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override // 
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public q clone() {
        q qVarG = g(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(qVarG);
        while (!linkedList.isEmpty()) {
            q qVar = (q) linkedList.remove();
            int iE = qVar.e();
            for (int i10 = 0; i10 < iE; i10++) {
                List listH = qVar.h();
                q qVarG2 = ((q) listH.get(i10)).g(qVar);
                listH.set(i10, qVarG2);
                linkedList.add(qVarG2);
            }
        }
        return qVarG;
    }

    public q g(q qVar) {
        h hVarT;
        try {
            q qVar2 = (q) super.clone();
            qVar2.f12741a = (l) qVar;
            qVar2.f12742b = qVar == null ? 0 : this.f12742b;
            if (qVar == null && !(this instanceof h) && (hVarT = t()) != null) {
                h hVar = new h(hVarT.f12722d.f13283a, hVarT.d(), hVarT.f12716k);
                c cVar = hVarT.f12724f;
                if (cVar != null) {
                    hVar.f12724f = cVar.clone();
                }
                hVar.f12715j = hVarT.f12715j.clone();
                qVar2.f12741a = hVar;
                ((ArrayList) hVar.h()).add(qVar2);
            }
            return qVar2;
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }

    public abstract List h();

    public final q i() {
        if (e() == 0) {
            return null;
        }
        return (q) h().get(0);
    }

    public final boolean j(String str) {
        nh.b.d0(str);
        if (!k()) {
            return false;
        }
        if (str.startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (c().h(strSubstring) != -1 && !a(strSubstring).isEmpty()) {
                return true;
            }
        }
        return c().h(str) != -1;
    }

    public abstract boolean k();

    public final boolean l(String str) {
        return q().equals(str);
    }

    public final l m() {
        q qVarN = this;
        do {
            qVarN = qVarN.n();
            if (qVarN == null) {
                return null;
            }
        } while (!(qVarN instanceof l));
        return (l) qVarN;
    }

    public final q n() {
        l lVar = this.f12741a;
        if (lVar == null) {
            return null;
        }
        List listH = lVar.h();
        int i10 = this.f12742b + 1;
        ArrayList arrayList = (ArrayList) listH;
        if (arrayList.size() > i10) {
            return (q) arrayList.get(i10);
        }
        return null;
    }

    public abstract String o();

    public abstract String p();

    public String q() {
        return o();
    }

    public String r() {
        StringBuilder sbB = oh.f.b();
        oh.a aVarE = oh.a.e(sbB);
        h hVarT = t();
        if (hVarT == null) {
            hVarT = new h();
        }
        g gVar = hVarT.f12715j;
        gVar.getClass();
        org.bouncycastle.jcajce.provider.digest.a.a(gVar.f12711c ? new s(this, aVarE, gVar) : new v3.f(25, this, aVarE, gVar, false), this);
        return oh.f.l(sbB);
    }

    public abstract void s(oh.a aVar, g gVar);

    public final h t() {
        q qVarZ = z();
        if (qVarZ instanceof h) {
            return (h) qVarZ;
        }
        return null;
    }

    public String toString() {
        return r();
    }

    public abstract l u();

    public final q v() {
        l lVar = this.f12741a;
        if (lVar == null || this.f12742b <= 0) {
            return null;
        }
        return (q) ((ArrayList) lVar.h()).get(this.f12742b - 1);
    }

    public final void w(int i10) {
        int iE = e();
        if (iE == 0) {
            return;
        }
        List listH = h();
        while (i10 < iE) {
            ((q) listH.get(i10)).f12742b = i10;
            i10++;
        }
    }

    public void x(q qVar) {
        nh.b.V(qVar.f12741a == this);
        int i10 = qVar.f12742b;
        ((ArrayList) h()).remove(i10);
        w(i10);
        qVar.f12741a = null;
    }

    public final void y(l lVar) {
        nh.b.d0(lVar);
        if (this.f12741a == null) {
            this.f12741a = lVar.f12741a;
        }
        nh.b.d0(this.f12741a);
        l lVar2 = this.f12741a;
        lVar2.getClass();
        nh.b.V(this.f12741a == lVar2);
        if (this == lVar) {
            return;
        }
        l lVar3 = lVar.f12741a;
        if (lVar3 != null) {
            lVar3.x(lVar);
        }
        int i10 = this.f12742b;
        ((ArrayList) lVar2.h()).set(i10, lVar);
        lVar.f12741a = lVar2;
        lVar.f12742b = i10;
        this.f12741a = null;
    }

    public q z() {
        q qVar = this;
        while (true) {
            l lVar = qVar.f12741a;
            if (lVar == null) {
                return qVar;
            }
            qVar = lVar;
        }
    }
}
