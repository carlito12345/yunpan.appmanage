package androidx.constraintlayout.widget;

import a2.g1;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.hsae.autosdk.core.NoConst;
import f0.a;
import f0.d;
import f0.e;
import f0.g;
import f0.h;
import f0.j;
import g0.i;
import g0.k;
import g0.m;
import g0.o;
import i0.c;
import i0.f;
import i0.n;
import i0.q;
import i0.r;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: s, reason: collision with root package name */
    public static r f1015s;

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f1016a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1017b;

    /* renamed from: c, reason: collision with root package name */
    public final e f1018c;

    /* renamed from: d, reason: collision with root package name */
    public int f1019d;

    /* renamed from: e, reason: collision with root package name */
    public int f1020e;

    /* renamed from: f, reason: collision with root package name */
    public int f1021f;

    /* renamed from: g, reason: collision with root package name */
    public int f1022g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1023h;

    /* renamed from: i, reason: collision with root package name */
    public int f1024i;

    /* renamed from: j, reason: collision with root package name */
    public n f1025j;

    /* renamed from: k, reason: collision with root package name */
    public g1 f1026k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public HashMap f1027m;

    /* renamed from: n, reason: collision with root package name */
    public final SparseArray f1028n;

    /* renamed from: p, reason: collision with root package name */
    public final f f1029p;

    /* renamed from: q, reason: collision with root package name */
    public int f1030q;
    public int r;

    public ConstraintLayout(Context context, AttributeSet attributeSet) throws XmlPullParserException, IOException, NumberFormatException {
        super(context, attributeSet);
        this.f1016a = new SparseArray();
        this.f1017b = new ArrayList(4);
        this.f1018c = new e();
        this.f1019d = 0;
        this.f1020e = 0;
        this.f1021f = Integer.MAX_VALUE;
        this.f1022g = Integer.MAX_VALUE;
        this.f1023h = true;
        this.f1024i = 257;
        this.f1025j = null;
        this.f1026k = null;
        this.l = -1;
        this.f1027m = new HashMap();
        this.f1028n = new SparseArray();
        this.f1029p = new f(this, this);
        this.f1030q = 0;
        this.r = 0;
        h(attributeSet, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static r getSharedValues() {
        if (f1015s == null) {
            f1015s = new r();
        }
        return f1015s;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof i0.e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) throws NumberFormatException {
        Object tag;
        int size;
        ArrayList arrayList = this.f1017b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                ((c) arrayList.get(i10)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i12 = Integer.parseInt(strArrSplit[0]);
                        int i13 = Integer.parseInt(strArrSplit[1]);
                        int i14 = Integer.parseInt(strArrSplit[2]);
                        int i15 = (int) ((i12 / 1080.0f) * width);
                        int i16 = (int) ((i13 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f10 = i15;
                        float f11 = i16;
                        float f12 = i15 + ((int) ((i14 / 1080.0f) * width));
                        canvas.drawLine(f10, f11, f12, f11, paint);
                        float f13 = i16 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f12, f11, f12, f13, paint);
                        canvas.drawLine(f12, f13, f10, f13, paint);
                        canvas.drawLine(f10, f13, f10, f11, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f10, f11, f12, f13, paint);
                        canvas.drawLine(f10, f13, f12, f11, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f1023h = true;
        super.forceLayout();
    }

    public final d g(View view) {
        if (view == this) {
            return this.f1018c;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof i0.e) {
            return ((i0.e) view.getLayoutParams()).f8281p0;
        }
        view.setLayoutParams(new i0.e(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof i0.e) {
            return ((i0.e) view.getLayoutParams()).f8281p0;
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new i0.e(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new i0.e(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.f1022g;
    }

    public int getMaxWidth() {
        return this.f1021f;
    }

    public int getMinHeight() {
        return this.f1020e;
    }

    public int getMinWidth() {
        return this.f1019d;
    }

    public int getOptimizationLevel() {
        return this.f1018c.D0;
    }

    public String getSceneString() {
        int id2;
        StringBuilder sb2 = new StringBuilder();
        e eVar = this.f1018c;
        if (eVar.f5093j == null) {
            int id3 = getId();
            if (id3 != -1) {
                eVar.f5093j = getContext().getResources().getResourceEntryName(id3);
            } else {
                eVar.f5093j = "parent";
            }
        }
        if (eVar.f5090h0 == null) {
            eVar.f5090h0 = eVar.f5093j;
        }
        Iterator it = eVar.f5114q0.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            View view = dVar.f5086f0;
            if (view != null) {
                if (dVar.f5093j == null && (id2 = view.getId()) != -1) {
                    dVar.f5093j = getContext().getResources().getResourceEntryName(id2);
                }
                if (dVar.f5090h0 == null) {
                    dVar.f5090h0 = dVar.f5093j;
                }
            }
        }
        eVar.n(sb2);
        return sb2.toString();
    }

    public final void h(AttributeSet attributeSet, int i10) throws XmlPullParserException, IOException, NumberFormatException {
        e eVar = this.f1018c;
        eVar.f5086f0 = this;
        f fVar = this.f1029p;
        eVar.f5117u0 = fVar;
        eVar.s0.f5945g = fVar;
        this.f1016a.put(getId(), this);
        this.f1025j = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.f8393b, i10, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == 16) {
                    this.f1019d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1019d);
                } else if (index == 17) {
                    this.f1020e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1020e);
                } else if (index == 14) {
                    this.f1021f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1021f);
                } else if (index == 15) {
                    this.f1022g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1022g);
                } else if (index == 113) {
                    this.f1024i = typedArrayObtainStyledAttributes.getInt(index, this.f1024i);
                } else if (index == 56) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            this.f1026k = new g1(getContext(), resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f1026k = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        n nVar = new n();
                        this.f1025j = nVar;
                        nVar.e(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f1025j = null;
                    }
                    this.l = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        eVar.D0 = this.f1024i;
        d0.c.f4211p = eVar.W(512);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x04df A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(e eVar, int i10, int i11, int i12) {
        int iMin;
        int iMax;
        int iMin2;
        int iMax2;
        int i13;
        int iQ;
        g0.e eVar2;
        int i14;
        int i15;
        int i16;
        v3.f fVar;
        int size;
        boolean z;
        int i17;
        boolean z4;
        boolean z10;
        f fVar2;
        int i18;
        int i19;
        int i20;
        boolean zT;
        int size2;
        ArrayList arrayList;
        int i21;
        f fVar3;
        int i22;
        f fVar4;
        boolean z11;
        k kVar;
        m mVar;
        int i23;
        int i24;
        int i25;
        int i26;
        int[] iArr;
        int i27;
        int i28;
        boolean z12;
        Iterator it;
        Iterator it2;
        boolean z13;
        e eVar3 = eVar;
        int mode = View.MeasureSpec.getMode(i11);
        int size3 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size4 = View.MeasureSpec.getSize(i12);
        int iMax3 = Math.max(0, getPaddingTop());
        int iMax4 = Math.max(0, getPaddingBottom());
        int i29 = iMax3 + iMax4;
        int paddingWidth = getPaddingWidth();
        f fVar5 = this.f1029p;
        fVar5.f8291b = iMax3;
        fVar5.f8292c = iMax4;
        fVar5.f8293d = paddingWidth;
        fVar5.f8294e = i29;
        fVar5.f8295f = i11;
        fVar5.f8296g = i12;
        int iMax5 = Math.max(0, getPaddingStart());
        int iMax6 = Math.max(0, getPaddingEnd());
        int i30 = 1;
        if (iMax5 <= 0 && iMax6 <= 0) {
            iMax5 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            iMax5 = iMax6;
        }
        int i31 = size3 - paddingWidth;
        int i32 = size4 - i29;
        int i33 = fVar5.f8294e;
        int i34 = fVar5.f8293d;
        int childCount = getChildCount();
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    iMin = Math.min(this.f1021f - i34, i31);
                    i30 = 1;
                }
                if (mode2 == Integer.MIN_VALUE) {
                    if (mode2 != 0) {
                        if (mode2 == 1073741824) {
                            iMin2 = Math.min(this.f1022g - i33, i32);
                            i13 = 1;
                            iQ = eVar.q();
                            eVar2 = eVar3.s0;
                            i14 = iMin;
                            if (i14 != iQ || iMin2 != eVar.k()) {
                                eVar2.f5940b = true;
                            }
                            eVar3.Y = 0;
                            eVar3.Z = 0;
                            int i35 = this.f1021f - i34;
                            int[] iArr2 = eVar3.C;
                            iArr2[0] = i35;
                            iArr2[1] = this.f1022g - i33;
                            eVar3.f5078b0 = 0;
                            eVar3.f5080c0 = 0;
                            eVar3.M(i30);
                            eVar3.O(i14);
                            eVar3.N(i13);
                            eVar3.L(iMin2);
                            i15 = this.f1019d - i34;
                            if (i15 < 0) {
                                eVar3.f5078b0 = 0;
                            } else {
                                eVar3.f5078b0 = i15;
                            }
                            i16 = this.f1020e - i33;
                            if (i16 < 0) {
                                eVar3.f5080c0 = 0;
                            } else {
                                eVar3.f5080c0 = i16;
                            }
                            eVar3.f5120x0 = iMax5;
                            eVar3.f5121y0 = iMax3;
                            fVar = eVar3.f5115r0;
                            fVar.getClass();
                            f fVar6 = eVar3.f5117u0;
                            size = eVar3.f5114q0.size();
                            int iQ2 = eVar.q();
                            int iK = eVar.k();
                            boolean zC = j.c(i10, 128);
                            z = zC || j.c(i10, 64);
                            if (z) {
                                for (int i36 = 0; i36 < size; i36++) {
                                    d dVar = (d) eVar3.f5114q0.get(i36);
                                    int[] iArr3 = dVar.f5105p0;
                                    boolean z14 = (iArr3[0] == 3) && (iArr3[1] == 3) && dVar.W > 0.0f;
                                    if ((dVar.x() && z14) || ((dVar.y() && z14) || (dVar instanceof g) || dVar.x() || dVar.y())) {
                                        i17 = 1073741824;
                                        z = false;
                                        break;
                                    }
                                }
                                i17 = 1073741824;
                            } else {
                                i17 = 1073741824;
                            }
                            z4 = ((mode == i17 && mode2 == i17) || zC) & z;
                            if (z4) {
                                int iMin3 = Math.min(iArr2[0], i31);
                                int iMin4 = Math.min(iArr2[1], i32);
                                if (mode == 1073741824 && eVar.q() != iMin3) {
                                    eVar3.O(iMin3);
                                    eVar3.s0.f5939a = true;
                                }
                                if (mode2 == 1073741824 && eVar.k() != iMin4) {
                                    eVar3.L(iMin4);
                                    eVar3.s0.f5939a = true;
                                }
                                if (mode == 1073741824 && mode2 == 1073741824) {
                                    boolean z15 = eVar2.f5939a;
                                    e eVar4 = (e) eVar2.f5941c;
                                    if (z15 || eVar2.f5940b) {
                                        Iterator it3 = eVar4.f5114q0.iterator();
                                        while (it3.hasNext()) {
                                            d dVar2 = (d) it3.next();
                                            dVar2.h();
                                            dVar2.f5075a = false;
                                            dVar2.f5081d.n();
                                            dVar2.f5083e.m();
                                        }
                                        i25 = 0;
                                        eVar4.h();
                                        eVar4.f5075a = false;
                                        eVar4.f5081d.n();
                                        eVar4.f5083e.m();
                                        eVar2.f5940b = false;
                                    } else {
                                        i25 = 0;
                                    }
                                    eVar2.b((e) eVar2.f5942d);
                                    eVar4.Y = i25;
                                    eVar4.Z = i25;
                                    int iJ = eVar4.j(i25);
                                    int iJ2 = eVar4.j(1);
                                    if (eVar2.f5939a) {
                                        eVar2.c();
                                    }
                                    int iR = eVar4.r();
                                    int iS = eVar4.s();
                                    z10 = z4;
                                    eVar4.f5081d.f5977h.d(iR);
                                    eVar4.f5083e.f5977h.d(iS);
                                    eVar2.j();
                                    ArrayList arrayList2 = (ArrayList) eVar2.f5943e;
                                    fVar2 = fVar6;
                                    if (iJ == 2 || iJ2 == 2) {
                                        if (zC) {
                                            Iterator it4 = arrayList2.iterator();
                                            while (true) {
                                                if (it4.hasNext()) {
                                                    if (!((o) it4.next()).k()) {
                                                        zC = false;
                                                        break;
                                                    }
                                                } else {
                                                    break;
                                                }
                                            }
                                        }
                                        if (zC && iJ == 2) {
                                            eVar4.M(1);
                                            i18 = iQ2;
                                            eVar4.O(eVar2.e(eVar4, 0));
                                            eVar4.f5081d.f5974e.d(eVar4.q());
                                        } else {
                                            i18 = iQ2;
                                        }
                                        if (zC && iJ2 == 2) {
                                            i26 = 1;
                                            eVar4.N(1);
                                            eVar4.L(eVar2.e(eVar4, 1));
                                            eVar4.f5083e.f5974e.d(eVar4.k());
                                        }
                                        iArr = eVar4.f5105p0;
                                        i19 = iK;
                                        i27 = iArr[0];
                                        if (i27 != i26 || i27 == 4) {
                                            int iQ3 = eVar4.q() + iR;
                                            eVar4.f5081d.f5978i.d(iQ3);
                                            eVar4.f5081d.f5974e.d(iQ3 - iR);
                                            eVar2.j();
                                            i28 = iArr[1];
                                            if (i28 != 1 || i28 == 4) {
                                                int iK2 = eVar4.k() + iS;
                                                eVar4.f5083e.f5978i.d(iK2);
                                                eVar4.f5083e.f5974e.d(iK2 - iS);
                                            }
                                            eVar2.j();
                                            z12 = true;
                                        } else {
                                            z12 = false;
                                        }
                                        it = arrayList2.iterator();
                                        while (it.hasNext()) {
                                            o oVar = (o) it.next();
                                            if (oVar.f5971b != eVar4 || oVar.f5976g) {
                                                oVar.e();
                                            }
                                        }
                                        it2 = arrayList2.iterator();
                                        while (it2.hasNext()) {
                                            o oVar2 = (o) it2.next();
                                            if (z12 || oVar2.f5971b != eVar4) {
                                                if (!oVar2.f5977h.f5956j || ((!oVar2.f5978i.f5956j && !(oVar2 instanceof i)) || (!oVar2.f5974e.f5956j && !(oVar2 instanceof g0.c) && !(oVar2 instanceof i)))) {
                                                    z13 = false;
                                                    break;
                                                }
                                            }
                                        }
                                        z13 = true;
                                        eVar4.M(iJ);
                                        eVar4.N(iJ2);
                                        zT = z13;
                                        i24 = 1073741824;
                                        i20 = 2;
                                    } else {
                                        i18 = iQ2;
                                    }
                                    i26 = 1;
                                    iArr = eVar4.f5105p0;
                                    i19 = iK;
                                    i27 = iArr[0];
                                    if (i27 != i26) {
                                        int iQ32 = eVar4.q() + iR;
                                        eVar4.f5081d.f5978i.d(iQ32);
                                        eVar4.f5081d.f5974e.d(iQ32 - iR);
                                        eVar2.j();
                                        i28 = iArr[1];
                                        if (i28 != 1) {
                                            int iK22 = eVar4.k() + iS;
                                            eVar4.f5083e.f5978i.d(iK22);
                                            eVar4.f5083e.f5974e.d(iK22 - iS);
                                            eVar2.j();
                                            z12 = true;
                                            it = arrayList2.iterator();
                                            while (it.hasNext()) {
                                            }
                                            it2 = arrayList2.iterator();
                                            while (it2.hasNext()) {
                                            }
                                            z13 = true;
                                            eVar4.M(iJ);
                                            eVar4.N(iJ2);
                                            zT = z13;
                                            i24 = 1073741824;
                                            i20 = 2;
                                        }
                                    }
                                } else {
                                    z10 = z4;
                                    fVar2 = fVar6;
                                    i18 = iQ2;
                                    i19 = iK;
                                    boolean z16 = eVar2.f5939a;
                                    e eVar5 = (e) eVar2.f5941c;
                                    if (z16) {
                                        Iterator it5 = eVar5.f5114q0.iterator();
                                        while (it5.hasNext()) {
                                            d dVar3 = (d) it5.next();
                                            dVar3.h();
                                            dVar3.f5075a = false;
                                            k kVar2 = dVar3.f5081d;
                                            kVar2.f5974e.f5956j = false;
                                            kVar2.f5976g = false;
                                            kVar2.n();
                                            m mVar2 = dVar3.f5083e;
                                            mVar2.f5974e.f5956j = false;
                                            mVar2.f5976g = false;
                                            mVar2.m();
                                        }
                                        i23 = 0;
                                        eVar5.h();
                                        eVar5.f5075a = false;
                                        k kVar3 = eVar5.f5081d;
                                        kVar3.f5974e.f5956j = false;
                                        kVar3.f5976g = false;
                                        kVar3.n();
                                        m mVar3 = eVar5.f5083e;
                                        mVar3.f5974e.f5956j = false;
                                        mVar3.f5976g = false;
                                        mVar3.m();
                                        eVar2.c();
                                    } else {
                                        i23 = 0;
                                    }
                                    eVar2.b((e) eVar2.f5942d);
                                    eVar5.Y = i23;
                                    eVar5.Z = i23;
                                    eVar5.f5081d.f5977h.d(i23);
                                    eVar5.f5083e.f5977h.d(i23);
                                    i24 = 1073741824;
                                    if (mode == 1073741824) {
                                        zT = eVar3.T(i23, zC);
                                        i20 = 1;
                                    } else {
                                        i20 = 0;
                                        zT = true;
                                    }
                                    if (mode2 == 1073741824) {
                                        zT &= eVar3.T(1, zC);
                                        i20++;
                                    }
                                }
                                if (zT) {
                                    eVar3.P(mode == i24, mode2 == i24);
                                }
                            } else {
                                z10 = z4;
                                fVar2 = fVar6;
                                i18 = iQ2;
                                i19 = iK;
                                i20 = 0;
                                zT = false;
                            }
                            if (zT || i20 != 2) {
                                int i37 = eVar3.D0;
                                if (size > 0) {
                                    int size5 = eVar3.f5114q0.size();
                                    boolean zW = eVar3.W(64);
                                    f fVar7 = eVar3.f5117u0;
                                    for (int i38 = 0; i38 < size5; i38++) {
                                        d dVar4 = (d) eVar3.f5114q0.get(i38);
                                        if (!(dVar4 instanceof h) && !(dVar4 instanceof a) && !dVar4.F && (!zW || (kVar = dVar4.f5081d) == null || (mVar = dVar4.f5083e) == null || !kVar.f5974e.f5956j || !mVar.f5974e.f5956j)) {
                                            int iJ3 = dVar4.j(0);
                                            int iJ4 = dVar4.j(1);
                                            boolean z17 = iJ3 == 3 && dVar4.r != 1 && iJ4 == 3 && dVar4.f5107s != 1;
                                            if (!z17 && eVar3.W(1) && !(dVar4 instanceof g)) {
                                                if (iJ3 == 3 && dVar4.r == 0 && iJ4 != 3 && !dVar4.x()) {
                                                    z17 = true;
                                                }
                                                if (iJ4 == 3 && dVar4.f5107s == 0 && iJ3 != 3 && !dVar4.x()) {
                                                    z17 = true;
                                                }
                                                if (iJ3 == 3 || iJ4 == 3) {
                                                    if (dVar4.W > 0.0f) {
                                                        z17 = true;
                                                    }
                                                }
                                                if (z17) {
                                                    fVar.E(0, dVar4, fVar7);
                                                }
                                            }
                                            if (z17) {
                                            }
                                        }
                                    }
                                    ConstraintLayout constraintLayout = fVar7.f8290a;
                                    int childCount2 = constraintLayout.getChildCount();
                                    for (int i39 = 0; i39 < childCount2; i39++) {
                                        constraintLayout.getChildAt(i39);
                                    }
                                    ArrayList arrayList3 = constraintLayout.f1017b;
                                    int size6 = arrayList3.size();
                                    if (size6 > 0) {
                                        for (int i40 = 0; i40 < size6; i40++) {
                                            ((c) arrayList3.get(i40)).getClass();
                                        }
                                    }
                                }
                                fVar.S(eVar3);
                                ArrayList arrayList4 = (ArrayList) fVar.f16474b;
                                size2 = arrayList4.size();
                                int i41 = i18;
                                int i42 = i19;
                                if (size > 0) {
                                    fVar.O(eVar3, 0, i41, i42);
                                }
                                if (size2 > 0) {
                                    int[] iArr4 = eVar3.f5105p0;
                                    boolean z18 = iArr4[0] == 2;
                                    boolean z19 = iArr4[1] == 2;
                                    int iQ4 = eVar.q();
                                    e eVar6 = (e) fVar.f16476d;
                                    int iMax7 = Math.max(iQ4, eVar6.f5078b0);
                                    int iMax8 = Math.max(eVar.k(), eVar6.f5080c0);
                                    int i43 = 0;
                                    boolean z20 = false;
                                    while (i43 < size2) {
                                        d dVar5 = (d) arrayList4.get(i43);
                                        if (dVar5 instanceof g) {
                                            int iQ5 = dVar5.q();
                                            int iK3 = dVar5.k();
                                            i22 = i37;
                                            fVar4 = fVar2;
                                            boolean zE = z20 | fVar.E(1, dVar5, fVar4);
                                            int iQ6 = dVar5.q();
                                            int iK4 = dVar5.k();
                                            if (iQ6 != iQ5) {
                                                dVar5.O(iQ6);
                                                if (z18 && dVar5.r() + dVar5.U > iMax7) {
                                                    iMax7 = Math.max(iMax7, dVar5.i(4).e() + dVar5.r() + dVar5.U);
                                                }
                                                z11 = true;
                                            } else {
                                                z11 = zE;
                                            }
                                            if (iK4 != iK3) {
                                                dVar5.L(iK4);
                                                if (z19 && dVar5.s() + dVar5.V > iMax8) {
                                                    iMax8 = Math.max(iMax8, dVar5.i(5).e() + dVar5.s() + dVar5.V);
                                                }
                                                z11 = true;
                                            }
                                            z20 = ((g) dVar5).f5146y0 | z11;
                                        } else {
                                            i22 = i37;
                                            fVar4 = fVar2;
                                        }
                                        i43++;
                                        fVar2 = fVar4;
                                        i37 = i22;
                                    }
                                    int i44 = i37;
                                    f fVar8 = fVar2;
                                    int i45 = 0;
                                    while (i45 < 2) {
                                        int i46 = 0;
                                        while (i46 < size2) {
                                            d dVar6 = (d) arrayList4.get(i46);
                                            if (((dVar6 instanceof f0.i) && !(dVar6 instanceof g)) || (dVar6 instanceof h) || dVar6.f5088g0 == 8 || ((z10 && dVar6.f5081d.f5974e.f5956j && dVar6.f5083e.f5974e.f5956j) || (dVar6 instanceof g))) {
                                                fVar3 = fVar8;
                                                arrayList = arrayList4;
                                                i21 = size2;
                                            } else {
                                                int iQ7 = dVar6.q();
                                                int iK5 = dVar6.k();
                                                arrayList = arrayList4;
                                                int i47 = dVar6.f5076a0;
                                                i21 = size2;
                                                boolean zE2 = fVar.E(i45 == 1 ? 2 : 1, dVar6, fVar8) | z20;
                                                int iQ8 = dVar6.q();
                                                fVar3 = fVar8;
                                                int iK6 = dVar6.k();
                                                if (iQ8 != iQ7) {
                                                    dVar6.O(iQ8);
                                                    if (z18 && dVar6.r() + dVar6.U > iMax7) {
                                                        iMax7 = Math.max(iMax7, dVar6.i(4).e() + dVar6.r() + dVar6.U);
                                                    }
                                                    zE2 = true;
                                                }
                                                if (iK6 != iK5) {
                                                    dVar6.L(iK6);
                                                    if (z19 && dVar6.s() + dVar6.V > iMax8) {
                                                        iMax8 = Math.max(iMax8, dVar6.i(5).e() + dVar6.s() + dVar6.V);
                                                    }
                                                    zE2 = true;
                                                }
                                                z20 = (!dVar6.E || i47 == dVar6.f5076a0) ? zE2 : true;
                                            }
                                            i46++;
                                            arrayList4 = arrayList;
                                            size2 = i21;
                                            fVar8 = fVar3;
                                        }
                                        f fVar9 = fVar8;
                                        ArrayList arrayList5 = arrayList4;
                                        int i48 = size2;
                                        if (!z20) {
                                            break;
                                        }
                                        i45++;
                                        fVar.O(eVar, i45, i41, i42);
                                        fVar8 = fVar9;
                                        arrayList4 = arrayList5;
                                        size2 = i48;
                                        z20 = false;
                                    }
                                    eVar3 = eVar;
                                    i37 = i44;
                                }
                                eVar3.D0 = i37;
                                d0.c.f4211p = eVar3.W(512);
                            }
                            return;
                        }
                        i13 = 1;
                    } else if (childCount == 0) {
                        iMax2 = Math.max(0, this.f1020e);
                    } else {
                        i13 = 2;
                    }
                    iMin2 = 0;
                    iQ = eVar.q();
                    eVar2 = eVar3.s0;
                    i14 = iMin;
                    if (i14 != iQ) {
                        eVar2.f5940b = true;
                    }
                    eVar3.Y = 0;
                    eVar3.Z = 0;
                    int i352 = this.f1021f - i34;
                    int[] iArr22 = eVar3.C;
                    iArr22[0] = i352;
                    iArr22[1] = this.f1022g - i33;
                    eVar3.f5078b0 = 0;
                    eVar3.f5080c0 = 0;
                    eVar3.M(i30);
                    eVar3.O(i14);
                    eVar3.N(i13);
                    eVar3.L(iMin2);
                    i15 = this.f1019d - i34;
                    if (i15 < 0) {
                    }
                    i16 = this.f1020e - i33;
                    if (i16 < 0) {
                    }
                    eVar3.f5120x0 = iMax5;
                    eVar3.f5121y0 = iMax3;
                    fVar = eVar3.f5115r0;
                    fVar.getClass();
                    f fVar62 = eVar3.f5117u0;
                    size = eVar3.f5114q0.size();
                    int iQ22 = eVar.q();
                    int iK7 = eVar.k();
                    boolean zC2 = j.c(i10, 128);
                    if (zC2) {
                    }
                    if (z) {
                    }
                    z4 = ((mode == i17 && mode2 == i17) || zC2) & z;
                    if (z4) {
                    }
                    if (zT) {
                    }
                    int i372 = eVar3.D0;
                    if (size > 0) {
                    }
                    fVar.S(eVar3);
                    ArrayList arrayList42 = (ArrayList) fVar.f16474b;
                    size2 = arrayList42.size();
                    int i412 = i18;
                    int i422 = i19;
                    if (size > 0) {
                    }
                    if (size2 > 0) {
                    }
                    eVar3.D0 = i372;
                    d0.c.f4211p = eVar3.W(512);
                }
                if (childCount != 0) {
                    iMin2 = i32;
                    i13 = 2;
                    iQ = eVar.q();
                    eVar2 = eVar3.s0;
                    i14 = iMin;
                    if (i14 != iQ) {
                    }
                    eVar3.Y = 0;
                    eVar3.Z = 0;
                    int i3522 = this.f1021f - i34;
                    int[] iArr222 = eVar3.C;
                    iArr222[0] = i3522;
                    iArr222[1] = this.f1022g - i33;
                    eVar3.f5078b0 = 0;
                    eVar3.f5080c0 = 0;
                    eVar3.M(i30);
                    eVar3.O(i14);
                    eVar3.N(i13);
                    eVar3.L(iMin2);
                    i15 = this.f1019d - i34;
                    if (i15 < 0) {
                    }
                    i16 = this.f1020e - i33;
                    if (i16 < 0) {
                    }
                    eVar3.f5120x0 = iMax5;
                    eVar3.f5121y0 = iMax3;
                    fVar = eVar3.f5115r0;
                    fVar.getClass();
                    f fVar622 = eVar3.f5117u0;
                    size = eVar3.f5114q0.size();
                    int iQ222 = eVar.q();
                    int iK72 = eVar.k();
                    boolean zC22 = j.c(i10, 128);
                    if (zC22) {
                    }
                    if (z) {
                    }
                    z4 = ((mode == i17 && mode2 == i17) || zC22) & z;
                    if (z4) {
                    }
                    if (zT) {
                    }
                    int i3722 = eVar3.D0;
                    if (size > 0) {
                    }
                    fVar.S(eVar3);
                    ArrayList arrayList422 = (ArrayList) fVar.f16474b;
                    size2 = arrayList422.size();
                    int i4122 = i18;
                    int i4222 = i19;
                    if (size > 0) {
                    }
                    if (size2 > 0) {
                    }
                    eVar3.D0 = i3722;
                    d0.c.f4211p = eVar3.W(512);
                }
                iMax2 = Math.max(0, this.f1020e);
                iMin2 = iMax2;
                i13 = 2;
                iQ = eVar.q();
                eVar2 = eVar3.s0;
                i14 = iMin;
                if (i14 != iQ) {
                }
                eVar3.Y = 0;
                eVar3.Z = 0;
                int i35222 = this.f1021f - i34;
                int[] iArr2222 = eVar3.C;
                iArr2222[0] = i35222;
                iArr2222[1] = this.f1022g - i33;
                eVar3.f5078b0 = 0;
                eVar3.f5080c0 = 0;
                eVar3.M(i30);
                eVar3.O(i14);
                eVar3.N(i13);
                eVar3.L(iMin2);
                i15 = this.f1019d - i34;
                if (i15 < 0) {
                }
                i16 = this.f1020e - i33;
                if (i16 < 0) {
                }
                eVar3.f5120x0 = iMax5;
                eVar3.f5121y0 = iMax3;
                fVar = eVar3.f5115r0;
                fVar.getClass();
                f fVar6222 = eVar3.f5117u0;
                size = eVar3.f5114q0.size();
                int iQ2222 = eVar.q();
                int iK722 = eVar.k();
                boolean zC222 = j.c(i10, 128);
                if (zC222) {
                }
                if (z) {
                }
                z4 = ((mode == i17 && mode2 == i17) || zC222) & z;
                if (z4) {
                }
                if (zT) {
                }
                int i37222 = eVar3.D0;
                if (size > 0) {
                }
                fVar.S(eVar3);
                ArrayList arrayList4222 = (ArrayList) fVar.f16474b;
                size2 = arrayList4222.size();
                int i41222 = i18;
                int i42222 = i19;
                if (size > 0) {
                }
                if (size2 > 0) {
                }
                eVar3.D0 = i37222;
                d0.c.f4211p = eVar3.W(512);
            }
            if (childCount == 0) {
                iMax = Math.max(0, this.f1019d);
            } else {
                i30 = 2;
            }
            iMin = 0;
            if (mode2 == Integer.MIN_VALUE) {
            }
            iMin2 = iMax2;
            i13 = 2;
            iQ = eVar.q();
            eVar2 = eVar3.s0;
            i14 = iMin;
            if (i14 != iQ) {
            }
            eVar3.Y = 0;
            eVar3.Z = 0;
            int i352222 = this.f1021f - i34;
            int[] iArr22222 = eVar3.C;
            iArr22222[0] = i352222;
            iArr22222[1] = this.f1022g - i33;
            eVar3.f5078b0 = 0;
            eVar3.f5080c0 = 0;
            eVar3.M(i30);
            eVar3.O(i14);
            eVar3.N(i13);
            eVar3.L(iMin2);
            i15 = this.f1019d - i34;
            if (i15 < 0) {
            }
            i16 = this.f1020e - i33;
            if (i16 < 0) {
            }
            eVar3.f5120x0 = iMax5;
            eVar3.f5121y0 = iMax3;
            fVar = eVar3.f5115r0;
            fVar.getClass();
            f fVar62222 = eVar3.f5117u0;
            size = eVar3.f5114q0.size();
            int iQ22222 = eVar.q();
            int iK7222 = eVar.k();
            boolean zC2222 = j.c(i10, 128);
            if (zC2222) {
            }
            if (z) {
            }
            z4 = ((mode == i17 && mode2 == i17) || zC2222) & z;
            if (z4) {
            }
            if (zT) {
            }
            int i372222 = eVar3.D0;
            if (size > 0) {
            }
            fVar.S(eVar3);
            ArrayList arrayList42222 = (ArrayList) fVar.f16474b;
            size2 = arrayList42222.size();
            int i412222 = i18;
            int i422222 = i19;
            if (size > 0) {
            }
            if (size2 > 0) {
            }
            eVar3.D0 = i372222;
            d0.c.f4211p = eVar3.W(512);
        }
        if (childCount != 0) {
            iMin = i31;
            i30 = 2;
            if (mode2 == Integer.MIN_VALUE) {
            }
            iMin2 = iMax2;
            i13 = 2;
            iQ = eVar.q();
            eVar2 = eVar3.s0;
            i14 = iMin;
            if (i14 != iQ) {
            }
            eVar3.Y = 0;
            eVar3.Z = 0;
            int i3522222 = this.f1021f - i34;
            int[] iArr222222 = eVar3.C;
            iArr222222[0] = i3522222;
            iArr222222[1] = this.f1022g - i33;
            eVar3.f5078b0 = 0;
            eVar3.f5080c0 = 0;
            eVar3.M(i30);
            eVar3.O(i14);
            eVar3.N(i13);
            eVar3.L(iMin2);
            i15 = this.f1019d - i34;
            if (i15 < 0) {
            }
            i16 = this.f1020e - i33;
            if (i16 < 0) {
            }
            eVar3.f5120x0 = iMax5;
            eVar3.f5121y0 = iMax3;
            fVar = eVar3.f5115r0;
            fVar.getClass();
            f fVar622222 = eVar3.f5117u0;
            size = eVar3.f5114q0.size();
            int iQ222222 = eVar.q();
            int iK72222 = eVar.k();
            boolean zC22222 = j.c(i10, 128);
            if (zC22222) {
            }
            if (z) {
            }
            z4 = ((mode == i17 && mode2 == i17) || zC22222) & z;
            if (z4) {
            }
            if (zT) {
            }
            int i3722222 = eVar3.D0;
            if (size > 0) {
            }
            fVar.S(eVar3);
            ArrayList arrayList422222 = (ArrayList) fVar.f16474b;
            size2 = arrayList422222.size();
            int i4122222 = i18;
            int i4222222 = i19;
            if (size > 0) {
            }
            if (size2 > 0) {
            }
            eVar3.D0 = i3722222;
            d0.c.f4211p = eVar3.W(512);
        }
        iMax = Math.max(0, this.f1019d);
        iMin = iMax;
        i30 = 2;
        if (mode2 == Integer.MIN_VALUE) {
        }
        iMin2 = iMax2;
        i13 = 2;
        iQ = eVar.q();
        eVar2 = eVar3.s0;
        i14 = iMin;
        if (i14 != iQ) {
        }
        eVar3.Y = 0;
        eVar3.Z = 0;
        int i35222222 = this.f1021f - i34;
        int[] iArr2222222 = eVar3.C;
        iArr2222222[0] = i35222222;
        iArr2222222[1] = this.f1022g - i33;
        eVar3.f5078b0 = 0;
        eVar3.f5080c0 = 0;
        eVar3.M(i30);
        eVar3.O(i14);
        eVar3.N(i13);
        eVar3.L(iMin2);
        i15 = this.f1019d - i34;
        if (i15 < 0) {
        }
        i16 = this.f1020e - i33;
        if (i16 < 0) {
        }
        eVar3.f5120x0 = iMax5;
        eVar3.f5121y0 = iMax3;
        fVar = eVar3.f5115r0;
        fVar.getClass();
        f fVar6222222 = eVar3.f5117u0;
        size = eVar3.f5114q0.size();
        int iQ2222222 = eVar.q();
        int iK722222 = eVar.k();
        boolean zC222222 = j.c(i10, 128);
        if (zC222222) {
        }
        if (z) {
        }
        z4 = ((mode == i17 && mode2 == i17) || zC222222) & z;
        if (z4) {
        }
        if (zT) {
        }
        int i37222222 = eVar3.D0;
        if (size > 0) {
        }
        fVar.S(eVar3);
        ArrayList arrayList4222222 = (ArrayList) fVar.f16474b;
        size2 = arrayList4222222.size();
        int i41222222 = i18;
        int i42222222 = i19;
        if (size > 0) {
        }
        if (size2 > 0) {
        }
        eVar3.D0 = i37222222;
        d0.c.f4211p = eVar3.W(512);
    }

    public final void j(d dVar, i0.e eVar, SparseArray sparseArray, int i10, int i11) {
        View view = (View) this.f1016a.get(i10);
        d dVar2 = (d) sparseArray.get(i10);
        if (dVar2 == null || view == null || !(view.getLayoutParams() instanceof i0.e)) {
            return;
        }
        eVar.f8256c0 = true;
        if (i11 == 6) {
            i0.e eVar2 = (i0.e) view.getLayoutParams();
            eVar2.f8256c0 = true;
            eVar2.f8281p0.E = true;
        }
        dVar.i(6).b(dVar2.i(i11), eVar.D, eVar.C, true);
        dVar.E = true;
        dVar.i(3).j();
        dVar.i(5).j();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            i0.e eVar = (i0.e) childAt.getLayoutParams();
            d dVar = eVar.f8281p0;
            if (childAt.getVisibility() != 8 || eVar.f8258d0 || eVar.f8260e0 || zIsInEditMode) {
                int iR = dVar.r();
                int iS = dVar.s();
                childAt.layout(iR, iS, dVar.q() + iR, dVar.k() + iS);
            }
        }
        ArrayList arrayList = this.f1017b;
        int size = arrayList.size();
        if (size > 0) {
            for (int i15 = 0; i15 < size; i15++) {
                ((c) arrayList.get(i15)).getClass();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0526  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i10, int i11) throws IllegalAccessException, Resources.NotFoundException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        int i12;
        int i13;
        d dVar;
        int i14;
        d dVar2;
        int i15;
        d dVar3;
        int i16;
        i0.e eVar;
        float f10;
        int i17;
        int i18;
        float fAbs;
        int i19;
        ArrayList arrayList;
        ArrayList arrayList2;
        d dVar4;
        ConstraintLayout constraintLayout = this;
        if (constraintLayout.f1030q == i10) {
            int i20 = constraintLayout.r;
        }
        int i21 = 0;
        if (!constraintLayout.f1023h) {
            int childCount = getChildCount();
            int i22 = 0;
            while (true) {
                if (i22 >= childCount) {
                    break;
                }
                if (constraintLayout.getChildAt(i22).isLayoutRequested()) {
                    constraintLayout.f1023h = true;
                    break;
                }
                i22++;
            }
        }
        constraintLayout.f1030q = i10;
        constraintLayout.r = i11;
        boolean z4 = (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
        e eVar2 = constraintLayout.f1018c;
        eVar2.f5118v0 = z4;
        if (constraintLayout.f1023h) {
            constraintLayout.f1023h = false;
            int childCount2 = getChildCount();
            int i23 = 0;
            while (true) {
                if (i23 >= childCount2) {
                    z = false;
                    break;
                } else {
                    if (constraintLayout.getChildAt(i23).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i23++;
                }
            }
            if (z) {
                boolean zIsInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i24 = 0; i24 < childCount3; i24++) {
                    d dVarG = constraintLayout.g(constraintLayout.getChildAt(i24));
                    if (dVarG != null) {
                        dVarG.C();
                    }
                }
                Object obj = null;
                if (zIsInEditMode) {
                    for (int i25 = 0; i25 < childCount3; i25++) {
                        View childAt = constraintLayout.getChildAt(i25);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName instanceof String) {
                                if (constraintLayout.f1027m == null) {
                                    constraintLayout.f1027m = new HashMap();
                                }
                                int iIndexOf = resourceName.indexOf("/");
                                constraintLayout.f1027m.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id2 = childAt.getId();
                            if (id2 != 0) {
                                View viewFindViewById = (View) constraintLayout.f1016a.get(id2);
                                if (viewFindViewById == null && (viewFindViewById = constraintLayout.findViewById(id2)) != null && viewFindViewById != constraintLayout && viewFindViewById.getParent() == constraintLayout) {
                                    constraintLayout.onViewAdded(viewFindViewById);
                                }
                                if (viewFindViewById == constraintLayout) {
                                    dVar4 = eVar2;
                                    dVar4.f5090h0 = resourceName;
                                } else {
                                    dVar4 = viewFindViewById == null ? null : ((i0.e) viewFindViewById.getLayoutParams()).f8281p0;
                                    dVar4.f5090h0 = resourceName;
                                }
                            } else {
                                dVar4 = eVar2;
                                dVar4.f5090h0 = resourceName;
                            }
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (constraintLayout.l != -1) {
                    for (int i26 = 0; i26 < childCount3; i26++) {
                        constraintLayout.getChildAt(i26).getId();
                    }
                }
                n nVar = constraintLayout.f1025j;
                if (nVar != null) {
                    nVar.a(constraintLayout);
                }
                eVar2.f5114q0.clear();
                ArrayList arrayList3 = constraintLayout.f1017b;
                int size = arrayList3.size();
                if (size > 0) {
                    int i27 = 0;
                    while (i27 < size) {
                        c cVar = (c) arrayList3.get(i27);
                        if (cVar.isInEditMode()) {
                            cVar.setIds(cVar.f8247e);
                        }
                        f0.i iVar = cVar.f8246d;
                        if (iVar == null) {
                            arrayList = arrayList3;
                        } else {
                            iVar.f5154r0 = i21;
                            Arrays.fill(iVar.f5153q0, obj);
                            int i28 = 0;
                            while (i28 < cVar.f8244b) {
                                int i29 = cVar.f8243a[i28];
                                View view = (View) constraintLayout.f1016a.get(i29);
                                if (view == null) {
                                    Integer numValueOf2 = Integer.valueOf(i29);
                                    HashMap map = cVar.f8249g;
                                    String str = (String) map.get(numValueOf2);
                                    int iF = cVar.f(constraintLayout, str);
                                    if (iF != 0) {
                                        cVar.f8243a[i28] = iF;
                                        map.put(Integer.valueOf(iF), str);
                                        view = (View) constraintLayout.f1016a.get(iF);
                                    }
                                }
                                if (view != null) {
                                    f0.i iVar2 = cVar.f8246d;
                                    d dVarG2 = constraintLayout.g(view);
                                    iVar2.getClass();
                                    if (dVarG2 == iVar2 || dVarG2 == null) {
                                        arrayList2 = arrayList3;
                                    } else {
                                        int i30 = iVar2.f5154r0 + 1;
                                        d[] dVarArr = iVar2.f5153q0;
                                        arrayList2 = arrayList3;
                                        if (i30 > dVarArr.length) {
                                            iVar2.f5153q0 = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                                        }
                                        d[] dVarArr2 = iVar2.f5153q0;
                                        int i31 = iVar2.f5154r0;
                                        dVarArr2[i31] = dVarG2;
                                        iVar2.f5154r0 = i31 + 1;
                                    }
                                }
                                i28++;
                                arrayList3 = arrayList2;
                            }
                            arrayList = arrayList3;
                            cVar.f8246d.S();
                        }
                        i27++;
                        arrayList3 = arrayList;
                        obj = null;
                        i21 = 0;
                    }
                }
                for (int i32 = 0; i32 < childCount3; i32++) {
                    constraintLayout.getChildAt(i32);
                }
                SparseArray sparseArray = constraintLayout.f1028n;
                sparseArray.clear();
                sparseArray.put(0, eVar2);
                sparseArray.put(getId(), eVar2);
                for (int i33 = 0; i33 < childCount3; i33++) {
                    View childAt2 = constraintLayout.getChildAt(i33);
                    sparseArray.put(childAt2.getId(), constraintLayout.g(childAt2));
                }
                int i34 = 0;
                while (i34 < childCount3) {
                    View childAt3 = constraintLayout.getChildAt(i34);
                    d dVarG3 = constraintLayout.g(childAt3);
                    if (dVarG3 == null) {
                        i12 = childCount3;
                    } else {
                        i0.e eVar3 = (i0.e) childAt3.getLayoutParams();
                        eVar2.f5114q0.add(dVarG3);
                        d dVar5 = dVarG3.T;
                        if (dVar5 != null) {
                            ((e) dVar5).f5114q0.remove(dVarG3);
                            dVarG3.C();
                        }
                        dVarG3.T = eVar2;
                        eVar3.a();
                        dVarG3.f5088g0 = childAt3.getVisibility();
                        dVarG3.f5086f0 = childAt3;
                        if (childAt3 instanceof c) {
                            ((c) childAt3).h(dVarG3, eVar2.f5118v0);
                        }
                        if (eVar3.f8258d0) {
                            h hVar = (h) dVarG3;
                            int i35 = eVar3.f8275m0;
                            int i36 = eVar3.f8277n0;
                            float f11 = eVar3.f8279o0;
                            if (f11 != -1.0f) {
                                if (f11 > -1.0f) {
                                    hVar.f5148q0 = f11;
                                    hVar.f5149r0 = -1;
                                    hVar.s0 = -1;
                                }
                            } else if (i35 != -1) {
                                if (i35 > -1) {
                                    hVar.f5148q0 = -1.0f;
                                    hVar.f5149r0 = i35;
                                    hVar.s0 = -1;
                                }
                            } else if (i36 != -1 && i36 > -1) {
                                hVar.f5148q0 = -1.0f;
                                hVar.f5149r0 = -1;
                                hVar.s0 = i36;
                            }
                            i12 = childCount3;
                        } else {
                            int i37 = eVar3.f8262f0;
                            int i38 = eVar3.f8264g0;
                            int i39 = eVar3.f8266h0;
                            int i40 = eVar3.f8268i0;
                            int i41 = eVar3.f8270j0;
                            i12 = childCount3;
                            int i42 = eVar3.f8272k0;
                            float f12 = eVar3.f8273l0;
                            int i43 = eVar3.f8280p;
                            if (i43 != -1) {
                                d dVar6 = (d) sparseArray.get(i43);
                                if (dVar6 != null) {
                                    float f13 = eVar3.r;
                                    dVarG3.v(7, 7, eVar3.f8282q, 0, dVar6);
                                    dVarG3.D = f13;
                                }
                                eVar = eVar3;
                            } else {
                                if (i37 != -1) {
                                    d dVar7 = (d) sparseArray.get(i37);
                                    if (dVar7 != null) {
                                        dVarG3.v(2, 2, ((ViewGroup.MarginLayoutParams) eVar3).leftMargin, i41, dVar7);
                                    }
                                } else {
                                    i13 = -1;
                                    if (i38 != -1) {
                                        d dVar8 = (d) sparseArray.get(i38);
                                        if (dVar8 != null) {
                                            dVarG3.v(2, 4, ((ViewGroup.MarginLayoutParams) eVar3).leftMargin, i41, dVar8);
                                        }
                                    }
                                    if (i39 == i13) {
                                        d dVar9 = (d) sparseArray.get(i39);
                                        if (dVar9 != null) {
                                            dVarG3.v(4, 2, ((ViewGroup.MarginLayoutParams) eVar3).rightMargin, i42, dVar9);
                                        }
                                    } else if (i40 != i13 && (dVar = (d) sparseArray.get(i40)) != null) {
                                        dVarG3.v(4, 4, ((ViewGroup.MarginLayoutParams) eVar3).rightMargin, i42, dVar);
                                    }
                                    i14 = eVar3.f8267i;
                                    if (i14 == -1) {
                                        d dVar10 = (d) sparseArray.get(i14);
                                        if (dVar10 != null) {
                                            dVarG3.v(3, 3, ((ViewGroup.MarginLayoutParams) eVar3).topMargin, eVar3.f8288x, dVar10);
                                        }
                                    } else {
                                        int i44 = eVar3.f8269j;
                                        if (i44 != -1 && (dVar2 = (d) sparseArray.get(i44)) != null) {
                                            dVarG3.v(3, 5, ((ViewGroup.MarginLayoutParams) eVar3).topMargin, eVar3.f8288x, dVar2);
                                        }
                                    }
                                    i15 = eVar3.f8271k;
                                    if (i15 == -1) {
                                        d dVar11 = (d) sparseArray.get(i15);
                                        if (dVar11 != null) {
                                            dVarG3.v(5, 3, ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin, eVar3.z, dVar11);
                                        }
                                    } else {
                                        int i45 = eVar3.l;
                                        if (i45 != -1 && (dVar3 = (d) sparseArray.get(i45)) != null) {
                                            dVarG3.v(5, 5, ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin, eVar3.z, dVar3);
                                        }
                                    }
                                    i16 = eVar3.f8274m;
                                    if (i16 == -1) {
                                        eVar = eVar3;
                                        j(dVarG3, eVar3, sparseArray, i16, 6);
                                    } else {
                                        eVar = eVar3;
                                        int i46 = eVar.f8276n;
                                        if (i46 != -1) {
                                            j(dVarG3, eVar, sparseArray, i46, 3);
                                        } else {
                                            int i47 = eVar.f8278o;
                                            if (i47 != -1) {
                                                j(dVarG3, eVar, sparseArray, i47, 5);
                                            }
                                        }
                                    }
                                    if (f12 >= 0.0f) {
                                        dVarG3.f5082d0 = f12;
                                    }
                                    f10 = eVar.F;
                                    if (f10 >= 0.0f) {
                                        dVarG3.f5084e0 = f10;
                                    }
                                }
                                i13 = -1;
                                if (i39 == i13) {
                                }
                                i14 = eVar3.f8267i;
                                if (i14 == -1) {
                                }
                                i15 = eVar3.f8271k;
                                if (i15 == -1) {
                                }
                                i16 = eVar3.f8274m;
                                if (i16 == -1) {
                                }
                                if (f12 >= 0.0f) {
                                }
                                f10 = eVar.F;
                                if (f10 >= 0.0f) {
                                }
                            }
                            if (zIsInEditMode && ((i19 = eVar.T) != -1 || eVar.U != -1)) {
                                int i48 = eVar.U;
                                dVarG3.Y = i19;
                                dVarG3.Z = i48;
                            }
                            if (eVar.f8252a0) {
                                dVarG3.M(1);
                                dVarG3.O(((ViewGroup.MarginLayoutParams) eVar).width);
                                if (((ViewGroup.MarginLayoutParams) eVar).width == -2) {
                                    dVarG3.M(2);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) eVar).width == -1) {
                                if (eVar.W) {
                                    dVarG3.M(3);
                                } else {
                                    dVarG3.M(4);
                                }
                                dVarG3.i(2).f5072g = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                                dVarG3.i(4).f5072g = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
                            } else {
                                dVarG3.M(3);
                                dVarG3.O(0);
                            }
                            if (eVar.f8254b0) {
                                dVarG3.N(1);
                                dVarG3.L(((ViewGroup.MarginLayoutParams) eVar).height);
                                if (((ViewGroup.MarginLayoutParams) eVar).height == -2) {
                                    dVarG3.N(2);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) eVar).height == -1) {
                                if (eVar.X) {
                                    dVarG3.N(3);
                                } else {
                                    dVarG3.N(4);
                                }
                                dVarG3.i(3).f5072g = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                                dVarG3.i(5).f5072g = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                            } else {
                                dVarG3.N(3);
                                dVarG3.L(0);
                            }
                            String str2 = eVar.G;
                            if (str2 == null || str2.length() == 0) {
                                dVarG3.W = 0.0f;
                            } else {
                                int length = str2.length();
                                int iIndexOf3 = str2.indexOf(44);
                                if (iIndexOf3 <= 0 || iIndexOf3 >= length - 1) {
                                    i17 = 0;
                                    i18 = -1;
                                } else {
                                    String strSubstring = str2.substring(0, iIndexOf3);
                                    i18 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                                    i17 = iIndexOf3 + 1;
                                }
                                int iIndexOf4 = str2.indexOf(58);
                                if (iIndexOf4 < 0 || iIndexOf4 >= length - 1) {
                                    String strSubstring2 = str2.substring(i17);
                                    if (strSubstring2.length() > 0) {
                                        try {
                                            fAbs = Float.parseFloat(strSubstring2);
                                        } catch (NumberFormatException unused2) {
                                        }
                                        if (fAbs > 0.0f) {
                                            dVarG3.W = fAbs;
                                            dVarG3.X = i18;
                                        }
                                    } else {
                                        fAbs = 0.0f;
                                        if (fAbs > 0.0f) {
                                        }
                                    }
                                } else {
                                    String strSubstring3 = str2.substring(i17, iIndexOf4);
                                    String strSubstring4 = str2.substring(iIndexOf4 + 1);
                                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                        try {
                                            float f14 = Float.parseFloat(strSubstring3);
                                            float f15 = Float.parseFloat(strSubstring4);
                                            if (f14 > 0.0f && f15 > 0.0f) {
                                                fAbs = i18 == 1 ? Math.abs(f15 / f14) : Math.abs(f14 / f15);
                                            }
                                        } catch (NumberFormatException unused3) {
                                        }
                                        if (fAbs > 0.0f) {
                                        }
                                    }
                                }
                            }
                            float f16 = eVar.H;
                            float[] fArr = dVarG3.f5096k0;
                            fArr[0] = f16;
                            fArr[1] = eVar.I;
                            dVarG3.f5092i0 = eVar.J;
                            dVarG3.f5094j0 = eVar.K;
                            int i49 = eVar.Z;
                            if (i49 >= 0 && i49 <= 3) {
                                dVarG3.f5106q = i49;
                            }
                            int i50 = eVar.L;
                            int i51 = eVar.N;
                            int i52 = eVar.P;
                            float f17 = eVar.R;
                            dVarG3.r = i50;
                            dVarG3.f5109u = i51;
                            if (i52 == Integer.MAX_VALUE) {
                                i52 = 0;
                            }
                            dVarG3.f5110v = i52;
                            dVarG3.f5111w = f17;
                            if (f17 > 0.0f && f17 < 1.0f && i50 == 0) {
                                dVarG3.r = 2;
                            }
                            int i53 = eVar.M;
                            int i54 = eVar.O;
                            int i55 = eVar.Q;
                            float f18 = eVar.S;
                            dVarG3.f5107s = i53;
                            dVarG3.f5112x = i54;
                            if (i55 == Integer.MAX_VALUE) {
                                i55 = 0;
                            }
                            dVarG3.f5113y = i55;
                            dVarG3.z = f18;
                            if (f18 > 0.0f && f18 < 1.0f && i53 == 0) {
                                dVarG3.f5107s = 2;
                            }
                        }
                    }
                    i34++;
                    constraintLayout = this;
                    childCount3 = i12;
                }
            }
            if (z) {
                eVar2.f5115r0.S(eVar2);
            }
        }
        i(eVar2, this.f1024i, i10, i11);
        int iQ = eVar2.q();
        int iK = eVar2.k();
        boolean z10 = eVar2.E0;
        boolean z11 = eVar2.F0;
        f fVar = this.f1029p;
        int i56 = fVar.f8294e;
        int iResolveSizeAndState = View.resolveSizeAndState(iQ + fVar.f8293d, i10, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(iK + i56, i11, 0);
        int i57 = iResolveSizeAndState & NoConst.I24;
        int i58 = iResolveSizeAndState2 & NoConst.I24;
        int iMin = Math.min(this.f1021f, i57);
        int iMin2 = Math.min(this.f1022g, i58);
        if (z10) {
            iMin |= 16777216;
        }
        if (z11) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        d dVarG = g(view);
        if ((view instanceof Guideline) && !(dVarG instanceof h)) {
            i0.e eVar = (i0.e) view.getLayoutParams();
            h hVar = new h();
            eVar.f8281p0 = hVar;
            eVar.f8258d0 = true;
            hVar.S(eVar.V);
        }
        if (view instanceof c) {
            c cVar = (c) view;
            cVar.i();
            ((i0.e) view.getLayoutParams()).f8260e0 = true;
            ArrayList arrayList = this.f1017b;
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
            }
        }
        this.f1016a.put(view.getId(), view);
        this.f1023h = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f1016a.remove(view.getId());
        d dVarG = g(view);
        this.f1018c.f5114q0.remove(dVarG);
        dVarG.C();
        this.f1017b.remove(view);
        this.f1023h = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f1023h = true;
        super.requestLayout();
    }

    public void setConstraintSet(n nVar) {
        this.f1025j = nVar;
    }

    @Override // android.view.View
    public void setId(int i10) {
        int id2 = getId();
        SparseArray sparseArray = this.f1016a;
        sparseArray.remove(id2);
        super.setId(i10);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i10) {
        if (i10 == this.f1022g) {
            return;
        }
        this.f1022g = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        if (i10 == this.f1021f) {
            return;
        }
        this.f1021f = i10;
        requestLayout();
    }

    public void setMinHeight(int i10) {
        if (i10 == this.f1020e) {
            return;
        }
        this.f1020e = i10;
        requestLayout();
    }

    public void setMinWidth(int i10) {
        if (i10 == this.f1019d) {
            return;
        }
        this.f1019d = i10;
        requestLayout();
    }

    public void setOnConstraintsChanged(i0.o oVar) {
        g1 g1Var = this.f1026k;
        if (g1Var != null) {
            g1Var.getClass();
        }
    }

    public void setOptimizationLevel(int i10) {
        this.f1024i = i10;
        e eVar = this.f1018c;
        eVar.D0 = i10;
        d0.c.f4211p = eVar.W(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new i0.e(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i10) throws XmlPullParserException, IOException, NumberFormatException {
        super(context, attributeSet, i10);
        this.f1016a = new SparseArray();
        this.f1017b = new ArrayList(4);
        this.f1018c = new e();
        this.f1019d = 0;
        this.f1020e = 0;
        this.f1021f = Integer.MAX_VALUE;
        this.f1022g = Integer.MAX_VALUE;
        this.f1023h = true;
        this.f1024i = 257;
        this.f1025j = null;
        this.f1026k = null;
        this.l = -1;
        this.f1027m = new HashMap();
        this.f1028n = new SparseArray();
        this.f1029p = new f(this, this);
        this.f1030q = 0;
        this.r = 0;
        h(attributeSet, i10);
    }
}
