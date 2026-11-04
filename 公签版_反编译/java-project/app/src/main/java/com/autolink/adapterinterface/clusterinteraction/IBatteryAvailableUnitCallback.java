package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IBatteryAvailableUnitCallback extends IInterface {

    public static class Default implements IBatteryAvailableUnitCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IBatteryAvailableUnitCallback
        public void onBatteryAvailableUnitChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IBatteryAvailableUnitCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IBatteryAvailableUnitCallback";
        static final int TRANSACTION_onBatteryAvailableUnitChanged = 1;

        public static class Proxy implements IBatteryAvailableUnitCallback {
            public static IBatteryAvailableUnitCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IBatteryAvailableUnitCallback
            public void onBatteryAvailableUnitChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onBatteryAvailableUnitChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBatteryAvailableUnitCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBatteryAvailableUnitCallback)) ? new Proxy(iBinder) : (IBatteryAvailableUnitCallback) iInterfaceQueryLocalInterface;
        }

        public static IBatteryAvailableUnitCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iBatteryAvailableUnitCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iBatteryAvailableUnitCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onBatteryAvailableUnitChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onBatteryAvailableUnitChanged(int i10);
}
