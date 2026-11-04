package wb;

import a2.k1;
import android.util.SparseArray;
import ha.o;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import l2.z;
import s3.d0;
import u1.p;

/* loaded from: classes.dex */
public final class g extends c {

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f17790d;

    /* renamed from: e, reason: collision with root package name */
    public bd.e f17791e;

    /* renamed from: f, reason: collision with root package name */
    public bd.e f17792f;

    /* renamed from: g, reason: collision with root package name */
    public p f17793g;

    public g(CodeEditor codeEditor, mb.g gVar) {
        super(codeEditor, gVar);
        this.f17790d = new AtomicInteger(0);
        p pVar = new p(codeEditor.getTabWidth());
        this.f17793g = pVar;
        pVar.f15258b = codeEditor.Y0;
        this.f17791e = new bd.e(1);
        bd.e eVar = new bd.e(1);
        this.f17792f = eVar;
        u(this.f17791e, eVar);
    }

    public static int v(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw z.d(it);
        }
        return (int) 0.0f;
    }

    @Override // wb.d
    public final int a() {
        return this.f17778b.f11064a.size();
    }

    @Override // mb.i
    public final void c(mb.g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        for (int i14 = i10; i14 <= i12; i14++) {
            if (i14 != i10) {
                this.f17791e.b(i14, w(i14, true));
            } else if (i12 == i10) {
                int iD = this.f17792f.d(i14);
                List listT = t();
                this.f17777a.getTextPaint();
                int iV = v(listT);
                this.f17792f.g(i14, iV);
                bd.e eVar = this.f17791e;
                int i15 = iV - iD;
                eVar.g(i14, i15 + eVar.d(i14) + ((int) this.f17793g.d(this.f17778b.o(i14), i11, i13, this.f17777a.getTextPaint())));
            } else {
                this.f17791e.g(i14, w(i14, false));
            }
        }
    }

    @Override // wb.d
    public final int d() {
        return this.f17777a.getRowHeight() * this.f17778b.f11064a.size();
    }

    @Override // wb.d
    public final float[] e(int i10, int i11, float[] fArr) {
        if (fArr == null || fArr.length < 2) {
            fArr = new float[2];
        }
        fArr[0] = this.f17777a.K(i10);
        fArr[1] = this.f17777a.getRenderer().d(i10).f(i11);
        return fArr;
    }

    @Override // wb.d
    public final j f(int i10, SparseArray sparseArray) {
        return new k1(this, this.f17778b, i10, sparseArray);
    }

    @Override // wb.d
    public final long g(int i10, int i11) {
        int i12 = i10 + 1;
        if (i12 >= this.f17778b.f11064a.size()) {
            return sb.h.g(i10, this.f17778b.o(i10).f11076c);
        }
        int i13 = this.f17778b.o(i12).f11076c;
        if (i11 > i13) {
            i11 = i13;
        }
        return sb.h.g(i12, i11);
    }

    @Override // wb.d
    public final int h(int i10) {
        return 1;
    }

    @Override // wb.d
    public final void i(h5.m mVar) {
        int i10;
        int i11;
        int size = this.f17778b.f11064a.size() - 1;
        int i12 = 0;
        while (true) {
            int[] iArr = (int[]) mVar.f6611b;
            if (!(i12 < iArr.length)) {
                return;
            }
            if (i12 < iArr.length) {
                i10 = i12 + 1;
                i11 = iArr[i12];
                if (i11 > size) {
                }
                this.f17791e.g(i11, w(i11, false));
                i12 = i10;
            } else {
                i10 = i12;
            }
            i11 = size;
            this.f17791e.g(i11, w(i11, false));
            i12 = i10;
        }
    }

    @Override // mb.i
    public final void k(mb.g gVar, int i10, int i11, int i12, int i13, StringBuilder sb2) {
        if (i10 < i12) {
            int i14 = i10 + 1;
            int i15 = i12 + 1;
            this.f17791e.f(i14, i15);
            this.f17792f.f(i14, i15);
        }
        if (i10 != i12) {
            this.f17791e.g(i10, w(i10, false));
            return;
        }
        int iD = this.f17792f.d(i10);
        List listT = t();
        this.f17777a.getTextPaint();
        int iV = v(listT);
        this.f17792f.g(i10, iV);
        bd.e eVar = this.f17791e;
        eVar.g(i10, (iV - iD) + (eVar.d(i10) - ((int) this.f17793g.d(sb2, 0, i13 - i11, this.f17777a.getTextPaint()))));
    }

    @Override // wb.d
    public final int l(int i10) {
        return this.f17777a.getText().n().z(i10).f11057b;
    }

    @Override // wb.d
    public final void m() {
        this.f17777a = null;
        this.f17778b = null;
        this.f17791e = null;
        this.f17792f = null;
    }

    @Override // wb.d
    public final eb.j n(float f10, float f11) {
        int iMin = Math.min(this.f17778b.f11064a.size() - 1, Math.max((int) (f11 / this.f17777a.getRowHeight()), 0));
        eb.h hVarG = this.f17777a.getRenderer().d(iMin).g(f10);
        return new eb.j(iMin, hVarG.f4845a, (i) hVarG.f4847c, hVarG.f4846b);
    }

    @Override // wb.d
    public final long o(int i10, int i11) {
        int i12 = i10 - 1;
        if (i12 < 0) {
            return sb.h.g(0, 0);
        }
        int i13 = this.f17778b.o(i12).f11076c;
        if (i11 > i13) {
            i11 = i13;
        }
        return sb.h.g(i12, i11);
    }

    @Override // wb.d
    public final int p(int i10) {
        return Math.max(0, Math.min(i10, this.f17778b.f11064a.size() - 1));
    }

    @Override // wb.d
    public final h q(int i10) {
        h hVar = new h();
        hVar.f17794a = i10;
        hVar.f17797d = 0;
        hVar.f17795b = true;
        hVar.f17796c = true;
        hVar.f17798e = this.f17778b.o(i10).f11076c;
        hVar.f17799f = t();
        return hVar;
    }

    @Override // wb.d
    public final int r() {
        bd.e eVar = this.f17791e;
        if (eVar.f2786c == 0) {
            return 214748364;
        }
        int i10 = eVar.f2787d;
        if (i10 != eVar.f2789f) {
            eVar.f2789f = i10;
        }
        eVar.f2790g = 0;
        for (sb.a aVar = (sb.a) eVar.f2794k; aVar != null; aVar = aVar.f14465d) {
            eVar.f2790g = Math.max(eVar.f2790g, aVar.f14464c);
        }
        return eVar.f2790g;
    }

    public final void u(bd.e eVar, bd.e eVar2) {
        if (this.f17778b == null) {
            return;
        }
        eb.c cVar = new eb.c(this.f17777a.Y0);
        cVar.set(this.f17777a.getTextPaint());
        cVar.c();
        int i10 = this.f17790d.get();
        f fVar = new f(this, new d0(1, new o(i10, 18, this)), eVar, this.f17793g, cVar, eVar2, i10);
        this.f17777a.setLayoutBusy(true);
        c.f17776c.submit(fVar);
    }

    public final int w(int i10, boolean z) {
        mb.h hVarO = this.f17778b.o(i10);
        List listT = t();
        this.f17777a.getTextPaint();
        int iV = v(listT);
        if (z) {
            this.f17792f.b(i10, iV);
        } else {
            this.f17792f.g(i10, iV);
        }
        return ((int) this.f17793g.d(hVarO, 0, hVarO.f11076c, this.f17777a.getTextPaint())) + iV;
    }

    @Override // mb.i
    public final void j(mb.g gVar) {
    }
}
