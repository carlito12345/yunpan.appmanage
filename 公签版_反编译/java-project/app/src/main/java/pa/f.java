package pa;

import com.hsae.autosdk.vehicle.IVehicleCallback;

/* loaded from: classes.dex */
public abstract class f extends IVehicleCallback.Stub {
    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onTurnSignalsInfoResponse(int i10) {
        String[] strArr = {"关闭", "左转", "右转", "双闪"};
        if (i10 < 0 || i10 >= 4) {
            return;
        }
        String str = strArr[i10];
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void keyLeaveCarRemind(boolean z) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onABSFaultResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onAverageFuelConsumptionResponse(float f10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onBatteryPowerResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onBrakeForceResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onDetectedEngineResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onEPSDetectionResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onEngineRotatingSpeedResponse(float f10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onHydraulicOilDetectedResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onLaneWarningSensorInfoResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onMROutPutStatusResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onMeterSpeedChanged(float f10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onOffScreenStateChanged(boolean z) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onParkingResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onSteeringWheelAngleResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onThrottleEffortsResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onTotalMileageResponse(long j10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVDCDetectionResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleMileageInfoResponse(float f10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleSpeedPulseInfoResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onWiperStateResponse(int i10) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onSafetyBeltResponse(int i10, int i11) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onStreeringWheelReationSpeed(int i10, int i11) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onTpmsInfoResponse(int i10, int i11, int i12) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onEQPinData(byte b10, byte b11, byte b12, byte b13) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onIllStateResponse(boolean z, boolean z4, boolean z10, boolean z11) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onRemainingOil(int i10, int i11, int i12, int i13) {
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onDoorResponse(boolean z, boolean z4, boolean z10, boolean z11, boolean z12) {
    }
}
