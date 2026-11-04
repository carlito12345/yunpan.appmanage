package ag;

import a9.o;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.RemoteException;
import com.hsae.bluetoothsdk.IBluetoothManager;
import com.hsae.bluetoothsdk.bean.BluetoothDevice;
import java.util.ArrayList;
import java.util.Iterator;
import u7.e0;
import u7.g0;
import u7.q;
import u7.y0;

/* loaded from: classes.dex */
public final class c implements g2.a {

    /* renamed from: b, reason: collision with root package name */
    public static IBluetoothManager f664b;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f665a;

    public c(int i10) {
        switch (i10) {
            case 1:
                this.f665a = new ArrayList();
                break;
            case 2:
            default:
                this.f665a = new ArrayList();
                break;
            case 3:
                this.f665a = new ArrayList();
                break;
            case 4:
                this.f665a = new ArrayList();
                break;
            case 5:
                this.f665a = new ArrayList();
                break;
            case 6:
                this.f665a = new ArrayList();
                break;
        }
    }

    public static void f() {
        if (n()) {
            try {
                f664b.btPowerOff();
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public static void g() {
        if (n()) {
            try {
                f664b.btPowerOn();
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public static int l() {
        if (!n()) {
            return -99;
        }
        try {
            return f664b.getPowerStatus();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return 0;
        }
    }

    public static boolean n() {
        return f664b != null;
    }

    @Override // g2.a
    public long a(long j10) {
        ArrayList arrayList = this.f665a;
        if (arrayList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j10 < ((i3.a) arrayList.get(0)).f8485b) {
            return ((i3.a) arrayList.get(0)).f8485b;
        }
        for (int i10 = 1; i10 < arrayList.size(); i10++) {
            i3.a aVar = (i3.a) arrayList.get(i10);
            if (j10 < aVar.f8485b) {
                long j11 = ((i3.a) arrayList.get(i10 - 1)).f8487d;
                long j12 = aVar.f8485b;
                return (j11 == -9223372036854775807L || j11 <= j10 || j11 >= j12) ? j12 : j11;
            }
        }
        long j13 = ((i3.a) q.i(arrayList)).f8487d;
        if (j13 == -9223372036854775807L || j10 >= j13) {
            return Long.MIN_VALUE;
        }
        return j13;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    @Override // g2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(i3.a aVar, long j10) {
        boolean z;
        long j11 = aVar.f8485b;
        o.k(j11 != -9223372036854775807L);
        if (j11 <= j10) {
            long j12 = aVar.f8487d;
            z = j12 == -9223372036854775807L || j10 < j12;
        }
        ArrayList arrayList = this.f665a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j11 >= ((i3.a) arrayList.get(size)).f8485b) {
                arrayList.add(size + 1, aVar);
                return z;
            }
            if (((i3.a) arrayList.get(size)).f8485b <= j10) {
                z = false;
            }
        }
        arrayList.add(0, aVar);
        return z;
    }

    @Override // g2.a
    public g0 c(long j10) {
        int iJ = j(j10);
        if (iJ == 0) {
            e0 e0Var = g0.f15471b;
            return y0.f15549e;
        }
        i3.a aVar = (i3.a) this.f665a.get(iJ - 1);
        long j11 = aVar.f8487d;
        if (j11 == -9223372036854775807L || j10 < j11) {
            return aVar.f8484a;
        }
        e0 e0Var2 = g0.f15471b;
        return y0.f15549e;
    }

    @Override // g2.a
    public void clear() {
        this.f665a.clear();
    }

    @Override // g2.a
    public long d(long j10) {
        ArrayList arrayList = this.f665a;
        if (arrayList.isEmpty() || j10 < ((i3.a) arrayList.get(0)).f8485b) {
            return -9223372036854775807L;
        }
        for (int i10 = 1; i10 < arrayList.size(); i10++) {
            long j11 = ((i3.a) arrayList.get(i10)).f8485b;
            if (j10 == j11) {
                return j11;
            }
            if (j10 < j11) {
                i3.a aVar = (i3.a) arrayList.get(i10 - 1);
                long j12 = aVar.f8487d;
                return (j12 == -9223372036854775807L || j12 > j10) ? aVar.f8485b : j12;
            }
        }
        i3.a aVar2 = (i3.a) q.i(arrayList);
        long j13 = aVar2.f8487d;
        return (j13 == -9223372036854775807L || j10 < j13) ? aVar2.f8485b : j13;
    }

    @Override // g2.a
    public void e(long j10) {
        int iJ = j(j10);
        if (iJ == 0) {
            return;
        }
        ArrayList arrayList = this.f665a;
        long j11 = ((i3.a) arrayList.get(iJ - 1)).f8487d;
        if (j11 == -9223372036854775807L || j11 >= j10) {
            iJ--;
        }
        arrayList.subList(0, iJ).clear();
    }

    public synchronized f5.l h(Class cls) {
        int size = this.f665a.size();
        for (int i10 = 0; i10 < size; i10++) {
            v5.d dVar = (v5.d) this.f665a.get(i10);
            if (dVar.f16632a.isAssignableFrom(cls)) {
                return dVar.f16633b;
            }
        }
        return null;
    }

    public synchronized t5.a i(Class cls, Class cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return t5.c.f14780b;
        }
        Iterator it = this.f665a.iterator();
        while (it.hasNext()) {
            t5.b bVar = (t5.b) it.next();
            if (bVar.f14777a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f14778b)) {
                return bVar.f14779c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public int j(long j10) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f665a;
            if (i10 >= arrayList.size()) {
                return arrayList.size();
            }
            if (j10 < ((i3.a) arrayList.get(i10)).f8485b) {
                return i10;
            }
            i10++;
        }
    }

    public synchronized ArrayList k() {
        this.f665a.clear();
        if (!n()) {
            return this.f665a;
        }
        try {
            for (BluetoothDevice bluetoothDevice : f664b.getPairedDevices()) {
                String mac = bluetoothDevice.getMac();
                String connectDeviceAddress = null;
                if (n()) {
                    try {
                        connectDeviceAddress = f664b.getConnectDeviceAddress();
                    } catch (RemoteException e7) {
                        e7.printStackTrace();
                    }
                }
                if (mac.equalsIgnoreCase(connectDeviceAddress)) {
                    bluetoothDevice.setStatus(5);
                    bluetoothDevice.setCOD(bluetoothDevice.getCOD());
                    this.f665a.add(0, bluetoothDevice);
                } else {
                    bluetoothDevice.setStatus(2);
                    bluetoothDevice.setCOD(bluetoothDevice.getCOD());
                    bluetoothDevice.getName();
                    bluetoothDevice.getStatus();
                    this.f665a.add(bluetoothDevice);
                }
            }
        } catch (RemoteException unused) {
        }
        this.f665a.size();
        return this.f665a;
    }

    public synchronized ArrayList m(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator it = this.f665a.iterator();
        while (it.hasNext()) {
            t5.b bVar = (t5.b) it.next();
            if ((bVar.f14777a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f14778b)) && !arrayList.contains(bVar.f14778b)) {
                arrayList.add(bVar.f14778b);
            }
        }
        return arrayList;
    }

    public c(ContextWrapper contextWrapper) {
        pa.a aVar = new pa.a();
        this.f665a = new ArrayList();
        synchronized (this) {
            Intent intent = new Intent();
            intent.setAction("com.hsae.bluetoothsdk.IBluetoothManager");
            intent.setPackage("com.hsae.bluetoothservice");
            contextWrapper.startService(intent);
            contextWrapper.bindService(intent, aVar, 1);
        }
    }
}
