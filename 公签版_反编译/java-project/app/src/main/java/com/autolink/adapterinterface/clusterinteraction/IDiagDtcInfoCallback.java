package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IDiagDtcInfoCallback extends IInterface {

    public static class Default implements IDiagDtcInfoCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDiagDtcInfoCallback
        public void onDiagDtcInfoCb(int i10, int i11) {
        }
    }

    public static abstract class Stub extends Binder implements IDiagDtcInfoCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IDiagDtcInfoCallback";
        static final int TRANSACTION_onDiagDtcInfoCb = 1;

        public static class Proxy implements IDiagDtcInfoCallback {
            public static IDiagDtcInfoCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.clusterinteraction.IDiagDtcInfoCallback
            public void onDiagDtcInfoCb(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDiagDtcInfoCb(i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDiagDtcInfoCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDiagDtcInfoCallback)) ? new Proxy(iBinder) : (IDiagDtcInfoCallback) iInterfaceQueryLocalInterface;
        }

        public static IDiagDtcInfoCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IDiagDtcInfoCallback iDiagDtcInfoCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iDiagDtcInfoCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iDiagDtcInfoCallback;
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
                onDiagDtcInfoCb(parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onDiagDtcInfoCb(int i10, int i11);
}
