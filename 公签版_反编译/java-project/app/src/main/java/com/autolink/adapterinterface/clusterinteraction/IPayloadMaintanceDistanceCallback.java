package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IPayloadMaintanceDistanceCallback extends IInterface {

    public static class Default implements IPayloadMaintanceDistanceCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IPayloadMaintanceDistanceCallback
        public void onPayloadMaintanceDistanceChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IPayloadMaintanceDistanceCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IPayloadMaintanceDistanceCallback";
        static final int TRANSACTION_onPayloadMaintanceDistanceChanged = 1;

        public static class Proxy implements IPayloadMaintanceDistanceCallback {
            public static IPayloadMaintanceDistanceCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IPayloadMaintanceDistanceCallback
            public void onPayloadMaintanceDistanceChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPayloadMaintanceDistanceChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPayloadMaintanceDistanceCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPayloadMaintanceDistanceCallback)) ? new Proxy(iBinder) : (IPayloadMaintanceDistanceCallback) iInterfaceQueryLocalInterface;
        }

        public static IPayloadMaintanceDistanceCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iPayloadMaintanceDistanceCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iPayloadMaintanceDistanceCallback;
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
                onPayloadMaintanceDistanceChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onPayloadMaintanceDistanceChanged(int i10);
}
