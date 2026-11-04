package m0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class h0 implements Handler.Callback, ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10754a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f10755b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10756c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public HashSet f10757d = new HashSet();

    public h0(Context context) {
        this.f10754a = context;
        HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
        handlerThread.start();
        this.f10755b = new Handler(handlerThread.getLooper(), this);
    }

    public final void a(g0 g0Var) {
        boolean z;
        ArrayDeque arrayDeque;
        boolean zIsLoggable = Log.isLoggable("NotifManCompat", 3);
        ComponentName componentName = g0Var.f10749a;
        if (zIsLoggable) {
            if (componentName != null) {
                componentName.toString();
            }
            g0Var.f10752d.size();
        }
        if (g0Var.f10752d.isEmpty()) {
            return;
        }
        if (g0Var.f10750b) {
            z = true;
        } else {
            Intent component = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
            Context context = this.f10754a;
            boolean zBindService = context.bindService(component, this, 33);
            g0Var.f10750b = zBindService;
            if (zBindService) {
                g0Var.f10753e = 0;
            } else {
                if (componentName != null) {
                    componentName.toString();
                }
                context.unbindService(this);
            }
            z = g0Var.f10750b;
        }
        if (!z || g0Var.f10751c == null) {
            b(g0Var);
            return;
        }
        while (true) {
            arrayDeque = g0Var.f10752d;
            e0 e0Var = (e0) arrayDeque.peek();
            if (e0Var == null) {
                break;
            }
            try {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    e0Var.toString();
                }
                e0Var.a(g0Var.f10751c);
                arrayDeque.remove();
            } catch (DeadObjectException unused) {
                if (Log.isLoggable("NotifManCompat", 3) && componentName != null) {
                    componentName.toString();
                }
            } catch (RemoteException unused2) {
                if (componentName != null) {
                    componentName.toString();
                }
            }
        }
        if (arrayDeque.isEmpty()) {
            return;
        }
        b(g0Var);
    }

    public final void b(g0 g0Var) {
        Handler handler = this.f10755b;
        ComponentName componentName = g0Var.f10749a;
        if (handler.hasMessages(3, componentName)) {
            return;
        }
        int i10 = g0Var.f10753e + 1;
        g0Var.f10753e = i10;
        if (i10 <= 6) {
            handler.sendMessageDelayed(handler.obtainMessage(3, componentName), (1 << r3) * 1000);
            return;
        }
        ArrayDeque arrayDeque = g0Var.f10752d;
        arrayDeque.size();
        if (componentName != null) {
            componentName.toString();
        }
        arrayDeque.clear();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashSet hashSet;
        Object key;
        int i10 = message.what;
        i.c aVar = null;
        if (i10 != 0) {
            if (i10 == 1) {
                f0 f0Var = (f0) message.obj;
                ComponentName componentName = f0Var.f10740a;
                IBinder iBinder = f0Var.f10741b;
                g0 g0Var = (g0) this.f10756c.get(componentName);
                if (g0Var != null) {
                    int i11 = i.b.f8231e;
                    if (iBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(i.c.f8232c);
                        aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof i.c)) ? new i.a(iBinder) : (i.c) iInterfaceQueryLocalInterface;
                    }
                    g0Var.f10751c = aVar;
                    g0Var.f10753e = 0;
                    a(g0Var);
                }
                return true;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                g0 g0Var2 = (g0) this.f10756c.get((ComponentName) message.obj);
                if (g0Var2 != null) {
                    a(g0Var2);
                }
                return true;
            }
            g0 g0Var3 = (g0) this.f10756c.get((ComponentName) message.obj);
            if (g0Var3 != null) {
                if (g0Var3.f10750b) {
                    this.f10754a.unbindService(this);
                    g0Var3.f10750b = false;
                }
                g0Var3.f10751c = null;
            }
            return true;
        }
        e0 e0Var = (e0) message.obj;
        String string = Settings.Secure.getString(this.f10754a.getContentResolver(), "enabled_notification_listeners");
        synchronized (i0.f10758c) {
            if (string != null) {
                try {
                    if (!string.equals(i0.f10759d)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet2 = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet2.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        i0.f10760e = hashSet2;
                        i0.f10759d = string;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            hashSet = i0.f10760e;
        }
        if (!hashSet.equals(this.f10757d)) {
            this.f10757d = hashSet;
            List<ResolveInfo> listQueryIntentServices = this.f10754a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet hashSet3 = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (hashSet.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName2 = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        componentName2.toString();
                    } else {
                        hashSet3.add(componentName2);
                    }
                }
            }
            Iterator it = hashSet3.iterator();
            while (it.hasNext()) {
                ComponentName componentName3 = (ComponentName) it.next();
                if (!this.f10756c.containsKey(componentName3)) {
                    if (Log.isLoggable("NotifManCompat", 3) && componentName3 != null) {
                        componentName3.toString();
                    }
                    this.f10756c.put(componentName3, new g0(componentName3));
                }
            }
            Iterator it2 = this.f10756c.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet3.contains(entry.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3) && (key = entry.getKey()) != null) {
                        key.toString();
                    }
                    g0 g0Var4 = (g0) entry.getValue();
                    if (g0Var4.f10750b) {
                        this.f10754a.unbindService(this);
                        g0Var4.f10750b = false;
                    }
                    g0Var4.f10751c = null;
                    it2.remove();
                }
            }
        }
        for (g0 g0Var5 : this.f10756c.values()) {
            g0Var5.f10752d.add(e0Var);
            a(g0Var5);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("NotifManCompat", 3) && componentName != null) {
            componentName.toString();
        }
        this.f10755b.obtainMessage(1, new f0(componentName, iBinder)).sendToTarget();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("NotifManCompat", 3) && componentName != null) {
            componentName.toString();
        }
        this.f10755b.obtainMessage(2, componentName).sendToTarget();
    }
}
