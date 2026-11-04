package com.hsae.autosdk.vehicle;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IVehicleCallback extends IInterface {

    public static abstract class Stub extends Binder implements IVehicleCallback {
        private static final String DESCRIPTOR = "com.hsae.autosdk.vehicle.IVehicleCallback";
        static final int TRANSACTION_keyLeaveCarRemind = 31;
        static final int TRANSACTION_onABSFaultResponse = 5;
        static final int TRANSACTION_onAccStateResponse = 32;
        static final int TRANSACTION_onAverageFuelConsumptionResponse = 11;
        static final int TRANSACTION_onBatteryPowerResponse = 22;
        static final int TRANSACTION_onBrakeForceResponse = 14;
        static final int TRANSACTION_onDetectedEngineResponse = 2;
        static final int TRANSACTION_onDoorResponse = 29;
        static final int TRANSACTION_onEPSDetectionResponse = 4;
        static final int TRANSACTION_onEQPinData = 26;
        static final int TRANSACTION_onEngineRotatingSpeedResponse = 12;
        static final int TRANSACTION_onHydraulicOilDetectedResponse = 1;
        static final int TRANSACTION_onILLContStatusResponse = 19;
        static final int TRANSACTION_onIgnResponse = 27;
        static final int TRANSACTION_onIllStateResponse = 18;
        static final int TRANSACTION_onLaneWarningSensorInfoResponse = 6;
        static final int TRANSACTION_onMROutPutStatusResponse = 20;
        static final int TRANSACTION_onMeterSpeedChanged = 34;
        static final int TRANSACTION_onOffScreenStateChanged = 33;
        static final int TRANSACTION_onParkingResponse = 30;
        static final int TRANSACTION_onRemainingOil = 10;
        static final int TRANSACTION_onSafetyBeltResponse = 25;
        static final int TRANSACTION_onSteeringWheelAngleResponse = 9;
        static final int TRANSACTION_onStreeringWheelReationSpeed = 28;
        static final int TRANSACTION_onThrottleEffortsResponse = 13;
        static final int TRANSACTION_onTotalMileageResponse = 16;
        static final int TRANSACTION_onTpmsInfoResponse = 24;
        static final int TRANSACTION_onTurnSignalsInfoResponse = 17;
        static final int TRANSACTION_onVDCDetectionResponse = 3;
        static final int TRANSACTION_onVehicleGearInfoResponse = 7;
        static final int TRANSACTION_onVehicleMileageInfoResponse = 15;
        static final int TRANSACTION_onVehicleSpeedInfoResponse = 23;
        static final int TRANSACTION_onVehicleSpeedPulseInfoResponse = 8;
        static final int TRANSACTION_onWiperStateResponse = 21;

        public static class Proxy implements IVehicleCallback {
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

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void keyLeaveCarRemind(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(31, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onABSFaultResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onAccStateResponse(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(32, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onAverageFuelConsumptionResponse(float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onBatteryPowerResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(22, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onBrakeForceResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onDetectedEngineResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onDoorResponse(boolean z, boolean z4, boolean z10, boolean z11, boolean z12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeInt(z11 ? 1 : 0);
                    parcelObtain.writeInt(z12 ? 1 : 0);
                    this.mRemote.transact(29, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onEPSDetectionResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onEQPinData(byte b10, byte b11, byte b12, byte b13) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    parcelObtain.writeByte(b12);
                    parcelObtain.writeByte(b13);
                    this.mRemote.transact(26, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onEngineRotatingSpeedResponse(float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onHydraulicOilDetectedResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onILLContStatusResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(19, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onIgnResponse(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(27, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onIllStateResponse(boolean z, boolean z4, boolean z10, boolean z11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeInt(z11 ? 1 : 0);
                    this.mRemote.transact(18, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onLaneWarningSensorInfoResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onMROutPutStatusResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(20, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onMeterSpeedChanged(float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    this.mRemote.transact(34, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onOffScreenStateChanged(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(33, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onParkingResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(30, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onRemainingOil(int i10, int i11, int i12, int i13) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onSafetyBeltResponse(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(25, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onSteeringWheelAngleResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onStreeringWheelReationSpeed(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(28, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onThrottleEffortsResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onTotalMileageResponse(long j10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j10);
                    this.mRemote.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onTpmsInfoResponse(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    this.mRemote.transact(24, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onTurnSignalsInfoResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(17, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onVDCDetectionResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onVehicleGearInfoResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onVehicleMileageInfoResponse(float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onVehicleSpeedInfoResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(23, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onVehicleSpeedPulseInfoResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.vehicle.IVehicleCallback
            public void onWiperStateResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(21, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVehicleCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVehicleCallback)) ? new Proxy(iBinder) : (IVehicleCallback) iInterfaceQueryLocalInterface;
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
                    onHydraulicOilDetectedResponse(parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDetectedEngineResponse(parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVDCDetectionResponse(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEPSDetectionResponse(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onABSFaultResponse(parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onLaneWarningSensorInfoResponse(parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVehicleGearInfoResponse(parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVehicleSpeedPulseInfoResponse(parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSteeringWheelAngleResponse(parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRemainingOil(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAverageFuelConsumptionResponse(parcel.readFloat());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEngineRotatingSpeedResponse(parcel.readFloat());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onThrottleEffortsResponse(parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBrakeForceResponse(parcel.readInt());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVehicleMileageInfoResponse(parcel.readFloat());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTotalMileageResponse(parcel.readLong());
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTurnSignalsInfoResponse(parcel.readInt());
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    onIllStateResponse(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    onILLContStatusResponse(parcel.readInt());
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMROutPutStatusResponse(parcel.readInt());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    onWiperStateResponse(parcel.readInt());
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBatteryPowerResponse(parcel.readInt());
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVehicleSpeedInfoResponse(parcel.readInt());
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTpmsInfoResponse(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSafetyBeltResponse(parcel.readInt(), parcel.readInt());
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEQPinData(parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte());
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    onIgnResponse(parcel.readInt() != 0);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStreeringWheelReationSpeed(parcel.readInt(), parcel.readInt());
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDoorResponse(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    onParkingResponse(parcel.readInt());
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    keyLeaveCarRemind(parcel.readInt() != 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAccStateResponse(parcel.readInt() != 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    onOffScreenStateChanged(parcel.readInt() != 0);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMeterSpeedChanged(parcel.readFloat());
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void keyLeaveCarRemind(boolean z);

    void onABSFaultResponse(int i10);

    void onAccStateResponse(boolean z);

    void onAverageFuelConsumptionResponse(float f10);

    void onBatteryPowerResponse(int i10);

    void onBrakeForceResponse(int i10);

    void onDetectedEngineResponse(int i10);

    void onDoorResponse(boolean z, boolean z4, boolean z10, boolean z11, boolean z12);

    void onEPSDetectionResponse(int i10);

    void onEQPinData(byte b10, byte b11, byte b12, byte b13);

    void onEngineRotatingSpeedResponse(float f10);

    void onHydraulicOilDetectedResponse(int i10);

    void onILLContStatusResponse(int i10);

    void onIgnResponse(boolean z);

    void onIllStateResponse(boolean z, boolean z4, boolean z10, boolean z11);

    void onLaneWarningSensorInfoResponse(int i10);

    void onMROutPutStatusResponse(int i10);

    void onMeterSpeedChanged(float f10);

    void onOffScreenStateChanged(boolean z);

    void onParkingResponse(int i10);

    void onRemainingOil(int i10, int i11, int i12, int i13);

    void onSafetyBeltResponse(int i10, int i11);

    void onSteeringWheelAngleResponse(int i10);

    void onStreeringWheelReationSpeed(int i10, int i11);

    void onThrottleEffortsResponse(int i10);

    void onTotalMileageResponse(long j10);

    void onTpmsInfoResponse(int i10, int i11, int i12);

    void onTurnSignalsInfoResponse(int i10);

    void onVDCDetectionResponse(int i10);

    void onVehicleGearInfoResponse(int i10);

    void onVehicleMileageInfoResponse(float f10);

    void onVehicleSpeedInfoResponse(int i10);

    void onVehicleSpeedPulseInfoResponse(int i10);

    void onWiperStateResponse(int i10);
}
