package com.hsae.autosdk.settings;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* loaded from: classes.dex */
public interface ISystemSettingServices extends IInterface {

    public static abstract class Stub extends Binder implements ISystemSettingServices {
        private static final String DESCRIPTOR = "com.hsae.autosdk.settings.ISystemSettingServices";
        static final int TRANSACTION_getFaultInformation = 2;
        static final int TRANSACTION_operateLocalVrMicPermission = 3;
        static final int TRANSACTION_queryBinder = 1;

        public static class Proxy implements ISystemSettingServices {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.hsae.autosdk.settings.ISystemSettingServices
            public void getFaultInformation(String str, String str2, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hsae.autosdk.settings.ISystemSettingServices
            public void operateLocalVrMicPermission(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.ISystemSettingServices
            public IBinder queryBinder(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISystemSettingServices asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISystemSettingServices)) ? new Proxy(iBinder) : (ISystemSettingServices) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                IBinder iBinderQueryBinder = queryBinder(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(iBinderQueryBinder);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                getFaultInformation(parcel.readString(), parcel.readString(), parcel.createStringArrayList());
                return true;
            }
            if (i10 != 3) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            operateLocalVrMicPermission(parcel.readString(), parcel.readInt() != 0);
            return true;
        }
    }

    void getFaultInformation(String str, String str2, List<String> list);

    void operateLocalVrMicPermission(String str, boolean z);

    IBinder queryBinder(int i10);
}
