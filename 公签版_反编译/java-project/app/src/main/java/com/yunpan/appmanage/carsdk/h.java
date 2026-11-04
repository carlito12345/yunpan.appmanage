package com.yunpan.appmanage.carsdk;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import fa.l0;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class h extends Binder implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3811e;

    public h(int i10) {
        this.f3811e = i10;
        switch (i10) {
            case 1:
                attachInterface(this, "moe.shizuku.server.IShizukuApplication");
                break;
            case 2:
                attachInterface(this, "com.iflytek.autofly.voicecore.aidl.platform.IAudioFocusManager");
                break;
            default:
                attachInterface(this, "com.baidu.naviauto.imaplbs.IEventListener");
                break;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i10 = this.f3811e;
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        int i12 = 1;
        switch (this.f3811e) {
            case 0:
                if (i10 >= 1 && i10 <= 16777215) {
                    parcel.enforceInterface("com.baidu.naviauto.imaplbs.IEventListener");
                }
                if (i10 == 1598968902) {
                    parcel2.writeString("com.baidu.naviauto.imaplbs.IEventListener");
                    return true;
                }
                if (i10 != 1) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel.readString();
                parcel2.writeNoException();
                return true;
            case 1:
                if (i10 == 2) {
                    parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
                    Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    hi.b.f8210c = bundle.getInt("shizuku:attach-reply-uid", -1);
                    hi.b.f8211d = bundle.getInt("shizuku:attach-reply-version", -1);
                    bundle.getInt("shizuku:attach-reply-patch-version", -1);
                    IBinder iBinder = hi.b.f8208a;
                    bundle.getString("shizuku:attach-reply-secontext");
                    hi.b.f8212e = bundle.getBoolean("shizuku:attach-reply-permission-granted", false);
                    hi.b.f8213f = bundle.getBoolean("shizuku:attach-reply-should-show-request-permission-rationale", false);
                    hi.b.k();
                    return true;
                }
                if (i10 != 3) {
                    if (i10 != 10001) {
                        if (i10 != 1598968902) {
                            return super.onTransact(i10, parcel, parcel2, i11);
                        }
                        parcel2.writeString("moe.shizuku.server.IShizukuApplication");
                        return true;
                    }
                    parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
                    parcel.readInt();
                    parcel.readInt();
                    parcel.readString();
                    parcel.readInt();
                    parcel2.writeNoException();
                    return true;
                }
                parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
                int i13 = parcel.readInt();
                int i14 = (parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null).getBoolean("shizuku:request-permission-reply-allowed", false) ? 0 : -1;
                synchronized (hi.b.f8218k) {
                    try {
                        Iterator it = hi.b.f8219m.iterator();
                        while (it.hasNext()) {
                            hi.a aVar = (hi.a) it.next();
                            aVar.getClass();
                            if (Looper.myLooper() == Looper.getMainLooper()) {
                                ((l0) aVar.f8207a).a(i13, i14);
                            } else {
                                hi.b.f8220n.post(new a(aVar, i13, i14, i12));
                            }
                        }
                    } finally {
                    }
                }
                return true;
            default:
                if (i10 >= 1 && i10 <= 16777215) {
                    parcel.enforceInterface("com.iflytek.autofly.voicecore.aidl.platform.IAudioFocusManager");
                }
                if (i10 == 1598968902) {
                    parcel2.writeString("com.iflytek.autofly.voicecore.aidl.platform.IAudioFocusManager");
                    return true;
                }
                if (i10 != 1) {
                    if (i10 != 2) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                }
                parcel.readInt();
                parcel.readInt();
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
        }
    }
}
