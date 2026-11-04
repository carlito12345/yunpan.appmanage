package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ITBoxRemoteListner extends IInterface {

    public static class Default implements ITBoxRemoteListner {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxRemoteListner
        public void lightShowCtrlReq(int i10) {
        }

        @Override // com.autolink.adapterinterface.ITBoxRemoteListner
        public void onChargeReserveSetResp(boolean z) {
        }

        @Override // com.autolink.adapterinterface.ITBoxRemoteListner
        public void onInquireChargeReserveResp(InquireCharge inquireCharge) {
        }

        @Override // com.autolink.adapterinterface.ITBoxRemoteListner
        public void onPhoneChargeReserveStatuReport(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.ITBoxRemoteListner
        public void onPhoneChargeReserveSyncReq(ChargeReserveSync chargeReserveSync) {
        }

        @Override // com.autolink.adapterinterface.ITBoxRemoteListner
        public void onRemoteHuAwkReq(byte[] bArr) {
        }
    }

    public static abstract class Stub extends Binder implements ITBoxRemoteListner {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.ITBoxRemoteListner";
        static final int TRANSACTION_lightShowCtrlReq = 6;
        static final int TRANSACTION_onChargeReserveSetResp = 2;
        static final int TRANSACTION_onInquireChargeReserveResp = 5;
        static final int TRANSACTION_onPhoneChargeReserveStatuReport = 4;
        static final int TRANSACTION_onPhoneChargeReserveSyncReq = 3;
        static final int TRANSACTION_onRemoteHuAwkReq = 1;

        public static class Proxy implements ITBoxRemoteListner {
            public static ITBoxRemoteListner sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.ITBoxRemoteListner
            public void lightShowCtrlReq(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().lightShowCtrlReq(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxRemoteListner
            public void onChargeReserveSetResp(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onChargeReserveSetResp(z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxRemoteListner
            public void onInquireChargeReserveResp(InquireCharge inquireCharge) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inquireCharge != null) {
                        parcelObtain.writeInt(1);
                        inquireCharge.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onInquireChargeReserveResp(inquireCharge);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxRemoteListner
            public void onPhoneChargeReserveStatuReport(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPhoneChargeReserveStatuReport(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxRemoteListner
            public void onPhoneChargeReserveSyncReq(ChargeReserveSync chargeReserveSync) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (chargeReserveSync != null) {
                        parcelObtain.writeInt(1);
                        chargeReserveSync.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPhoneChargeReserveSyncReq(chargeReserveSync);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxRemoteListner
            public void onRemoteHuAwkReq(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRemoteHuAwkReq(bArr);
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

        public static ITBoxRemoteListner asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITBoxRemoteListner)) ? new Proxy(iBinder) : (ITBoxRemoteListner) iInterfaceQueryLocalInterface;
        }

        public static ITBoxRemoteListner getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITBoxRemoteListner iTBoxRemoteListner) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTBoxRemoteListner == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTBoxRemoteListner;
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
                    onRemoteHuAwkReq(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onChargeReserveSetResp(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPhoneChargeReserveSyncReq(parcel.readInt() != 0 ? ChargeReserveSync.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPhoneChargeReserveStatuReport(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onInquireChargeReserveResp(parcel.readInt() != 0 ? InquireCharge.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    lightShowCtrlReq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void lightShowCtrlReq(int i10);

    void onChargeReserveSetResp(boolean z);

    void onInquireChargeReserveResp(InquireCharge inquireCharge);

    void onPhoneChargeReserveStatuReport(int i10, int i11);

    void onPhoneChargeReserveSyncReq(ChargeReserveSync chargeReserveSync);

    void onRemoteHuAwkReq(byte[] bArr);
}
