package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class l extends Binder implements h {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f2420e;

    public l(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f2420e = multiInstanceInvalidationService;
        attachInterface(this, h.f2403b);
    }

    public final void h(int i10, String[] strArr) {
        ue.d.e(strArr, "tables");
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f2420e;
        synchronized (multiInstanceInvalidationService.f2392c) {
            try {
                String str = (String) multiInstanceInvalidationService.f2391b.get(Integer.valueOf(i10));
                if (str == null) {
                    return;
                }
                int iBeginBroadcast = multiInstanceInvalidationService.f2392c.beginBroadcast();
                for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService.f2392c.getBroadcastCookie(i11);
                        ue.d.c(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                        Integer num = (Integer) broadcastCookie;
                        int iIntValue = num.intValue();
                        String str2 = (String) multiInstanceInvalidationService.f2391b.get(num);
                        if (i10 != iIntValue && str.equals(str2)) {
                            try {
                                ((g) multiInstanceInvalidationService.f2392c.getBroadcastItem(i11)).c(strArr);
                            } catch (RemoteException unused) {
                            }
                        }
                    } finally {
                        multiInstanceInvalidationService.f2392c.finishBroadcast();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final int i(g gVar, String str) {
        ue.d.e(gVar, "callback");
        int i10 = 0;
        if (str == null) {
            return 0;
        }
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f2420e;
        synchronized (multiInstanceInvalidationService.f2392c) {
            try {
                int i11 = multiInstanceInvalidationService.f2390a + 1;
                multiInstanceInvalidationService.f2390a = i11;
                if (multiInstanceInvalidationService.f2392c.register(gVar, Integer.valueOf(i11))) {
                    multiInstanceInvalidationService.f2391b.put(Integer.valueOf(i11), str);
                    i10 = i11;
                } else {
                    multiInstanceInvalidationService.f2390a--;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        String str = h.f2403b;
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i10 == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        g fVar = null;
        if (i10 == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(g.f2402a);
                fVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof g)) ? new f(strongBinder) : (g) iInterfaceQueryLocalInterface;
            }
            int i12 = i(fVar, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(i12);
        } else if (i10 == 2) {
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface(g.f2402a);
                fVar = (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof g)) ? new f(strongBinder2) : (g) iInterfaceQueryLocalInterface2;
            }
            int i13 = parcel.readInt();
            ue.d.e(fVar, "callback");
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.f2420e;
            synchronized (multiInstanceInvalidationService.f2392c) {
                multiInstanceInvalidationService.f2392c.unregister(fVar);
            }
            parcel2.writeNoException();
        } else {
            if (i10 != 3) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            h(parcel.readInt(), parcel.createStringArray());
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
