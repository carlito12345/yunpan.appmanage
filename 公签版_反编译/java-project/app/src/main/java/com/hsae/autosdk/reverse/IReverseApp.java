package com.hsae.autosdk.reverse;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.hsae.autosdk.reverse.IReverseAppStatusListener;

/* loaded from: classes.dex */
public interface IReverseApp extends IInterface {

    public static abstract class Stub extends Binder implements IReverseApp {
        private static final String DESCRIPTOR = "com.hsae.autosdk.reverse.IReverseApp";
        static final int TRANSACTION_changeModStatus = 4;
        static final int TRANSACTION_getCurrentModStatus = 5;
        static final int TRANSACTION_isCurrentModButtonEnable = 6;
        static final int TRANSACTION_registerReverseAppStatusListener = 7;
        static final int TRANSACTION_sendCameraOFFKey = 3;
        static final int TRANSACTION_sendLongAVMKeyPressed = 2;
        static final int TRANSACTION_sendNormalAVMKeyPressed = 1;
        static final int TRANSACTION_unRegisterReverseAppStatusListener = 8;

        public static class Proxy implements IReverseApp {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public void changeModStatus() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public boolean getCurrentModStatus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public boolean isCurrentModButtonEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public void registerReverseAppStatusListener(IReverseAppStatusListener iReverseAppStatusListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iReverseAppStatusListener != null ? iReverseAppStatusListener.asBinder() : null);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public void sendCameraOFFKey() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public void sendLongAVMKeyPressed() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public void sendNormalAVMKeyPressed() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseApp
            public void unRegisterReverseAppStatusListener(IReverseAppStatusListener iReverseAppStatusListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iReverseAppStatusListener != null ? iReverseAppStatusListener.asBinder() : null);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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

        public static IReverseApp asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IReverseApp)) ? new Proxy(iBinder) : (IReverseApp) iInterfaceQueryLocalInterface;
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
                    sendNormalAVMKeyPressed();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendLongAVMKeyPressed();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendCameraOFFKey();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    changeModStatus();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean currentModStatus = getCurrentModStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentModStatus ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCurrentModButtonEnable = isCurrentModButtonEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCurrentModButtonEnable ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerReverseAppStatusListener(IReverseAppStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterReverseAppStatusListener(IReverseAppStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void changeModStatus();

    boolean getCurrentModStatus();

    boolean isCurrentModButtonEnable();

    void registerReverseAppStatusListener(IReverseAppStatusListener iReverseAppStatusListener);

    void sendCameraOFFKey();

    void sendLongAVMKeyPressed();

    void sendNormalAVMKeyPressed();

    void unRegisterReverseAppStatusListener(IReverseAppStatusListener iReverseAppStatusListener);
}
