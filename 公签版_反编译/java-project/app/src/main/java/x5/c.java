package x5;

import a6.h;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: d, reason: collision with root package name */
    public static Integer f18150d;

    /* renamed from: a, reason: collision with root package name */
    public final View f18151a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18152b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public b f18153c;

    public c(View view) {
        this.f18151a = view;
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
        View view = this.f18151a;
        if (view.isLayoutRequested() || i11 != -2) {
            return 0;
        }
        Context context = view.getContext();
        if (f18150d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            h.c(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f18150d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f18150d.intValue();
    }
}
