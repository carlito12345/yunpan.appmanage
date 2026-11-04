package l6;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import com.hsae.autosdk.core.NoConst;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a extends Binder implements j6.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f10632e;

    public a(d dVar) {
        this.f10632e = dVar;
        attachInterface(this, "com.desaysv.ivi.vdb.IVDBusCallback");
    }

    public final void h(m6.a aVar) {
        int i10;
        p000if.a.o0("service=" + this.f10632e.f10638c.f10670g.name() + "; event=" + aVar.f10894a);
        Bundle bundle = aVar.f10895b;
        if (bundle != null) {
            bundle.setClassLoader(m6.a.class.getClassLoader());
        }
        synchronized (this.f10632e.f10650p) {
            Iterator it = this.f10632e.f10650p.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i10 = 0;
                    break;
                }
                m6.a aVar2 = (m6.a) it.next();
                if (aVar.f10894a == aVar2.f10894a) {
                    i10 = aVar2.f10896c;
                    break;
                }
            }
        }
        if (i10 == 0 || i10 == 2) {
            Message messageObtainMessage = this.f10632e.f10653t.obtainMessage();
            messageObtainMessage.what = NoConst.MIN_HEARTBEAT_INTERVAL;
            messageObtainMessage.obj = aVar;
            this.f10632e.f10653t.sendMessage(messageObtainMessage);
        }
        if (i10 == 1 || i10 == 2) {
            this.f10632e.getClass();
            throw null;
        }
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        ArrayList arrayList;
        if (i10 != 1) {
            if (i10 == 2) {
                parcel.enforceInterface("com.desaysv.ivi.vdb.IVDBusCallback");
                h(parcel.readInt() != 0 ? m6.a.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString("com.desaysv.ivi.vdb.IVDBusCallback");
            return true;
        }
        parcel.enforceInterface("com.desaysv.ivi.vdb.IVDBusCallback");
        m6.a aVarCreateFromParcel = parcel.readInt() != 0 ? m6.a.CREATOR.createFromParcel(parcel) : null;
        p000if.a.o0("service=" + this.f10632e.f10638c.f10670g.name() + "; event=" + aVarCreateFromParcel.f10894a);
        Bundle bundle = aVarCreateFromParcel.f10895b;
        if (bundle != null) {
            bundle.setClassLoader(m6.a.class.getClassLoader());
        }
        synchronized (this.f10632e.f10646k) {
            arrayList = new ArrayList(this.f10632e.f10646k);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            g.b.t(it.next());
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
