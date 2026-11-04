package com.autolink.adapterinterface.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IALCarEngineSpeedListener extends IInterface {

    public static class Default implements IALCarEngineSpeedListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.car.IALCarEngineSpeedListener
        public void notifyEngineSpeedChange(float f10, int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IALCarEngineSpeedListener {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.car.IALCarEngineSpeedListener";
        static final int TRANSACTION_notifyEngineSpeedChange = 1;

        public static class Proxy implements IALCarEngineSpeedListener {
            public static IALCarEngineSpeedListener sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.car.IALCarEngineSpeedListener
            public void notifyEngineSpeedChange(float f10, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyEngineSpeedChange(f10, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IALCarEngineSpeedListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IALCarEngineSpeedListener)) ? new Proxy(iBinder) : (IALCarEngineSpeedListener) iInterfaceQueryLocalInterface;
        }

        public static IALCarEngineSpeedListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IALCarEngineSpeedListener iALCarEngineSpeedListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iALCarEngineSpeedListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iALCarEngineSpeedListener;
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
                notifyEngineSpeedChange(parcel.readFloat(), parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void notifyEngineSpeedChange(float f10, int i10);
}
