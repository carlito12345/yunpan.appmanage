package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ITyreTemperatureCallback extends IInterface {

    public static class Default implements ITyreTemperatureCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
        public void onLFTyreTempChanged(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
        public void onLRTyreTempChanged(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
        public void onRFTyreTempChanged(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
        public void onRRTyreTempChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements ITyreTemperatureCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback";
        static final int TRANSACTION_onLFTyreTempChanged = 1;
        static final int TRANSACTION_onLRTyreTempChanged = 3;
        static final int TRANSACTION_onRFTyreTempChanged = 2;
        static final int TRANSACTION_onRRTyreTempChanged = 4;

        public static class Proxy implements ITyreTemperatureCallback {
            public static ITyreTemperatureCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
            public void onLFTyreTempChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onLFTyreTempChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
            public void onLRTyreTempChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(3, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onLRTyreTempChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
            public void onRFTyreTempChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRFTyreTempChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback
            public void onRRTyreTempChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(4, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRRTyreTempChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITyreTemperatureCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITyreTemperatureCallback)) ? new Proxy(iBinder) : (ITyreTemperatureCallback) iInterfaceQueryLocalInterface;
        }

        public static ITyreTemperatureCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITyreTemperatureCallback iTyreTemperatureCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTyreTemperatureCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTyreTemperatureCallback;
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
                onLFTyreTempChanged(parcel.readInt());
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onRFTyreTempChanged(parcel.readInt());
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onLRTyreTempChanged(parcel.readInt());
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onRRTyreTempChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onLFTyreTempChanged(int i10);

    void onLRTyreTempChanged(int i10);

    void onRFTyreTempChanged(int i10);

    void onRRTyreTempChanged(int i10);
}
