package l6;

import a2.k;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ThreadPoolExecutor;
import l2.z;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final ActivityTextDesaysvVds f10636a;

    /* renamed from: b, reason: collision with root package name */
    public final a f10637b;

    /* renamed from: c, reason: collision with root package name */
    public final g f10638c;

    /* renamed from: g, reason: collision with root package name */
    public final k f10642g;

    /* renamed from: d, reason: collision with root package name */
    public final int f10639d = Process.myPid();

    /* renamed from: e, reason: collision with root package name */
    public j6.c f10640e = null;

    /* renamed from: f, reason: collision with root package name */
    public final b f10641f = new b(this);

    /* renamed from: h, reason: collision with root package name */
    public int f10643h = 0;

    /* renamed from: i, reason: collision with root package name */
    public boolean f10644i = false;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f10645j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f10646k = new ArrayList();
    public final ArrayList l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f10647m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f10648n = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f10649o = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f10650p = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f10651q = new ArrayList();
    public final HashMap r = new HashMap();

    /* renamed from: s, reason: collision with root package name */
    public int f10652s = 0;

    /* renamed from: t, reason: collision with root package name */
    public final u f10653t = new u(this, Looper.getMainLooper(), 11);

    /* renamed from: u, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.f f10654u = new com.yunpan.appmanage.carsdk.f(4, this);

    public d(ActivityTextDesaysvVds activityTextDesaysvVds, g gVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f10642g = null;
        this.f10637b = null;
        this.f10636a = activityTextDesaysvVds;
        this.f10638c = gVar;
        this.f10637b = new a(this);
        a();
        gVar.f10670g.name();
        String str = gVar.f10669f;
        if (TextUtils.isEmpty(str) || this.f10642g != null) {
            return;
        }
        this.f10642g = new k(3, this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(str);
        if (Build.VERSION.SDK_INT >= 34) {
            activityTextDesaysvVds.registerReceiver(this.f10642g, intentFilter, 2);
        } else {
            activityTextDesaysvVds.registerReceiver(this.f10642g, intentFilter);
        }
    }

    public static int[] b(ArrayList arrayList) {
        int i10 = 0;
        if (arrayList == null || arrayList.size() <= 0) {
            return new int[0];
        }
        int[] iArr = new int[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            iArr[i10] = ((m6.a) it.next()).f10894a;
            i10++;
        }
        return iArr;
    }

    public final boolean a() {
        IBinder iBinder;
        j6.c cVar = this.f10640e;
        g gVar = this.f10638c;
        if (cVar != null) {
            p000if.a.o0("service has bond! service=" + gVar.f10670g.name());
            return true;
        }
        if (this.f10652s == 1) {
            p000if.a.o0("service is connecting, return! service=" + gVar.f10670g.name());
            return true;
        }
        p000if.a.o0("service=" + gVar.f10670g.name());
        e();
        if (gVar.f10665b) {
            p000if.a.o0("system service");
            try {
                iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(new Object(), gVar.f10668e);
            } catch (Exception e7) {
                p000if.a.n0(e7.getMessage());
                e7.printStackTrace();
                iBinder = null;
            }
            try {
                if (iBinder == null) {
                    p000if.a.n0("binder is null");
                    return false;
                }
                iBinder.linkToDeath(this.f10641f, 0);
                try {
                    int i10 = j6.b.f9769e;
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.desaysv.ivi.vdb.IVDBus");
                    this.f10640e = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof j6.c)) ? new j6.a(iBinder) : (j6.c) iInterfaceQueryLocalInterface;
                    p000if.a.o0("bind success! service=" + gVar.f10670g.name());
                    f();
                    d();
                } catch (Exception e10) {
                    p000if.a.n0(e10.getMessage());
                    e10.printStackTrace();
                    return false;
                }
            } catch (Exception e11) {
                p000if.a.n0(e11.getMessage());
                e11.printStackTrace();
                return false;
            }
        } else {
            p000if.a.o0("normal service");
            Intent intent = new Intent();
            intent.setAction(gVar.f10667d);
            intent.setPackage(gVar.f10666c);
            this.f10636a.bindService(intent, this.f10654u, 1);
        }
        return true;
    }

    public final void c(m6.a aVar, m6.a aVar2) {
        if (aVar2 == null || aVar2.f10894a == 0) {
            p000if.a.n0("invalid event");
        } else {
            Bundle bundle = aVar2.f10895b;
            if (bundle != null) {
                bundle.setClassLoader(m6.a.class.getClassLoader());
            }
        }
        p000if.a.o0("service=" + this.f10638c.f10670g.name() + "; event=" + aVar.f10894a);
        int i10 = aVar.f10894a;
        Integer numValueOf = Integer.valueOf(i10);
        HashMap map = this.r;
        ArrayList arrayList = (ArrayList) map.get(numValueOf);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw z.d(it);
            }
            map.remove(Integer.valueOf(i10));
        }
    }

    public final void d() {
        ArrayList arrayList;
        p000if.a.o0("service=" + this.f10638c.f10670g.name());
        synchronized (this.f10649o) {
            p000if.a.o0("subscribeBuffer size=" + this.f10649o.size());
            try {
                ((j6.a) this.f10640e).j(b(this.f10649o), this.f10639d, this.f10636a.getPackageName(), this.f10637b);
            } catch (RemoteException e7) {
                p000if.a.n0("VDBus unbind error!!!");
                e7.printStackTrace();
            }
        }
        synchronized (this.f10647m) {
            p000if.a.o0("setBuffer size=" + this.f10647m.size());
            try {
                Iterator it = this.f10647m.iterator();
                while (it.hasNext()) {
                    ((j6.a) this.f10640e).i((m6.a) it.next());
                }
            } catch (RemoteException e10) {
                p000if.a.n0("VDBus unbind error!!!");
                e10.printStackTrace();
            }
            this.f10647m.clear();
        }
        synchronized (this.f10648n) {
            p000if.a.o0("getBuffer size=" + this.f10648n.size());
            try {
                Iterator it2 = this.f10648n.iterator();
                while (it2.hasNext()) {
                    m6.a aVar = (m6.a) it2.next();
                    c(aVar, ((j6.a) this.f10640e).h(aVar));
                }
            } catch (RemoteException e11) {
                p000if.a.n0("VDBus unbind error!!!");
                e11.printStackTrace();
            }
            this.f10648n.clear();
        }
        synchronized (this.l) {
            arrayList = new ArrayList(this.l);
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            i6.a aVar2 = (i6.a) it3.next();
            if (aVar2 != null) {
                try {
                    aVar2.c(this.f10638c.f10670g);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        synchronized (this.f10651q) {
            p000if.a.o0("localCallbackList size=" + this.f10651q.size());
            try {
                Iterator it4 = this.f10651q.iterator();
                while (it4.hasNext()) {
                    c cVar = (c) it4.next();
                    ((j6.a) this.f10640e).k(cVar.f10635b, cVar.f10634a);
                }
            } catch (RemoteException e13) {
                p000if.a.n0("VDBus unbind error!!!");
                e13.printStackTrace();
            }
            this.f10651q.clear();
        }
    }

    public final void e() {
        p000if.a.o0("service=" + this.f10638c.f10670g.name());
        this.f10652s = 1;
        u uVar = this.f10653t;
        uVar.removeMessages(1000);
        uVar.sendEmptyMessageDelayed(1000, PopupConst.DURATION_POPUP_SHORT);
    }

    public final void f() {
        p000if.a.o0("service=" + this.f10638c.f10670g.name());
        this.f10643h = 0;
        this.f10652s = 0;
        this.f10653t.removeMessages(1000);
    }
}
