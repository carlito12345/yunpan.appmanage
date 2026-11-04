package m7;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final qf.c f10941a;

    /* renamed from: b, reason: collision with root package name */
    public final qf.c f10942b;

    /* renamed from: c, reason: collision with root package name */
    public final qf.c f10943c;

    /* renamed from: d, reason: collision with root package name */
    public final qf.c f10944d;

    /* renamed from: e, reason: collision with root package name */
    public final c f10945e;

    /* renamed from: f, reason: collision with root package name */
    public final c f10946f;

    /* renamed from: g, reason: collision with root package name */
    public final c f10947g;

    /* renamed from: h, reason: collision with root package name */
    public final c f10948h;

    /* renamed from: i, reason: collision with root package name */
    public final e f10949i;

    /* renamed from: j, reason: collision with root package name */
    public final e f10950j;

    /* renamed from: k, reason: collision with root package name */
    public final e f10951k;
    public final e l;

    public j(ff.b bVar) {
        this.f10941a = (qf.c) bVar.f5802a;
        this.f10942b = (qf.c) bVar.f5803b;
        this.f10943c = (qf.c) bVar.f5804c;
        this.f10944d = (qf.c) bVar.f5805d;
        this.f10945e = (c) bVar.f5806e;
        this.f10946f = (c) bVar.f5807f;
        this.f10947g = (c) bVar.f5808g;
        this.f10948h = (c) bVar.f5809h;
        this.f10949i = (e) bVar.f5810i;
        this.f10950j = (e) bVar.f5811j;
        this.f10951k = (e) bVar.f5812k;
        this.l = (e) bVar.l;
    }

    public static ff.b a(Context context, int i10, int i11, a aVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
        if (i11 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i11);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(q6.a.f13050w);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(3, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(4, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(2, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(1, i12);
            c cVarC = c(typedArrayObtainStyledAttributes, 5, aVar);
            c cVarC2 = c(typedArrayObtainStyledAttributes, 8, cVarC);
            c cVarC3 = c(typedArrayObtainStyledAttributes, 9, cVarC);
            c cVarC4 = c(typedArrayObtainStyledAttributes, 7, cVarC);
            c cVarC5 = c(typedArrayObtainStyledAttributes, 6, cVarC);
            ff.b bVar = new ff.b(1);
            qf.c cVarO = s1.g.o(i13);
            bVar.f5802a = cVarO;
            ff.b.a(cVarO);
            bVar.f5806e = cVarC2;
            qf.c cVarO2 = s1.g.o(i14);
            bVar.f5803b = cVarO2;
            ff.b.a(cVarO2);
            bVar.f5807f = cVarC3;
            qf.c cVarO3 = s1.g.o(i15);
            bVar.f5804c = cVarO3;
            ff.b.a(cVarO3);
            bVar.f5808g = cVarC4;
            qf.c cVarO4 = s1.g.o(i16);
            bVar.f5805d = cVarO4;
            ff.b.a(cVarO4);
            bVar.f5809h = cVarC5;
            return bVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static ff.b b(Context context, AttributeSet attributeSet, int i10, int i11) {
        a aVar = new a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13045q, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, aVar);
    }

    public static c c(TypedArray typedArray, int i10, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i11 = typedValuePeekValue.type;
        return i11 == 5 ? new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i11 == 6 ? new h(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public final boolean d(RectF rectF) {
        boolean z = this.l.getClass().equals(e.class) && this.f10950j.getClass().equals(e.class) && this.f10949i.getClass().equals(e.class) && this.f10951k.getClass().equals(e.class);
        float fA = this.f10945e.a(rectF);
        return z && ((this.f10946f.a(rectF) > fA ? 1 : (this.f10946f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10948h.a(rectF) > fA ? 1 : (this.f10948h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10947g.a(rectF) > fA ? 1 : (this.f10947g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f10942b instanceof i) && (this.f10941a instanceof i) && (this.f10943c instanceof i) && (this.f10944d instanceof i));
    }

    public j() {
        this.f10941a = new i();
        this.f10942b = new i();
        this.f10943c = new i();
        this.f10944d = new i();
        this.f10945e = new a(0.0f);
        this.f10946f = new a(0.0f);
        this.f10947g = new a(0.0f);
        this.f10948h = new a(0.0f);
        this.f10949i = new e(0);
        this.f10950j = new e(0);
        this.f10951k = new e(0);
        this.l = new e(0);
    }
}
