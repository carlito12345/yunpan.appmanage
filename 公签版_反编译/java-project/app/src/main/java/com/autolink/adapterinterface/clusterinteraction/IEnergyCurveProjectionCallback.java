package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IEnergyCurveProjectionCallback extends IInterface {

    public static class Default implements IEnergyCurveProjectionCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IEnergyCurveProjectionCallback
        public void onEnergyCurveProjectionStatusChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IEnergyCurveProjectionCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IEnergyCurveProjectionCallback";
        static final int TRANSACTION_onEnergyCurveProjectionStatusChanged = 1;

        public static class Proxy implements IEnergyCurveProjectionCallback {
            public static IEnergyCurveProjectionCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IEnergyCurveProjectionCallback
            public void onEnergyCurveProjectionStatusChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onEnergyCurveProjectionStatusChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IEnergyCurveProjectionCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEnergyCurveProjectionCallback)) ? new Proxy(iBinder) : (IEnergyCurveProjectionCallback) iInterfaceQueryLocalInterface;
        }

        public static IEnergyCurveProjectionCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iEnergyCurveProjectionCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iEnergyCurveProjectionCallback;
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
                onEnergyCurveProjectionStatusChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onEnergyCurveProjectionStatusChanged(int i10);
}
