package i4;

import android.content.res.ColorStateList;
import android.graphics.Paint;

/* loaded from: classes.dex */
public final class l extends o {

    /* renamed from: d, reason: collision with root package name */
    public androidx.room.s f8544d;

    /* renamed from: e, reason: collision with root package name */
    public float f8545e;

    /* renamed from: f, reason: collision with root package name */
    public androidx.room.s f8546f;

    /* renamed from: g, reason: collision with root package name */
    public float f8547g;

    /* renamed from: h, reason: collision with root package name */
    public float f8548h;

    /* renamed from: i, reason: collision with root package name */
    public float f8549i;

    /* renamed from: j, reason: collision with root package name */
    public float f8550j;

    /* renamed from: k, reason: collision with root package name */
    public float f8551k;
    public Paint.Cap l;

    /* renamed from: m, reason: collision with root package name */
    public Paint.Join f8552m;

    /* renamed from: n, reason: collision with root package name */
    public float f8553n;

    public l() {
        this.f8545e = 0.0f;
        this.f8547g = 1.0f;
        this.f8548h = 1.0f;
        this.f8549i = 0.0f;
        this.f8550j = 1.0f;
        this.f8551k = 0.0f;
        this.l = Paint.Cap.BUTT;
        this.f8552m = Paint.Join.MITER;
        this.f8553n = 4.0f;
    }

    @Override // i4.n
    public final boolean a() {
        return this.f8546f.p() || this.f8544d.p();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    @Override // i4.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(int[] iArr) {
        boolean z;
        androidx.room.s sVar = this.f8546f;
        boolean z4 = false;
        if (sVar.p()) {
            ColorStateList colorStateList = (ColorStateList) sVar.f2428d;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != sVar.f2426b) {
                sVar.f2426b = colorForState;
                z = true;
            } else {
                z = false;
            }
        }
        androidx.room.s sVar2 = this.f8544d;
        if (sVar2.p()) {
            ColorStateList colorStateList2 = (ColorStateList) sVar2.f2428d;
            int colorForState2 = colorStateList2.getColorForState(iArr, colorStateList2.getDefaultColor());
            if (colorForState2 != sVar2.f2426b) {
                sVar2.f2426b = colorForState2;
                z4 = true;
            }
        }
        return z | z4;
    }

    public float getFillAlpha() {
        return this.f8548h;
    }

    public int getFillColor() {
        return this.f8546f.f2426b;
    }

    public float getStrokeAlpha() {
        return this.f8547g;
    }

    public int getStrokeColor() {
        return this.f8544d.f2426b;
    }

    public float getStrokeWidth() {
        return this.f8545e;
    }

    public float getTrimPathEnd() {
        return this.f8550j;
    }

    public float getTrimPathOffset() {
        return this.f8551k;
    }

    public float getTrimPathStart() {
        return this.f8549i;
    }

    public void setFillAlpha(float f10) {
        this.f8548h = f10;
    }

    public void setFillColor(int i10) {
        this.f8546f.f2426b = i10;
    }

    public void setStrokeAlpha(float f10) {
        this.f8547g = f10;
    }

    public void setStrokeColor(int i10) {
        this.f8544d.f2426b = i10;
    }

    public void setStrokeWidth(float f10) {
        this.f8545e = f10;
    }

    public void setTrimPathEnd(float f10) {
        this.f8550j = f10;
    }

    public void setTrimPathOffset(float f10) {
        this.f8551k = f10;
    }

    public void setTrimPathStart(float f10) {
        this.f8549i = f10;
    }

    public l(l lVar) {
        super(lVar);
        this.f8545e = 0.0f;
        this.f8547g = 1.0f;
        this.f8548h = 1.0f;
        this.f8549i = 0.0f;
        this.f8550j = 1.0f;
        this.f8551k = 0.0f;
        this.l = Paint.Cap.BUTT;
        this.f8552m = Paint.Join.MITER;
        this.f8553n = 4.0f;
        this.f8544d = lVar.f8544d;
        this.f8545e = lVar.f8545e;
        this.f8547g = lVar.f8547g;
        this.f8546f = lVar.f8546f;
        this.f8567c = lVar.f8567c;
        this.f8548h = lVar.f8548h;
        this.f8549i = lVar.f8549i;
        this.f8550j = lVar.f8550j;
        this.f8551k = lVar.f8551k;
        this.l = lVar.l;
        this.f8552m = lVar.f8552m;
        this.f8553n = lVar.f8553n;
    }
}
