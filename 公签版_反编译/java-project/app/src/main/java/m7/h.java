package m7;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class h implements c {

    /* renamed from: a, reason: collision with root package name */
    public final float f10940a;

    public h(float f10) {
        this.f10940a = f10;
    }

    @Override // m7.c
    public final float a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f10940a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && this.f10940a == ((h) obj).f10940a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10940a)});
    }
}
