package b5;

import a9.o;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import f2.j1;
import fa.d0;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;
import java.util.WeakHashMap;
import u1.b0;
import u1.f0;
import u1.q;
import u1.z;
import v1.t;
import w.d3;
import w.n1;
import w.s;
import x0.b1;
import x0.e0;
import x0.j0;
import x0.p0;
import y1.r;
import y1.x;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public int f2571a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2572b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f2573c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2574d;

    /* renamed from: e, reason: collision with root package name */
    public Object f2575e;

    /* renamed from: f, reason: collision with root package name */
    public Object f2576f;

    public i(View view) {
        this.f2571a = -1;
        this.f2572b = view;
        this.f2573c = s.a();
    }

    public static void b(StringBuffer stringBuffer, Writer writer) throws IOException {
        int length = stringBuffer.length();
        if (length == 0 || stringBuffer.charAt(length - 1) == '\n') {
            return;
        }
        writer.write(10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        if (r10 < r2.f16407b) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(long j10, q qVar) {
        int i10;
        if (j10 != -9223372036854775807L && (i10 = this.f2571a) != 0) {
            PriorityQueue priorityQueue = (PriorityQueue) this.f2575e;
            if (i10 != -1 && priorityQueue.size() >= this.f2571a) {
                v1.s sVar = (v1.s) priorityQueue.peek();
                String str = f0.f15206a;
            }
            ArrayDeque arrayDeque = (ArrayDeque) this.f2573c;
            q qVar2 = arrayDeque.isEmpty() ? new q() : (q) arrayDeque.pop();
            qVar2.L(qVar.a());
            System.arraycopy(qVar.f15266a, qVar.f15267b, qVar2.f15266a, 0, qVar2.a());
            v1.s sVar2 = (v1.s) this.f2576f;
            if (sVar2 != null && j10 == sVar2.f16407b) {
                sVar2.f16406a.add(qVar2);
                return;
            }
            ArrayDeque arrayDeque2 = (ArrayDeque) this.f2574d;
            v1.s sVar3 = arrayDeque2.isEmpty() ? new v1.s() : (v1.s) arrayDeque2.pop();
            sVar3.getClass();
            o.k(j10 != -9223372036854775807L);
            ArrayList arrayList = sVar3.f16406a;
            o.t(arrayList.isEmpty());
            sVar3.f16407b = j10;
            arrayList.add(qVar2);
            priorityQueue.add(sVar3);
            this.f2576f = sVar3;
            int i11 = this.f2571a;
            if (i11 != -1) {
                d(i11);
                return;
            }
            return;
        }
        ((t) this.f2572b).b(j10, qVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c() {
        PorterDuff.Mode supportBackgroundTintMode;
        View view = (View) this.f2572b;
        Drawable background = view.getBackground();
        if (background != null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 <= 21 ? i10 == 21 : ((d3) this.f2574d) != null) {
                if (((d3) this.f2576f) == null) {
                    this.f2576f = new d3();
                }
                d3 d3Var = (d3) this.f2576f;
                d3Var.f17047a = null;
                d3Var.f17050d = false;
                d3Var.f17048b = null;
                d3Var.f17049c = false;
                WeakHashMap weakHashMap = b1.f17953a;
                ColorStateList colorStateListG = i10 >= 21 ? p0.g(view) : view instanceof e0 ? ((e0) view).getSupportBackgroundTintList() : null;
                if (colorStateListG != null) {
                    d3Var.f17050d = true;
                    d3Var.f17047a = colorStateListG;
                }
                if (i10 >= 21) {
                    supportBackgroundTintMode = p0.h(view);
                } else {
                    supportBackgroundTintMode = view instanceof e0 ? ((e0) view).getSupportBackgroundTintMode() : null;
                }
                if (supportBackgroundTintMode != null) {
                    d3Var.f17049c = true;
                    d3Var.f17048b = supportBackgroundTintMode;
                }
                if (d3Var.f17050d || d3Var.f17049c) {
                    s.e(background, d3Var, view.getDrawableState());
                    return;
                }
            }
            d3 d3Var2 = (d3) this.f2575e;
            if (d3Var2 != null) {
                s.e(background, d3Var2, view.getDrawableState());
                return;
            }
            d3 d3Var3 = (d3) this.f2574d;
            if (d3Var3 != null) {
                s.e(background, d3Var3, view.getDrawableState());
            }
        }
    }

    public void d(int i10) {
        ArrayList arrayList;
        while (true) {
            PriorityQueue priorityQueue = (PriorityQueue) this.f2575e;
            if (priorityQueue.size() <= i10) {
                return;
            }
            v1.s sVar = (v1.s) priorityQueue.poll();
            String str = f0.f15206a;
            int i11 = 0;
            while (true) {
                int size = sVar.f16406a.size();
                arrayList = sVar.f16406a;
                if (i11 >= size) {
                    break;
                }
                ((t) this.f2572b).b(sVar.f16407b, (q) arrayList.get(i11));
                ((ArrayDeque) this.f2573c).push((q) arrayList.get(i11));
                i11++;
            }
            arrayList.clear();
            v1.s sVar2 = (v1.s) this.f2576f;
            if (sVar2 != null && sVar2.f16407b == sVar.f16407b) {
                this.f2576f = null;
            }
            ((ArrayDeque) this.f2574d).push(sVar);
        }
    }

    public Object e() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == ((b0) this.f2573c).f15188a.getLooper()) {
            return this.f2575e;
        }
        o.t(looperMyLooper == ((b0) this.f2572b).f15188a.getLooper());
        return this.f2576f;
    }

    public ColorStateList f() {
        d3 d3Var = (d3) this.f2575e;
        if (d3Var != null) {
            return d3Var.f17047a;
        }
        return null;
    }

    public PorterDuff.Mode g() {
        d3 d3Var = (d3) this.f2575e;
        if (d3Var != null) {
            return d3Var.f17048b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void h(AttributeSet attributeSet, int i10) {
        ColorStateList colorStateListI;
        View view = (View) this.f2572b;
        Context context = view.getContext();
        int[] iArr = p.a.z;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, i10);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        View view2 = (View) this.f2572b;
        b1.w(view2, view2.getContext(), iArr, attributeSet, (TypedArray) aVarJ.f14294c, i10);
        try {
            if (typedArray.hasValue(0)) {
                this.f2571a = typedArray.getResourceId(0, -1);
                s sVar = (s) this.f2573c;
                Context context2 = view.getContext();
                int i11 = this.f2571a;
                synchronized (sVar) {
                    colorStateListI = sVar.f17251a.i(context2, i11);
                }
                if (colorStateListI != null) {
                    m(colorStateListI);
                }
            }
            if (typedArray.hasValue(1)) {
                b1.A(view, aVarJ.d(1));
            }
            if (typedArray.hasValue(2)) {
                PorterDuff.Mode modeB = n1.b(typedArray.getInt(2, -1), null);
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 21) {
                    p0.r(view, modeB);
                    if (i12 == 21) {
                        Drawable background = view.getBackground();
                        boolean z = (p0.g(view) == null && p0.h(view) == null) ? false : true;
                        if (background != null && z) {
                            if (background.isStateful()) {
                                background.setState(view.getDrawableState());
                            }
                            j0.q(view, background);
                        }
                    }
                } else if (view instanceof e0) {
                    ((e0) view).setSupportBackgroundTintMode(modeB);
                }
            }
        } finally {
            aVarJ.r();
        }
    }

    public void i() {
        this.f2571a = -1;
        m(null);
        c();
    }

    public void j(int i10) {
        ColorStateList colorStateListI;
        this.f2571a = i10;
        s sVar = (s) this.f2573c;
        if (sVar != null) {
            Context context = ((View) this.f2572b).getContext();
            synchronized (sVar) {
                colorStateListI = sVar.f17251a.i(context, i10);
            }
        } else {
            colorStateListI = null;
        }
        m(colorStateListI);
        c();
    }

    public void k() throws IOException {
        StringBuffer stringBuffer;
        int iIndexOf;
        while (true) {
            StringBuffer stringBuffer2 = (StringBuffer) this.f2573c;
            int iIndexOf2 = stringBuffer2.indexOf(SignParameters.NEW_LINE);
            if (iIndexOf2 < 0 || (iIndexOf = (stringBuffer = (StringBuffer) this.f2574d).indexOf(SignParameters.NEW_LINE)) < 0) {
                return;
            }
            StringWriter stringWriter = (StringWriter) this.f2572b;
            if (iIndexOf2 != 0) {
                stringWriter.write(stringBuffer2.substring(0, iIndexOf2));
            }
            if (iIndexOf != 0) {
                for (int i10 = this.f2571a - iIndexOf2; i10 > 0; i10--) {
                    stringWriter.write(32);
                }
                stringWriter.write(stringBuffer.substring(0, iIndexOf));
            }
            stringWriter.write(10);
            stringBuffer2.delete(0, iIndexOf2 + 1);
            stringBuffer.delete(0, iIndexOf + 1);
        }
    }

    public void l(Runnable runnable) {
        b0 b0Var = (b0) this.f2572b;
        if (b0Var.f15188a.getLooper().getThread().isAlive()) {
            b0Var.d(runnable);
        }
    }

    public void m(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((d3) this.f2574d) == null) {
                this.f2574d = new d3();
            }
            d3 d3Var = (d3) this.f2574d;
            d3Var.f17047a = colorStateList;
            d3Var.f17050d = true;
        } else {
            this.f2574d = null;
        }
        c();
    }

    public void n(int i10) {
        o.t(i10 >= 0);
        this.f2571a = i10;
        d(i10);
    }

    public void o(ColorStateList colorStateList) {
        if (((d3) this.f2575e) == null) {
            this.f2575e = new d3();
        }
        d3 d3Var = (d3) this.f2575e;
        d3Var.f17047a = colorStateList;
        d3Var.f17050d = true;
        c();
    }

    public void p(PorterDuff.Mode mode) {
        if (((d3) this.f2575e) == null) {
            this.f2575e = new d3();
        }
        d3 d3Var = (d3) this.f2575e;
        d3Var.f17048b = mode;
        d3Var.f17049c = true;
        c();
    }

    public void q(Object obj) {
        Object obj2 = this.f2575e;
        this.f2575e = obj;
        if (obj2.equals(obj)) {
            return;
        }
        r rVar = (r) this.f2574d;
        rVar.getClass();
        ((Integer) obj2).intValue();
        Integer num = (Integer) obj;
        int iIntValue = num.intValue();
        x xVar = rVar.f18797a;
        xVar.h0();
        xVar.W(1, 10, num);
        xVar.W(2, 10, num);
        xVar.f18861m.e(21, new d0(iIntValue, 4));
    }

    public i(t tVar) {
        this.f2572b = tVar;
        this.f2573c = new ArrayDeque();
        this.f2574d = new ArrayDeque();
        this.f2575e = new PriorityQueue();
        this.f2571a = -1;
    }

    public i(Object obj, Looper looper, Looper looper2, z zVar, r rVar) {
        this.f2572b = zVar.a(looper, null);
        this.f2573c = zVar.a(looper2, null);
        this.f2575e = obj;
        this.f2576f = obj;
        this.f2574d = rVar;
    }

    public i(StringWriter stringWriter, int i10, int i11, String str) {
        if (stringWriter == null) {
            throw new NullPointerException("out == null");
        }
        if (i10 < 1) {
            throw new IllegalArgumentException("leftWidth < 1");
        }
        if (i11 >= 1) {
            StringWriter stringWriter2 = new StringWriter(1000);
            StringWriter stringWriter3 = new StringWriter(1000);
            this.f2572b = stringWriter;
            this.f2571a = i10;
            this.f2573c = stringWriter2.getBuffer();
            this.f2574d = stringWriter3.getBuffer();
            this.f2575e = new d(i10, stringWriter2, "");
            this.f2576f = new d(i11, stringWriter3, str);
            return;
        }
        throw new IllegalArgumentException("rightWidth < 1");
    }

    public i(int[] iArr, j1[] j1VarArr, int[] iArr2, int[][][] iArr3, j1 j1Var) {
        this.f2572b = iArr;
        this.f2573c = j1VarArr;
        this.f2575e = iArr3;
        this.f2574d = iArr2;
        this.f2576f = j1Var;
        this.f2571a = iArr.length;
    }
}
