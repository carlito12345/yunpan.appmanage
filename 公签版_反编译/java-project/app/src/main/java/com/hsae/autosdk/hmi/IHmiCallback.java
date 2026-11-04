package com.hsae.autosdk.hmi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IHmiCallback extends IInterface {

    public static abstract class Stub extends Binder implements IHmiCallback {
        private static final String DESCRIPTOR = "com.hsae.autosdk.hmi.IHmiCallback";
        static final int TRANSACTION_onAirConditionerInputKeyEvent = 1;
        static final int TRANSACTION_onVirtualInputKeyEvent = 2;

        public static class Proxy implements IHmiCallback {
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

            @Override // com.hsae.autosdk.hmi.IHmiCallback
            public void onAirConditionerInputKeyEvent(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.hmi.IHmiCallback
            public void onVirtualInputKeyEvent(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHmiCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHmiCallback)) ? new Proxy(iBinder) : (IHmiCallback) iInterfaceQueryLocalInterface;
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
                onAirConditionerInputKeyEvent(parcel.readInt(), parcel.readInt() != 0);
                return true;
            }
            if (i10 != 2) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onVirtualInputKeyEvent(parcel.readInt(), parcel.readInt() != 0);
            return true;
        }
    }

    void onAirConditionerInputKeyEvent(int i10, boolean z);

    void onVirtualInputKeyEvent(int i10, boolean z);
}
