package tb;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ViewConfiguration;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.hsae.autosdk.popup.constant.PopupConst;
import ha.jd;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class u implements GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, ScaleGestureDetector.OnScaleGestureListener {
    public final int A;
    public MotionEvent B;
    public float C;
    public float D;
    public int E;
    public long F;
    public boolean G;
    public PointF H;
    public boolean I;
    public boolean K;
    public mb.b L;
    public boolean M;
    public boolean N;
    public long T;
    public boolean V;
    public float X;

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f15016a;

    /* renamed from: b, reason: collision with root package name */
    public final m f15017b;

    /* renamed from: d, reason: collision with root package name */
    public final vb.v f15019d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15021f;

    /* renamed from: g, reason: collision with root package name */
    public float f15022g;

    /* renamed from: h, reason: collision with root package name */
    public float f15023h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f15024i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f15025j;

    /* renamed from: n, reason: collision with root package name */
    public float f15028n;

    /* renamed from: y, reason: collision with root package name */
    public final float f15036y;
    public int z;

    /* renamed from: e, reason: collision with root package name */
    public int f15020e = -1;

    /* renamed from: k, reason: collision with root package name */
    public boolean f15026k = false;

    /* renamed from: p, reason: collision with root package name */
    public long f15029p = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f15030q = 0;
    public boolean r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f15031s = false;

    /* renamed from: t, reason: collision with root package name */
    public float f15032t = 0.0f;

    /* renamed from: v, reason: collision with root package name */
    public float f15033v = 0.0f;
    public int O = -1;
    public int P = -1;
    public int R = -1;
    public int S = -1;
    public final float l = TypedValue.applyDimension(2, 26.0f, Resources.getSystem().getDisplayMetrics());

    /* renamed from: m, reason: collision with root package name */
    public final float f15027m = TypedValue.applyDimension(2, 8.0f, Resources.getSystem().getDisplayMetrics());

    /* renamed from: w, reason: collision with root package name */
    public d3.g f15034w = new d3.g(1, 5, this);

    /* renamed from: x, reason: collision with root package name */
    public d3.g f15035x = new d3.g(2, 5, this);

    /* renamed from: c, reason: collision with root package name */
    public final d3.g f15018c = new d3.g(0, 5, this);

    public u(CodeEditor codeEditor) {
        this.f15016a = codeEditor;
        this.f15036y = codeEditor.getDpUnit() * 18.0f;
        this.f15017b = new m(codeEditor);
        this.f15019d = new vb.v(codeEditor);
        this.A = ViewConfiguration.get(codeEditor.getContext()).getScaledTouchSlop();
    }

    public static boolean a(u uVar, float f10, float f11) {
        uVar.getClass();
        if (Math.abs(f10) < 100000.0d || Math.abs(f11) < 100000.0d) {
            return false;
        }
        return (f10 < 0.0f && f11 < 0.0f) || (f10 > 0.0f && f11 > 0.0f);
    }

    public final int b(jd jdVar, mb.b bVar, MotionEvent motionEvent) {
        CodeEditor codeEditor = this.f15016a;
        ue.d.e(codeEditor, "<this>");
        ue.d.e(motionEvent, "event");
        long jD0 = com.bumptech.glide.d.d0(codeEditor, motionEvent, -1);
        return c(jdVar, bVar, motionEvent, (int) (jD0 >> 32), (int) (jD0 & 4294967295L));
    }

    public final int c(jd jdVar, mb.b bVar, MotionEvent motionEvent, int i10, int i11) {
        bi.a sVar;
        CodeEditor codeEditor = this.f15016a;
        if (bVar == null) {
            long jI = codeEditor.I(motionEvent.getX(), motionEvent.getY());
            bVar = codeEditor.getText().n().A((int) (jI >> 32), (int) (jI & 4294967295L));
        }
        mb.b bVar2 = bVar;
        codeEditor.getStyles();
        codeEditor.getText();
        Integer numValueOf = Integer.valueOf(i10);
        Integer numValueOf2 = Integer.valueOf(i11);
        CodeEditor codeEditor2 = this.f15016a;
        switch (jdVar.f7289a) {
            case 22:
                sVar = new db.s(codeEditor2, bVar2, motionEvent, numValueOf.intValue(), numValueOf2.intValue());
                break;
            case 23:
                sVar = new db.u(codeEditor2, bVar2, motionEvent, numValueOf.intValue(), numValueOf2.intValue());
                break;
            case 24:
                sVar = new db.b(codeEditor2, bVar2, motionEvent, numValueOf.intValue(), numValueOf2.intValue(), false);
                break;
            case 25:
                sVar = new db.b(codeEditor2, bVar2, motionEvent, numValueOf.intValue(), numValueOf2.intValue(), false);
                break;
            default:
                sVar = new db.b(codeEditor2, bVar2, motionEvent, numValueOf.intValue(), numValueOf2.intValue());
                break;
        }
        return codeEditor2.f8717i.a(sVar);
    }

    public final void d(int i10, boolean z) {
        CodeEditor codeEditor = this.f15016a;
        codeEditor.f8717i.a(new db.r(codeEditor, i10, z));
    }

    public final void e() {
        boolean z = this.N;
        this.M = false;
        this.N = false;
        this.O = -1;
        this.P = -1;
        this.R = -1;
        this.S = -1;
        if (z) {
            CodeEditor codeEditor = this.f15016a;
            codeEditor.f8717i.a(new db.f(codeEditor));
        }
    }

    public final boolean f(MotionEvent motionEvent, boolean z) {
        CodeEditor codeEditor = this.f15016a;
        if (!codeEditor.getProps().z || !this.M) {
            return false;
        }
        mb.g text = codeEditor.getText();
        if (text.f11067d == 0) {
            return true;
        }
        long jI = codeEditor.I(motionEvent.getX(), motionEvent.getY());
        int iL = text.l((int) (jI >> 32), (int) (jI & 4294967295L));
        if (!this.N) {
            if (iL == this.O) {
                if (!z) {
                    l(motionEvent);
                }
                return true;
            }
            this.N = true;
        }
        if (iL == this.S) {
            n(motionEvent);
            if (!z) {
                l(motionEvent);
            }
            return true;
        }
        int iB = sb.h.b(iL <= this.O ? this.R : this.P, text.f11067d);
        int iMin = Math.min(iB, iL);
        int iMax = Math.max(iB, iL);
        mb.a aVarN = text.n();
        if (iMin == iMax) {
            mb.b bVarZ = aVarN.z(iMin);
            codeEditor.h0(bVarZ.f11057b, bVarZ.f11058c, 2, false);
        } else {
            mb.b bVarZ2 = aVarN.z(iMin);
            mb.b bVarZ3 = aVarN.z(iMax);
            this.f15016a.j0(bVarZ2.f11057b, bVarZ2.f11058c, bVarZ3.f11057b, bVarZ3.f11058c, 2, false);
        }
        this.S = iL;
        n(motionEvent);
        if (!z) {
            l(motionEvent);
        }
        return true;
    }

    public final boolean g() {
        return this.f15020e != -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(MotionEvent motionEvent) {
        int y6;
        int iMin;
        this.f15023h = motionEvent.getY();
        this.f15022g = motionEvent.getX();
        int action = motionEvent.getAction();
        CodeEditor codeEditor = this.f15016a;
        if (action == 0) {
            e();
            this.f15032t = motionEvent.getY();
            this.f15033v = motionEvent.getX();
            this.f15031s = false;
            this.r = false;
            RectF rectF = codeEditor.getRenderer().f14968h;
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            float dpUnit = codeEditor.getDpUnit() * 10.0f;
            if (x10 >= rectF.left - dpUnit && x10 <= rectF.right + dpUnit && y10 >= rectF.top && y10 <= rectF.bottom) {
                this.r = true;
            }
            if (codeEditor.getRenderer().f14969i.contains(motionEvent.getX(), motionEvent.getY())) {
                this.f15031s = true;
            }
            boolean z = this.r;
            if (z || this.f15031s) {
                if (z && this.f15031s) {
                    this.f15031s = false;
                }
                codeEditor.invalidate();
            } else {
                float dpUnit2 = codeEditor.getDpUnit() * 7.0f;
                if (m() && qf.c.d(codeEditor.getInsertHandleDescriptor().f2989a, motionEvent.getX(), motionEvent.getY(), dpUnit2)) {
                    this.f15020e = 0;
                }
                boolean zD = qf.c.d(codeEditor.getLeftHandleDescriptor().f2989a, motionEvent.getX(), motionEvent.getY(), dpUnit2);
                boolean zD2 = qf.c.d(codeEditor.getRightHandleDescriptor().f2989a, motionEvent.getX(), motionEvent.getY(), dpUnit2);
                if (zD) {
                    this.f15020e = 1;
                } else if (zD2) {
                    this.f15020e = 2;
                }
                int i10 = this.f15020e;
                if (i10 != -1) {
                    this.f15021f = false;
                    d(i10, true);
                }
            }
            return true;
        }
        if (action == 1) {
            if (this.r || this.f15031s) {
                this.f15031s = false;
                this.r = false;
                this.f15029p = System.currentTimeMillis();
                this.f15029p = System.currentTimeMillis();
                codeEditor.Y(new s(this, 1), PopupConst.DURATION_POPUP_SHORT);
            }
            e();
            int i11 = this.f15020e;
            if (i11 != -1) {
                d(i11, false);
                if (this.f15020e == 0) {
                    this.f15030q = System.currentTimeMillis();
                    codeEditor.Y(new s(this, 0), 3500L);
                }
                this.f15020e = -1;
            }
            codeEditor.invalidate();
            this.z = 0;
            this.f15019d.a();
        } else {
            if (action == 2) {
                if (this.r) {
                    float y11 = motionEvent.getY() - this.f15032t;
                    this.f15032t = motionEvent.getY();
                    j(0.0f, (y11 / (codeEditor.getHeight() - codeEditor.getRenderer().f14968h.height())) * codeEditor.getScrollMaxY(), false);
                    return true;
                }
                if (this.f15031s) {
                    float x11 = motionEvent.getX() - this.f15033v;
                    this.f15033v = motionEvent.getX();
                    j((codeEditor.getRenderer().f14969i.width() <= codeEditor.getDpUnit() * 60.0f ? x11 / (codeEditor.getWidth() - codeEditor.getRenderer().f14969i.width()) : x11 / codeEditor.getWidth()) * (codeEditor.getWidth() + codeEditor.getScrollMaxX()), 0.0f, false);
                    return true;
                }
                if (f(motionEvent, false)) {
                    return true;
                }
                if (!this.f15021f) {
                    float fAbs = Math.abs(motionEvent.getX() - this.f15033v);
                    float f10 = this.A;
                    if (fAbs > f10 || Math.abs(motionEvent.getY() - this.f15032t) > f10) {
                        this.f15021f = true;
                    }
                }
                if (this.f15021f) {
                    int i12 = this.f15020e;
                    if (i12 == 0) {
                        this.f15018c.f(motionEvent);
                        l(motionEvent);
                    } else if (i12 == 1) {
                        codeEditor.f8713g = codeEditor.getCursor().f11082d.a();
                        this.f15034w.f(motionEvent);
                        l(motionEvent);
                    } else if (i12 == 2) {
                        codeEditor.f8713g = codeEditor.getCursor().f11081c.a();
                        this.f15035x.f(motionEvent);
                        l(motionEvent);
                    }
                    vb.v vVar = this.f15019d;
                    if (!vVar.f16777b.isShowing()) {
                        if (Math.sqrt(g.b.b(motionEvent.getY(), this.f15032t, motionEvent.getY() - this.f15032t, (motionEvent.getX() - this.f15033v) * (motionEvent.getX() - this.f15033v))) >= 4.0d) {
                            if (this.z == 0 && g()) {
                                int i13 = this.f15020e;
                                RectF rectF2 = (i13 != 0 ? i13 != 1 ? i13 != 2 ? null : codeEditor.getRightHandleDescriptor() : codeEditor.getLeftHandleDescriptor() : codeEditor.getInsertHandleDescriptor()).f2989a;
                                float fHeight = rectF2.height();
                                if (codeEditor.V0) {
                                    iMin = Math.min((int) motionEvent.getX(), (int) rectF2.right);
                                    y6 = (int) (rectF2.top - (fHeight / 2.0f));
                                } else {
                                    int x12 = (int) motionEvent.getX();
                                    y6 = (int) ((motionEvent.getY() - (fHeight / 2.0f)) - codeEditor.getRowHeight());
                                    iMin = x12;
                                }
                                vVar.b(iMin, y6);
                            } else {
                                this.f15019d.a();
                            }
                        }
                    }
                    codeEditor.invalidate();
                    return true;
                }
                return false;
            }
            if (action == 3) {
            }
        }
        return false;
    }

    public final void i() {
        this.D = 0.0f;
        this.C = 0.0f;
        this.I = false;
        this.K = false;
        this.L = null;
        if (this.G) {
            this.G = false;
            this.F = 0L;
        }
    }

    public final void j(float f10, float f11, boolean z) {
        m mVar = this.f15017b;
        int currX = mVar.f14985b.getCurrX() + ((int) f10);
        OverScroller overScroller = mVar.f14985b;
        int currY = overScroller.getCurrY() + ((int) f11);
        int iMax = Math.max(currX, 0);
        int iMax2 = Math.max(currY, 0);
        CodeEditor codeEditor = this.f15016a;
        int iMin = Math.min(iMax2, codeEditor.getScrollMaxY());
        int iMin2 = Math.min(iMax, codeEditor.getScrollMaxX());
        int currX2 = overScroller.getCurrX();
        int currY2 = overScroller.getCurrY();
        CodeEditor codeEditor2 = this.f15016a;
        codeEditor2.f8717i.a(new db.w(codeEditor2, currX2, currY2, iMin2, iMin, 1));
        if (z) {
            mVar.b(overScroller.getCurrX(), overScroller.getCurrY(), iMin2 - overScroller.getCurrX(), iMin - overScroller.getCurrY(), mVar.f14984a.getProps().f14919j);
        } else {
            mVar.b(mVar.f14985b.getCurrX(), overScroller.getCurrY(), iMin2 - overScroller.getCurrX(), iMin - overScroller.getCurrY(), 0);
            overScroller.abortAnimation();
            mVar.a();
        }
        codeEditor.invalidate();
    }

    public final void k(MotionEvent motionEvent, float f10, float f11) {
        if (motionEvent != null) {
            f10 = motionEvent.getX();
            f11 = motionEvent.getY();
        }
        float f12 = this.f15036y;
        int i10 = f10 < f12 ? 1 : 0;
        if (f11 < f12) {
            i10 |= 4;
        }
        CodeEditor codeEditor = this.f15016a;
        if (f10 > codeEditor.getWidth() - f12) {
            i10 |= 2;
        }
        if (f11 > codeEditor.getHeight() - f12) {
            i10 |= 8;
        }
        if (i10 == 0) {
            this.z = 0;
            return;
        }
        int i11 = this.z;
        this.z = i10;
        this.B = motionEvent == null ? null : MotionEvent.obtain(motionEvent);
        if (i11 == 0) {
            codeEditor.Z(new t(this, (int) (codeEditor.getDpUnit() * 8.0f)));
        }
    }

    public final void l(MotionEvent motionEvent) {
        k(motionEvent, 0.0f, 0.0f);
    }

    public final boolean m() {
        return System.currentTimeMillis() - this.f15030q < 3500 || this.f15020e == 0;
    }

    public final void n(MotionEvent motionEvent) {
        if (this.f15016a.getProps().z && this.z == 0) {
            vb.v vVar = this.f15019d;
            vVar.getClass();
            if (this.N) {
                if (!vVar.f16777b.isShowing()) {
                    double x10 = motionEvent.getX() - this.f15033v;
                    double y6 = motionEvent.getY() - this.f15032t;
                    Double.isNaN(x10);
                    Double.isNaN(x10);
                    Double.isNaN(y6);
                    Double.isNaN(y6);
                    if (Math.sqrt((y6 * y6) + (x10 * x10)) < 4.0d) {
                        return;
                    }
                }
                vVar.b((int) motionEvent.getX(), (int) (motionEvent.getY() - r0.getRowHeight()));
                return;
            }
        }
        this.f15019d.a();
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        CodeEditor codeEditor = this.f15016a;
        codeEditor.O();
        long jI = codeEditor.I(motionEvent.getX(), motionEvent.getY());
        int i10 = (int) (jI >> 32);
        int i11 = (int) (jI & 4294967295L);
        if ((b(new jd(25), codeEditor.getText().n().A(i10, i11), motionEvent) & 2) == 0 && !codeEditor.getCursor().a() && motionEvent.getPointerCount() == 1) {
            codeEditor.e0(i10, i11);
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return this.f15016a.isEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    @Override // android.view.GestureDetector.OnGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float f12;
        float f13;
        CodeEditor codeEditor = this.f15016a;
        if (codeEditor.getProps().C) {
            f12 = 0.0f;
            if (Math.abs(f10) > Math.abs(f11)) {
                f12 = f10;
                f13 = 0.0f;
            }
            if (codeEditor.getProps().f14918i) {
                return false;
            }
            m mVar = this.f15017b;
            mVar.f14985b.forceFinished(true);
            mVar.a();
            OverScroller overScroller = mVar.f14985b;
            int scrollMaxX = codeEditor.getScrollMaxX();
            int scrollMaxY = codeEditor.getScrollMaxY();
            codeEditor.getProps().getClass();
            codeEditor.getProps().getClass();
            overScroller.fling(overScroller.getCurrX(), overScroller.getCurrY(), (int) (-f12), (int) (-f13), 0, scrollMaxX, 0, scrollMaxY, 0, 0);
            mVar.a();
            float dpUnit = codeEditor.getDpUnit() * 2000.0f;
            if (Math.abs(f12) >= dpUnit || Math.abs(f13) >= dpUnit) {
                this.f15029p = System.currentTimeMillis();
                codeEditor.Y(new s(this, 1), PopupConst.DURATION_POPUP_SHORT);
            }
            codeEditor.f8743w1.onRelease();
            codeEditor.f8741v1.onRelease();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int finalX = overScroller.getFinalX();
            int finalY = overScroller.getFinalY();
            CodeEditor codeEditor2 = this.f15016a;
            codeEditor2.f8717i.a(new db.w(codeEditor2, currX, currY, finalX, finalY, 2));
            codeEditor.postInvalidateOnAnimation();
            return false;
        }
        f12 = f10;
        f13 = f11;
        if (codeEditor.getProps().f14918i) {
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        m mVar = this.f15017b;
        mVar.f14985b.forceFinished(true);
        mVar.a();
        CodeEditor codeEditor = this.f15016a;
        codeEditor.f8743w1.onRelease();
        codeEditor.f8741v1.onRelease();
        codeEditor.O();
        long jI = codeEditor.I(motionEvent.getX(), motionEvent.getY());
        int i10 = (int) (jI >> 32);
        int i11 = (int) (jI & 4294967295L);
        if ((b(new jd(23), codeEditor.getText().n().A(i10, i11), motionEvent) & 2) != 0) {
            return;
        }
        if ((codeEditor.getProps().f14930y || !codeEditor.getCursor().a()) && motionEvent.getPointerCount() == 1) {
            codeEditor.performHapticFeedback(0);
            codeEditor.e0(i10, i11);
            if (codeEditor.getCursor().a() && codeEditor.getProps().z) {
                mb.g text = codeEditor.getText();
                this.O = text.l(i10, i11);
                mb.j cursor = codeEditor.getCursor();
                mb.b bVar = cursor.f11081c;
                this.P = text.l(bVar.f11057b, bVar.f11058c);
                mb.b bVar2 = cursor.f11082d;
                this.R = text.l(bVar2.f11057b, bVar2.f11058c);
                this.S = this.O;
                this.M = true;
                this.N = false;
            }
        }
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        CodeEditor codeEditor = this.f15016a;
        codeEditor.O();
        if (!codeEditor.F) {
            return false;
        }
        float scaleFactor = scaleGestureDetector.getScaleFactor() * codeEditor.getTextSizePx();
        if (scaleFactor >= this.f15027m && scaleFactor <= this.l) {
            float focusX = scaleGestureDetector.getFocusX();
            float focusY = scaleGestureDetector.getFocusY();
            int rowHeight = codeEditor.getRowHeight();
            codeEditor.setTextSizePxDirect(scaleFactor);
            float rowHeight2 = (codeEditor.getRowHeight() * 1.0f) / rowHeight;
            m mVar = this.f15017b;
            float currY = ((mVar.f14985b.getCurrY() + focusY) * rowHeight2) - focusY;
            OverScroller overScroller = mVar.f14985b;
            float fMax = Math.max(0.0f, Math.min((scaleGestureDetector.getScaleFactor() * (overScroller.getCurrX() + focusX)) - focusX, codeEditor.getScrollMaxX()));
            float fMax2 = Math.max(0.0f, Math.min(currY, codeEditor.getScrollMaxY()));
            int currX = overScroller.getCurrX();
            int currY2 = overScroller.getCurrY();
            int i10 = (int) fMax;
            int i11 = (int) fMax2;
            CodeEditor codeEditor2 = this.f15016a;
            codeEditor2.f8717i.a(new db.w(codeEditor2, currX, currY2, i10, i11, 5));
            this.f15017b.b(i10, i11, 0, 0, 0);
            overScroller.abortAnimation();
            mVar.a();
            this.f15026k = true;
            codeEditor.invalidate();
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        m mVar = this.f15017b;
        mVar.f14985b.forceFinished(true);
        mVar.a();
        CodeEditor codeEditor = this.f15016a;
        this.f15028n = codeEditor.getTextSizePx();
        if (codeEditor.F) {
            codeEditor.O();
            if (!g()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.f15026k = false;
        float f10 = this.f15028n;
        CodeEditor codeEditor = this.f15016a;
        if (f10 == codeEditor.getTextSizePx()) {
            return;
        }
        codeEditor.getRenderer().H = true;
        if (codeEditor.H) {
            this.X = scaleGestureDetector.getFocusY();
            this.T = codeEditor.I(scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            this.V = true;
        } else {
            this.V = false;
        }
        codeEditor.getRenderContext().a();
        codeEditor.getRenderer().C();
        codeEditor.invalidate();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float f12;
        float f13;
        int i10;
        boolean z;
        int i11;
        boolean z4;
        CodeEditor codeEditor = this.f15016a;
        if (!codeEditor.getProps().D) {
            f12 = f10;
            f13 = f11;
        } else if (Math.abs(f10) > Math.abs(f11)) {
            f12 = f10;
            f13 = 0.0f;
        } else {
            f13 = f11;
            f12 = 0.0f;
        }
        m mVar = this.f15017b;
        int currX = mVar.f14985b.getCurrX() + ((int) f12);
        OverScroller overScroller = mVar.f14985b;
        int currY = overScroller.getCurrY() + ((int) f13);
        int iMax = Math.max(currX, 0);
        int iMin = Math.min(Math.max(currY, 0), codeEditor.getScrollMaxY());
        int iMin2 = Math.min(iMax, codeEditor.getScrollMaxX());
        if (codeEditor.getVerticalEdgeEffect().isFinished()) {
            i10 = iMin;
            z = true;
        } else {
            float fMax = Math.max(0.0f, Math.min(1.0f, motionEvent2.getX() / codeEditor.getWidth()));
            float measuredHeight = (this.f15024i ? f13 : -f13) / codeEditor.getMeasuredHeight();
            if (measuredHeight > 0.0f) {
                iMin = overScroller.getCurrY();
                EdgeEffect verticalEdgeEffect = codeEditor.getVerticalEdgeEffect();
                if (this.f15024i) {
                    fMax = 1.0f - fMax;
                }
                verticalEdgeEffect.onPull(measuredHeight, fMax);
            } else if (Build.VERSION.SDK_INT >= 31) {
                EdgeEffect verticalEdgeEffect2 = codeEditor.getVerticalEdgeEffect();
                if (this.f15024i) {
                    fMax = 1.0f - fMax;
                }
                verticalEdgeEffect2.onPullDistance(measuredHeight, fMax);
                if (verticalEdgeEffect2.getDistance() != 0.0f) {
                    iMin = overScroller.getCurrY();
                }
            } else {
                codeEditor.getVerticalEdgeEffect().finish();
            }
            i10 = iMin;
            z = false;
        }
        if (codeEditor.getHorizontalEdgeEffect().isFinished()) {
            i11 = iMin2;
            z4 = true;
        } else {
            float fMax2 = Math.max(0.0f, Math.min(1.0f, motionEvent2.getY() / codeEditor.getHeight()));
            float measuredWidth = (this.f15025j ? f12 : -f12) / codeEditor.getMeasuredWidth();
            if (measuredWidth > 0.0f) {
                iMin2 = overScroller.getCurrX();
                EdgeEffect horizontalEdgeEffect = codeEditor.getHorizontalEdgeEffect();
                if (!this.f15025j) {
                    fMax2 = 1.0f - fMax2;
                }
                horizontalEdgeEffect.onPull(measuredWidth, fMax2);
            } else if (Build.VERSION.SDK_INT >= 31) {
                EdgeEffect horizontalEdgeEffect2 = codeEditor.getHorizontalEdgeEffect();
                if (!this.f15025j) {
                    fMax2 = 1.0f - fMax2;
                }
                horizontalEdgeEffect2.onPullDistance(measuredWidth, fMax2);
                if (horizontalEdgeEffect2.getDistance() != 0.0f) {
                    iMin2 = overScroller.getCurrX();
                }
            } else {
                codeEditor.getHorizontalEdgeEffect().finish();
            }
            i11 = iMin2;
            z4 = false;
        }
        mVar.b(mVar.f14985b.getCurrX(), overScroller.getCurrY(), i11 - overScroller.getCurrX(), i10 - overScroller.getCurrY(), 0);
        if (z && overScroller.getCurrY() + f13 < -2.0f) {
            codeEditor.getVerticalEdgeEffect().onPull((-f13) / codeEditor.getMeasuredHeight(), Math.max(0.0f, Math.min(1.0f, motionEvent2.getX() / codeEditor.getWidth())));
            this.f15024i = false;
        }
        if (z && overScroller.getCurrY() + f13 > codeEditor.getScrollMaxY() + 2.0f) {
            codeEditor.getVerticalEdgeEffect().onPull(f13 / codeEditor.getMeasuredHeight(), Math.max(0.0f, Math.min(1.0f, motionEvent2.getX() / codeEditor.getWidth())));
            this.f15024i = true;
        }
        if (z4 && overScroller.getCurrX() + f12 < -2.0f) {
            codeEditor.getHorizontalEdgeEffect().onPull((-f12) / codeEditor.getMeasuredWidth(), Math.max(0.0f, Math.min(1.0f, motionEvent2.getY() / codeEditor.getHeight())));
            this.f15025j = false;
        }
        if (z4 && overScroller.getCurrX() + f12 > codeEditor.getScrollMaxX() + 2.0f) {
            codeEditor.getHorizontalEdgeEffect().onPull(f12 / codeEditor.getMeasuredWidth(), Math.max(0.0f, Math.min(1.0f, motionEvent2.getY() / codeEditor.getHeight())));
            this.f15025j = true;
        }
        codeEditor.invalidate();
        int currX2 = overScroller.getCurrX();
        int currY2 = overScroller.getCurrY();
        CodeEditor codeEditor2 = this.f15016a;
        codeEditor2.f8717i.a(new db.w(codeEditor2, currX2, currY2, i11, i10, 1));
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        m mVar = this.f15017b;
        mVar.f14985b.forceFinished(true);
        mVar.a();
        CodeEditor codeEditor = this.f15016a;
        codeEditor.O();
        ue.d.e(motionEvent, "event");
        long jD0 = com.bumptech.glide.d.d0(codeEditor, motionEvent, -1);
        int i10 = (int) (jD0 >> 32);
        int i11 = (int) (jD0 & 4294967295L);
        float x10 = motionEvent.getX();
        float fMax = Math.max(0.0f, motionEvent.getY());
        codeEditor.F1.getClass();
        eb.j jVarN = codeEditor.f8719j.n((x10 + codeEditor.getOffsetX()) - codeEditor.S(), fMax + codeEditor.getOffsetY());
        codeEditor.performClick();
        if (i10 == 2) {
            if (codeEditor.getLayout().q(Math.max(0, Math.min(((int) (motionEvent.getY() + codeEditor.getOffsetX())) / codeEditor.getRowHeight(), codeEditor.getLayout().a() - 1))).f17795b) {
                codeEditor.getRenderer().f14975p.getStyles();
            }
        }
        mb.a aVarN = codeEditor.getText().n();
        int i12 = jVarN.f4863a;
        int i13 = jVarN.f4864b;
        if ((c(new jd(24), aVarN.A(i12, i13), motionEvent, i10, i11) & 2) != 0) {
            return true;
        }
        if (codeEditor.N() && codeEditor.isEnabled()) {
            if (codeEditor.isInTouchMode() && !codeEditor.isFocused()) {
                codeEditor.requestFocusFromTouch();
            }
            if (!codeEditor.isFocused()) {
                codeEditor.requestFocus();
            }
            if (codeEditor.t()) {
                codeEditor.f8712f1.showSoftInput(codeEditor, 0);
            }
        }
        codeEditor.invalidate();
        this.f15030q = System.currentTimeMillis();
        codeEditor.Y(new s(this, 0), 3500L);
        int i14 = codeEditor.getProps().f14928w;
        if (i10 == 5) {
            if (codeEditor.W0) {
                mb.b bVar = codeEditor.getCursor().f11081c;
                this.f15016a.j0(bVar.f11057b, bVar.f11058c, i12, i13, 3, false);
                codeEditor.W0 = false;
            } else {
                codeEditor.h0(i12, i13, 3, true);
            }
        } else if (i10 == 1) {
            if (i14 == 1) {
                codeEditor.j0(i12, 0, i12, codeEditor.getText().o(i12).f11076c, 3, false);
            } else if (i14 == 2) {
                codeEditor.h0(i12, i13, 3, true);
            }
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }
}
