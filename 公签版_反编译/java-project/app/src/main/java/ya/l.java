package ya;

import a9.o;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Point;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.audiofx.LoudnessEnhancer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AccService;
import f2.e1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import r1.b0;
import r1.t;
import r1.u;
import r1.v;
import r1.w;
import r1.y;
import u1.f0;
import u7.g0;
import u7.y0;
import ua.c2;
import ua.e8;
import v3.e0;
import y1.a1;
import y1.c0;
import y1.m;
import y1.u0;
import y1.v0;
import y1.x;
import z7.s;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public WindowManager f19098a;

    /* renamed from: b, reason: collision with root package name */
    public e0 f19099b;

    /* renamed from: c, reason: collision with root package name */
    public AccService f19100c;

    /* renamed from: d, reason: collision with root package name */
    public s f19101d;

    /* renamed from: e, reason: collision with root package name */
    public WindowManager.LayoutParams f19102e;

    /* renamed from: f, reason: collision with root package name */
    public x f19103f;

    /* renamed from: g, reason: collision with root package name */
    public AudioManager f19104g;

    /* renamed from: h, reason: collision with root package name */
    public LoudnessEnhancer f19105h;

    /* renamed from: i, reason: collision with root package name */
    public Handler f19106i;

    /* renamed from: j, reason: collision with root package name */
    public int f19107j;

    /* renamed from: k, reason: collision with root package name */
    public int f19108k;

    public l(AccService accService, s sVar) {
        this.f19100c = null;
        this.f19106i = new Handler(Looper.getMainLooper());
        this.f19107j = -1;
        this.f19108k = -1;
        try {
            this.f19100c = accService;
            this.f19101d = sVar;
            this.f19104g = (AudioManager) accService.getSystemService("audio");
            this.f19098a = (WindowManager) this.f19100c.getSystemService("window");
            final int i10 = 1;
            this.f19106i.post(new Runnable(this) { // from class: ya.j

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ l f19096b;

                {
                    this.f19096b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            l lVar = this.f19096b;
                            lVar.getClass();
                            try {
                                lVar.b();
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                lVar.c();
                                return;
                            }
                        default:
                            l lVar2 = this.f19096b;
                            lVar2.getClass();
                            try {
                                lVar2.b();
                                break;
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                lVar2.c();
                            }
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(l lVar) {
        int i10 = 2;
        int i11 = 1;
        lVar.getClass();
        ContextWrapper contextWrapper = lVar.f19100c;
        if (contextWrapper == null) {
            contextWrapper = AppStart.f3772h;
        }
        m mVar = new m(contextWrapper);
        o.t(!mVar.f18757y);
        mVar.f18757y = true;
        x xVar = new x(mVar);
        lVar.f19103f = xVar;
        xVar.f18861m.a(new u1.s(i11, lVar));
        lVar.f19099b.setPlayer(lVar.f19103f);
        z7.o oVarP = lVar.f19101d.p("files");
        int i12 = 0;
        String strI = oVarP.l(oVarP.f19478a.size() > 1 ? new Random().nextInt(oVarP.f19478a.size()) : 0).i();
        dd.c cVar = new dd.c(4);
        u7.e0 e0Var = g0.f15471b;
        y0 y0Var = y0.f15549e;
        List listEmptyList = Collections.emptyList();
        y0 y0Var2 = y0.f15549e;
        t tVar = new t();
        w wVar = w.f13618a;
        Uri uri = strI == null ? null : Uri.parse(strI);
        y yVar = new y("", new r1.s(cVar), uri != null ? new v(uri, null, null, listEmptyList, y0Var2, -9223372036854775807L) : null, new u(tVar), b0.B, wVar);
        x xVar2 = lVar.f19103f;
        xVar2.getClass();
        y0 y0VarR = g0.r(yVar);
        xVar2.h0();
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < y0VarR.f15551d; i13++) {
            arrayList.add(xVar2.f18865s.b((y) y0VarR.get(i13)));
        }
        xVar2.h0();
        xVar2.G(xVar2.f18853f1);
        xVar2.C();
        xVar2.M++;
        ArrayList arrayList2 = xVar2.f18864q;
        arrayList2.clear();
        ArrayList arrayList3 = new ArrayList();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            u0 u0Var = new u0((f2.a) arrayList.get(i14), xVar2.r);
            arrayList3.add(u0Var);
            arrayList2.add(i14, new y1.v(u0Var.f18817b, u0Var.f18816a));
        }
        e1 e1Var = xVar2.V;
        int size = arrayList3.size();
        e1Var.getClass();
        xVar2.V = new e1(new Random(e1Var.f5254a.nextLong())).a(size);
        a1 a1Var = new a1(arrayList2, xVar2.V);
        boolean zP = a1Var.p();
        int i15 = a1Var.f18574d;
        if (!zP && -1 >= i15) {
            throw new hc.d(2);
        }
        int iA = a1Var.a(xVar2.L);
        v0 v0VarP = xVar2.P(xVar2.f18853f1, a1Var, xVar2.Q(a1Var, iA, -9223372036854775807L));
        int i16 = v0VarP.f18828e;
        if (i16 == 1) {
            i10 = 1;
        } else if (!a1Var.p()) {
            if (iA == -1) {
                i10 = i16;
            } else if (iA >= i15) {
                i10 = 4;
            }
        }
        v0 v0VarO = x.O(v0VarP, i10);
        xVar2.l.f18660h.b(17, new c0(arrayList3, xVar2.V, iA, f0.G(-9223372036854775807L))).b();
        xVar2.f0(v0VarO, 0, (xVar2.f18853f1.f18825b.f5236a.equals(v0VarO.f18825b.f5236a) || xVar2.f18853f1.f18824a.p()) ? false : true, 4, xVar2.D(v0VarO), -1, false);
        if (lVar.f19101d.o("isMute").b()) {
            x xVar3 = lVar.f19103f;
            xVar3.h0();
            final float f10 = f0.f(0.0f, 0.0f, 1.0f);
            if (xVar3.T0 != f10) {
                xVar3.T0 = f10;
                xVar3.l.f18660h.b(32, Float.valueOf(f10)).b();
                xVar3.f18861m.e(22, new u1.j() { // from class: y1.p
                    @Override // u1.j
                    /* renamed from: a */
                    public final void mo12a(Object obj) {
                        ((r1.k0) obj).i(f10);
                    }
                });
            }
            h2.i iVar = (h2.i) lVar.f19103f.M();
            iVar.getClass();
            h2.h hVar = new h2.h(iVar);
            hVar.i(1, true);
            lVar.f19103f.a0(hVar.a());
            try {
                lVar.f19103f.X(new r1.d(3, 1));
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        } else {
            try {
                lVar.f19103f.X(new r1.d(3, lVar.f19101d.o("usage").e()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            int iE = lVar.f19101d.o("AudioDeviceId").e();
            if (Build.VERSION.SDK_INT >= 28 && iE != -1) {
                AudioDeviceInfo[] devices = lVar.f19104g.getDevices(2);
                int length = devices.length;
                while (true) {
                    if (i12 >= length) {
                        break;
                    }
                    AudioDeviceInfo audioDeviceInfo = devices[i12];
                    if (audioDeviceInfo.getId() == iE) {
                        x xVar4 = lVar.f19103f;
                        xVar4.h0();
                        xVar4.W(1, 12, audioDeviceInfo);
                        break;
                    }
                    i12++;
                }
            }
        }
        x xVar5 = lVar.f19103f;
        k kVar = new k(lVar);
        xVar5.getClass();
        xVar5.f18861m.a(kVar);
        lVar.f19103f.S();
    }

    public final void b() {
        System.out.getClass();
        ContextWrapper contextWrapper = this.f19100c;
        if (contextWrapper == null) {
            contextWrapper = AppStart.f3772h;
        }
        e0 e0Var = new e0(contextWrapper);
        this.f19099b = e0Var;
        e0Var.setLayoutParams(new WindowManager.LayoutParams(-1, -1));
        this.f19099b.setOnLongClickListener(new e8(1, this));
        this.f19099b.setUseController(false);
        this.f19099b.setResizeMode(4);
        this.f19099b.getViewTreeObserver().addOnGlobalLayoutListener(new c2(5, this));
        Context context = this.f19100c;
        if (context == null) {
            context = AppStart.f3772h;
        }
        Point pointR = p000if.a.R(context);
        int i10 = 2002;
        if (this.f19100c != null) {
            if (Build.VERSION.SDK_INT >= 22) {
                i10 = 2032;
            }
        } else if (Build.VERSION.SDK_INT >= 26) {
            i10 = 2038;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(pointR.x, pointR.y, wa.s.c().f17705a ? 2006 : i10, 808, -3);
        this.f19102e = layoutParams;
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        WindowManager.LayoutParams layoutParams2 = this.f19102e;
        layoutParams2.gravity = 8388659;
        this.f19098a.addView(this.f19099b, layoutParams2);
    }

    public final void c() {
        int i10;
        try {
            this.f19106i.removeCallbacksAndMessages(null);
        } catch (Exception unused) {
        }
        try {
            LoudnessEnhancer loudnessEnhancer = this.f19105h;
            if (loudnessEnhancer != null) {
                loudnessEnhancer.release();
            }
        } catch (Exception unused2) {
        }
        try {
            x xVar = this.f19103f;
            if (xVar != null) {
                xVar.h0();
                xVar.c0(null);
                y0 y0Var = y0.f15549e;
                long j10 = xVar.f18853f1.f18840s;
                xVar.V0 = new t1.c(y0Var);
                this.f19103f.T();
            }
        } catch (Exception unused3) {
        }
        try {
            try {
                int i11 = this.f19107j;
                if (i11 >= 0 && (i10 = this.f19108k) >= 0) {
                    this.f19104g.setStreamVolume(i11, i10, 0);
                    this.f19107j = -1;
                    this.f19108k = -1;
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            this.f19098a.removeView(this.f19099b);
            this.f19100c = null;
            this.f19101d = null;
            this.f19098a = null;
            this.f19102e = null;
            this.f19104g = null;
            this.f19103f = null;
            this.f19106i = null;
        } catch (Exception unused4) {
        }
    }

    public l(s sVar) {
        this.f19100c = null;
        this.f19106i = new Handler(Looper.getMainLooper());
        this.f19107j = -1;
        this.f19108k = -1;
        try {
            this.f19101d = sVar;
            this.f19104g = (AudioManager) AppStart.f3772h.getSystemService("audio");
            this.f19098a = (WindowManager) AppStart.f3772h.getSystemService("window");
            final int i10 = 0;
            this.f19106i.post(new Runnable(this) { // from class: ya.j

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ l f19096b;

                {
                    this.f19096b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            l lVar = this.f19096b;
                            lVar.getClass();
                            try {
                                lVar.b();
                                break;
                            } catch (Exception e7) {
                                e7.printStackTrace();
                                lVar.c();
                                return;
                            }
                        default:
                            l lVar2 = this.f19096b;
                            lVar2.getClass();
                            try {
                                lVar2.b();
                                break;
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                lVar2.c();
                            }
                    }
                }
            });
        } catch (Exception unused) {
        }
    }
}
