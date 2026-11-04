package com.yunpan.appmanage.carsdk;

import a2.w0;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.hardware.input.IInputManager;
import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapAccFindBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityImage;
import com.yunpan.appmanage.ui.ActivityImage2;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import com.yunpan.appmanage.ui.ActivityTextFlyOSAll;
import fa.n0;
import fa.o0;
import ha.ba;
import ha.eb;
import ha.fb;
import ha.h3;
import ha.r5;
import ha.u9;
import ha.x5;
import ha.y5;
import ha.z6;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import ua.g5;
import ua.h8;
import ua.i1;
import ua.i9;
import ua.o8;
import ua.q8;
import ua.v0;
import ua.x7;
import w.r3;
import x9.m4;
import x9.m5;
import x9.n5;
import x9.u5;
import x9.w3;

/* loaded from: classes.dex */
public final class u extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3893a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3894b;

    public /* synthetic */ u(int i10, Object obj) {
        this.f3893a = i10;
        this.f3894b = obj;
    }

    private final void a(Message message) {
        ArrayList arrayList;
        super.handleMessage(message);
        int i10 = message.what;
        l6.d dVar = (l6.d) this.f3894b;
        if (i10 == 1000) {
            p000if.a.o0("MSG_RECONNECT_SERVICE count=" + dVar.f10643h);
            int i11 = dVar.f10643h;
            if (i11 >= 10) {
                dVar.f10643h = 0;
                return;
            }
            dVar.f10643h = i11 + 1;
            dVar.f10652s = 0;
            dVar.a();
            return;
        }
        if (i10 != 2000) {
            if (i10 != 3000) {
                return;
            }
            Iterator it = ((Map) message.obj).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (entry.getKey() != null) {
                    throw new ClassCastException();
                }
                throw null;
            }
            return;
        }
        m6.a aVar = (m6.a) message.obj;
        if (aVar == null) {
            p000if.a.n0("service=" + dVar.f10638c.f10670g.name() + "; Invalid arguments: event=" + aVar);
            return;
        }
        dVar.f10638c.f10670g.name();
        synchronized (dVar.f10645j) {
            arrayList = new ArrayList(dVar.f10645j);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (it2.next() != null) {
                throw new ClassCastException();
            }
        }
    }

    private final void b(Message message) {
        super.handleMessage(message);
        m6.a aVar = (m6.a) message.obj;
        int i10 = message.arg1;
        p000if.a.o0("debounce event=" + message.what);
        l6.f fVar = (l6.f) this.f3894b;
        fVar.getClass();
        l6.d dVarB = fVar.b(aVar.f10894a >> 16);
        if (dVarB != null) {
            if (i10 != 0) {
                StringBuilder sb2 = new StringBuilder("service=");
                l6.g gVar = dVarB.f10638c;
                sb2.append(gVar.f10670g.name());
                sb2.append("; event=");
                sb2.append(aVar.f10894a);
                p000if.a.o0(sb2.toString());
                if (!gVar.f10664a) {
                    p000if.a.n0("service not install! name=" + gVar.f10670g.name());
                    return;
                }
                if (dVarB.f10640e == null) {
                    p000if.a.o0("service unbind");
                    dVarB.a();
                }
                try {
                    j6.c cVar = dVarB.f10640e;
                    if (cVar != null) {
                        ((j6.a) cVar).i(aVar);
                        return;
                    }
                } catch (RemoteException e7) {
                    p000if.a.n0("VDBus unbind error!!!");
                    e7.printStackTrace();
                }
                dVarB.a();
                return;
            }
            p000if.a.o0("service=" + dVarB.f10638c.f10670g.name() + "; event=" + aVar.f10894a);
            if (!dVarB.f10638c.f10664a) {
                p000if.a.n0("service not install! name=" + dVarB.f10638c.f10670g.name());
                return;
            }
            if (dVarB.f10640e == null) {
                p000if.a.o0("service unbind");
                dVarB.a();
            }
            try {
                j6.c cVar2 = dVarB.f10640e;
                if (cVar2 != null) {
                    ((j6.a) cVar2).i(aVar);
                    return;
                }
            } catch (RemoteException e10) {
                p000if.a.n0("VDBus unbind error!!!");
                e10.printStackTrace();
            }
            synchronized (dVarB.f10647m) {
                Iterator it = dVarB.f10647m.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    m6.a aVar2 = (m6.a) it.next();
                    if (aVar.f10894a == aVar2.f10894a) {
                        dVarB.f10647m.remove(aVar2);
                        break;
                    }
                }
                dVarB.f10647m.add(aVar);
            }
            dVarB.a();
        }
    }

    private final void c(Message message) {
        try {
            if (message.what == 0) {
                m6.a aVar = (m6.a) message.obj;
                int i10 = aVar.f10895b.getInt("CMD_ID");
                int i11 = aVar.f10895b.getIntArray("VALUE")[0];
                ActivityTextDesaysvVds activityTextDesaysvVds = (ActivityTextDesaysvVds) this.f3894b;
                if (i10 == 0) {
                    ((NameValueBean) activityTextDesaysvVds.F.t(7)).value = String.valueOf(i11);
                    activityTextDesaysvVds.F.e(7);
                } else if (i10 == 23) {
                    ((NameValueBean) activityTextDesaysvVds.F.t(8)).value = String.valueOf(i11);
                    activityTextDesaysvVds.F.e(8);
                } else if (i10 == 26) {
                    ((NameValueBean) activityTextDesaysvVds.F.t(6)).value = String.valueOf(i11);
                    activityTextDesaysvVds.F.e(6);
                } else if (i10 != 39) {
                    if (i10 != 47) {
                        switch (i10) {
                            case 15:
                                ((NameValueBean) activityTextDesaysvVds.F.t(0)).value = i11 == 1 ? "开" : "关";
                                activityTextDesaysvVds.F.e(0);
                                break;
                            case 16:
                                ((NameValueBean) activityTextDesaysvVds.F.t(1)).value = i11 == 1 ? "开" : "关";
                                activityTextDesaysvVds.F.e(1);
                                break;
                            case 17:
                                ((NameValueBean) activityTextDesaysvVds.F.t(2)).value = i11 == 1 ? "开" : "关";
                                activityTextDesaysvVds.F.e(2);
                                break;
                            case 18:
                                ((NameValueBean) activityTextDesaysvVds.F.t(3)).value = i11 == 1 ? "开" : "关";
                                activityTextDesaysvVds.F.e(3);
                                break;
                            case 19:
                                ((NameValueBean) activityTextDesaysvVds.F.t(4)).value = i11 == 1 ? "开" : "关";
                                activityTextDesaysvVds.F.e(4);
                                break;
                        }
                    } else {
                        ((NameValueBean) activityTextDesaysvVds.F.t(5)).value = i11 == 1 ? "开" : "关";
                        activityTextDesaysvVds.F.e(5);
                    }
                } else {
                    ((NameValueBean) activityTextDesaysvVds.F.t(9)).value = String.valueOf(i11);
                    activityTextDesaysvVds.F.e(9);
                }
            }
        } catch (Throwable th2) {
            com.yunpan.appmanage.util.a0.u("报错：" + th2.getMessage());
        }
    }

    private final void d(Message message) {
        int i10 = message.what;
        q8 q8Var = (q8) this.f3894b;
        if (i10 == 1000) {
            ja.g gVar = (ja.g) message.obj;
            String str = gVar.f9835a;
            q8Var.x();
            m5 m5Var = new m5(gVar.f9836b, gVar.f9837c, str, gVar.f9838d);
            q8Var.D.setVisibility(0);
            q8Var.E.q(m5Var);
            q8Var.G.execute(new androidx.activity.f(q8Var, q8Var.E.b() - 1, m5Var, 3));
            return;
        }
        if (i10 == 0) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (kVar.f4042d0 || kVar.f4044e0) {
                q8Var.S.setVisibility(0);
            } else {
                q8Var.S.setVisibility(8);
            }
            q8Var.X.sendEmptyMessageDelayed(0, 2000L);
        }
    }

    private final void e(Message message) {
        int i10 = message.what;
        i9 i9Var = (i9) this.f3894b;
        if (i10 == 10) {
            i9Var.F.e(((WpTaskBean) message.obj).position);
            return;
        }
        if (i10 == 11) {
            i9Var.F.e(((WpTaskBean) message.obj).position);
            i9Var.C.decrementAndGet();
            i9Var.B.setText("" + i9Var.C.get());
            if (i9Var.C.get() == 0) {
                if (i9Var.f15750p.hasFocus()) {
                    i9Var.f15748m.requestFocus();
                }
                if (i9Var.f15749n.b() > 0) {
                    i9Var.z(false);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:372:0x08ce  */
    /* JADX WARN: Removed duplicated region for block: B:553:? A[RETURN, SYNTHETIC] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void handleMessage(Message message) throws MediaCodec.CryptoException {
        com.yunpan.appmanage.util.o oVar;
        o8 o8Var;
        d2.g gVar;
        fa.g gVar2;
        fa.z zVar;
        StartService startService;
        SharedPreferences sharedPreferences;
        n5 n5Var;
        int i10;
        IInputManager iInputManagerD;
        int i11 = 10000;
        int i12 = 19;
        int i13 = 4;
        d2.g gVar3 = null;
        int i14 = 3;
        int i15 = 0;
        switch (this.f3893a) {
            case 0:
                int i16 = message.what;
                x xVar = (x) this.f3894b;
                if (i16 == 1) {
                    wa.s.c().f17709e.b((z7.o) xVar.l.get(Integer.valueOf(message.arg1)));
                    xVar.f3915p = 0;
                    return;
                }
                if (i16 != 2 || xVar.f3915p == 0) {
                    return;
                }
                AccService accService = wa.s.c().f17709e;
                HashMap map = xVar.f3914o;
                switch (xVar.f3915p) {
                    case 1090650368:
                        i11 = 10001;
                        break;
                    case 1090650624:
                        i11 = 10002;
                        break;
                    case 1090650880:
                        i11 = 10003;
                        break;
                    case 1090651136:
                        break;
                    case 1090652160:
                        i11 = 10004;
                        break;
                    default:
                        i11 = 0;
                        break;
                }
                accService.b((z7.o) map.get(Integer.valueOf(i11)));
                xVar.f3915p = 0;
                return;
            case 1:
                int i17 = message.what;
                r3 r3Var = (r3) this.f3894b;
                if (i17 != 100) {
                    if (i17 == 200) {
                        r3Var.getClass();
                        return;
                    }
                    if (i17 == 300) {
                        com.yunpan.appmanage.util.o oVar2 = (com.yunpan.appmanage.util.o) r3Var.f17243b;
                        if (oVar2 != null) {
                            oVar2.j((com.yunpan.appmanage.util.q) message.obj, (ja.b) r3Var.f17247f);
                        }
                        r3Var.f17243b = null;
                        return;
                    }
                    if (i17 != 301 || (oVar = (com.yunpan.appmanage.util.o) r3Var.f17243b) == null) {
                        return;
                    }
                    oVar.f((ja.b) r3Var.f17247f);
                    return;
                }
                g5 g5Var = (g5) r3Var.f17242a;
                if (g5Var != null) {
                    h8 h8Var = (h8) g5Var.f15694b;
                    h8Var.getClass();
                    Toaster.showLong((CharSequence) "(内部存储)空文件夹清理完毕！\n删除为啥还有?说明里面有隐藏文件！");
                    q8 q8Var = h8Var.f15720a;
                    if (((w3) q8Var.l.t(0)).f18364a.startsWith("内部存储")) {
                        q8Var.l.E(new ArrayList());
                        x9.g0 g0Var = q8Var.l;
                        fa.h0 h0Var = fa.g0.f5682a;
                        g0Var.q(new w3("内部存储", h0Var.d(), true));
                        q8Var.v(new w3(new File(h0Var.d())), false);
                    }
                    q8Var.f15908g.a();
                }
                r3Var.f17242a = null;
                return;
            case 2:
                int i18 = message.what;
                ba.i iVar = (ba.i) this.f3894b;
                if (i18 == 100) {
                    iVar.getClass();
                    return;
                }
                if (i18 == 200) {
                    iVar.getClass();
                    return;
                }
                if (i18 != 300) {
                    if (i18 != 301 || (o8Var = (o8) iVar.f2698a) == null) {
                        return;
                    }
                    o8Var.f15869a.a((ja.b) iVar.f2702e);
                    return;
                }
                o8 o8Var2 = (o8) iVar.f2698a;
                if (o8Var2 != null) {
                    com.yunpan.appmanage.util.r rVar = (com.yunpan.appmanage.util.r) message.obj;
                    ja.b bVar = (ja.b) iVar.f2702e;
                    o8Var2.f15869a.dismiss();
                    boolean z = bVar.l;
                    q8 q8Var2 = o8Var2.f15871c;
                    if (z) {
                        q8Var2.f15912k.requestFocus();
                        q8Var2.v((w3) g.b.d(q8Var2.l, 1), true);
                    } else {
                        if (!rVar.f4095a.isEmpty()) {
                            new r5(q8Var2.f4530f, q8Var2.f4529e, rVar.f4095a).show();
                        } else if (o8Var2.f15870b.isDelete && q8Var2.I.getVisibility() == 0) {
                            q8Var2.I.setVisibility(8);
                            q8Var2.K.setVisibility(8);
                        }
                        q8Var2.f15912k.requestFocus();
                        q8Var2.v((w3) g.b.d(q8Var2.l, 1), true);
                    }
                }
                iVar.f2698a = null;
                return;
            case 3:
                d2.h hVar = (d2.h) this.f3894b;
                hVar.getClass();
                int i19 = message.what;
                if (i19 == 1) {
                    gVar = (d2.g) message.obj;
                    try {
                        hVar.f4268a.queueInputBuffer(gVar.f4261a, 0, gVar.f4262b, gVar.f4264d, gVar.f4265e);
                    } catch (RuntimeException e7) {
                        AtomicReference atomicReference = hVar.f4271d;
                        while (!atomicReference.compareAndSet(null, e7) && atomicReference.get() == null) {
                        }
                    }
                } else {
                    if (i19 != 2) {
                        if (i19 == 3) {
                            hVar.f4272e.e();
                        } else if (i19 != 4) {
                            AtomicReference atomicReference2 = hVar.f4271d;
                            IllegalStateException illegalStateException = new IllegalStateException(String.valueOf(message.what));
                            while (!atomicReference2.compareAndSet(null, illegalStateException) && atomicReference2.get() == null) {
                            }
                        } else {
                            try {
                                hVar.f4268a.setParameters((Bundle) message.obj);
                            } catch (RuntimeException e10) {
                                AtomicReference atomicReference3 = hVar.f4271d;
                                while (!atomicReference3.compareAndSet(null, e10) && atomicReference3.get() == null) {
                                }
                            }
                        }
                        if (gVar3 == null) {
                            d2.h.b(gVar3);
                            return;
                        }
                        return;
                    }
                    gVar = (d2.g) message.obj;
                    int i20 = gVar.f4261a;
                    MediaCodec.CryptoInfo cryptoInfo = gVar.f4263c;
                    long j10 = gVar.f4264d;
                    int i21 = gVar.f4265e;
                    try {
                        if (Build.VERSION.SDK_INT >= 31) {
                            hVar.f4268a.queueSecureInputBuffer(i20, 0, cryptoInfo, j10, i21);
                        } else {
                            synchronized (d2.h.f4267h) {
                                hVar.f4268a.queueSecureInputBuffer(i20, 0, cryptoInfo, j10, i21);
                            }
                        }
                    } catch (RuntimeException e11) {
                        AtomicReference atomicReference4 = hVar.f4271d;
                        while (!atomicReference4.compareAndSet(null, e11) && atomicReference4.get() == null) {
                        }
                    }
                }
                gVar3 = gVar;
                if (gVar3 == null) {
                }
            case 4:
                if (message.what != 100 || (gVar2 = ((fa.j) this.f3894b).f5695a) == null) {
                    return;
                }
                gVar2.a((fa.i) message.obj);
                return;
            case 5:
                int i22 = message.what;
                w0 w0Var = (w0) this.f3894b;
                if (i22 == 300) {
                    w0Var.getClass();
                    return;
                }
                if (i22 == 301) {
                    w0Var.getClass();
                    return;
                }
                if (i22 == 100) {
                    fa.w wVar = (fa.w) w0Var.f347c;
                    if (wVar != null) {
                        wVar.c((String) message.obj, true);
                        w0Var.f347c = null;
                        return;
                    }
                    return;
                }
                if (i22 == 101) {
                    fa.w wVar2 = (fa.w) w0Var.f347c;
                    if (wVar2 != null) {
                        wVar2.c((String) message.obj, false);
                        w0Var.f347c = null;
                        return;
                    }
                    return;
                }
                if (i22 == 666) {
                    fa.y yVar = (fa.y) w0Var.f348d;
                    if (yVar != null) {
                        yVar.a((fa.x) message.obj);
                        w0Var.f348d = null;
                        return;
                    }
                    return;
                }
                if (i22 != 777 || (zVar = (fa.z) w0Var.f349e) == null) {
                    return;
                }
                zVar.e((fa.a0) message.obj);
                w0Var.f349e = null;
                return;
            case 6:
                int i23 = message.what;
                y5 y5Var = (y5) this.f3894b;
                if (i23 == 0) {
                    x5 x5Var = (x5) message.obj;
                    y5Var.f8089j.D(x5Var.f8039a, x5Var.f8040b);
                    return;
                } else {
                    if (i23 == 100) {
                        y5Var.f8091m.setVisibility(0);
                        y5Var.l.setVisibility(8);
                        return;
                    }
                    return;
                }
            case 7:
                if (message.what == 0) {
                    u9 u9Var = (u9) this.f3894b;
                    u9Var.f7870i.setVisibility(0);
                    u9Var.f7870i.requestFocus();
                    return;
                }
                return;
            case 8:
                super.handleMessage(message);
                if (message.what != 1 || ((ba) this.f3894b).f6815n.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                new mc.c(i15, new d2.w(this, i12, arrayList)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(this, i13, arrayList));
                return;
            case 9:
                int i24 = message.what;
                fb fbVar = (fb) this.f3894b;
                fbVar.getClass();
                if (i24 == 0) {
                    fbVar.f7043k.setText("已完成");
                    return;
                } else {
                    if (message.what == fbVar.f7046p) {
                        int i25 = ((eb) message.obj).f6981a;
                        m4 m4Var = (m4) fbVar.f7042j.t(i25);
                        m4Var.f18277b = ((eb) message.obj).f6982b;
                        fbVar.f7042j.D(i25, m4Var);
                        return;
                    }
                    return;
                }
            case 10:
                if (message.what == 0) {
                    ((z6) this.f3894b).dismiss();
                    return;
                }
                return;
            case 11:
                a(message);
                return;
            case 12:
                b(message);
                return;
            case 13:
                int i26 = message.what;
                pa.h hVar2 = (pa.h) this.f3894b;
                if (i26 == 0) {
                    hVar2.f12655n.removeMessages(1);
                    try {
                        hVar2.f12644b.b(hVar2.f12646d.l(message.arg1).g().p("click"));
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    try {
                        hVar2.f12649g = -1;
                        hVar2.f12650h = 0L;
                        hVar2.f12651i = -1;
                        hVar2.f12652j = 0L;
                        hVar2.f12653k = -1;
                        hVar2.l = 0L;
                        return;
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        return;
                    }
                }
                if (i26 == 1) {
                    hVar2.f12655n.removeMessages(0);
                    try {
                        hVar2.f12654m.add(Integer.valueOf(((KeyMapAccFindBean) hVar2.f12647e.get(message.arg1)).keyCode));
                        hVar2.f12644b.b(hVar2.f12646d.l(message.arg1).g().p("longClick"));
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                    try {
                        hVar2.f12649g = -1;
                        hVar2.f12650h = 0L;
                        hVar2.f12651i = -1;
                        hVar2.f12652j = 0L;
                        hVar2.f12653k = -1;
                        hVar2.l = 0L;
                        return;
                    } catch (Exception e15) {
                        e15.printStackTrace();
                        return;
                    }
                }
                return;
            case 14:
                int i27 = message.what;
                if (i27 == -3 || i27 == -2 || i27 == -1) {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) ((WeakReference) this.f3894b).get(), message.what);
                    return;
                } else {
                    if (i27 != 1) {
                        return;
                    }
                    ((DialogInterface) message.obj).dismiss();
                    return;
                }
            case 15:
                super.handleMessage(message);
                if (message.what != 0 || (sharedPreferences = (startService = (StartService) this.f3894b).f3963e) == null) {
                    return;
                }
                sharedPreferences.edit().putLong("StartServiceTime", System.currentTimeMillis()).apply();
                startService.f3964f.sendEmptyMessageDelayed(0, PopupConst.DURATION_POPUP);
                return;
            case 16:
                ActivityAutomation activityAutomation = (ActivityAutomation) this.f3894b;
                TextView textView = activityAutomation.E;
                if (textView == null || textView.getText().toString().trim().equals("服务运行中")) {
                    return;
                }
                if (p000if.a.h0(activityAutomation.A, AccService.class)) {
                    activityAutomation.I.removeMessages(0);
                    activityAutomation.I.removeMessages(1);
                    activityAutomation.D.setImageResource(R.drawable.tp_ai1);
                    activityAutomation.E.setText("服务运行中");
                    return;
                }
                int i28 = message.what;
                if (i28 == 0) {
                    activityAutomation.x(false);
                    return;
                }
                if (i28 == 1) {
                    activityAutomation.D.setImageResource(R.drawable.tp_check2);
                    activityAutomation.E.setText("开启服务(总开关)");
                    StringBuilder sb2 = new StringBuilder("无法开启无障碍服务，可能被系统阻拦了，请尝试强制停止");
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    String strL = g.b.l(com.yunpan.appmanage.util.j.f4033a.f4039c, "后再打开", sb2);
                    l5.y yVar2 = new l5.y(26, this);
                    ActivityAutomation activityAutomation2 = (ActivityAutomation) this.f3894b;
                    new z6(activityAutomation2, activityAutomation2, strL, "", "强制停止", "", yVar2).show();
                    return;
                }
                return;
            case 17:
                if (message.what == 1) {
                    u5 u5Var = (u5) message.obj;
                    ActivityDownload activityDownload = (ActivityDownload) this.f3894b;
                    activityDownload.V.D(u5Var.f18344a, u5Var);
                    activityDownload.F.smoothScrollToPosition(u5Var.f18344a);
                    if (!u5Var.f18346c.contains("登录后下载") || (n5Var = activityDownload.Y) == null) {
                        return;
                    }
                    n5Var.f18300k = "";
                    return;
                }
                return;
            case 18:
                int i29 = message.what;
                ActivityHome activityHome = (ActivityHome) this.f3894b;
                if (i29 == 10000) {
                    int i30 = ActivityHome.O;
                    activityHome.getClass();
                    StringBuilder sb3 = new StringBuilder();
                    fa.h0 h0Var2 = fa.g0.f5682a;
                    if (h0Var2.f()) {
                        if (h0Var2.f5685b) {
                            sb3.append("jni：已激活");
                        } else {
                            sb3.append("root：已授权");
                        }
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                            sb3.append("\n系统：可写入");
                        }
                    } else {
                        fa.j jVar = fa.h.f5683a;
                        if (!jVar.f5702h.isEmpty()) {
                            sb3.append("adb：");
                            sb3.append(jVar.f5702h);
                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                                sb3.append("\n系统：可写入");
                            }
                        }
                    }
                    activityHome.H.setText(sb3.toString());
                    activityHome.M.sendEmptyMessageDelayed(10000, 3333L);
                    return;
                }
                if (i29 == 0 || i29 == 1 || i29 == 2 || i29 == 3) {
                    String str = (String) message.obj;
                    if (i29 == 0) {
                        activityHome.getClass();
                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new fa.v(activityHome, str, i29, i14));
                        ActivityHome.y(activityHome, message.what, str);
                        return;
                    }
                    if (i29 == 1) {
                        activityHome.getClass();
                        DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new fa.v(activityHome, str, i29, i14));
                        return;
                    } else {
                        if (i29 != 2 && i29 == 3) {
                            ActivityHome.y(activityHome, 3, str);
                            DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new s1.f(this, 10, str));
                            return;
                        }
                        return;
                    }
                }
                if (i29 == 123) {
                    com.yunpan.appmanage.util.v.f4106a.getClass();
                    activityHome.D.getHeight();
                    activityHome.F.getHeight();
                    try {
                        ((x7) ((Fragment) activityHome.G.f18260h.get(0))).q();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                if (i29 == 124) {
                    int i31 = ActivityHome.O;
                    da.g gVar4 = activityHome.A;
                    new z6(gVar4, gVar4, "无法获取应用列表，请手动授权(" + activityHome.A.getResources().getString(R.string.app_name) + ")获取应用列表的权限", "", "确定", "取消", new i1(i14, this)).show();
                    return;
                }
                if (i29 == 125) {
                    int i32 = ActivityHome.O;
                    activityHome.getClass();
                    com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar3.N) {
                        wVar3.N = false;
                        try {
                            wVar3.f4123i.k("IsOneRunning", Boolean.FALSE);
                        } catch (Exception unused2) {
                        }
                        wVar3.m();
                        if (XXPermissions.isGrantedPermissions(activityHome.A, new IPermission[]{PermissionLists.getWriteSettingsPermission()})) {
                            return;
                        }
                        XXPermissions.with(activityHome).permission(PermissionLists.getWriteSettingsPermission()).request(new v0(6));
                        return;
                    }
                    return;
                }
                return;
            case 19:
                if (message.what == 0 && com.yunpan.appmanage.util.v.f4106a.G0) {
                    DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                    int i33 = ActivityImage.f3974t0;
                    ((ActivityImage) this.f3894b).y();
                    return;
                }
                return;
            case 20:
                if (message.what == 0 && com.yunpan.appmanage.util.v.f4106a.G0) {
                    DecimalFormat decimalFormat8 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                    int i34 = ActivityImage2.M0;
                    ((ActivityImage2) this.f3894b).y();
                    return;
                }
                return;
            case 21:
                c(message);
                return;
            case 22:
                if (message.what == 1) {
                    try {
                        ActivityTextFlyOSAll activityTextFlyOSAll = (ActivityTextFlyOSAll) this.f3894b;
                        activityTextFlyOSAll.F.E(activityTextFlyOSAll.I);
                        return;
                    } catch (Exception unused3) {
                        return;
                    }
                }
                return;
            case 23:
                d(message);
                return;
            case 24:
                e(message);
                return;
            case 25:
                int i35 = message.what;
                x0.m mVar = (x0.m) this.f3894b;
                if (i35 == 1) {
                    mVar.f18017f.onShowPress(mVar.f18023m);
                    return;
                }
                if (i35 == 2) {
                    mVar.f18016e.removeMessages(3);
                    mVar.f18020i = false;
                    mVar.f18021j = true;
                    mVar.f18017f.onLongPress(mVar.f18023m);
                    return;
                }
                if (i35 != 3) {
                    throw new RuntimeException("Unknown message " + message);
                }
                GestureDetector.OnDoubleTapListener onDoubleTapListener = mVar.f18018g;
                if (onDoubleTapListener != null) {
                    if (mVar.f18019h) {
                        mVar.f18020i = true;
                        return;
                    } else {
                        onDoubleTapListener.onSingleTapConfirmed(mVar.f18023m);
                        return;
                    }
                }
                return;
            default:
                int i36 = message.what;
                ya.i iVar2 = (ya.i) this.f3894b;
                if (i36 != -1) {
                    if (i36 == -100) {
                        iVar2.f19082e.setVisibility(8);
                        return;
                    }
                    if (i36 == 19) {
                        if (iVar2.f19084g != 0.0f) {
                            ya.i.b(iVar2, 0, -((Integer) iVar2.f19091o.get(Integer.valueOf(i36))).intValue());
                            ya.i.a(iVar2, message.what);
                            return;
                        }
                        IInputManager iInputManager = iVar2.f19090n;
                        if (iInputManager != null) {
                            wa.c.f(iInputManager, (int) iVar2.f19083f, iVar2.f19086i / 2, 0.0f, 5.0f);
                            iVar2.f19094s.sendEmptyMessageDelayed(message.what, 300L);
                            return;
                        } else {
                            if (Build.VERSION.SDK_INT >= 24) {
                                AccService accService2 = iVar2.f19078a;
                                float f10 = iVar2.f19085h / 2;
                                int i37 = iVar2.f19086i;
                                wa.b.d(accService2, f10, i37 / 3, f10, i37 / 2, 200L);
                                iVar2.f19094s.sendEmptyMessageDelayed(message.what, 300L);
                                return;
                            }
                            return;
                        }
                    }
                    if (i36 == 20) {
                        if (iVar2.f19086i - iVar2.f19082e.getHeight() != iVar2.f19084g) {
                            ya.i.b(iVar2, 0, ((Integer) iVar2.f19091o.get(Integer.valueOf(message.what))).intValue());
                            ya.i.a(iVar2, message.what);
                            return;
                        }
                        IInputManager iInputManager2 = iVar2.f19090n;
                        if (iInputManager2 != null) {
                            wa.c.f(iInputManager2, (int) iVar2.f19083f, iVar2.f19086i / 2, 0.0f, -5.0f);
                            iVar2.f19094s.sendEmptyMessageDelayed(message.what, 300L);
                            return;
                        } else {
                            if (Build.VERSION.SDK_INT >= 24) {
                                AccService accService3 = iVar2.f19078a;
                                float f11 = iVar2.f19085h / 2;
                                wa.b.d(accService3, f11, r4 * 2, f11, iVar2.f19086i / 3, 200L);
                                iVar2.f19094s.sendEmptyMessageDelayed(message.what, 300L);
                                return;
                            }
                            return;
                        }
                    }
                    if (i36 == 21) {
                        if (iVar2.f19083f != 0.0f) {
                            ya.i.b(iVar2, -((Integer) iVar2.f19091o.get(Integer.valueOf(i36))).intValue(), 0);
                            ya.i.a(iVar2, message.what);
                            return;
                        }
                        IInputManager iInputManager3 = iVar2.f19090n;
                        if (iInputManager3 != null) {
                            wa.c.f(iInputManager3, iVar2.f19085h / 2, (int) iVar2.f19084g, 5.0f, 0.0f);
                            iVar2.f19094s.sendEmptyMessageDelayed(message.what, 300L);
                            return;
                        }
                        return;
                    }
                    if (i36 != 22) {
                        if (i36 == 165 || i36 == 82 || i36 == 3 || i36 == 29) {
                            iVar2.c();
                            return;
                        }
                        return;
                    }
                    if (iVar2.f19085h - iVar2.f19082e.getWidth() != iVar2.f19083f) {
                        ya.i.b(iVar2, ((Integer) iVar2.f19091o.get(Integer.valueOf(message.what))).intValue(), 0);
                        ya.i.a(iVar2, message.what);
                        return;
                    }
                    IInputManager iInputManager4 = iVar2.f19090n;
                    if (iInputManager4 != null) {
                        wa.c.f(iInputManager4, iVar2.f19085h / 2, (int) iVar2.f19084g, -5.0f, 0.0f);
                        iVar2.f19094s.sendEmptyMessageDelayed(message.what, 300L);
                        return;
                    }
                    return;
                }
                iVar2.getClass();
                try {
                    if (wa.s.c().f17705a) {
                        iInputManagerD = IInputManager.Stub.asInterface(ServiceManager.getService("input"));
                    } else {
                        fa.b bVar2 = fa.a.f5646a;
                        iInputManagerD = bVar2.f() ? bVar2.d() : n0.f5722a.f5726a ? o0.c() : null;
                    }
                    iVar2.f19090n = iInputManagerD;
                } catch (Exception unused4) {
                }
                AccService accService4 = iVar2.f19078a;
                iVar2.f19080c = (WindowManager) accService4.getSystemService("window");
                Point pointR = p000if.a.R(accService4);
                iVar2.f19085h = pointR.x;
                iVar2.f19086i = pointR.y;
                View viewInflate = LayoutInflater.from(accService4).inflate(R.layout.window_cursor, (ViewGroup) null);
                iVar2.f19081d = viewInflate;
                viewInflate.setClickable(false);
                iVar2.f19081d.setFocusable(false);
                iVar2.f19081d.setFocusableInTouchMode(false);
                iVar2.f19081d.setEnabled(false);
                int i38 = Build.VERSION.SDK_INT;
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, i38 >= 22 ? 2032 : 2002, 312, -3);
                if (i38 >= 28) {
                    layoutParams.layoutInDisplayCutoutMode = 1;
                }
                layoutParams.gravity = 8388659;
                layoutParams.x = 0;
                layoutParams.y = 0;
                iVar2.f19082e = (ImageView) iVar2.f19081d.findViewById(R.id.v_cursor);
                z7.s sVar = iVar2.f19079b;
                iVar2.f19087j = sVar.o("cursor_size").e();
                HashMap map2 = iVar2.f19091o;
                map2.put(19, Integer.valueOf(iVar2.f19087j / 2));
                map2.put(20, Integer.valueOf(iVar2.f19087j / 2));
                map2.put(21, Integer.valueOf(iVar2.f19087j / 2));
                map2.put(22, Integer.valueOf(iVar2.f19087j / 2));
                ViewGroup.LayoutParams layoutParams2 = iVar2.f19082e.getLayoutParams();
                int i39 = iVar2.f19087j;
                layoutParams2.width = i39;
                layoutParams2.height = i39;
                iVar2.f19082e.setLayoutParams(layoutParams2);
                int iE = sVar.o("cursor_style").e();
                switch (iE) {
                    case 0:
                        i10 = R.drawable.bg_cursor1;
                        break;
                    case 1:
                        i10 = R.drawable.bg_cursor2;
                        break;
                    case 2:
                        i10 = R.drawable.bg_cursor3;
                        break;
                    case 3:
                        i10 = R.drawable.bg_cursor4;
                        break;
                    case 4:
                        i10 = R.drawable.tp_gb2;
                        break;
                    case 5:
                        i10 = R.drawable.tp_gb3;
                        break;
                    case 6:
                        i10 = R.drawable.tp_gb4;
                        break;
                    case 7:
                        i10 = R.drawable.tp_gb5;
                        break;
                    case 8:
                        i10 = R.drawable.tp_gb6;
                        break;
                    case 9:
                        i10 = R.drawable.tp_gb7;
                        break;
                    case 10:
                        i10 = R.drawable.tp_gb8;
                        break;
                    case 11:
                        i10 = R.drawable.tp_gb9;
                        break;
                    case 12:
                        i10 = R.drawable.tp_gb10;
                        break;
                    case 13:
                        i10 = R.drawable.tp_gb11;
                        break;
                    case 14:
                        i10 = R.drawable.float_icon_transparent_1;
                        break;
                    case 15:
                        i10 = R.drawable.float_icon_transparent_2;
                        break;
                    case 16:
                        i10 = R.drawable.float_icon_transparent_3;
                        break;
                    case 17:
                        i10 = R.drawable.float_icon_transparent_4;
                        break;
                    default:
                        i10 = R.drawable.tp_gb1;
                        break;
                }
                if (iE < 4) {
                    iVar2.f19082e.setImageDrawable(null);
                    iVar2.f19082e.setBackgroundResource(i10);
                } else {
                    iVar2.f19082e.setImageResource(i10);
                }
                iVar2.f19080c.addView(iVar2.f19081d, layoutParams);
                System.out.getClass();
                float f12 = iVar2.f19087j / 2.0f;
                float f13 = (iVar2.f19085h / 2.0f) - f12;
                float f14 = (iVar2.f19086i / 2.0f) - f12;
                if (iVar2.f19082e == null) {
                    return;
                }
                float fMax = Math.max(0.0f, Math.min(r0 - r3.getWidth(), f13));
                float fMax2 = Math.max(0.0f, Math.min(iVar2.f19086i - iVar2.f19082e.getHeight(), f14));
                iVar2.f19082e.setTranslationX(fMax);
                iVar2.f19082e.setTranslationY(fMax2);
                iVar2.f19083f = fMax;
                iVar2.f19084g = fMax2;
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(Object obj, Looper looper, int i10) {
        super(looper);
        this.f3893a = i10;
        this.f3894b = obj;
    }

    public u(q.g gVar) {
        this.f3893a = 14;
        this.f3894b = new WeakReference(gVar);
    }
}
