package x8;

import android.os.IBinder;
import android.os.Parcel;
import ua.n7;
import ua.o7;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f18191e;

    public a(IBinder iBinder) {
        this.f18191e = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f18191e;
    }

    public final int h(n7 n7Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.iflytek.autofly.voicecore.aidl.IEventBus");
            parcelObtain.writeStrongInterface(n7Var);
            this.f18191e.transact(10, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int i() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.iflytek.autofly.voicecore.aidl.IEventBus");
            parcelObtain.writeStrongInterface(null);
            this.f18191e.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int j(n7 n7Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.iflytek.autofly.voicecore.aidl.IEventBus");
            parcelObtain.writeStrongInterface(n7Var);
            this.f18191e.transact(11, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int k(o7 o7Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.iflytek.autofly.voicecore.aidl.IEventBus");
            parcelObtain.writeString("NLPResult");
            parcelObtain.writeString("");
            parcelObtain.writeString("normal");
            parcelObtain.writeStrongInterface(o7Var);
            this.f18191e.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int l(d dVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.iflytek.autofly.voicecore.aidl.IEventBus");
            parcelObtain.writeString("NLPResult");
            parcelObtain.writeString("");
            parcelObtain.writeString("normal");
            parcelObtain.writeStrongInterface(dVar);
            this.f18191e.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
