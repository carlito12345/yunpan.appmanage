package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IAdsL1ChimeStatusCallback extends IInterface {

    public static class Default implements IAdsL1ChimeStatusCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IAdsL1ChimeStatusCallback
        public void onAdsL1ChimeStatusChanged(int i10, boolean z) {
        }
    }

    public static abstract class Stub extends Binder implements IAdsL1ChimeStatusCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IAdsL1ChimeStatusCallback";
        static final int TRANSACTION_onAdsL1ChimeStatusChanged = 1;

        public static class Proxy implements IAdsL1ChimeStatusCallback {
            public static IAdsL1ChimeStatusCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IAdsL1ChimeStatusCallback
            public void onAdsL1ChimeStatusChanged(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAdsL1ChimeStatusChanged(i10, z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAdsL1ChimeStatusCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAdsL1ChimeStatusCallback)) ? new Proxy(iBinder) : (IAdsL1ChimeStatusCallback) iInterfaceQueryLocalInterface;
        }

        public static IAdsL1ChimeStatusCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iAdsL1ChimeStatusCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAdsL1ChimeStatusCallback;
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
                onAdsL1ChimeStatusChanged(parcel.readInt(), parcel.readInt() != 0);
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onAdsL1ChimeStatusChanged(int i10, boolean z);
}
