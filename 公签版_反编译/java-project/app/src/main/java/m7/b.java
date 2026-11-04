package m7;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final c f10899a;

    /* renamed from: b, reason: collision with root package name */
    public final float f10900b;

    public b(float f10, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f10899a;
            f10 += ((b) cVar).f10900b;
        }
        this.f10899a = cVar;
        this.f10900b = f10;
    }

    @Override // m7.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f10899a.a(rectF) + this.f10900b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10899a.equals(bVar.f10899a) && this.f10900b == bVar.f10900b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10899a, Float.valueOf(this.f10900b)});
    }
}
