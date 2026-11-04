package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IVehicleFaultInfo extends IInterface {

    public static class Default implements IVehicleFaultInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IVehicleFaultInfo
        public void onVehicleFaultInfoChanged(int[] iArr) {
        }
    }

    public static abstract class Stub extends Binder implements IVehicleFaultInfo {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IVehicleFaultInfo";
        static final int TRANSACTION_onVehicleFaultInfoChanged = 1;

        public static class Proxy implements IVehicleFaultInfo {
            public static IVehicleFaultInfo sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IVehicleFaultInfo
            public void onVehicleFaultInfoChanged(int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVehicleFaultInfoChanged(iArr);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVehicleFaultInfo asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVehicleFaultInfo)) ? new Proxy(iBinder) : (IVehicleFaultInfo) iInterfaceQueryLocalInterface;
        }

        public static IVehicleFaultInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IVehicleFaultInfo iVehicleFaultInfo) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVehicleFaultInfo == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVehicleFaultInfo;
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
                onVehicleFaultInfoChanged(parcel.createIntArray());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onVehicleFaultInfoChanged(int[] iArr);
}
