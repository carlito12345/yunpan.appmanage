package wb;

import a2.k1;
import android.util.SparseArray;
import androidx.room.s;
import eb.o;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import s3.d0;
import ua.g5;

/* loaded from: classes.dex */
public final class n extends c {

    /* renamed from: h, reason: collision with root package name */
    public static final ArrayList f17817h;

    /* renamed from: d, reason: collision with root package name */
    public final int f17818d;

    /* renamed from: e, reason: collision with root package name */
    public final float f17819e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17820f;

    /* renamed from: g, reason: collision with root package name */
    public List f17821g;

    static {
        ArrayList arrayList = new ArrayList();
        f17817h = arrayList;
        long j10 = 0;
        arrayList.add(p000if.a.q0((j10 + (j10 << 19)) | 824633720832L));
    }

    public n(CodeEditor codeEditor, mb.g gVar, boolean z, n nVar, boolean z4) {
        super(codeEditor, gVar);
        this.f17820f = z;
        List arrayList = nVar != null ? nVar.f17821g : new ArrayList();
        this.f17821g = arrayList;
        if (z4) {
            arrayList.clear();
        }
        float fW = (codeEditor.getNonPrintablePaintingFlags() & 128) != 0 ? codeEditor.getRenderer().w() : 0.0f;
        this.f17819e = fW;
        this.f17818d = (codeEditor.getWidth() - ((int) (codeEditor.getTextPaint().measureText("a") + codeEditor.S()))) - (((int) fW) * 2);
        int iMin = Math.min(8, (int) Math.ceil(this.f17778b.f11064a.size() / 3000.0f));
        int size = this.f17778b.f11064a.size() / iMin;
        d0 d0Var = new d0(iMin, new g5(19, this));
        this.f17777a.setLayoutBusy(true);
        int i10 = 0;
        while (i10 < iMin) {
            int i11 = i10 + 1;
            c.f17776c.submit(new l(this, d0Var, i10, size * i10, (i11 == iMin ? this.f17778b.f11064a.size() : size * i11) - 1));
            i10 = i11;
        }
    }

    @Override // wb.d
    public final int a() {
        return this.f17821g.isEmpty() ? this.f17778b.f11064a.size() : this.f17821g.size();
    }

    @Override // mb.i
    public final void c(mb.g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        int i14 = i12 - i10;
        if (i14 != 0) {
            for (int iW = w(i10 + 1); iW < this.f17821g.size(); iW++) {
                ((k) this.f17821g.get(iW)).f17807d += i14;
            }
        }
        v(i10, i12);
    }

    @Override // wb.d
    public final int d() {
        if (this.f17821g.isEmpty()) {
            return this.f17778b.f11064a.size() * this.f17777a.getRowHeight();
        }
        return this.f17777a.getRowHeight() * this.f17821g.size();
    }

    @Override // wb.d
    public final float[] e(int i10, int i11, float[] fArr) {
        int i12;
        if (fArr == null || fArr.length < 2) {
            fArr = new float[2];
        }
        if (this.f17821g.isEmpty()) {
            fArr[0] = this.f17777a.K(i10);
            fArr[1] = this.f17777a.getRenderer().d(i10).f(i11);
            return fArr;
        }
        int iW = w(i10);
        if (iW < this.f17821g.size()) {
            k kVar = (k) this.f17821g.get(iW);
            if (kVar.f17807d != i10) {
                fArr[1] = 0.0f;
                fArr[0] = 0.0f;
                return fArr;
            }
            while (kVar.f17804a < i11 && (i12 = iW + 1) < this.f17821g.size()) {
                kVar = (k) this.f17821g.get(i12);
                if (kVar.f17807d != i10 || kVar.f17804a > i11) {
                    kVar = (k) this.f17821g.get(iW);
                    break;
                }
                iW = i12;
            }
            fArr[0] = this.f17777a.K(iW);
            float f10 = this.f17777a.getRenderer().d(iW).f(i11);
            fArr[1] = f10;
            if (kVar.f17804a != 0) {
                fArr[1] = f10 + this.f17819e;
            }
            fArr[1] = kVar.a(this.f17818d) + fArr[1];
        } else {
            fArr[1] = 0.0f;
            fArr[0] = 0.0f;
        }
        return fArr;
    }

    @Override // wb.d
    public final j f(int i10, SparseArray sparseArray) {
        return this.f17821g.isEmpty() ? new k1(this, this.f17778b, i10, sparseArray) : new a9.a(this, i10);
    }

