package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IOmsCallback extends IInterface {

    public static class Default implements IOmsCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
        public void cameraStatusResp(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
        public void isHaveChildResp(boolean z, int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
        public void isHavePetResp(boolean z, int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
        public void isSafetySeatResp(boolean z, int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IOmsCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IOmsCallback";
        static final int TRANSACTION_cameraStatusResp = 4;
        static final int TRANSACTION_isHaveChildResp = 2;
        static final int TRANSACTION_isHavePetResp = 1;
        static final int TRANSACTION_isSafetySeatResp = 3;

        public static class Proxy implements IOmsCallback {
            public static IOmsCallback sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
            public void cameraStatusResp(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(4, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().cameraStatusResp(i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
            public void isHaveChildResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().isHaveChildResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
            public void isHavePetResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().isHavePetResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IOmsCallback
            public void isSafetySeatResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(3, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().isSafetySeatResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOmsCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOmsCallback)) ? new Proxy(iBinder) : (IOmsCallback) iInterfaceQueryLocalInterface;
        }

        public static IOmsCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IOmsCallback iOmsCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iOmsCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iOmsCallback;
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
                isHavePetResp(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                isHaveChildResp(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                isSafetySeatResp(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                cameraStatusResp(parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void cameraStatusResp(int i10, int i11);

    void isHaveChildResp(boolean z, int i10);

    void isHavePetResp(boolean z, int i10);

    void isSafetySeatResp(boolean z, int i10);
}
