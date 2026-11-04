package ua;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;

/* loaded from: classes.dex */
public final class x4 extends Binder implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f16034e = 0;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ da.g f16035f;

    public x4(ActivityTextDesaysvVds activityTextDesaysvVds) {
        this.f16035f = activityTextDesaysvVds;
        attachInterface(this, "com.desaysv.ivi.vdb.IVDBusNotify");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i10 = this.f16034e;
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        switch (this.f16034e) {
            case 0:
                if (i10 == 1598968902) {
                    parcel2.writeString("com.szlanyou.otaupdate.aidl.ICallBackDA");
                    return true;
                }
                switch (i10) {
                    case 1:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        p9.e eVarCreateFromParcel = parcel.readInt() != 0 ? p9.e.CREATOR.createFromParcel(parcel) : null;
                        StringBuffer stringBuffer = new StringBuffer("版本：");
                        stringBuffer.append(eVarCreateFromParcel.f12621c);
                        stringBuffer.append("\n时间：");
                        stringBuffer.append(eVarCreateFromParcel.f12622d);
                        stringBuffer.append("\n说明：");
                        stringBuffer.append(eVarCreateFromParcel.f12623e);
                        stringBuffer.append("\n状态：");
                        stringBuffer.append(eVarCreateFromParcel.f12624f);
                        stringBuffer.append("\n大小：");
                        stringBuffer.append(eVarCreateFromParcel.f12619a);
                        stringBuffer.append("\n类型：");
                        stringBuffer.append(eVarCreateFromParcel.f12625g);
                        stringBuffer.append(SignParameters.NEW_LINE);
                        String string = stringBuffer.toString();
                        i1 i1Var = new i1(14, this);
                        ActivityNissan activityNissan = (ActivityNissan) this.f16035f;
                        new ha.z6(activityNissan, activityNissan, string, "", "升级（不要点）", "取消", i1Var).show();
                        break;
                    case 2:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        parcel.readInt();
                        break;
                    case 3:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        parcel.readInt();
                        break;
                    case 4:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        parcel.readInt();
                        parcel.createTypedArrayList(p9.a.CREATOR);
                        break;
                    case 5:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        com.yunpan.appmanage.util.a0.w("OTA工具连接成功");
                        break;
                    case 6:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        parcel.readString();
                        break;
                    case 7:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        parcel.readInt();
                        break;
                    case 8:
                        parcel.enforceInterface("com.szlanyou.otaupdate.aidl.ICallBackDA");
                        break;
                    default:
                        return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeNoException();
                return true;
            default:
                if (i10 != 1) {
                    if (i10 != 1598968902) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    parcel2.writeString("com.desaysv.ivi.vdb.IVDBusNotify");
                    return true;
                }
                parcel.enforceInterface("com.desaysv.ivi.vdb.IVDBusNotify");
                m6.a aVarCreateFromParcel = parcel.readInt() != 0 ? m6.a.CREATOR.createFromParcel(parcel) : null;
                Message messageObtain = Message.obtain();
                messageObtain.what = 0;
                messageObtain.obj = aVarCreateFromParcel;
                ((ActivityTextDesaysvVds) this.f16035f).G.sendMessage(messageObtain);
                return true;
        }
    }

    public x4(ActivityNissan activityNissan) {
        this.f16035f = activityNissan;
        attachInterface(this, "com.szlanyou.otaupdate.aidl.ICallBackDA");
    }
}