    @Override // wb.d
    public final long g(int i10, int i11) {
        if (this.f17821g.isEmpty()) {
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
        int iX = x(i10, i11);
        int i14 = iX + 1;
        if (i14 >= this.f17821g.size()) {
            return sb.h.g(i10, this.f17778b.o(i10).f11076c);
        }
        int i15 = i11 - ((k) this.f17821g.get(iX)).f17804a;
        k kVar = (k) this.f17821g.get(i14);
        int i16 = kVar.f17805b;
        int i17 = kVar.f17804a;
        return sb.h.g(kVar.f17807d, i17 + Math.min(i15, i16 - i17));
    }

    @Override // wb.d
    public final int h(int i10) {
        if (this.f17821g.isEmpty()) {
            return 1;
        }
        int i11 = 0;
        for (int iW = w(i10); iW < this.f17821g.size() && ((k) this.f17821g.get(iW)).f17807d == i10; iW++) {
            i11++;
        }
        return i11;
    }

    @Override // wb.d
    public final void i(h5.m mVar) {
        int i10;
        int i11;
        int size = this.f17778b.f11064a.size() - 1;
        int i12 = 0;
        while (true) {
            int[] iArr = (int[]) mVar.f6611b;
            if (i12 >= iArr.length) {
                return;
            }
            if (i12 < iArr.length) {
                i10 = i12 + 1;
                i11 = iArr[i12];
                if (i11 > size) {
                }
                v(i11, i11);
                i12 = i10;
            } else {
                i10 = i12;
            }
            i11 = size;
            v(i11, i11);
            i12 = i10;
        }
    }

    @Override // mb.i
    public final void k(mb.g gVar, int i10, int i11, int i12, int i13, StringBuilder sb2) {
        int i14;
        int i15 = i12 - i10;
        if (i15 != 0) {
            int iW = w(i10);
            while (iW < this.f17821g.size() && (i14 = ((k) this.f17821g.get(iW)).f17807d) >= i10 && i14 <= i12) {
                this.f17821g.remove(iW);
            }
            for (int iW2 = w(i12 + 1); iW2 < this.f17821g.size(); iW2++) {
                k kVar = (k) this.f17821g.get(iW2);
                int i16 = kVar.f17807d;
                if (i16 >= i12) {
                    kVar.f17807d = i16 - i15;
                }
            }
        }
        v(i10, i10);
    }

    @Override // wb.d
    public final int l(int i10) {
        int i11;
        mb.b bVarZ = this.f17777a.getText().n().z(i10);
        int i12 = bVarZ.f11057b;
        if (this.f17821g.isEmpty()) {
            return i12;
        }
        int i13 = bVarZ.f11058c;
        int iW = w(i12);
        if (iW >= this.f17821g.size()) {
            return 0;
        }
        k kVar = (k) this.f17821g.get(iW);
        if (kVar.f17807d != i12) {
            return 0;
        }
        while (kVar.f17804a < i13 && (i11 = iW + 1) < this.f17821g.size()) {
            k kVar2 = (k) this.f17821g.get(i11);
            if (kVar2.f17807d != i12 || kVar2.f17804a > i13) {
                break;
            }
            iW = i11;
            kVar = kVar2;
        }
        return iW;
    }

    @Override // wb.d
    public final void m() {
        this.f17777a = null;
        this.f17778b = null;
        this.f17821g = null;
    }

    @Override // wb.d
    public final eb.j n(float f10, float f11) {
        if (this.f17821g.isEmpty()) {
            int iMin = Math.min(this.f17778b.f11064a.size() - 1, Math.max((int) (f11 / this.f17777a.getRowHeight()), 0));
            eb.h hVarG = this.f17777a.getRenderer().d(iMin).g(f10);
            return new eb.j(iMin, hVarG.f4845a, (i) hVarG.f4847c, hVarG.f4846b);
        }
        int iMax = Math.max(0, Math.min((int) (f11 / this.f17777a.getRowHeight()), this.f17821g.size() - 1));
        k kVar = (k) this.f17821g.get(iMax);
        if (kVar.f17804a != 0) {
            f10 -= this.f17819e;
        }
        eb.h hVarG2 = this.f17777a.getRenderer().d(iMax).g(f10 - kVar.a(this.f17818d));
        return new eb.j(kVar.f17807d, hVarG2.f4845a, (i) hVarG2.f4847c, hVarG2.f4846b);
    }

    @Override // wb.d
    public final long o(int i10, int i11) {
        boolean zIsEmpty = this.f17821g.isEmpty();
        long jG = sb.h.g(0, 0);
        if (zIsEmpty) {
            int i12 = i10 - 1;
            if (i12 < 0) {
                return jG;
            }
            int i13 = this.f17778b.o(i12).f11076c;
            if (i11 > i13) {
                i11 = i13;
            }
            return sb.h.g(i12, i11);
        }
        int iX = x(i10, i11);
        if (iX <= 0) {
            return jG;
        }
        int i14 = i11 - ((k) this.f17821g.get(iX)).f17804a;
        k kVar = (k) this.f17821g.get(iX - 1);
        int i15 = kVar.f17805b;
        int i16 = kVar.f17804a;
        return sb.h.g(kVar.f17807d, i16 + Math.min(i14, i15 - i16));
    }

    @Override // wb.d
    public final int p(int i10) {
        Object obj;
        if (this.f17821g.isEmpty()) {
            return Math.max(0, Math.min(i10, this.f17778b.f11064a.size() - 1));
        }
        if (i10 >= this.f17821g.size()) {
            obj = this.f17821g.get(r2.size() - 1);
        } else {
            obj = this.f17821g.get(i10);
        }
        return ((k) obj).f17807d;
    }

    @Override // wb.d
    public final h q(int i10) {
        if (this.f17821g.isEmpty()) {
            h hVar = new h();
            hVar.f17797d = 0;
            hVar.f17798e = this.f17778b.o(i10).f11076c;
            hVar.f17795b = true;
            hVar.f17796c = true;
            hVar.f17794a = i10;
            hVar.f17799f = t();
            return hVar;
        }
        k kVar = (k) this.f17821g.get(i10);
        boolean z = i10 <= 0 || ((k) this.f17821g.get(i10 + (-1))).f17807d != kVar.f17807d;
        int i11 = i10 + 1;
        boolean z4 = i11 >= this.f17821g.size() || ((k) this.f17821g.get(i11)).f17807d != kVar.f17807d;
        k kVar2 = (k) this.f17821g.get(i10);
        float f10 = this.f17818d;
        kVar2.getClass();
        h hVar2 = new h();
        hVar2.f17795b = z;
        hVar2.f17796c = z4;
        hVar2.f17797d = kVar2.f17804a;
        hVar2.f17798e = kVar2.f17805b;
        hVar2.f17794a = kVar2.f17807d;
        List listEmptyList = kVar2.f17806c;
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        hVar2.f17799f = listEmptyList;
        hVar2.f17800g = kVar2.a(f10);
        return hVar2;
    }

    @Override // wb.d
    public final int r() {
        return 0;
    }

    public final ArrayList u(int i10, mb.h hVar, eb.c cVar) {
        if (cVar == null) {
            cVar = new eb.c(this.f17777a.Y0);
            cVar.set(this.f17777a.getTextPaint());
        }
        eb.c cVar2 = cVar;
        o oVar = new o();
        oVar.m(hVar, 0, hVar.f11076c, f17817h, t(), this.f17778b.p(i10), cVar2, null, this.f17777a.getRenderer().e());
        ArrayList arrayList = new ArrayList();
        eb.f fVar = new eb.f(oVar, arrayList, this.f17818d, this.f17820f ? new s(oVar.f4883d) : ob.b.f11691a);
        oVar.k(fVar, false);
        if (arrayList.isEmpty()) {
            eb.n nVar = fVar.f4839a;
            if (nVar.f4875a) {
                nVar.f4875a = false;
                nVar.f4876b = oVar.f4885f;
                nVar.f4877c = oVar.f4886g;
            }
        }
        if (!fVar.f4839a.f4875a) {
            fVar.b();
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            eb.n nVar2 = (eb.n) it.next();
            arrayList2.add(new k(i10, nVar2.f4876b, nVar2.f4877c, null, nVar2.f4878d, false));
        }
        return arrayList2;
    }

    public final void v(int i10, int i11) {
        int i12;
        int i13 = 0;
        while (i13 < this.f17821g.size() && ((k) this.f17821g.get(i13)).f17807d < i10) {
            i13++;
        }
        while (i13 < this.f17821g.size() && (i12 = ((k) this.f17821g.get(i13)).f17807d) >= i10 && i12 <= i11) {
            this.f17821g.remove(i13);
        }
        ArrayList arrayList = new ArrayList();
        while (i10 <= i11) {
            arrayList.addAll(u(i10, this.f17778b.o(i10), null));
            i10++;
        }
        this.f17821g.addAll(i13, arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        r2 = java.lang.Math.max(0, java.lang.Math.min(r5.f17821g.size() - 1, r3));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int w(int i10) {
        int size = this.f17821g.size();
        int iMax = 0;
        while (true) {
            if (iMax <= size) {
                int i11 = (iMax + size) / 2;
                if (i11 >= 0 && i11 < this.f17821g.size()) {
                    int i12 = ((k) this.f17821g.get(i11)).f17807d;
                    if (i12 >= i10) {
                        if (i12 <= i10) {
                            iMax = i11;
                            break;
                        }
                        size = i11 - 1;
                    } else {
                        iMax = i11 + 1;
                    }
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        while (iMax > 0 && ((k) this.f17821g.get(iMax)).f17804a > 0) {
            iMax--;
        }
        return iMax;
    }

    public final int x(int i10, int i11) {
        int i12;
        int iW = w(i10);
        while (((k) this.f17821g.get(iW)).f17805b <= i11 && (i12 = iW + 1) < this.f17821g.size() && ((k) this.f17821g.get(i12)).f17807d == i10) {
            iW = i12;
        }
        return iW;
    }

    @Override // mb.i
    public final void j(mb.g gVar) {
    }
}
