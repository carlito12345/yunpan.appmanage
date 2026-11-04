package com.hsae.autosdk.settings.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IHaseWifiManagerCallback extends IInterface {

    public static abstract class Stub extends Binder implements IHaseWifiManagerCallback {
        private static final String DESCRIPTOR = "com.hsae.autosdk.settings.wifi.IHaseWifiManagerCallback";
        static final int TRANSACTION_onWifiApConnectNumChange = 4;
        static final int TRANSACTION_onWifiApStateChange = 3;
        static final int TRANSACTION_onWifiControlEnabled = 1;
        static final int TRANSACTION_onWifiOperationResult = 5;
        static final int TRANSACTION_onWifiStateChange = 2;

        public static class Proxy implements IHaseWifiManagerCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hsae.autosdk.settings.wifi.IHaseWifiManagerCallback
            public void onWifiApConnectNumChange(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.wifi.IHaseWifiManagerCallback
            public void onWifiApStateChange(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.wifi.IHaseWifiManagerCallback
            public void onWifiControlEnabled(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.wifi.IHaseWifiManagerCallback
            public void onWifiOperationResult(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.wifi.IHaseWifiManagerCallback
            public void onWifiStateChange(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHaseWifiManagerCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHaseWifiManagerCallback)) ? new Proxy(iBinder) : (IHaseWifiManagerCallback) iInterfaceQueryLocalInterface;
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
                onWifiControlEnabled(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onWifiStateChange(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onWifiApStateChange(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onWifiApConnectNumChange(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 5) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onWifiOperationResult(parcel.readInt(), parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    void onWifiApConnectNumChange(int i10);

    void onWifiApStateChange(int i10);

    void onWifiControlEnabled(boolean z);

    void onWifiOperationResult(int i10, boolean z);

    void onWifiStateChange(int i10);
}
