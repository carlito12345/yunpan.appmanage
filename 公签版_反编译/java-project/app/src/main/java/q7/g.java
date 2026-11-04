package q7;

import android.graphics.Canvas;
import android.graphics.Region;
import android.os.Build;

/* loaded from: classes.dex */
public final class g extends h {
    public g(e eVar) {
        super(eVar);
    }

    @Override // m7.g
    public final void f(Canvas canvas) {
        if (this.z.f13068q.isEmpty()) {
            super.f(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.z.f13068q);
        } else {
            canvas.clipRect(this.z.f13068q, Region.Op.DIFFERENCE);
        }
        super.f(canvas);
        canvas.restore();
    }
}
