package com.autolink.adapterinterface.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IALCarVehicleControlPropertyListener extends IInterface {

    public static class Default implements IALCarVehicleControlPropertyListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.car.IALCarVehicleControlPropertyListener
        public void notifyCarVehicleControlPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        }
    }

    public static abstract class Stub extends Binder implements IALCarVehicleControlPropertyListener {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.car.IALCarVehicleControlPropertyListener";
        static final int TRANSACTION_notifyCarVehicleControlPropertyEvent = 1;

        public static class Proxy implements IALCarVehicleControlPropertyListener {
            public static IALCarVehicleControlPropertyListener sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.car.IALCarVehicleControlPropertyListener
            public void notifyCarVehicleControlPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (aLCarPropertyEvent != null) {
                        parcelObtain.writeInt(1);
                        aLCarPropertyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyCarVehicleControlPropertyEvent(aLCarPropertyEvent);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IALCarVehicleControlPropertyListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IALCarVehicleControlPropertyListener)) ? new Proxy(iBinder) : (IALCarVehicleControlPropertyListener) iInterfaceQueryLocalInterface;
        }

        public static IALCarVehicleControlPropertyListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iALCarVehicleControlPropertyListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iALCarVehicleControlPropertyListener;
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
                notifyCarVehicleControlPropertyEvent(parcel.readInt() != 0 ? ALCarPropertyEvent.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void notifyCarVehicleControlPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent);
}
