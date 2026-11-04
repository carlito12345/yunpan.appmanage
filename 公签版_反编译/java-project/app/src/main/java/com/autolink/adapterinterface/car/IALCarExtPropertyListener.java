package com.autolink.adapterinterface.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IALCarExtPropertyListener extends IInterface {

    public static class Default implements IALCarExtPropertyListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.car.IALCarExtPropertyListener
        public void notifyCarExtPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        }
    }

    public static abstract class Stub extends Binder implements IALCarExtPropertyListener {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.car.IALCarExtPropertyListener";
        static final int TRANSACTION_notifyCarExtPropertyEvent = 1;

        public static class Proxy implements IALCarExtPropertyListener {
            public static IALCarExtPropertyListener sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.car.IALCarExtPropertyListener
            public void notifyCarExtPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
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
                        Stub.getDefaultImpl().notifyCarExtPropertyEvent(aLCarPropertyEvent);
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

        public static IALCarExtPropertyListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IALCarExtPropertyListener)) ? new Proxy(iBinder) : (IALCarExtPropertyListener) iInterfaceQueryLocalInterface;
        }

        public static IALCarExtPropertyListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IALCarExtPropertyListener iALCarExtPropertyListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iALCarExtPropertyListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iALCarExtPropertyListener;
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
                notifyCarExtPropertyEvent(parcel.readInt() != 0 ? ALCarPropertyEvent.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void notifyCarExtPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent);
}
