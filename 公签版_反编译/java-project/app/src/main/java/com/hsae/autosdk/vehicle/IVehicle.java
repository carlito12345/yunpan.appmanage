package com.hsae.autosdk.vehicle;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.hsae.autosdk.vehicle.IVehicleCallback;

/* loaded from: classes.dex */
public interface IVehicle extends IInterface {

    public static abstract class Stub extends Binder implements IVehicle {
        private static final String DESCRIPTOR = "com.hsae.autosdk.vehicle.IVehicle";
        static final int TRANSACTION_getDoorState = 8;
        static final int TRANSACTION_getGearId = 19;
        static final int TRANSACTION_getIgnState = 9;
        static final int TRANSACTION_getKeyLeaveCarState = 6;
        static final int TRANSACTION_getMeterSpeed = 20;
        static final int TRANSACTION_getOffScreenState = 16;
        static final int TRANSACTION_getParkState = 7;
        static final int TRANSACTION_getSaftBelt = 10;
        static final int TRANSACTION_getSpeed = 12;
        static final int TRANSACTION_getTpmsStatus = 11;
        static final int TRANSACTION_getTurnLight = 13;
        static final int TRANSACTION_getUpdateState = 18;
        static final int TRANSACTION_getVehicleType = 5;
        static final int TRANSACTION_isAccOn = 4;
        static final int TRANSACTION_isL42PAVMType = 14;
        static final int TRANSACTION_isSafetyLockEnabled = 3;
        static final int TRANSACTION_registerVehicleCallback = 1;
        static final int TRANSACTION_setOffScreenState = 15;
        static final int TRANSACTION_setUpdateState = 17;
        static final int TRANSACTION_unregisterVehicleCallback = 2;

        public static class Proxy implements IVehicle {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean[] getDoorState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createBooleanArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int getGearId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean getIgnState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
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

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean getKeyLeaveCarState() {
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

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public float getMeterSpeed() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean getOffScreenState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int getParkState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int[] getSaftBelt() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int getSpeed() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int[] getTpmsStatus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int getTurnLight() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean getUpdateState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public int getVehicleType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean isAccOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean isL42PAVMType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean isSafetyLockEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public boolean registerVehicleCallback(IVehicleCallback iVehicleCallback, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleCallback != null ? iVehicleCallback.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public void setOffScreenState(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public void setUpdateState(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicle
            public void unregisterVehicleCallback(IVehicleCallback iVehicleCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleCallback != null ? iVehicleCallback.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
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

        public static IVehicle asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVehicle)) ? new Proxy(iBinder) : (IVehicle) iInterfaceQueryLocalInterface;
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
                    boolean zRegisterVehicleCallback = registerVehicleCallback(IVehicleCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterVehicleCallback ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterVehicleCallback(IVehicleCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSafetyLockEnabled = isSafetyLockEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSafetyLockEnabled ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAccOn = isAccOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAccOn ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int vehicleType = getVehicleType();
                    parcel2.writeNoException();
                    parcel2.writeInt(vehicleType);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean keyLeaveCarState = getKeyLeaveCarState();
                    parcel2.writeNoException();
                    parcel2.writeInt(keyLeaveCarState ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int parkState = getParkState();
                    parcel2.writeNoException();
                    parcel2.writeInt(parkState);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean[] doorState = getDoorState();
                    parcel2.writeNoException();
                    parcel2.writeBooleanArray(doorState);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean ignState = getIgnState();
                    parcel2.writeNoException();
                    parcel2.writeInt(ignState ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] saftBelt = getSaftBelt();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(saftBelt);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] tpmsStatus = getTpmsStatus();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(tpmsStatus);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int speed = getSpeed();
                    parcel2.writeNoException();
                    parcel2.writeInt(speed);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int turnLight = getTurnLight();
                    parcel2.writeNoException();
                    parcel2.writeInt(turnLight);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsL42PAVMType = isL42PAVMType();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsL42PAVMType ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOffScreenState(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean offScreenState = getOffScreenState();
                    parcel2.writeNoException();
                    parcel2.writeInt(offScreenState ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUpdateState(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean updateState = getUpdateState();
                    parcel2.writeNoException();
                    parcel2.writeInt(updateState ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int gearId = getGearId();
                    parcel2.writeNoException();
                    parcel2.writeInt(gearId);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    float meterSpeed = getMeterSpeed();
                    parcel2.writeNoException();
                    parcel2.writeFloat(meterSpeed);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    boolean[] getDoorState();

    int getGearId();

    boolean getIgnState();

    boolean getKeyLeaveCarState();

    float getMeterSpeed();

    boolean getOffScreenState();

    int getParkState();

    int[] getSaftBelt();

    int getSpeed();

    int[] getTpmsStatus();

    int getTurnLight();

    boolean getUpdateState();

    int getVehicleType();

    boolean isAccOn();

    boolean isL42PAVMType();

    boolean isSafetyLockEnabled();

    boolean registerVehicleCallback(IVehicleCallback iVehicleCallback, String str, String str2);

    void setOffScreenState(boolean z);

    void setUpdateState(boolean z);

    void unregisterVehicleCallback(IVehicleCallback iVehicleCallback);
}
