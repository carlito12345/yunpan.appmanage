package wa;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AccService;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public AccService f17767a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f17768b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public v8.a f17769c = null;

    /* renamed from: d, reason: collision with root package name */
    public v8.a f17770d = null;

    /* renamed from: e, reason: collision with root package name */
    public int f17771e = 0;

    /* renamed from: f, reason: collision with root package name */
    public long f17772f = System.currentTimeMillis();

    /* renamed from: g, reason: collision with root package name */
    public long f17773g = 0;

    public final void a() {
        System.out.getClass();
        v8.a aVar = new v8.a(AppStart.f3772h);
        aVar.f16661h = "rotation_floating_window";
        aVar.k(new View(this.f17767a));
        aVar.a(40);
        aVar.e();
        this.f17770d = aVar;
        WindowManager.LayoutParams layoutParams = aVar.f16658e;
        layoutParams.height = 0;
        layoutParams.width = 0;
        layoutParams.flags = 24;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            layoutParams.type = 2038;
        } else if (i10 >= 22) {
            layoutParams.type = 2032;
        } else {
            layoutParams.type = 2006;
        }
        layoutParams.format = -3;
        aVar.f16658e = layoutParams;
        aVar.e();
    }

    public final void b() {
        if (t.f17728a.Q && this.f17769c == null) {
            AccService accService = this.f17767a;
            w8.b bVar = new w8.b(1);
            bVar.f17634c = false;
            v8.a aVar = new v8.a(accService);
            aVar.j(R.layout.window_rotation_semistealth);
            float fMin = Math.min(Math.max(0.0f, 0.0f), 1.0f);
            float fMin2 = Math.min(Math.max(0.2f, 0.0f), 1.0f);
            Display defaultDisplay = aVar.f16657d.getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(new DisplayMetrics());
                WindowManager.LayoutParams layoutParams = aVar.f16658e;
                layoutParams.gravity = 8388693;
                layoutParams.x = (int) (r6.widthPixels * fMin);
                layoutParams.y = (int) (r6.heightPixels * fMin2);
                aVar.e();
            }
            aVar.q(bVar);
            aVar.m(android.R.id.icon, new ta.c(accService));
            ta.c cVar = new ta.c(accService);
            v8.h hVar = aVar.f16656c;
            View viewFindViewById = hVar == null ? null : hVar.findViewById(android.R.id.icon);
            if (viewFindViewById != null) {
                aVar.h(16);
                viewFindViewById.setLongClickable(true);
                viewFindViewById.setOnLongClickListener(new v8.f(aVar, cVar));
            }
            this.f17769c = aVar;
            aVar.d();
        }
    }

    public final void c() {
        u uVar = t.f17728a;
        if (uVar.P) {
            this.f17771e++;
            if (System.currentTimeMillis() - this.f17772f > 20000) {
                this.f17771e = 0;
                this.f17772f = System.currentTimeMillis();
            } else if (this.f17771e > 14) {
                this.f17773g = System.currentTimeMillis();
                v8.a aVar = new v8.a(this.f17767a);
                aVar.f16661h = "rotation_floating_window_show_toast";
                aVar.j(R.layout.window_show_toast1);
                aVar.o(android.R.id.message, "20秒内触发15次强制旋转，已暂停旋转任务：1分钟");
                aVar.r(7777);
                aVar.d();
                v8.a aVar2 = this.f17770d;
                if (aVar2.f16659f) {
                    int i10 = uVar.U;
                    if (i10 == 0) {
                        aVar2.n(-1);
                    } else if (i10 == 1) {
                        aVar2.n(0);
                    } else {
                        aVar2.n(1);
                    }
                    this.f17770d.c(400L);
                    return;
                }
                return;
            }
        }
        v8.a aVar3 = this.f17770d;
        if (!aVar3.f16659f) {
            Handler handler = v8.i.f16679a;
            Runnable runnable = aVar3.f16665m;
            handler.removeCallbacks(runnable);
            aVar3.i(runnable, 444L);
        }
        b();
    }

    public final void d(String str) {
        if (System.currentTimeMillis() - this.f17773g < 60000) {
            return;
        }
        u uVar = t.f17728a;
        if (!uVar.R || SystemClock.elapsedRealtime() >= 120000) {
            Handler handler = this.f17768b;
            handler.removeCallbacksAndMessages(null);
            if (uVar.S) {
                System.out.getClass();
                if (this.f17770d == null) {
                    a();
                }
                if (!uVar.O.isEmpty()) {
                    if (uVar.O.contains("|" + str + "|")) {
                        v8.a aVar = this.f17770d;
                        if (aVar.f16658e.screenOrientation != 1) {
                            aVar.n(1);
                            if (!this.f17770d.f16659f) {
                                c();
                            }
                        }
                        final int i10 = 0;
                        handler.postDelayed(new Runnable(this) { // from class: wa.x

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ z f17765b;

                            {
                                this.f17765b = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i10) {
                                    case 0:
                                        v8.a aVar2 = this.f17765b.f17770d;
                                        if (aVar2.f16658e.screenOrientation != 1) {
                                            aVar2.n(1);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        v8.a aVar3 = this.f17765b.f17770d;
                                        if (aVar3.f16658e.screenOrientation != 6) {
                                            aVar3.n(6);
                                            break;
                                        }
                                        break;
                                    case 2:
                                        v8.a aVar4 = this.f17765b.f17770d;
                                        if (aVar4.f16658e.screenOrientation != 6) {
                                            aVar4.n(6);
                                            break;
                                        }
                                        break;
                                    default:
                                        v8.a aVar5 = this.f17765b.f17770d;
                                        if (aVar5.f16658e.screenOrientation != 1) {
                                            aVar5.n(1);
                                            break;
                                        }
                                        break;
                                }
                            }
                        }, 400L);
                        return;
                    }
                }
                v8.a aVar2 = this.f17770d;
                if (aVar2.f16658e.screenOrientation != 6) {
                    aVar2.n(6);
                    if (!this.f17770d.f16659f) {
                        c();
                    }
                }
                final int i11 = 1;
                handler.postDelayed(new Runnable(this) { // from class: wa.x

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ z f17765b;

                    {
                        this.f17765b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i11) {
                            case 0:
                                v8.a aVar22 = this.f17765b.f17770d;
                                if (aVar22.f16658e.screenOrientation != 1) {
                                    aVar22.n(1);
                                    break;
                                }
                                break;
                            case 1:
                                v8.a aVar3 = this.f17765b.f17770d;
                                if (aVar3.f16658e.screenOrientation != 6) {
                                    aVar3.n(6);
                                    break;
                                }
                                break;
                            case 2:
                                v8.a aVar4 = this.f17765b.f17770d;
                                if (aVar4.f16658e.screenOrientation != 6) {
                                    aVar4.n(6);
                                    break;
                                }
                                break;
                            default:
                                v8.a aVar5 = this.f17765b.f17770d;
                                if (aVar5.f16658e.screenOrientation != 1) {
                                    aVar5.n(1);
                                    break;
                                }
                                break;
                        }
                    }
                }, 400L);
                return;
            }
            if (uVar.T) {
                if (this.f17770d == null) {
                    a();
                }
                if (!uVar.N.isEmpty()) {
                    if (uVar.N.contains("|" + str + "|")) {
                        v8.a aVar3 = this.f17770d;
                        if (aVar3.f16658e.screenOrientation != 6) {
                            aVar3.n(6);
                            if (!this.f17770d.f16659f) {
                                c();
                            }
                        }
                        final int i12 = 2;
                        handler.postDelayed(new Runnable(this) { // from class: wa.x

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ z f17765b;

                            {
                                this.f17765b = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i12) {
                                    case 0:
                                        v8.a aVar22 = this.f17765b.f17770d;
                                        if (aVar22.f16658e.screenOrientation != 1) {
                                            aVar22.n(1);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        v8.a aVar32 = this.f17765b.f17770d;
                                        if (aVar32.f16658e.screenOrientation != 6) {
                                            aVar32.n(6);
                                            break;
                                        }
                                        break;
                                    case 2:
                                        v8.a aVar4 = this.f17765b.f17770d;
                                        if (aVar4.f16658e.screenOrientation != 6) {
                                            aVar4.n(6);
                                            break;
                                        }
                                        break;
                                    default:
                                        v8.a aVar5 = this.f17765b.f17770d;
                                        if (aVar5.f16658e.screenOrientation != 1) {
                                            aVar5.n(1);
                                            break;
                                        }
                                        break;
                                }
                            }
                        }, 400L);
                        return;
                    }
                }
                v8.a aVar4 = this.f17770d;
                if (aVar4.f16658e.screenOrientation != 1) {
                    aVar4.n(1);
                    if (!this.f17770d.f16659f) {
                        c();
                    }
                }
                final int i13 = 3;
                handler.postDelayed(new Runnable(this) { // from class: wa.x

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ z f17765b;

                    {
                        this.f17765b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i13) {
                            case 0:
                                v8.a aVar22 = this.f17765b.f17770d;
                                if (aVar22.f16658e.screenOrientation != 1) {
                                    aVar22.n(1);
                                    break;
                                }
                                break;
                            case 1:
                                v8.a aVar32 = this.f17765b.f17770d;
                                if (aVar32.f16658e.screenOrientation != 6) {
                                    aVar32.n(6);
                                    break;
                                }
                                break;
                            case 2:
                                v8.a aVar42 = this.f17765b.f17770d;
                                if (aVar42.f16658e.screenOrientation != 6) {
                                    aVar42.n(6);
                                    break;
                                }
                                break;
                            default:
                                v8.a aVar5 = this.f17765b.f17770d;
                                if (aVar5.f16658e.screenOrientation != 1) {
                                    aVar5.n(1);
                                    break;
                                }
                                break;
                        }
                    }
                }, 400L);
                return;
            }
            try {
                if (uVar.N.isEmpty() && uVar.O.isEmpty()) {
                    v8.a aVar5 = this.f17770d;
                    if (aVar5 != null) {
                        try {
                            aVar5.b();
                            this.f17770d.g();
                        } catch (Exception unused) {
                        }
                        this.f17770d = null;
                    }
                    v8.a aVar6 = this.f17769c;
                    if (aVar6 != null) {
                        try {
                            aVar6.b();
                            this.f17769c.g();
                        } catch (Exception unused2) {
                        }
                        this.f17769c = null;
                        return;
                    }
                    return;
                }
                if (this.f17770d == null) {
                    a();
                }
                if (uVar.N.contains("|" + str + "|")) {
                    v8.a aVar7 = this.f17770d;
                    if (aVar7.f16658e.screenOrientation != 0) {
                        aVar7.n(0);
                    }
                    c();
                    return;
                }
                if (uVar.O.contains("|" + str + "|")) {
                    v8.a aVar8 = this.f17770d;
                    if (aVar8.f16658e.screenOrientation != 1) {
                        aVar8.n(1);
                    }
                    c();
                    return;
                }
                int i14 = uVar.U;
                if (i14 == 0) {
                    this.f17770d.n(-1);
                } else if (i14 == 1) {
                    this.f17770d.n(0);
                } else {
                    this.f17770d.n(1);
                }
                v8.a aVar9 = this.f17770d;
                if (aVar9.f16659f) {
                    aVar9.c(400L);
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }
}
