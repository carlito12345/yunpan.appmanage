package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IClusterNotifyKeytoneCallback extends IInterface {

    public static class Default implements IClusterNotifyKeytoneCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterNotifyKeytoneCallback
        public void onKeytone() {
        }
    }

    public static abstract class Stub extends Binder implements IClusterNotifyKeytoneCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IClusterNotifyKeytoneCallback";
        static final int TRANSACTION_onKeytone = 1;

        public static class Proxy implements IClusterNotifyKeytoneCallback {
            public static IClusterNotifyKeytoneCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterNotifyKeytoneCallback
            public void onKeytone() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onKeytone();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IClusterNotifyKeytoneCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IClusterNotifyKeytoneCallback)) ? new Proxy(iBinder) : (IClusterNotifyKeytoneCallback) iInterfaceQueryLocalInterface;
        }

        public static IClusterNotifyKeytoneCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iClusterNotifyKeytoneCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iClusterNotifyKeytoneCallback;
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
                onKeytone();
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onKeytone();
}
