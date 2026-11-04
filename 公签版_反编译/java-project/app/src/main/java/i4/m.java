package i4;

import android.graphics.Matrix;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m extends n {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f8554a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f8555b;

    /* renamed from: c, reason: collision with root package name */
    public float f8556c;

    /* renamed from: d, reason: collision with root package name */
    public float f8557d;

    /* renamed from: e, reason: collision with root package name */
    public float f8558e;

    /* renamed from: f, reason: collision with root package name */
    public float f8559f;

    /* renamed from: g, reason: collision with root package name */
    public float f8560g;

    /* renamed from: h, reason: collision with root package name */
    public float f8561h;

    /* renamed from: i, reason: collision with root package name */
    public float f8562i;

    /* renamed from: j, reason: collision with root package name */
    public final Matrix f8563j;

    /* renamed from: k, reason: collision with root package name */
    public String f8564k;

    public m(m mVar, a0.e eVar) {
        o kVar;
        this.f8554a = new Matrix();
        this.f8555b = new ArrayList();
        this.f8556c = 0.0f;
        this.f8557d = 0.0f;
        this.f8558e = 0.0f;
        this.f8559f = 1.0f;
        this.f8560g = 1.0f;
        this.f8561h = 0.0f;
        this.f8562i = 0.0f;
        Matrix matrix = new Matrix();
        this.f8563j = matrix;
        this.f8564k = null;
        this.f8556c = mVar.f8556c;
        this.f8557d = mVar.f8557d;
        this.f8558e = mVar.f8558e;
        this.f8559f = mVar.f8559f;
        this.f8560g = mVar.f8560g;
        this.f8561h = mVar.f8561h;
        this.f8562i = mVar.f8562i;
        String str = mVar.f8564k;
        this.f8564k = str;
        if (str != null) {
            eVar.put(str, this);
        }
        matrix.set(mVar.f8563j);
        ArrayList arrayList = mVar.f8555b;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Object obj = arrayList.get(i10);
            if (obj instanceof m) {
                this.f8555b.add(new m((m) obj, eVar));
            } else {
                if (obj instanceof l) {
                    kVar = new l((l) obj);
                } else {
                    if (!(obj instanceof k)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    kVar = new k((k) obj);
                }
                this.f8555b.add(kVar);
                Object obj2 = kVar.f8566b;
                if (obj2 != null) {
                    eVar.put(obj2, kVar);
                }
            }
        }
    }

    @Override // i4.n
    public final boolean a() {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f8555b;
            if (i10 >= arrayList.size()) {
                return false;
            }
            if (((n) arrayList.get(i10)).a()) {
                return true;
            }
            i10++;
        }
    }

    @Override // i4.n
    public final boolean b(int[] iArr) {
        int i10 = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.f8555b;
            if (i10 >= arrayList.size()) {
                return zB;
            }
            zB |= ((n) arrayList.get(i10)).b(iArr);
            i10++;
        }
    }

    public final void c() {
        Matrix matrix = this.f8563j;
        matrix.reset();
        matrix.postTranslate(-this.f8557d, -this.f8558e);
        matrix.postScale(this.f8559f, this.f8560g);
        matrix.postRotate(this.f8556c, 0.0f, 0.0f);
        matrix.postTranslate(this.f8561h + this.f8557d, this.f8562i + this.f8558e);
    }

    public String getGroupName() {
        return this.f8564k;
    }

    public Matrix getLocalMatrix() {
        return this.f8563j;
    }

    public float getPivotX() {
        return this.f8557d;
    }

    public float getPivotY() {
        return this.f8558e;
    }

    public float getRotation() {
        return this.f8556c;
    }

    public float getScaleX() {
        return this.f8559f;
    }

    public float getScaleY() {
        return this.f8560g;
    }

    public float getTranslateX() {
        return this.f8561h;
    }

    public float getTranslateY() {
        return this.f8562i;
    }

    public void setPivotX(float f10) {
        if (f10 != this.f8557d) {
            this.f8557d = f10;
            c();
        }
    }

    public void setPivotY(float f10) {
        if (f10 != this.f8558e) {
            this.f8558e = f10;
            c();
        }
    }

    public void setRotation(float f10) {
        if (f10 != this.f8556c) {
            this.f8556c = f10;
            c();
        }
    }

    public void setScaleX(float f10) {
        if (f10 != this.f8559f) {
            this.f8559f = f10;
            c();
        }
    }

    public void setScaleY(float f10) {
        if (f10 != this.f8560g) {
            this.f8560g = f10;
            c();
        }
    }

    public void setTranslateX(float f10) {
        if (f10 != this.f8561h) {
            this.f8561h = f10;
            c();
        }
    }

    public void setTranslateY(float f10) {
        if (f10 != this.f8562i) {
            this.f8562i = f10;
            c();
        }
    }

    public m() {
        this.f8554a = new Matrix();
        this.f8555b = new ArrayList();
        this.f8556c = 0.0f;
        this.f8557d = 0.0f;
        this.f8558e = 0.0f;
        this.f8559f = 1.0f;
        this.f8560g = 1.0f;
        this.f8561h = 0.0f;
        this.f8562i = 0.0f;
        this.f8563j = new Matrix();
        this.f8564k = null;
    }
}
