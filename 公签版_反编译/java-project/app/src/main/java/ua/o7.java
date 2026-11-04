package ua;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.yunpan.appmanage.ui.ActivityTextIflytek;

/* loaded from: classes.dex */
public final class o7 extends Binder implements x8.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityTextIflytek f15868e;

    public o7(ActivityTextIflytek activityTextIflytek) {
        this.f15868e = activityTextIflytek;
        attachInterface(this, "com.iflytek.autofly.voicecore.aidl.IMessage");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface("com.iflytek.autofly.voicecore.aidl.IMessage");
        }
        if (i10 == 1598968902) {
            parcel2.writeString("com.iflytek.autofly.voicecore.aidl.IMessage");
            return true;
        }
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        this.f15868e.C.post(new com.hjq.permissions.core.b(this, parcel.readString(), parcel.readString(), parcel.readString(), 1));
        parcel2.writeNoException();
        parcel2.writeInt(0);
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
