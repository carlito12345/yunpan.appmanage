package com.hsae.autosdk.reverse;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.hsae.autosdk.reverse.IReverseCallback;
import com.hsae.autosdk.reverse.IReverseStateCallback;

/* loaded from: classes.dex */
public interface IReverse extends IInterface {

    public static abstract class Stub extends Binder implements IReverse {
        private static final String DESCRIPTOR = "com.hsae.autosdk.reverse.IReverse";
        static final int TRANSACTION_avmControlCmd = 31;
        static final int TRANSACTION_getCameraType = 2;
        static final int TRANSACTION_getCurrentVehicleType = 29;
        static final int TRANSACTION_getFrameType = 21;
        static final int TRANSACTION_getQuickReverseState = 30;
        static final int TRANSACTION_getReverseState = 20;
        static final int TRANSACTION_getSteeringWheelAngle = 27;
        static final int TRANSACTION_getSteeringWheelFlag = 28;
        static final int TRANSACTION_getVehicleType = 1;
        static final int TRANSACTION_notifyReverseStartSucess = 26;
        static final int TRANSACTION_registerReverseCallback = 22;
        static final int TRANSACTION_registerReverseStateCallback = 24;
        static final int TRANSACTION_reqAVMAnimationEnable = 18;
        static final int TRANSACTION_reqAVMReset = 19;
        static final int TRANSACTION_reqAVMReverseState = 5;
        static final int TRANSACTION_reqAVMStateInfo = 17;
        static final int TRANSACTION_reqAVMSwitchScreen = 8;
        static final int TRANSACTION_reqAVMSynchronizationData = 6;
        static final int TRANSACTION_reqAVMTouchInfo = 9;
        static final int TRANSACTION_reqAVMVersion = 7;
        static final int TRANSACTION_reqChangeAVMLaungage = 15;
        static final int TRANSACTION_reqChangeCarColor = 13;
        static final int TRANSACTION_reqCurrentAVMSettingValue = 14;
        static final int TRANSACTION_reqDisplayTrackLine = 16;
        static final int TRANSACTION_reqEnterAVMFrame = 10;
        static final int TRANSACTION_reqEnterAVMSettingFrame = 12;
        static final int TRANSACTION_reqExitAVMFrame = 11;
        static final int TRANSACTION_setReverseType = 4;
        static final int TRANSACTION_setVehicleType = 3;
        static final int TRANSACTION_unregisterReverseCallback = 23;
        static final int TRANSACTION_unregisterReverseStateCallback = 25;

        public static class Proxy implements IReverse {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void avmControlCmd(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    parcelObtain.writeByte(b12);
                    parcelObtain.writeByte(b13);
                    parcelObtain.writeByte(b14);
                    parcelObtain.writeByte(b15);
                    parcelObtain.writeByte(b16);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public int getCameraType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public int getCurrentVehicleType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public byte getFrameType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readByte();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public boolean getQuickReverseState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public boolean getReverseState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public int getSteeringWheelAngle() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public int getSteeringWheelFlag() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public int getVehicleType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void notifyReverseStartSucess(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void registerReverseCallback(IReverseCallback iReverseCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iReverseCallback != null ? iReverseCallback.asBinder() : null);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void registerReverseStateCallback(IReverseStateCallback iReverseStateCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iReverseStateCallback != null ? iReverseStateCallback.asBinder() : null);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMAnimationEnable(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMReset() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMReverseState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMStateInfo(byte b10, byte b11, byte b12, byte b13) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    parcelObtain.writeByte(b12);
                    parcelObtain.writeByte(b13);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMSwitchScreen(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMSynchronizationData(int i10, byte b10, byte b11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMTouchInfo(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqAVMVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqChangeAVMLaungage(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqChangeCarColor(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqCurrentAVMSettingValue() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqDisplayTrackLine(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqEnterAVMFrame(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqEnterAVMSettingFrame() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void reqExitAVMFrame() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void setReverseType(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void setVehicleType(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void unregisterReverseCallback(IReverseCallback iReverseCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iReverseCallback != null ? iReverseCallback.asBinder() : null);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverse
            public void unregisterReverseStateCallback(IReverseStateCallback iReverseStateCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iReverseStateCallback != null ? iReverseStateCallback.asBinder() : null);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
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

        public static IReverse asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IReverse)) ? new Proxy(iBinder) : (IReverse) iInterfaceQueryLocalInterface;
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
                    int vehicleType = getVehicleType();
                    parcel2.writeNoException();
                    parcel2.writeInt(vehicleType);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cameraType = getCameraType();
                    parcel2.writeNoException();
                    parcel2.writeInt(cameraType);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVehicleType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setReverseType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMReverseState();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMSynchronizationData(parcel.readInt(), parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMVersion();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMSwitchScreen(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMTouchInfo(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqEnterAVMFrame(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqExitAVMFrame();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqEnterAVMSettingFrame();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqChangeCarColor(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqCurrentAVMSettingValue();
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqChangeAVMLaungage(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqDisplayTrackLine(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMStateInfo(parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMAnimationEnable(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    reqAVMReset();
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean reverseState = getReverseState();
                    parcel2.writeNoException();
                    parcel2.writeInt(reverseState ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte frameType = getFrameType();
                    parcel2.writeNoException();
                    parcel2.writeByte(frameType);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerReverseCallback(IReverseCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterReverseCallback(IReverseCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerReverseStateCallback(IReverseStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterReverseStateCallback(IReverseStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyReverseStartSucess(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int steeringWheelAngle = getSteeringWheelAngle();
                    parcel2.writeNoException();
                    parcel2.writeInt(steeringWheelAngle);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int steeringWheelFlag = getSteeringWheelFlag();
                    parcel2.writeNoException();
                    parcel2.writeInt(steeringWheelFlag);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentVehicleType = getCurrentVehicleType();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentVehicleType);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean quickReverseState = getQuickReverseState();
                    parcel2.writeNoException();
                    parcel2.writeInt(quickReverseState ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    avmControlCmd(parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void avmControlCmd(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16);

    int getCameraType();

    int getCurrentVehicleType();

    byte getFrameType();

    boolean getQuickReverseState();

    boolean getReverseState();

    int getSteeringWheelAngle();

    int getSteeringWheelFlag();

    int getVehicleType();

    void notifyReverseStartSucess(boolean z);

    void registerReverseCallback(IReverseCallback iReverseCallback);

    void registerReverseStateCallback(IReverseStateCallback iReverseStateCallback);

    void reqAVMAnimationEnable(byte b10);

    void reqAVMReset();

    void reqAVMReverseState();

    void reqAVMStateInfo(byte b10, byte b11, byte b12, byte b13);

    void reqAVMSwitchScreen(byte b10);

    void reqAVMSynchronizationData(int i10, byte b10, byte b11);

    void reqAVMTouchInfo(int i10, int i11);

    void reqAVMVersion();

    void reqChangeAVMLaungage(byte b10);

    void reqChangeCarColor(byte b10);

    void reqCurrentAVMSettingValue();

    void reqDisplayTrackLine(byte b10);

    void reqEnterAVMFrame(byte b10);

    void reqEnterAVMSettingFrame();

    void reqExitAVMFrame();

    void setReverseType(int i10);

    void setVehicleType(int i10);

    void unregisterReverseCallback(IReverseCallback iReverseCallback);

    void unregisterReverseStateCallback(IReverseStateCallback iReverseStateCallback);
}
