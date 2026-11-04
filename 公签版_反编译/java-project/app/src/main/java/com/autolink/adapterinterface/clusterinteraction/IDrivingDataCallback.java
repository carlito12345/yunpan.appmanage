package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IDrivingDataCallback extends IInterface {

    public static class Default implements IDrivingDataCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDrivingDataCallback
        public void onDrivingDataChanged(float f10, float f11, float f12, float f13) {
        }
    }

    public static abstract class Stub extends Binder implements IDrivingDataCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IDrivingDataCallback";
        static final int TRANSACTION_onDrivingDataChanged = 1;

        public static class Proxy implements IDrivingDataCallback {
            public static IDrivingDataCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IDrivingDataCallback
            public void onDrivingDataChanged(float f10, float f11, float f12, float f13) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeFloat(f11);
                    parcelObtain.writeFloat(f12);
                    parcelObtain.writeFloat(f13);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDrivingDataChanged(f10, f11, f12, f13);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDrivingDataCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDrivingDataCallback)) ? new Proxy(iBinder) : (IDrivingDataCallback) iInterfaceQueryLocalInterface;
        }

        public static IDrivingDataCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IDrivingDataCallback iDrivingDataCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iDrivingDataCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iDrivingDataCallback;
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
                onDrivingDataChanged(parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onDrivingDataChanged(float f10, float f11, float f12, float f13);
}
