package tb;

import android.graphics.Canvas;
import android.text.GetChars;

/* loaded from: classes.dex */
public final /* synthetic */ class h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f14941a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14942b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ eb.o f14943c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14944d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f14945e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f14946f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f14947g;

    public /* synthetic */ h(l lVar, int i10, eb.o oVar, int i11, int i12, int i13, int i14) {
        this.f14941a = lVar;
        this.f14942b = i10;
        this.f14943c = oVar;
        this.f14944d = i11;
        this.f14945e = i12;
        this.f14946f = i13;
        this.f14947g = i14;
    }

    public final void a(Canvas canvas, GetChars getChars, int i10, int i11, int i12, int i13, boolean z, float f10, float f11, eb.p pVar, jb.c cVar) {
        int i14;
        l lVar;
        eb.o oVar;
        int i15;
        int i16;
        mb.j jVar;
        mb.b bVar;
        int i17;
        int i18;
        mb.b bVar2;
        int i19;
        int i20;
        int i21;
        l lVar2;
        int i22;
        int i23;
        int i24 = this.f14942b;
        int i25 = i24 & 1;
        eb.o oVar2 = this.f14943c;
        l lVar3 = this.f14941a;
        int i26 = this.f14944d;
        if (i25 != 0) {
            i14 = i26;
            lVar = lVar3;
            oVar = oVar2;
            lVar3.s(canvas, oVar2, getChars, i10, i11, i12, i13, z, f10, f11, 0, i14);
        } else {
            i14 = i26;
            lVar = lVar3;
            oVar = oVar2;
        }
        int i27 = i24 & 2;
        int i28 = this.f14945e;
        if (i27 != 0) {
            i15 = i28;
            lVar.s(canvas, oVar, getChars, i10, i11, i12, i13, z, f10, f11, i14, i28);
        } else {
            i15 = i28;
        }
        int i29 = i24 & 4;
        int i30 = this.f14946f;
        if (i29 != 0) {
            i16 = i30;
            lVar.s(canvas, oVar, getChars, i10, i11, i12, i13, z, f10, f11, i15, i30);
        } else {
            i16 = i30;
        }
        if ((i24 & 64) == 0) {
            lVar.getClass();
            return;
        }
        l lVar4 = lVar;
        if (!lVar4.D.a() || (i18 = this.f14947g) < (i17 = (bVar = (jVar = lVar4.D).f11081c).f11057b) || i18 > (i19 = (bVar2 = jVar.f11082d).f11057b)) {
            return;
        }
        int i31 = i18 == i17 ? bVar.f11058c : 0;
        int i32 = i18 == i19 ? bVar2.f11058c : i16;
        if ((i24 & 14) == 0) {
            lVar4.s(canvas, oVar, getChars, i10, i11, i12, i13, z, f10, f11, i31, i32);
            return;
        }
        int i33 = i32;
        if (i25 == 0) {
            i20 = i14;
            i21 = i31;
            lVar2 = lVar4;
            lVar4.s(canvas, oVar, getChars, i10, i11, i12, i13, z, f10, f11, i31, Math.min(i20, i33));
        } else {
            i20 = i14;
            i21 = i31;
            lVar2 = lVar4;
        }
        if (i27 == 0) {
            int i34 = i21;
            int iMax = Math.max(i20, i34);
            i23 = i15;
            i22 = i34;
            lVar2.s(canvas, oVar, getChars, i10, i11, i12, i13, z, f10, f11, iMax, Math.min(i23, i33));
        } else {
            i22 = i21;
            i23 = i15;
        }
        if (i29 == 0) {
            lVar2.s(canvas, oVar, getChars, i10, i11, i12, i13, z, f10, f11, Math.max(i23, i22), i33);
        }
    }
}
