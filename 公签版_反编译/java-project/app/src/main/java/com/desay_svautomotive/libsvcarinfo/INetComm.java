package com.desay_svautomotive.libsvcarinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.desay_svautomotive.libsvcarinfo.ICarLanCallBack;
import com.desay_svautomotive.libsvcarinfo.INetCommCallBack;

/* loaded from: classes.dex */
public interface INetComm extends IInterface {

    public static abstract class Stub extends Binder implements INetComm {
        private static final String DESCRIPTOR = "com.desay_svautomotive.libsvcarinfo.INetComm";
        static final int TRANSACTION_getCarLanMsg = 9;
        static final int TRANSACTION_getNetMsg = 3;
        static final int TRANSACTION_getNetMsgConnectStatus = 5;
        static final int TRANSACTION_regCallBack = 1;
        static final int TRANSACTION_regCarLanMsgCallBack = 7;
        static final int TRANSACTION_sendCarLanMsg = 6;
        static final int TRANSACTION_sendNetMsg = 4;
        static final int TRANSACTION_unRegCallBack = 2;
        static final int TRANSACTION_unRegCarLanMsgCallBack = 8;

        public static class Proxy implements INetComm {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public String getCarLanMsg(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public byte[] getNetMsg(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public boolean getNetMsgConnectStatus(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public void regCallBack(INetCommCallBack iNetCommCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNetCommCallBack != null ? iNetCommCallBack.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public void regCarLanMsgCallBack(ICarLanCallBack iCarLanCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLanCallBack != null ? iCarLanCallBack.asBinder() : null);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public void sendCarLanMsg(int i10, int i11, String str, String str2, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public void sendNetMsg(int i10, byte[] bArr, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public void unRegCallBack(INetCommCallBack iNetCommCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNetCommCallBack != null ? iNetCommCallBack.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.INetComm
            public void unRegCarLanMsgCallBack(ICarLanCallBack iCarLanCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLanCallBack != null ? iCarLanCallBack.asBinder() : null);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INetComm asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INetComm)) ? new Proxy(iBinder) : (INetComm) iInterfaceQueryLocalInterface;
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
                    regCallBack(INetCommCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegCallBack(INetCommCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] netMsg = getNetMsg(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(netMsg);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendNetMsg(parcel.readInt(), parcel.createByteArray(), parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean netMsgConnectStatus = getNetMsgConnectStatus(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(netMsgConnectStatus ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendCarLanMsg(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createByteArray());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    regCarLanMsgCallBack(ICarLanCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegCarLanMsgCallBack(ICarLanCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    String carLanMsg = getCarLanMsg(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(carLanMsg);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    String getCarLanMsg(int i10, int i11);

    byte[] getNetMsg(int i10);

    boolean getNetMsgConnectStatus(int i10);

    void regCallBack(INetCommCallBack iNetCommCallBack);

    void regCarLanMsgCallBack(ICarLanCallBack iCarLanCallBack);

    void sendCarLanMsg(int i10, int i11, String str, String str2, byte[] bArr);

    void sendNetMsg(int i10, byte[] bArr, int i11);

    void unRegCallBack(INetCommCallBack iNetCommCallBack);

    void unRegCarLanMsgCallBack(ICarLanCallBack iCarLanCallBack);
}
