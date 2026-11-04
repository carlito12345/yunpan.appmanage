package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IPayloadODOValueCallback extends IInterface {

    public static class Default implements IPayloadODOValueCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IPayloadODOValueCallback
        public void onPayloadODOValueChanged(float f10, float f11) {
        }
    }

    public static abstract class Stub extends Binder implements IPayloadODOValueCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IPayloadODOValueCallback";
        static final int TRANSACTION_onPayloadODOValueChanged = 1;

        public static class Proxy implements IPayloadODOValueCallback {
            public static IPayloadODOValueCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IPayloadODOValueCallback
            public void onPayloadODOValueChanged(float f10, float f11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeFloat(f11);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPayloadODOValueChanged(f10, f11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPayloadODOValueCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPayloadODOValueCallback)) ? new Proxy(iBinder) : (IPayloadODOValueCallback) iInterfaceQueryLocalInterface;
        }

        public static IPayloadODOValueCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPayloadODOValueCallback iPayloadODOValueCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iPayloadODOValueCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iPayloadODOValueCallback;
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
                onPayloadODOValueChanged(parcel.readFloat(), parcel.readFloat());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onPayloadODOValueChanged(float f10, float f11);
}
