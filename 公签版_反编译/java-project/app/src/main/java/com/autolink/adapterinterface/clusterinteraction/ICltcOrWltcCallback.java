package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ICltcOrWltcCallback extends IInterface {

    public static class Default implements ICltcOrWltcCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.ICltcOrWltcCallback
        public void onCltcOrWltcModeChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements ICltcOrWltcCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.ICltcOrWltcCallback";
        static final int TRANSACTION_onCltcOrWltcModeChanged = 1;

        public static class Proxy implements ICltcOrWltcCallback {
            public static ICltcOrWltcCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.ICltcOrWltcCallback
            public void onCltcOrWltcModeChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCltcOrWltcModeChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICltcOrWltcCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICltcOrWltcCallback)) ? new Proxy(iBinder) : (ICltcOrWltcCallback) iInterfaceQueryLocalInterface;
        }

        public static ICltcOrWltcCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICltcOrWltcCallback iCltcOrWltcCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCltcOrWltcCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCltcOrWltcCallback;
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
                onCltcOrWltcModeChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onCltcOrWltcModeChanged(int i10);
}
