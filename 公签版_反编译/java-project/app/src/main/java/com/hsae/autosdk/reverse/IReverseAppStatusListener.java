package com.hsae.autosdk.reverse;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IReverseAppStatusListener extends IInterface {

    public static abstract class Stub extends Binder implements IReverseAppStatusListener {
        private static final String DESCRIPTOR = "com.hsae.autosdk.reverse.IReverseAppStatusListener";
        static final int TRANSACTION_onModButtonEnableChanged = 2;
        static final int TRANSACTION_onModStatusChanged = 1;

        public static class Proxy implements IReverseAppStatusListener {
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

            @Override // com.hsae.autosdk.reverse.IReverseAppStatusListener
            public void onModButtonEnableChanged(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseAppStatusListener
            public void onModStatusChanged(boolean z) {
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
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IReverseAppStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IReverseAppStatusListener)) ? new Proxy(iBinder) : (IReverseAppStatusListener) iInterfaceQueryLocalInterface;
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
                onModStatusChanged(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 2) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onModButtonEnableChanged(parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    void onModButtonEnableChanged(boolean z);

    void onModStatusChanged(boolean z);
}
