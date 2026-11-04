package com.autolink.app.vehicleservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IVehicleControlCallback extends IInterface {

    public static class Default implements IVehicleControlCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
        public void onOnlySyncFloatData(int i10, float f10) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
        public void onOnlySyncIntData(int i10, int i11) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
        public void onReceiveFloat(int i10, float f10, boolean z) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
        public void onReceiveInt(int i10, int i11, boolean z) {
        }
    }

    public static abstract class Stub extends Binder implements IVehicleControlCallback {
        private static final String DESCRIPTOR = "com.autolink.app.vehicleservice.IVehicleControlCallback";
        static final int TRANSACTION_onOnlySyncFloatData = 4;
        static final int TRANSACTION_onOnlySyncIntData = 3;
        static final int TRANSACTION_onReceiveFloat = 2;
        static final int TRANSACTION_onReceiveInt = 1;

        public static class Proxy implements IVehicleControlCallback {
            public static IVehicleControlCallback sDefaultImpl;
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

            @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
            public void onOnlySyncFloatData(int i10, float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeFloat(f10);
                    if (!this.mRemote.transact(4, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onOnlySyncFloatData(i10, f10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
            public void onOnlySyncIntData(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(3, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onOnlySyncIntData(i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
            public void onReceiveFloat(int i10, float f10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onReceiveFloat(i10, f10, z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
            public void onReceiveInt(int i10, int i11, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onReceiveInt(i10, i11, z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVehicleControlCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVehicleControlCallback)) ? new Proxy(iBinder) : (IVehicleControlCallback) iInterfaceQueryLocalInterface;
        }

        public static IVehicleControlCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IVehicleControlCallback iVehicleControlCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVehicleControlCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVehicleControlCallback;
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
                onReceiveInt(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onReceiveFloat(parcel.readInt(), parcel.readFloat(), parcel.readInt() != 0);
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onOnlySyncIntData(parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onOnlySyncFloatData(parcel.readInt(), parcel.readFloat());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onOnlySyncFloatData(int i10, float f10);

    void onOnlySyncIntData(int i10, int i11);

    void onReceiveFloat(int i10, float f10, boolean z);

    void onReceiveInt(int i10, int i11, boolean z);
}
