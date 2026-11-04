package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IOtaStateListener extends IInterface {

    public static class Default implements IOtaStateListener {
        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void SubNodeReqEnterFactoryAck(boolean z) {
        }

        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void SubNodeReqStartFactoryAck(boolean z) {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void fotaStateDisplayRequest(FotaStateDisplayReq fotaStateDisplayReq) {
        }

        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void fotaUserComfirmRequest(FotaUserComfirmReq fotaUserComfirmReq) {
        }

        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void otaSubNodeRefreshNowRequest(long j10, String str, int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void otaSubNodeReq(OtaSubNodeInfo otaSubNodeInfo) {
        }

        @Override // com.autolink.adapterinterface.IOtaStateListener
        public void otaSubNodeStateReportAck(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IOtaStateListener {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.IOtaStateListener";
        static final int TRANSACTION_SubNodeReqEnterFactoryAck = 6;
        static final int TRANSACTION_SubNodeReqStartFactoryAck = 7;
        static final int TRANSACTION_fotaStateDisplayRequest = 5;
        static final int TRANSACTION_fotaUserComfirmRequest = 3;
        static final int TRANSACTION_otaSubNodeRefreshNowRequest = 4;
        static final int TRANSACTION_otaSubNodeReq = 1;
        static final int TRANSACTION_otaSubNodeStateReportAck = 2;

        public static class Proxy implements IOtaStateListener {
            public static IOtaStateListener sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void SubNodeReqEnterFactoryAck(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().SubNodeReqEnterFactoryAck(z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void SubNodeReqStartFactoryAck(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().SubNodeReqStartFactoryAck(z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void fotaStateDisplayRequest(FotaStateDisplayReq fotaStateDisplayReq) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (fotaStateDisplayReq != null) {
                        parcelObtain.writeInt(1);
                        fotaStateDisplayReq.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fotaStateDisplayRequest(fotaStateDisplayReq);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void fotaUserComfirmRequest(FotaUserComfirmReq fotaUserComfirmReq) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (fotaUserComfirmReq != null) {
                        parcelObtain.writeInt(1);
                        fotaUserComfirmReq.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fotaUserComfirmRequest(fotaUserComfirmReq);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void otaSubNodeRefreshNowRequest(long j10, String str, int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().otaSubNodeRefreshNowRequest(j10, str, i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void otaSubNodeReq(OtaSubNodeInfo otaSubNodeInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (otaSubNodeInfo != null) {
                        parcelObtain.writeInt(1);
                        otaSubNodeInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().otaSubNodeReq(otaSubNodeInfo);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IOtaStateListener
            public void otaSubNodeStateReportAck(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().otaSubNodeStateReportAck(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOtaStateListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOtaStateListener)) ? new Proxy(iBinder) : (IOtaStateListener) iInterfaceQueryLocalInterface;
        }

        public static IOtaStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IOtaStateListener iOtaStateListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iOtaStateListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iOtaStateListener;
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
                    otaSubNodeReq(parcel.readInt() != 0 ? OtaSubNodeInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    otaSubNodeStateReportAck(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    fotaUserComfirmRequest(parcel.readInt() != 0 ? FotaUserComfirmReq.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    otaSubNodeRefreshNowRequest(parcel.readLong(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    fotaStateDisplayRequest(parcel.readInt() != 0 ? FotaStateDisplayReq.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    SubNodeReqEnterFactoryAck(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    SubNodeReqStartFactoryAck(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void SubNodeReqEnterFactoryAck(boolean z);

    void SubNodeReqStartFactoryAck(boolean z);

    void fotaStateDisplayRequest(FotaStateDisplayReq fotaStateDisplayReq);

    void fotaUserComfirmRequest(FotaUserComfirmReq fotaUserComfirmReq);

    void otaSubNodeRefreshNowRequest(long j10, String str, int i10, int i11);

    void otaSubNodeReq(OtaSubNodeInfo otaSubNodeInfo);

    void otaSubNodeStateReportAck(int i10);
}
