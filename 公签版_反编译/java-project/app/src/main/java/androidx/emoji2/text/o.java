package androidx.emoji2.text;

import android.graphics.Point;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import com.yunpan.appmanage.bean.FloatWindowInsets;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1124a;

    public /* synthetic */ o(int i10) {
        this.f1124a = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1124a) {
            case 0:
                try {
                    t0.o.a("EmojiCompat.EmojiCompatInitializer.run");
                    if (l.f1111j != null) {
                        l.a().c();
                    }
                    return;
                } finally {
                    t0.o.b();
                }
            case 1:
                return;
            case 2:
                Iterator it = new ArrayList(oc.q.f11749d.keySet()).iterator();
                while (it.hasNext()) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                    if (scheduledThreadPoolExecutor.isShutdown()) {
                        oc.q.f11749d.remove(scheduledThreadPoolExecutor);
                    } else {
                        scheduledThreadPoolExecutor.purge();
                    }
                }
                return;
            case 3:
                wa.s.c().i(10011);
                return;
            case 4:
                wa.s.c().i(10012);
                return;
            case 5:
                if (wa.s.c().f17707c != null) {
                    v8.a aVar = wa.s.c().f17707c;
                    aVar.getClass();
                    Handler handler = v8.i.f16679a;
                    Runnable runnable = aVar.f16668p;
                    handler.removeCallbacks(runnable);
                    aVar.i(runnable, 0L);
                    wa.s.c().f17707c = null;
                    return;
                }
                return;
            default:
                PrintStream printStream = System.out;
                printStream.getClass();
                ya.e eVarB = ya.e.b();
                eVarB.getClass();
                try {
                    if (eVarB.f19032i != null) {
                        WindowManager.LayoutParams layoutParams = eVarB.f19033j;
                        int i10 = eVarB.f19025b.getInt("floatButton_x", (((Point) eVarB.f19024a.f3937i.f18898e).x / 2) - eVarB.f19046y);
                        y3.a aVar2 = eVarB.f19024a.f3937i;
                        layoutParams.x = i10 - ((FloatWindowInsets) aVar2.f18897d).left;
                        WindowManager.LayoutParams layoutParams2 = eVarB.f19033j;
                        int i11 = eVarB.f19025b.getInt("floatButton_y", (((Point) aVar2.f18898e).y / 2) - eVarB.f19046y);
                        y3.a aVar3 = eVarB.f19024a.f3937i;
                        FloatWindowInsets floatWindowInsets = (FloatWindowInsets) aVar3.f18897d;
                        int i12 = floatWindowInsets.top;
                        layoutParams2.y = i11 - i12;
                        Point point = (Point) aVar3.f18898e;
                        int i13 = point.x;
                        int i14 = eVarB.f19043v;
                        int i15 = floatWindowInsets.left;
                        int i16 = (i13 - i14) - i15;
                        WindowManager.LayoutParams layoutParams3 = eVarB.f19033j;
                        int i17 = layoutParams3.x;
                        if (i17 > i16) {
                            layoutParams3.x = i16;
                        } else if (i17 < (-i15)) {
                            layoutParams3.x = 0;
                        }
                        int i18 = (point.y - i14) - i12;
                        int i19 = layoutParams3.y;
                        if (i19 > i18) {
                            layoutParams3.y = i18;
                        } else if (i19 < (-i12)) {
                            layoutParams3.y = 0;
                        }
                        printStream.getClass();
                        eVarB.f19030g.updateViewLayout(eVarB.f19032i, eVarB.f19033j);
                        if (eVarB.z) {
                            WindowManager.LayoutParams layoutParams4 = eVarB.f19034k;
                            int i20 = layoutParams4.width;
                            y3.a aVar4 = eVarB.f19024a.f3937i;
                            Point point2 = (Point) aVar4.f18898e;
                            int i21 = point2.x;
                            if (i20 != i21) {
                                layoutParams4.width = i21;
                                layoutParams4.height = point2.y;
                            }
                            FloatWindowInsets floatWindowInsets2 = (FloatWindowInsets) aVar4.f18897d;
                            layoutParams4.x = -floatWindowInsets2.left;
                            layoutParams4.y = -floatWindowInsets2.top;
                            eVarB.f19030g.updateViewLayout(eVarB.f19031h, layoutParams4);
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                ya.h hVarA = ya.h.a();
                WindowManager windowManager = hVarA.f19057c;
                if (windowManager == null) {
                    return;
                }
                View view = hVarA.f19058d;
                if (view != null) {
                    WindowManager.LayoutParams layoutParams5 = hVarA.f19059e;
                    y3.a aVar5 = hVarA.f19055a.f3937i;
                    FloatWindowInsets floatWindowInsets3 = (FloatWindowInsets) aVar5.f18897d;
                    layoutParams5.x = -floatWindowInsets3.left;
                    int i22 = hVarA.f19070q;
                    layoutParams5.y = i22 - floatWindowInsets3.top;
                    layoutParams5.height = (((Point) aVar5.f18898e).y - i22) - hVarA.r;
                    windowManager.updateViewLayout(view, layoutParams5);
                    PrintStream printStream2 = System.out;
                    int i23 = hVarA.f19059e.height;
                    printStream2.getClass();
                }
                View view2 = hVarA.f19060f;
                if (view2 != null) {
                    WindowManager.LayoutParams layoutParams6 = hVarA.f19061g;
                    y3.a aVar6 = hVarA.f19055a.f3937i;
                    FloatWindowInsets floatWindowInsets4 = (FloatWindowInsets) aVar6.f18897d;
                    layoutParams6.x = -floatWindowInsets4.right;
                    int i24 = hVarA.f19071s;
                    layoutParams6.y = i24 - floatWindowInsets4.top;
                    layoutParams6.height = (((Point) aVar6.f18898e).y - i24) - hVarA.f19072t;
                    hVarA.f19057c.updateViewLayout(view2, layoutParams6);
                    PrintStream printStream3 = System.out;
                    int i25 = hVarA.f19061g.x;
                    int i26 = ((FloatWindowInsets) hVarA.f19055a.f3937i.f18897d).right;
                    printStream3.getClass();
                }
                View view3 = hVarA.f19062h;
                if (view3 != null) {
                    WindowManager.LayoutParams layoutParams7 = hVarA.f19063i;
                    int i27 = hVarA.f19073u;
                    y3.a aVar7 = hVarA.f19055a.f3937i;
                    FloatWindowInsets floatWindowInsets5 = (FloatWindowInsets) aVar7.f18897d;
                    layoutParams7.x = i27 - floatWindowInsets5.left;
                    layoutParams7.y = -floatWindowInsets5.bottom;
                    layoutParams7.width = (((Point) aVar7.f18898e).x - i27) - hVarA.f19074v;
                    hVarA.f19057c.updateViewLayout(view3, layoutParams7);
                    PrintStream printStream4 = System.out;
                    int i28 = hVarA.f19063i.x;
                    int i29 = ((FloatWindowInsets) hVarA.f19055a.f3937i.f18897d).bottom;
                    printStream4.getClass();
                    return;
                }
                return;
        }
    }

    public String toString() {
        switch (this.f1124a) {
            case 1:
                return "EmptyRunnable";
            default:
                return super.toString();
        }
    }

    private final void a() {
    }
}
