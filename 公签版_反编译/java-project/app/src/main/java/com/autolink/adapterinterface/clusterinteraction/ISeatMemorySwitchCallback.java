package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ISeatMemorySwitchCallback extends IInterface {

    public static class Default implements ISeatMemorySwitchCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.ISeatMemorySwitchCallback
        public void onSeatMemorySwitchChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements ISeatMemorySwitchCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.ISeatMemorySwitchCallback";
        static final int TRANSACTION_onSeatMemorySwitchChanged = 1;

        public static class Proxy implements ISeatMemorySwitchCallback {
            public static ISeatMemorySwitchCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.ISeatMemorySwitchCallback
            public void onSeatMemorySwitchChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSeatMemorySwitchChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISeatMemorySwitchCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISeatMemorySwitchCallback)) ? new Proxy(iBinder) : (ISeatMemorySwitchCallback) iInterfaceQueryLocalInterface;
        }

        public static ISeatMemorySwitchCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISeatMemorySwitchCallback iSeatMemorySwitchCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iSeatMemorySwitchCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iSeatMemorySwitchCallback;
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
                onSeatMemorySwitchChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onSeatMemorySwitchChanged(int i10);
}
