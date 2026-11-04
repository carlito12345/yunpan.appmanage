.class public abstract Lpa/f;
.super Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final keyLeaveCarRemind(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onABSFaultResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAverageFuelConsumptionResponse(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBatteryPowerResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBrakeForceResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDetectedEngineResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDoorResponse(ZZZZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onEPSDetectionResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onEQPinData(BBBB)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onEngineRotatingSpeedResponse(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onHydraulicOilDetectedResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onIllStateResponse(ZZZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLaneWarningSensorInfoResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMROutPutStatusResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMeterSpeedChanged(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOffScreenStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onParkingResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRemainingOil(IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSafetyBeltResponse(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSteeringWheelAngleResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStreeringWheelReationSpeed(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onThrottleEffortsResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTotalMileageResponse(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTpmsInfoResponse(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTurnSignalsInfoResponse(I)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "\u5173\u95ed"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "\u5de6\u8f6c"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    const-string v2, "\u53f3\u8f6c"

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    aput-object v2, v1, v3

    .line 18
    .line 19
    const-string v2, "\u53cc\u95ea"

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    if-ge p1, v0, :cond_0

    .line 27
    .line 28
    aget-object p1, v1, p1

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onVDCDetectionResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVehicleMileageInfoResponse(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVehicleSpeedPulseInfoResponse(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWiperStateResponse(I)V
    .locals 0

    .line 1
    return-void
.end method
