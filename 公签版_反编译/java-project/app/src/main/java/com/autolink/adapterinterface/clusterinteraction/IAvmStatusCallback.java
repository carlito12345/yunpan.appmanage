package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IAvmStatusCallback extends IInterface {

    public static class Default implements IAvmStatusCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IAvmStatusCallback
        public void onAvmClosedBySpeed() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IAvmStatusCallback
        public void onAvmStatusChanged(boolean z) {
        }
    }

    public static abstract class Stub extends Binder implements IAvmStatusCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IAvmStatusCallback";
        static final int TRANSACTION_onAvmClosedBySpeed = 2;
        static final int TRANSACTION_onAvmStatusChanged = 1;

        public static class Proxy implements IAvmStatusCallback {
            public static IAvmStatusCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IAvmStatusCallback
            public void onAvmClosedBySpeed() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAvmClosedBySpeed();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IAvmStatusCallback
            public void onAvmStatusChanged(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAvmStatusChanged(z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAvmStatusCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAvmStatusCallback)) ? new Proxy(iBinder) : (IAvmStatusCallback) iInterfaceQueryLocalInterface;
        }

        public static IAvmStatusCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAvmStatusCallback iAvmStatusCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iAvmStatusCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAvmStatusCallback;
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
                onAvmStatusChanged(parcel.readInt() != 0);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onAvmClosedBySpeed();
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onAvmClosedBySpeed();

    void onAvmStatusChanged(boolean z);
}
