package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IMotorDrivePowerUnitCallback extends IInterface {

    public static class Default implements IMotorDrivePowerUnitCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IMotorDrivePowerUnitCallback
        public void onMotorDrivePowerUnitChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IMotorDrivePowerUnitCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IMotorDrivePowerUnitCallback";
        static final int TRANSACTION_onMotorDrivePowerUnitChanged = 1;

        public static class Proxy implements IMotorDrivePowerUnitCallback {
            public static IMotorDrivePowerUnitCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IMotorDrivePowerUnitCallback
            public void onMotorDrivePowerUnitChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onMotorDrivePowerUnitChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMotorDrivePowerUnitCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMotorDrivePowerUnitCallback)) ? new Proxy(iBinder) : (IMotorDrivePowerUnitCallback) iInterfaceQueryLocalInterface;
        }

        public static IMotorDrivePowerUnitCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMotorDrivePowerUnitCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iMotorDrivePowerUnitCallback;
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
                onMotorDrivePowerUnitChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onMotorDrivePowerUnitChanged(int i10);
}
