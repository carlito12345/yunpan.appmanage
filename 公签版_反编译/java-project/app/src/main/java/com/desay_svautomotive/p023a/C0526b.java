package com.desay_svautomotive.p023a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.desay_svautomotive.p023a.C0534j;
import com.desay_svautomotive.p023a.InterfaceC0528d;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class C0526b {
    private static volatile C0526b f294a;
    private Context f295b = null;
    private InterfaceC0528d f296c = null;
    private C0534j f297d = null;
    private boolean f298e = false;
    private List<InterfaceC0533i> f299f = new CopyOnWriteArrayList();
    private ServiceConnection f300g = new ServiceConnection() { // from class: com.desay_svautomotive.p023a.C0526b.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (C0526b.this.f297d != null && C0526b.this.f297d.m269a(0)) {
                C0526b.this.f297d.m270b(0);
            }
            C0526b.this.f296c = InterfaceC0528d.a.m249a(iBinder);
            C0526b.this.f298e = true;
            synchronized (C0526b.this.f299f) {
                for (int i10 = 0; i10 < C0526b.this.f299f.size(); i10++) {
                    try {
                        ((InterfaceC0533i) C0526b.this.f299f.get(i10)).mo217a(1);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0526b.this.f298e = false;
            C0526b.this.f296c = null;
            synchronized (C0526b.this.f299f) {
                for (int i10 = 0; i10 < C0526b.this.f299f.size(); i10++) {
                    try {
                        ((InterfaceC0533i) C0526b.this.f299f.get(i10)).mo217a(0);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (C0526b.this.f297d != null) {
                C0526b.this.f297d.m268a(0, 5000);
            }
        }
    };
    private C0534j.a f301h = new C0534j.a() { // from class: com.desay_svautomotive.p023a.C0526b.2
        @Override // com.desay_svautomotive.p023a.C0534j.a
        public void mo239a(int i10) {
            if (i10 != 0) {
                return;
            }
            if (C0526b.this.f297d != null && C0526b.this.f297d.m269a(0)) {
                C0526b.this.f297d.m270b(0);
            }
            try {
                C0526b.this.m223c();
            } catch (Throwable unused) {
            }
        }
    };

    public static C0526b m218a() {
        if (f294a == null) {
            synchronized (C0526b.class) {
                try {
                    if (f294a == null) {
                        f294a = new C0526b();
                    }
                } finally {
                }
            }
        }
        return f294a;
    }

    public void m223c() {
        C0534j c0534j;
        C0534j c0534j2;
        try {
            try {
                Intent intent = new Intent();
                intent.setClassName("com.desay_svautomotive.svcarinfo", "com.desay_svautomotive.svcarinfo.CarInfoService");
                this.f295b.bindService(intent, this.f300g, 1);
            } catch (Exception e7) {
                e7.toString();
            }
            if (this.f296c != null || (c0534j2 = this.f297d) == null) {
                return;
            }
            c0534j2.m268a(0, 5000);
        } catch (Throwable th2) {
            if (this.f296c == null && (c0534j = this.f297d) != null) {
                c0534j.m268a(0, 5000);
            }
            throw th2;
        }
    }

    public int m225a(int i10) {
        return m226a(0, i10);
    }

    public int m226a(int i10, int i11) {
        return m237b(i10, i11)[0];
    }

    public void m227a(int i10, InterfaceC0529e interfaceC0529e) {
        InterfaceC0528d interfaceC0528d = this.f296c;
        if (interfaceC0528d != null) {
            try {
                interfaceC0528d.mo245a(i10, interfaceC0529e);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void m228a(int i10, InterfaceC0529e interfaceC0529e, int[] iArr) {
        InterfaceC0528d interfaceC0528d = this.f296c;
        if (interfaceC0528d != null) {
            try {
                interfaceC0528d.mo246a(i10, interfaceC0529e, iArr);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void m229a(int i10, int[] iArr) {
        InterfaceC0528d interfaceC0528d = this.f296c;
        if (interfaceC0528d != null) {
            try {
                interfaceC0528d.mo247a(i10, iArr);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void m230a(Context context) {
        if (this.f295b == null) {
            this.f295b = context;
            this.f297d = new C0534j(this.f301h);
            m223c();
        }
    }

    public void m231a(InterfaceC0533i interfaceC0533i) {
        if (interfaceC0533i != null) {
            synchronized (this.f299f) {
                this.f299f.add(interfaceC0533i);
            }
        }
    }

    public boolean m232a(int i10, int i11, int i12) {
        return m233a(i10, i11, new int[]{i12});
    }

    public boolean m233a(int i10, int i11, int[] iArr) {
        InterfaceC0528d interfaceC0528d = this.f296c;
        if (interfaceC0528d == null) {
            return false;
        }
        try {
            interfaceC0528d.mo244a(i10, i11, iArr);
            return true;
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public int m234b(int i10) {
        return m226a(1, i10);
    }

    public void m235b(InterfaceC0533i interfaceC0533i) {
        if (interfaceC0533i != null) {
            synchronized (this.f299f) {
                this.f299f.remove(interfaceC0533i);
            }
        }
    }

    public boolean m236b() {
        return this.f298e;
    }

    public int[] m237b(int i10, int i11) {
        InterfaceC0528d interfaceC0528d = this.f296c;
        if (interfaceC0528d != null) {
            try {
                int[] iArrMo248a = interfaceC0528d.mo248a(i10, i11);
                if (iArrMo248a != null) {
                    if (iArrMo248a.length > 0) {
                        return iArrMo248a;
                    }
                }
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
        return new int[]{0};
    }

    public void m238c(int i10, int i11) {
        m232a(0, i10, i11);
    }
}
