package m7;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final float f10898a;

    public a(float f10) {
        this.f10898a = f10;
    }

    @Override // m7.c
    public final float a(RectF rectF) {
        return this.f10898a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f10898a == ((a) obj).f10898a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10898a)});
    }
}
