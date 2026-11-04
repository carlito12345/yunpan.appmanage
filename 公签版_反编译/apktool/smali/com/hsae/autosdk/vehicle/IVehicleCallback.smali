.class public interface abstract Lcom/hsae/autosdk/vehicle/IVehicleCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract keyLeaveCarRemind(Z)V
.end method

.method public abstract onABSFaultResponse(I)V
.end method

.method public abstract onAccStateResponse(Z)V
.end method

.method public abstract onAverageFuelConsumptionResponse(F)V
.end method

.method public abstract onBatteryPowerResponse(I)V
.end method

.method public abstract onBrakeForceResponse(I)V
.end method

.method public abstract onDetectedEngineResponse(I)V
.end method

.method public abstract onDoorResponse(ZZZZZ)V
.end method

.method public abstract onEPSDetectionResponse(I)V
.end method

.method public abstract onEQPinData(BBBB)V
.end method

.method public abstract onEngineRotatingSpeedResponse(F)V
.end method

.method public abstract onHydraulicOilDetectedResponse(I)V
.end method

.method public abstract onILLContStatusResponse(I)V
.end method

.method public abstract onIgnResponse(Z)V
.end method

.method public abstract onIllStateResponse(ZZZZ)V
.end method

.method public abstract onLaneWarningSensorInfoResponse(I)V
.end method

.method public abstract onMROutPutStatusResponse(I)V
.end method

.method public abstract onMeterSpeedChanged(F)V
.end method

.method public abstract onOffScreenStateChanged(Z)V
.end method

.method public abstract onParkingResponse(I)V
.end method

.method public abstract onRemainingOil(IIII)V
.end method

.method public abstract onSafetyBeltResponse(II)V
.end method

.method public abstract onSteeringWheelAngleResponse(I)V
.end method

.method public abstract onStreeringWheelReationSpeed(II)V
.end method

.method public abstract onThrottleEffortsResponse(I)V
.end method

.method public abstract onTotalMileageResponse(J)V
.end method

.method public abstract onTpmsInfoResponse(III)V
.end method

.method public abstract onTurnSignalsInfoResponse(I)V
.end method

.method public abstract onVDCDetectionResponse(I)V
.end method

.method public abstract onVehicleGearInfoResponse(I)V
.end method

.method public abstract onVehicleMileageInfoResponse(F)V
.end method

.method public abstract onVehicleSpeedInfoResponse(I)V
.end method

.method public abstract onVehicleSpeedPulseInfoResponse(I)V
.end method

.method public abstract onWiperStateResponse(I)V
.end method
