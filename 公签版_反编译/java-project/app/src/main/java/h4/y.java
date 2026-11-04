package h4;

import a2.w0;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class y extends t {
    public int B;
    public ArrayList z = new ArrayList();
    public boolean A = true;
    public boolean C = false;
    public int D = 0;

    @Override // h4.t
    public final void A(a9.o oVar) {
        this.f6501t = oVar;
        this.D |= 8;
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).A(oVar);
        }
    }

    @Override // h4.t
    public final void B(TimeInterpolator timeInterpolator) {
        this.D |= 1;
        ArrayList arrayList = this.z;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((t) this.z.get(i10)).B(timeInterpolator);
            }
        }
        this.f6488d = timeInterpolator;
    }

    @Override // h4.t
    public final void C(m7.e eVar) {
        super.C(eVar);
        this.D |= 4;
        if (this.z != null) {
            for (int i10 = 0; i10 < this.z.size(); i10++) {
                ((t) this.z.get(i10)).C(eVar);
            }
        }
    }

    @Override // h4.t
    public final void D() {
        this.D |= 2;
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).D();
        }
    }

    @Override // h4.t
    public final void E(long j10) {
        this.f6486b = j10;
    }

    @Override // h4.t
    public final String G(String str) {
        String strG = super.G(str);
        for (int i10 = 0; i10 < this.z.size(); i10++) {
            StringBuilder sbB = d0.f.b(strG, SignParameters.NEW_LINE);
            sbB.append(((t) this.z.get(i10)).G(str + "  "));
            strG = sbB.toString();
        }
        return strG;
    }

    public final void H(t tVar) {
        this.z.add(tVar);
        tVar.f6493i = this;
        long j10 = this.f6487c;
        if (j10 >= 0) {
            tVar.z(j10);
        }
        if ((this.D & 1) != 0) {
            tVar.B(this.f6488d);
        }
        if ((this.D & 2) != 0) {
            tVar.D();
        }
        if ((this.D & 4) != 0) {
            tVar.C(this.f6502v);
        }
        if ((this.D & 8) != 0) {
            tVar.A(this.f6501t);
        }
    }

    @Override // h4.t
    public final void b(View view) {
        for (int i10 = 0; i10 < this.z.size(); i10++) {
            ((t) this.z.get(i10)).b(view);
        }
        this.f6490f.add(view);
    }

    @Override // h4.t
    public final void cancel() {
        super.cancel();
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).cancel();
        }
    }

    @Override // h4.t
    public final void d(a0 a0Var) {
        if (s(a0Var.f6414b)) {
            Iterator it = this.z.iterator();
            while (it.hasNext()) {
                t tVar = (t) it.next();
                if (tVar.s(a0Var.f6414b)) {
                    tVar.d(a0Var);
                    a0Var.f6415c.add(tVar);
                }
            }
        }
    }

    @Override // h4.t
    public final void f(a0 a0Var) {
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).f(a0Var);
        }
    }

    @Override // h4.t
    public final void g(a0 a0Var) {
        if (s(a0Var.f6414b)) {
            Iterator it = this.z.iterator();
            while (it.hasNext()) {
                t tVar = (t) it.next();
                if (tVar.s(a0Var.f6414b)) {
                    tVar.g(a0Var);
                    a0Var.f6415c.add(tVar);
                }
            }
        }
    }

    @Override // h4.t
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final t clone() {
        y yVar = (y) super.clone();
        yVar.z = new ArrayList();
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            t tVarClone = ((t) this.z.get(i10)).clone();
            yVar.z.add(tVarClone);
            tVarClone.f6493i = yVar;
        }
        return yVar;
    }

    @Override // h4.t
    public final void l(ViewGroup viewGroup, w0 w0Var, w0 w0Var2, ArrayList arrayList, ArrayList arrayList2) {
        long j10 = this.f6486b;
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            t tVar = (t) this.z.get(i10);
            if (j10 > 0 && (this.A || i10 == 0)) {
                long j11 = tVar.f6486b;
                if (j11 > 0) {
                    tVar.E(j11 + j10);
                } else {
                    tVar.E(j10);
                }
            }
            tVar.l(viewGroup, w0Var, w0Var2, arrayList, arrayList2);
        }
    }

    @Override // h4.t
    public final void u(ViewGroup viewGroup) {
        super.u(viewGroup);
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).u(viewGroup);
        }
    }

    @Override // h4.t
    public final void w(View view) {
        for (int i10 = 0; i10 < this.z.size(); i10++) {
            ((t) this.z.get(i10)).w(view);
        }
        this.f6490f.remove(view);
    }

    @Override // h4.t
    public final void x(View view) {
        super.x(view);
        int size = this.z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).x(view);
        }
    }

    @Override // h4.t
    public final void y() {
        if (this.z.isEmpty()) {
            F();
            m();
            return;
        }
        h hVar = new h(this);
        Iterator it = this.z.iterator();
        while (it.hasNext()) {
            ((t) it.next()).a(hVar);
        }
        this.B = this.z.size();
        if (this.A) {
            Iterator it2 = this.z.iterator();
            while (it2.hasNext()) {
                ((t) it2.next()).y();
            }
            return;
        }
        for (int i10 = 1; i10 < this.z.size(); i10++) {
            ((t) this.z.get(i10 - 1)).a(new h(1, (t) this.z.get(i10)));
        }
        t tVar = (t) this.z.get(0);
        if (tVar != null) {
            tVar.y();
        }
    }

    @Override // h4.t
    public final void z(long j10) {
        ArrayList arrayList;
        this.f6487c = j10;
        if (j10 < 0 || (arrayList = this.z) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((t) this.z.get(i10)).z(j10);
        }
    }
}
