package hi;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.bumptech.glide.manager.s;
import com.yunpan.appmanage.carsdk.h;
import fa.j0;
import fa.k0;
import fa.l0;
import fa.m0;
import ha.db;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static IBinder f8208a = null;

    /* renamed from: b, reason: collision with root package name */
    public static df.c f8209b = null;

    /* renamed from: c, reason: collision with root package name */
    public static int f8210c = -1;

    /* renamed from: d, reason: collision with root package name */
    public static int f8211d = -1;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f8212e = false;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f8213f = false;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f8214g = false;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f8215h = false;

    /* renamed from: i, reason: collision with root package name */
    public static final h f8216i = new h(1);

    /* renamed from: j, reason: collision with root package name */
    public static final com.gj.server.b f8217j = new com.gj.server.b(1);

    /* renamed from: k, reason: collision with root package name */
    public static final ArrayList f8218k = new ArrayList();
    public static final ArrayList l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public static final ArrayList f8219m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public static final Handler f8220n = new Handler(Looper.getMainLooper());

    public static void a(j0 j0Var) {
        if (f8215h) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                j0Var.a();
            } else {
                f8220n.post(new db(4, j0Var));
            }
        }
        ArrayList arrayList = f8218k;
        synchronized (arrayList) {
            arrayList.add(new a(j0Var));
        }
    }

    public static void b(l0 l0Var) {
        synchronized (f8218k) {
            f8219m.add(new a(l0Var));
        }
    }

    public static boolean c(IBinder iBinder, String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            h hVar = f8216i;
            hVar.getClass();
            parcelObtain.writeStrongBinder(hVar);
            parcelObtain.writeString(str);
            boolean zTransact = iBinder.transact(14, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static boolean d(IBinder iBinder, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("shizuku:attach-api-version", 13);
        bundle.putString("shizuku:attach-package-name", str);
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            h hVar = f8216i;
            hVar.getClass();
            parcelObtain.writeStrongBinder(hVar);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            boolean zTransact = iBinder.transact(18, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static void e(s sVar, m0 m0Var) {
        Map map = f.f8227a;
        sVar.getClass();
        String className = ((ComponentName) sVar.f3412c).getClassName();
        Map map2 = f.f8227a;
        e eVar = (e) map2.get(className);
        if (eVar == null) {
            eVar = new e(sVar);
            map2.put(className, eVar);
        }
        if (m0Var != null) {
            eVar.f8224e.add(m0Var);
        }
        try {
            ((df.a) j()).h(eVar, s.a(sVar));
        } catch (RemoteException e7) {
            throw new RuntimeException(e7);
        }
    }

    public static int f() {
        if (f8212e) {
            return 0;
        }
        try {
            boolean zI = ((df.a) j()).i();
            f8212e = zI;
            return zI ? 0 : -1;
        } catch (RemoteException e7) {
            throw new RuntimeException(e7);
        }
    }

    public static void g(IBinder iBinder, String str) {
        IBinder iBinder2 = f8208a;
        if (iBinder2 == iBinder) {
            return;
        }
        if (iBinder == null) {
            f8208a = null;
            f8209b = null;
            f8210c = -1;
            f8211d = -1;
            synchronized (f8218k) {
                try {
                    Iterator it = l.iterator();
                    while (it.hasNext()) {
                        a aVar = (a) it.next();
                        aVar.getClass();
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            ((k0) aVar.f8207a).a();
                        } else {
                            f8220n.post(new db(5, (k0) aVar.f8207a));
                        }
                    }
                } finally {
                }
            }
            return;
        }
        if (iBinder2 != null) {
            iBinder2.unlinkToDeath(f8217j, 0);
        }
        f8208a = iBinder;
        int i10 = df.b.f4636e;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
        f8209b = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof df.c)) ? new df.a(iBinder) : (df.c) iInterfaceQueryLocalInterface;
        try {
            f8208a.linkToDeath(f8217j, 0);
        } catch (Throwable unused) {
        }
        try {
            if (!d(f8208a, str) && !c(f8208a, str)) {
                f8214g = true;
            }
        } catch (Throwable th2) {
            Log.getStackTraceString(th2);
        }
        if (f8214g) {
            f8215h = true;
            k();
        }
    }

    public static void h(k0 k0Var) {
        synchronized (f8218k) {
            Collection.EL.removeIf(l, new com.hierynomus.smbj.auth.a(1, k0Var));
        }
    }

    public static void i(l0 l0Var) {
        synchronized (f8218k) {
            Collection.EL.removeIf(f8219m, new com.hierynomus.smbj.auth.a(2, l0Var));
        }
    }

    public static df.c j() {
        df.c cVar = f8209b;
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalStateException("binder haven't been received");
    }

    public static void k() {
        ArrayList arrayList = f8218k;
        synchronized (arrayList) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    aVar.getClass();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((j0) aVar.f8207a).a();
                    } else {
                        f8220n.post(new db(4, (j0) aVar.f8207a));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        f8215h = true;
    }

    public static boolean l() {
        if (f8212e) {
            return false;
        }
        if (f8213f) {
            return true;
        }
        try {
            boolean zL = ((df.a) j()).l();
            f8213f = zL;
            return zL;
        } catch (RemoteException e7) {
            throw new RuntimeException(e7);
        }
    }

    public static void m(s sVar) {
        try {
            df.c cVarJ = j();
            sVar.getClass();
            Bundle bundle = new Bundle();
            bundle.putParcelable("shizuku:user-service-arg-component", (ComponentName) sVar.f3412c);
            bundle.putBoolean("shizuku:user-service-remove", true);
            ((df.a) cVarJ).j(null, bundle);
        } catch (RemoteException e7) {
            throw new RuntimeException(e7);
        }
    }
}
