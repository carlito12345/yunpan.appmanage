package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IAFCPHKMValueCallback extends IInterface {

    public static class Default implements IAFCPHKMValueCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IAFCPHKMValueCallback
        public void onAFCPHKMValueChanged(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IAFCPHKMValueCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IAFCPHKMValueCallback";
        static final int TRANSACTION_onAFCPHKMValueChanged = 1;

        public static class Proxy implements IAFCPHKMValueCallback {
            public static IAFCPHKMValueCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IAFCPHKMValueCallback
            public void onAFCPHKMValueChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAFCPHKMValueChanged(i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAFCPHKMValueCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAFCPHKMValueCallback)) ? new Proxy(iBinder) : (IAFCPHKMValueCallback) iInterfaceQueryLocalInterface;
        }

        public static IAFCPHKMValueCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAFCPHKMValueCallback iAFCPHKMValueCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iAFCPHKMValueCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAFCPHKMValueCallback;
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
                onAFCPHKMValueChanged(parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onAFCPHKMValueChanged(int i10);
}
