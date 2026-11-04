package eb;

import android.graphics.Matrix;
import android.graphics.Path;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Matrix f4823a = new Matrix();

    public static void a(Path path, float f10, float f11, float f12, float f13, float f14) {
        path.arcTo(f10 - f12, f11 - f12, f10 + f12, f11 + f12, f13, f14, false);
    }
}
