package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IGaugeSpeedValueCallback extends IInterface {

    public static class Default implements IGaugeSpeedValueCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IGaugeSpeedValueCallback
        public void onSpeedValueChanged(float f10) {
        }
    }

    public static abstract class Stub extends Binder implements IGaugeSpeedValueCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IGaugeSpeedValueCallback";
        static final int TRANSACTION_onSpeedValueChanged = 1;

        public static class Proxy implements IGaugeSpeedValueCallback {
            public static IGaugeSpeedValueCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IGaugeSpeedValueCallback
            public void onSpeedValueChanged(float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSpeedValueChanged(f10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGaugeSpeedValueCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGaugeSpeedValueCallback)) ? new Proxy(iBinder) : (IGaugeSpeedValueCallback) iInterfaceQueryLocalInterface;
        }

        public static IGaugeSpeedValueCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IGaugeSpeedValueCallback iGaugeSpeedValueCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iGaugeSpeedValueCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iGaugeSpeedValueCallback;
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
                onSpeedValueChanged(parcel.readFloat());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onSpeedValueChanged(float f10);
}
