package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IDmsCallback extends IInterface {

    public static class Default implements IDmsCallback {
        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void activationLicenseResp() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void androidSetupCompleteResp(int i10, int i11) {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void bloodOxygenResultResp(boolean z, int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void cameraOcclusionValueResp(boolean z, boolean z4) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void cameraStatusResp(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void distractionLevelValueResp(boolean z, int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void driverActionValueResp(boolean z, int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void driverMissingValueResp(boolean z, boolean z4) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void drowsinessLevelValueResp(boolean z, int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void faceIdResp(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void faceStatusResultResp(boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void healthLoginResp(boolean z, int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void healthRateResultResp(boolean z, float f10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void heartRateVarResultResp(boolean z, float f10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void pressureResultResp(boolean z, int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
        public void respiratoryRateResultResp(boolean z, float f10) {
        }
    }

    public static abstract class Stub extends Binder implements IDmsCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IDmsCallback";
        static final int TRANSACTION_activationLicenseResp = 15;
        static final int TRANSACTION_androidSetupCompleteResp = 12;
        static final int TRANSACTION_bloodOxygenResultResp = 6;
        static final int TRANSACTION_cameraOcclusionValueResp = 9;
        static final int TRANSACTION_cameraStatusResp = 14;
        static final int TRANSACTION_distractionLevelValueResp = 10;
        static final int TRANSACTION_driverActionValueResp = 7;
        static final int TRANSACTION_driverMissingValueResp = 8;
        static final int TRANSACTION_drowsinessLevelValueResp = 11;
        static final int TRANSACTION_faceIdResp = 1;
        static final int TRANSACTION_faceStatusResultResp = 16;
        static final int TRANSACTION_healthLoginResp = 13;
        static final int TRANSACTION_healthRateResultResp = 2;
        static final int TRANSACTION_heartRateVarResultResp = 3;
        static final int TRANSACTION_pressureResultResp = 5;
        static final int TRANSACTION_respiratoryRateResultResp = 4;

        public static class Proxy implements IDmsCallback {
            public static IDmsCallback sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void activationLicenseResp() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().activationLicenseResp();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void androidSetupCompleteResp(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(12, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().androidSetupCompleteResp(i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void bloodOxygenResultResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(6, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().bloodOxygenResultResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void cameraOcclusionValueResp(boolean z, boolean z4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    if (!this.mRemote.transact(9, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().cameraOcclusionValueResp(z, z4);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void cameraStatusResp(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(14, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().cameraStatusResp(i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void distractionLevelValueResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(10, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().distractionLevelValueResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void driverActionValueResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(7, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().driverActionValueResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void driverMissingValueResp(boolean z, boolean z4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    if (!this.mRemote.transact(8, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().driverMissingValueResp(z, z4);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void drowsinessLevelValueResp(boolean z, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    if (!this.mRemote.transact(11, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().drowsinessLevelValueResp(z, i10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void faceIdResp(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().faceIdResp(i10, i11, i12);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void faceStatusResultResp(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(16, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().faceStatusResultResp(z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void healthLoginResp(boolean z, int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (!this.mRemote.transact(13, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().healthLoginResp(z, i10, i11, i12);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void healthRateResultResp(boolean z, float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeFloat(f10);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().healthRateResultResp(z, f10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void heartRateVarResultResp(boolean z, float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeFloat(f10);
                    if (!this.mRemote.transact(3, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().heartRateVarResultResp(z, f10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void pressureResultResp(boolean z, int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(5, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().pressureResultResp(z, i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IDmsCallback
            public void respiratoryRateResultResp(boolean z, float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeFloat(f10);
                    if (!this.mRemote.transact(4, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().respiratoryRateResultResp(z, f10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDmsCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDmsCallback)) ? new Proxy(iBinder) : (IDmsCallback) iInterfaceQueryLocalInterface;
        }

        public static IDmsCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IDmsCallback iDmsCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iDmsCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iDmsCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    faceIdResp(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    healthRateResultResp(parcel.readInt() != 0, parcel.readFloat());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    heartRateVarResultResp(parcel.readInt() != 0, parcel.readFloat());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    respiratoryRateResultResp(parcel.readInt() != 0, parcel.readFloat());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    pressureResultResp(parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    bloodOxygenResultResp(parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    driverActionValueResp(parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    driverMissingValueResp(parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    cameraOcclusionValueResp(parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    distractionLevelValueResp(parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    drowsinessLevelValueResp(parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    androidSetupCompleteResp(parcel.readInt(), parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    healthLoginResp(parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    cameraStatusResp(parcel.readInt(), parcel.readInt());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    activationLicenseResp();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    faceStatusResultResp(parcel.readInt() != 0);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void activationLicenseResp();

    void androidSetupCompleteResp(int i10, int i11);

    void bloodOxygenResultResp(boolean z, int i10);

    void cameraOcclusionValueResp(boolean z, boolean z4);

    void cameraStatusResp(int i10, int i11);

    void distractionLevelValueResp(boolean z, int i10);

    void driverActionValueResp(boolean z, int i10);

    void driverMissingValueResp(boolean z, boolean z4);

    void drowsinessLevelValueResp(boolean z, int i10);

    void faceIdResp(int i10, int i11, int i12);

    void faceStatusResultResp(boolean z);

    void healthLoginResp(boolean z, int i10, int i11, int i12);

    void healthRateResultResp(boolean z, float f10);

    void heartRateVarResultResp(boolean z, float f10);

    void pressureResultResp(boolean z, int i10, int i11);

    void respiratoryRateResultResp(boolean z, float f10);
}
