package ua;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.yunpan.appmanage.ui.ActivityTextIflytek;

/* loaded from: classes.dex */
public final class n7 extends Binder implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15850e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ com.yunpan.appmanage.carsdk.f f15851f;

    public n7(com.yunpan.appmanage.carsdk.f fVar, int i10) {
        this.f15850e = i10;
        switch (i10) {
            case 1:
                this.f15851f = fVar;
                attachInterface(this, "com.iflytek.autofly.voicecore.aidl.platform.IAppStore");
                break;
            default:
                this.f15851f = fVar;
                attachInterface(this, "com.iflytek.autofly.voicecore.aidl.platform.INLPProtocolConvert");
                break;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i10 = this.f15850e;
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        switch (this.f15850e) {
            case 0:
                if (i10 >= 1 && i10 <= 16777215) {
                    parcel.enforceInterface("com.iflytek.autofly.voicecore.aidl.platform.INLPProtocolConvert");
                }
                if (i10 == 1598968902) {
                    parcel2.writeString("com.iflytek.autofly.voicecore.aidl.platform.INLPProtocolConvert");
                    break;
                } else if (i10 == 1) {
                    ((ActivityTextIflytek) this.f15851f.f3803b).D.post(new a2.e0(this, parcel.readString(), parcel.readString(), 14));
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    break;
                } else {
                    break;
                }
            default:
                if (i10 >= 1 && i10 <= 16777215) {
                    parcel.enforceInterface("com.iflytek.autofly.voicecore.aidl.platform.IAppStore");
                }
                if (i10 == 1598968902) {
                    parcel2.writeString("com.iflytek.autofly.voicecore.aidl.platform.IAppStore");
                    break;
                } else {
                    String str = null;
                    if (i10 == 1) {
                        String string = parcel.readString();
                        String string2 = parcel.readString();
                        if ("video".equals(string2)) {
                            str = "com.your.package";
                        } else {
                            ((ActivityTextIflytek) this.f15851f.f3803b).E.post(new a2.e0(this, string, string2, 15));
                        }
                        parcel2.writeNoException();
                        parcel2.writeString(str);
                        break;
                    } else if (i10 == 2) {
                        parcel.readString();
                        parcel.readString();
                        parcel2.writeNoException();
                        parcel2.writeString(null);
                        break;
                    } else {
                        break;
                    }
                }
                break;
        }
        return true;
    }
}
