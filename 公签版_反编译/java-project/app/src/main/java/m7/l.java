package m7;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import f2.a0;
import f2.d0;
import f2.e1;
import f2.h0;
import f2.x;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import l5.y;
import r1.q0;
import u1.b0;
import u1.f0;
import y1.a1;
import y1.p0;
import y1.s0;
import y1.t0;
import y1.u0;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10953a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10954b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10955c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f10956d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f10957e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f10958f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f10959g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f10960h;

    /* renamed from: i, reason: collision with root package name */
    public final Object f10961i;

    /* renamed from: j, reason: collision with root package name */
    public final Object f10962j;

    /* renamed from: k, reason: collision with root package name */
    public Object f10963k;
    public Object l;

    public l() {
        this.f10954b = new t[4];
        this.f10955c = new Matrix[4];
        this.f10956d = new Matrix[4];
        this.f10957e = new PointF();
        this.f10958f = new Path();
        this.f10959g = new Path();
        this.f10962j = new t();
        this.f10963k = new float[2];
        this.l = new float[2];
        this.f10960h = new Path();
        this.f10961i = new Path();
        this.f10953a = true;
        for (int i10 = 0; i10 < 4; i10++) {
            ((t[]) this.f10954b)[i10] = new t();
            ((Matrix[]) this.f10955c)[i10] = new Matrix();
            ((Matrix[]) this.f10956d)[i10] = new Matrix();
        }
    }

    public q0 a(int i10, ArrayList arrayList, e1 e1Var) {
        if (!arrayList.isEmpty()) {
            this.f10963k = e1Var;
            for (int i11 = i10; i11 < arrayList.size() + i10; i11++) {
                u0 u0Var = (u0) arrayList.get(i11 - i10);
                ArrayList arrayList2 = (ArrayList) this.f10955c;
                if (i11 > 0) {
                    u0 u0Var2 = (u0) arrayList2.get(i11 - 1);
                    u0Var.f18819d = u0Var2.f18816a.f5424o.f5361b.o() + u0Var2.f18819d;
                    u0Var.f18820e = false;
                    u0Var.f18818c.clear();
                } else {
                    u0Var.f18819d = 0;
                    u0Var.f18820e = false;
                    u0Var.f18818c.clear();
                }
                int iO = u0Var.f18816a.f5424o.f5361b.o();
                for (int i12 = i11; i12 < arrayList2.size(); i12++) {
                    ((u0) arrayList2.get(i12)).f18819d += iO;
                }
                arrayList2.add(i11, u0Var);
                ((HashMap) this.f10957e).put(u0Var.f18817b, u0Var);
                if (this.f10953a) {
                    g(u0Var);
                    if (((IdentityHashMap) this.f10956d).isEmpty()) {
                        ((HashSet) this.f10960h).add(u0Var);
                    } else {
                        t0 t0Var = (t0) ((HashMap) this.f10959g).get(u0Var);
                        if (t0Var != null) {
                            t0Var.f18809a.b(t0Var.f18810b);
                        }
                    }
                }
            }
        }
        return c();
    }

    public void b(j jVar, float f10, RectF rectF, y yVar, Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        t[] tVarArr;
        int i10;
        float[] fArr;
        int i11;
        l lVar = this;
        path.rewind();
        Path path2 = (Path) lVar.f10958f;
        path2.rewind();
        Path path3 = (Path) lVar.f10959g;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i12 = 0;
        while (true) {
            matrixArr = (Matrix[]) lVar.f10956d;
            matrixArr2 = (Matrix[]) lVar.f10955c;
            tVarArr = (t[]) lVar.f10954b;
            i10 = 4;
            fArr = (float[]) lVar.f10963k;
            if (i12 >= 4) {
                break;
            }
            c cVar = i12 != 1 ? i12 != 2 ? i12 != 3 ? jVar.f10946f : jVar.f10945e : jVar.f10948h : jVar.f10947g;
            qf.c cVar2 = i12 != 1 ? i12 != 2 ? i12 != 3 ? jVar.f10942b : jVar.f10941a : jVar.f10944d : jVar.f10943c;
            t tVar = tVarArr[i12];
            cVar2.getClass();
            cVar2.t(tVar, f10, cVar.a(rectF));
            int i13 = i12 + 1;
            float f11 = (i13 % 4) * 90;
            matrixArr2[i12].reset();
            PointF pointF = (PointF) lVar.f10957e;
            if (i12 == 1) {
                i11 = i13;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i12 == 2) {
                i11 = i13;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i12 != 3) {
                i11 = i13;
                pointF.set(rectF.right, rectF.top);
            } else {
                i11 = i13;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i12].setTranslate(pointF.x, pointF.y);
            matrixArr2[i12].preRotate(f11);
            t tVar2 = tVarArr[i12];
            fArr[0] = tVar2.f10983b;
            fArr[1] = tVar2.f10984c;
            matrixArr2[i12].mapPoints(fArr);
            matrixArr[i12].reset();
            matrixArr[i12].setTranslate(fArr[0], fArr[1]);
            matrixArr[i12].preRotate(f11);
            i12 = i11;
        }
        int i14 = 0;
        while (i14 < i10) {
            t tVar3 = tVarArr[i14];
            tVar3.getClass();
            fArr[0] = 0.0f;
            fArr[1] = tVar3.f10982a;
            matrixArr2[i14].mapPoints(fArr);
            if (i14 == 0) {
                path.moveTo(fArr[0], fArr[1]);
            } else {
                path.lineTo(fArr[0], fArr[1]);
            }
            tVarArr[i14].b(matrixArr2[i14], path);
            if (yVar != null) {
                t tVar4 = tVarArr[i14];
                Matrix matrix = matrixArr2[i14];
                g gVar = (g) yVar.f10629b;
                BitSet bitSet = gVar.f10923d;
                tVar4.getClass();
                bitSet.set(i14, false);
                tVar4.a(tVar4.f10986e);
                gVar.f10921b[i14] = new m(new ArrayList(tVar4.f10988g), new Matrix(matrix));
            }
            int i15 = i14 + 1;
            int i16 = i15 % 4;
            t tVar5 = tVarArr[i14];
            fArr[0] = tVar5.f10983b;
            fArr[1] = tVar5.f10984c;
            matrixArr2[i14].mapPoints(fArr);
            t tVar6 = tVarArr[i16];
            tVar6.getClass();
            float[] fArr2 = (float[]) lVar.l;
            fArr2[0] = 0.0f;
            fArr2[1] = tVar6.f10982a;
            matrixArr2[i16].mapPoints(fArr2);
            float fMax = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            t tVar7 = tVarArr[i14];
            fArr[0] = tVar7.f10983b;
            fArr[1] = tVar7.f10984c;
            matrixArr2[i14].mapPoints(fArr);
            if (i14 == 1 || i14 == 3) {
                Math.abs(rectF.centerX() - fArr[0]);
            } else {
                Math.abs(rectF.centerY() - fArr[1]);
            }
            t tVar8 = (t) lVar.f10962j;
            tVar8.d(0.0f, 270.0f, 0.0f);
            (i14 != 1 ? i14 != 2 ? i14 != 3 ? jVar.f10950j : jVar.f10949i : jVar.l : jVar.f10951k).getClass();
            tVar8.c(fMax, 0.0f);
            Path path4 = (Path) lVar.f10960h;
            path4.reset();
            tVar8.b(matrixArr[i14], path4);
            if (lVar.f10953a && Build.VERSION.SDK_INT >= 19 && (lVar.f(path4, i14) || lVar.f(path4, i16))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = 0.0f;
                fArr[1] = tVar8.f10982a;
                matrixArr[i14].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                tVar8.b(matrixArr[i14], path2);
            } else {
                tVar8.b(matrixArr[i14], path);
            }
            if (yVar != null) {
                Matrix matrix2 = matrixArr[i14];
                g gVar2 = (g) yVar.f10629b;
                gVar2.f10923d.set(i14 + 4, false);
                tVar8.a(tVar8.f10986e);
                gVar2.f10922c[i14] = new m(new ArrayList(tVar8.f10988g), new Matrix(matrix2));
            }
            i10 = 4;
            lVar = this;
            i14 = i15;
        }
        path.close();
        path2.close();
        if (Build.VERSION.SDK_INT < 19 || path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public q0 c() {
        ArrayList arrayList = (ArrayList) this.f10955c;
        if (arrayList.isEmpty()) {
            return q0.f13551a;
        }
        int iO = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            u0 u0Var = (u0) arrayList.get(i10);
            u0Var.f18819d = iO;
            iO += u0Var.f18816a.f5424o.f5361b.o();
        }
        return new a1(arrayList, (e1) this.f10963k);
    }

    public void d() {
        Iterator it = ((HashSet) this.f10960h).iterator();
        while (it.hasNext()) {
            u0 u0Var = (u0) it.next();
            if (u0Var.f18818c.isEmpty()) {
                t0 t0Var = (t0) ((HashMap) this.f10959g).get(u0Var);
                if (t0Var != null) {
                    t0Var.f18809a.b(t0Var.f18810b);
                }
                it.remove();
            }
        }
    }

    public void e(u0 u0Var) {
        if (u0Var.f18820e && u0Var.f18818c.isEmpty()) {
            t0 t0Var = (t0) ((HashMap) this.f10959g).remove(u0Var);
            t0Var.getClass();
            p0 p0Var = t0Var.f18810b;
            f2.a aVar = t0Var.f18809a;
            aVar.n(p0Var);
            s0 s0Var = t0Var.f18811c;
            aVar.q(s0Var);
            aVar.p(s0Var);
            ((HashSet) this.f10960h).remove(u0Var);
        }
    }

    public boolean f(Path path, int i10) {
        Path path2 = (Path) this.f10961i;
        path2.reset();
        ((t[]) this.f10954b)[i10].b(((Matrix[]) this.f10955c)[i10], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [f2.d0, y1.p0] */
    public void g(u0 u0Var) {
        x xVar = u0Var.f18816a;
        ?? r12 = new d0() { // from class: y1.p0
            @Override // f2.d0
            public final void a(f2.a aVar, r1.q0 q0Var) {
                u1.b0 b0Var = ((f0) this.f18789a.f10958f).f18660h;
                b0Var.e(2);
                b0Var.f(22);
            }
        };
        s0 s0Var = new s0(this, u0Var);
        ((HashMap) this.f10959g).put(u0Var, new t0(xVar, r12, s0Var));
        String str = f0.f15206a;
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        Handler handler = new Handler(looperMyLooper, null);
        xVar.getClass();
        b2.d dVar = xVar.f5195c;
        dVar.getClass();
        dVar.f2530c.add(new h0(handler, s0Var));
        Looper looperMyLooper2 = Looper.myLooper();
        if (looperMyLooper2 == null) {
            looperMyLooper2 = Looper.getMainLooper();
        }
        Handler handler2 = new Handler(looperMyLooper2, null);
        b2.d dVar2 = xVar.f5196d;
        dVar2.getClass();
        dVar2.f2530c.add(new b2.c(handler2, s0Var));
        xVar.j(r12, (w1.x) this.l, (z1.i) this.f10954b);
    }

    public void h(a0 a0Var) {
        IdentityHashMap identityHashMap = (IdentityHashMap) this.f10956d;
        u0 u0Var = (u0) identityHashMap.remove(a0Var);
        u0Var.getClass();
        u0Var.f18816a.m(a0Var);
        u0Var.f18818c.remove(((f2.u) a0Var).f5385a);
        if (!identityHashMap.isEmpty()) {
            d();
        }
        e(u0Var);
    }

    public void i(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            ArrayList arrayList = (ArrayList) this.f10955c;
            u0 u0Var = (u0) arrayList.remove(i12);
            ((HashMap) this.f10957e).remove(u0Var.f18817b);
            int i13 = -u0Var.f18816a.f5424o.f5361b.o();
            for (int i14 = i12; i14 < arrayList.size(); i14++) {
                ((u0) arrayList.get(i14)).f18819d += i13;
            }
            u0Var.f18820e = true;
            if (this.f10953a) {
                e(u0Var);
            }
        }
    }

    public l(y1.f0 f0Var, z1.e eVar, b0 b0Var, z1.i iVar) {
        this.f10954b = iVar;
        this.f10958f = f0Var;
        this.f10963k = new e1();
        this.f10956d = new IdentityHashMap();
        this.f10957e = new HashMap();
        this.f10955c = new ArrayList();
        this.f10961i = eVar;
        this.f10962j = b0Var;
        this.f10959g = new HashMap();
        this.f10960h = new HashSet();
    }
}
