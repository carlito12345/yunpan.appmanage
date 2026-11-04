package wb;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final int f17804a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17805b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f17806c;

    /* renamed from: d, reason: collision with root package name */
    public int f17807d;

    /* renamed from: e, reason: collision with root package name */
    public final float f17808e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17809f;

    public k(int i10, int i11, int i12, ArrayList arrayList, float f10, boolean z) {
        this.f17807d = i10;
        this.f17804a = i11;
        this.f17805b = i12;
        this.f17806c = arrayList;
        this.f17808e = f10;
        this.f17809f = z;
    }

    public final float a(float f10) {
        if (this.f17809f) {
            float f11 = this.f17808e;
            if (f10 > f11) {
                return f10 - f11;
            }
        }
        return 0.0f;
    }

    public final String toString() {
        return "RowRegion{startColumn=" + this.f17804a + ", endColumn=" + this.f17805b + ", line=" + this.f17807d + '}';
    }
}
