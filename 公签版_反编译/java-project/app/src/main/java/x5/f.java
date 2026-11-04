package x5;

import a6.h;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: d, reason: collision with root package name */
    public static Integer f18154d;

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f18155a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18156b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public b f18157c;

    public f(ImageView imageView) {
        this.f18155a = imageView;
    }

    public final int a(int i10, int i11, int i12) {
        int i13 = i11 - i12;
        if (i13 > 0) {
            return i13;
        }
        int i14 = i10 - i12;
        if (i14 > 0) {
            return i14;
        }
        ImageView imageView = this.f18155a;
        if (imageView.isLayoutRequested() || i11 != -2) {
            return 0;
        }
        Context context = imageView.getContext();
        if (f18154d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            h.c(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f18154d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f18154d.intValue();
    }
}
