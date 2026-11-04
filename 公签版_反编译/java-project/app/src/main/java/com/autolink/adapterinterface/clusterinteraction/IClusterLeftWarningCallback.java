package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IClusterLeftWarningCallback extends IInterface {

    public static class Default implements IClusterLeftWarningCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterLeftWarningCallback
        public void onLeftSideWarningDisplay(boolean z) {
        }
    }

    public static abstract class Stub extends Binder implements IClusterLeftWarningCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IClusterLeftWarningCallback";
        static final int TRANSACTION_onLeftSideWarningDisplay = 1;

        public static class Proxy implements IClusterLeftWarningCallback {
            public static IClusterLeftWarningCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterLeftWarningCallback
            public void onLeftSideWarningDisplay(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onLeftSideWarningDisplay(z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IClusterLeftWarningCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IClusterLeftWarningCallback)) ? new Proxy(iBinder) : (IClusterLeftWarningCallback) iInterfaceQueryLocalInterface;
        }

        public static IClusterLeftWarningCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IClusterLeftWarningCallback iClusterLeftWarningCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iClusterLeftWarningCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iClusterLeftWarningCallback;
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
                onLeftSideWarningDisplay(parcel.readInt() != 0);
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onLeftSideWarningDisplay(boolean z);
}
