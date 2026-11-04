.class public abstract Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autolink.adapterinterface.clusterinteraction.IClusterInteraction"

.field static final TRANSACTION_appBootCompleted:I = 0x40

.field static final TRANSACTION_bootAnimationCompleted:I = 0x35

.field static final TRANSACTION_chimeTest:I = 0x2e

.field static final TRANSACTION_deleteFaceIdReq:I = 0x29

.field static final TRANSACTION_driverMonitorReq:I = 0x2b

.field static final TRANSACTION_getAFCPHKMValue:I = 0x92

.field static final TRANSACTION_getAFCValue:I = 0x8f

.field static final TRANSACTION_getAdsL1ChimeStatusInfo:I = 0x100

.field static final TRANSACTION_getAvgEnergyCns:I = 0xe1

.field static final TRANSACTION_getAvgSpd:I = 0x98

.field static final TRANSACTION_getAvmStatus:I = 0x6a

.field static final TRANSACTION_getBatteryAvailableUnit:I = 0xe5

.field static final TRANSACTION_getCCODisplayStatus:I = 0x3c

.field static final TRANSACTION_getChargingInfo:I = 0x81

.field static final TRANSACTION_getCltcOrWltcMode:I = 0x63

.field static final TRANSACTION_getClusterFont:I = 0xd8

.field static final TRANSACTION_getClusterTheme:I = 0xce

.field static final TRANSACTION_getCurrentSpeed:I = 0x66

.field static final TRANSACTION_getDmsCameraStatus:I = 0x68

.field static final TRANSACTION_getDmsStatus:I = 0xfd

.field static final TRANSACTION_getDriveMode:I = 0x3a

.field static final TRANSACTION_getDriveTime:I = 0x95

.field static final TRANSACTION_getDrivingData:I = 0xfb

.field static final TRANSACTION_getDteAFCValue:I = 0xc3

.field static final TRANSACTION_getDteCalculateValue:I = 0xc0

.field static final TRANSACTION_getDteValue:I = 0x39

.field static final TRANSACTION_getEnergyCurveProjectionStatus:I = 0x84

.field static final TRANSACTION_getFatigueDriveTime:I = 0xd1

.field static final TRANSACTION_getFrontTorqueLockStatus:I = 0x6b

.field static final TRANSACTION_getFuelAddEvent:I = 0xcc

.field static final TRANSACTION_getFuelConsumptionUnit:I = 0xf4

.field static final TRANSACTION_getFuelTankType:I = 0xc6

.field static final TRANSACTION_getFuelVolumeDisplay:I = 0xba

.field static final TRANSACTION_getFuelVolumeSample:I = 0xbd

.field static final TRANSACTION_getGaugeFuelPercent:I = 0x38

.field static final TRANSACTION_getHEVOdoValue:I = 0xf0

.field static final TRANSACTION_getIFEValue:I = 0x9b

.field static final TRANSACTION_getLFTyreTemperature:I = 0x4d

.field static final TRANSACTION_getLRTyreTemperature:I = 0x4f

.field static final TRANSACTION_getMainTankResistance:I = 0x9e

.field static final TRANSACTION_getMotorDrivePowerUnit:I = 0xe9

.field static final TRANSACTION_getMotorDteValue:I = 0x23

.field static final TRANSACTION_getNaviProjectionStatus:I = 0x41

.field static final TRANSACTION_getOdoValue:I = 0xef

.field static final TRANSACTION_getOverFillState:I = 0xc9

.field static final TRANSACTION_getPayloadMaintanceDistance:I = 0xb6

.field static final TRANSACTION_getRFTyreTemperature:I = 0x4e

.field static final TRANSACTION_getRRTyreTemperature:I = 0x50

.field static final TRANSACTION_getRearSeatWarnningSwitch:I = 0xec

.field static final TRANSACTION_getRearTorqueLockStatus:I = 0x6c

.field static final TRANSACTION_getSeatMemorySwitch:I = 0xf8

.field static final TRANSACTION_getSpeedUnit:I = 0xb0

.field static final TRANSACTION_getSubTankResistance:I = 0xa1

.field static final TRANSACTION_getTemperatureUnit:I = 0xb1

.field static final TRANSACTION_getTimeFormat:I = 0xa8

.field static final TRANSACTION_getTripAValue:I = 0xde

.field static final TRANSACTION_getTyrePressureUnit:I = 0xaf

.field static final TRANSACTION_getVehicleFaultInfo:I = 0x74

.field static final TRANSACTION_getWarningSpeed:I = 0xd2

.field static final TRANSACTION_getWarningVolumeLevel:I = 0xd3

.field static final TRANSACTION_getXModeDisplayStatus:I = 0x3b

.field static final TRANSACTION_healthLoginReq:I = 0x2d

.field static final TRANSACTION_healthMonitorReq:I = 0x2a

.field static final TRANSACTION_loginFaceIdReq:I = 0x28

.field static final TRANSACTION_notifyAVMWindowsStatus:I = 0xab

.field static final TRANSACTION_notifyBacklightAutoAdjustToCluster:I = 0x78

.field static final TRANSACTION_notifyClusterLanguageSetting:I = 0xa2

.field static final TRANSACTION_notifyClusterWallpaperChanged:I = 0xdb

.field static final TRANSACTION_notifyFactoryReset:I = 0x76

.field static final TRANSACTION_notifyNaviTrafficInfo:I = 0xea

.field static final TRANSACTION_notifyTbtNaviTrafficInfo:I = 0xf1

.field static final TRANSACTION_omsMonitoringReq:I = 0x2c

.field static final TRANSACTION_registerAFCCallback:I = 0x8d

.field static final TRANSACTION_registerAFCPHKMCallback:I = 0x90

.field static final TRANSACTION_registerAdsL1ChimeStatusCallback:I = 0xfe

.field static final TRANSACTION_registerApaStatusCallback:I = 0x15

.field static final TRANSACTION_registerAvgElecCallback:I = 0x85

.field static final TRANSACTION_registerAvgElecCnsCallback:I = 0x8b

.field static final TRANSACTION_registerAvgEnergyCnsCallback:I = 0xdf

.field static final TRANSACTION_registerAvgFuCallback:I = 0x87

.field static final TRANSACTION_registerAvgFuCnsCallback:I = 0x89

.field static final TRANSACTION_registerAvgSpdCallback:I = 0x96

.field static final TRANSACTION_registerAvmCameraStatusCallback:I = 0x5f

.field static final TRANSACTION_registerAvmLogDataCallback:I = 0x59

.field static final TRANSACTION_registerAvmStatusCallback:I = 0x13

.field static final TRANSACTION_registerBatteryAvailableUnitCallback:I = 0xe2

.field static final TRANSACTION_registerBootMusicPlayStatusCallback:I = 0x5b

.field static final TRANSACTION_registerCCODisplayStatusCallback:I = 0x11

.field static final TRANSACTION_registerChargeViewStatus:I = 0x6d

.field static final TRANSACTION_registerChargingCurrentCallback:I = 0x7b

.field static final TRANSACTION_registerChargingInfoCallback:I = 0x7f

.field static final TRANSACTION_registerChargingPowerCallback:I = 0x79

.field static final TRANSACTION_registerChargingVoltageCallback:I = 0x7d

.field static final TRANSACTION_registerCltcOrWltcCallback:I = 0x61

.field static final TRANSACTION_registerClusterFontCallback:I = 0xd9

.field static final TRANSACTION_registerClusterSwitchThemeCompleteCallback:I = 0xd5

.field static final TRANSACTION_registerClusterThemeCallback:I = 0xcf

.field static final TRANSACTION_registerDiagDtcCallback:I = 0x1f

.field static final TRANSACTION_registerDmsCallback:I = 0x1

.field static final TRANSACTION_registerDoorOpenCallback:I = 0xa5

.field static final TRANSACTION_registerDriveTimeCallback:I = 0x93

.field static final TRANSACTION_registerDriverModeCallback:I = 0x5

.field static final TRANSACTION_registerDrivingDataCallback:I = 0xf9

.field static final TRANSACTION_registerDteAFCValueCallback:I = 0xc1

.field static final TRANSACTION_registerDteCalculateValueCallback:I = 0xbe

.field static final TRANSACTION_registerDteValueCallbackCallback:I = 0x9

.field static final TRANSACTION_registerEnergyCurveProjectionCallback:I = 0x82

.field static final TRANSACTION_registerFaceIdReq:I = 0x27

.field static final TRANSACTION_registerFuelAddEventCallback:I = 0xca

.field static final TRANSACTION_registerFuelConsumptionUnitCallback:I = 0xf2

.field static final TRANSACTION_registerFuelTankTypeCallback:I = 0xc4

.field static final TRANSACTION_registerFuelVolumeDisplayCallback:I = 0xb8

.field static final TRANSACTION_registerFuelVolumeSampleCallback:I = 0xbb

.field static final TRANSACTION_registerGaugeSpeedCallback:I = 0x57

.field static final TRANSACTION_registerIFECallback:I = 0x99

.field static final TRANSACTION_registerKeytoneCallback:I = 0x53

.field static final TRANSACTION_registerLeftSideWarningCallback:I = 0x55

.field static final TRANSACTION_registerMainTankResistanceCallback:I = 0x9c

.field static final TRANSACTION_registerMotorDrivePowerUnitCallback:I = 0xe6

.field static final TRANSACTION_registerMotorDteValueCallback:I = 0x21

.field static final TRANSACTION_registerNaviInfoStatusCallback:I = 0xd

.field static final TRANSACTION_registerNaviProjectionStatusCallback:I = 0x5d

.field static final TRANSACTION_registerOmsCallback:I = 0x3

.field static final TRANSACTION_registerOverFillStateCallback:I = 0xc7

.field static final TRANSACTION_registerPayloadMaintanceDistanceCallback:I = 0xb4

.field static final TRANSACTION_registerPayloadODOValueCallback:I = 0xed

.field static final TRANSACTION_registerPayloadTripAValueCallback:I = 0xdc

.field static final TRANSACTION_registerRadarWarningStatusCallback:I = 0x1b

.field static final TRANSACTION_registerRearviewMirrorStatusCallback:I = 0x19

.field static final TRANSACTION_registerSeatMemorySwitchCallback:I = 0xf5

.field static final TRANSACTION_registerSteeringAngleCallback:I = 0x1d

.field static final TRANSACTION_registerStrStatusCallback:I = 0x17

.field static final TRANSACTION_registerSubTankResistanceCallback:I = 0x9f

.field static final TRANSACTION_registerTemperatureHighCallback:I = 0xb

.field static final TRANSACTION_registerTimeFormatChangedCallback:I = 0xa9

.field static final TRANSACTION_registerTorqueLockStatusCallback:I = 0x7

.field static final TRANSACTION_registerTyreTemperatureCallback:I = 0x51

.field static final TRANSACTION_registerVehicleFaultInfoChange:I = 0x70

.field static final TRANSACTION_registerXModeDisplayStatusCallback:I = 0xf

.field static final TRANSACTION_requestAvmStatus:I = 0x69

.field static final TRANSACTION_requestFactoryReset:I = 0x75

.field static final TRANSACTION_resetMaintenanceMileage:I = 0xb3

.field static final TRANSACTION_resetTripBAllData:I = 0xfc

.field static final TRANSACTION_sendPitchAngleToCluster:I = 0x48

.field static final TRANSACTION_sendPitchAngleToMcu:I = 0x47

.field static final TRANSACTION_setActivationLicense:I = 0x36

.field static final TRANSACTION_setAirPressure:I = 0xa3

.field static final TRANSACTION_setAltitude:I = 0xa4

.field static final TRANSACTION_setApaViewStatus:I = 0x42

.field static final TRANSACTION_setAvmViewStatus:I = 0x43

.field static final TRANSACTION_setBatteryAvailableUnit:I = 0xe4

.field static final TRANSACTION_setCCOFanStatus:I = 0x37

.field static final TRANSACTION_setCarModelColor:I = 0xb2

.field static final TRANSACTION_setCarPlateNumber:I = 0x46

.field static final TRANSACTION_setCltcOrWltcMode:I = 0x64

.field static final TRANSACTION_setClusterFont:I = 0xd7

.field static final TRANSACTION_setDayNightMode:I = 0x4a

.field static final TRANSACTION_setDmsDriverActionLevel:I = 0x3d

.field static final TRANSACTION_setDmsDriverDistractionLevel:I = 0x3e

.field static final TRANSACTION_setDmsDriverDrowsinessLevel:I = 0x3f

.field static final TRANSACTION_setDmsUserSwitch:I = 0x26

.field static final TRANSACTION_setDriveMode:I = 0x67

.field static final TRANSACTION_setFatigueDriveTime:I = 0x72

.field static final TRANSACTION_setLaneAssistSetting:I = 0x65

.field static final TRANSACTION_setMotorDrivePowerUnit:I = 0xe8

.field static final TRANSACTION_setNaviCmd:I = 0x24

.field static final TRANSACTION_setNaviInfoStatus:I = 0x25

.field static final TRANSACTION_setNaviStartupStatus:I = 0x4b

.field static final TRANSACTION_setRearSeatWarnningSwitch:I = 0xeb

.field static final TRANSACTION_setScheduleChargingTime:I = 0x6f

.field static final TRANSACTION_setSeatMemorySwitch:I = 0xf7

.field static final TRANSACTION_setSpeedUnit:I = 0xad

.field static final TRANSACTION_setStrReadStatus:I = 0x44

.field static final TRANSACTION_setStrWriteStatus:I = 0x45

.field static final TRANSACTION_setSunTime:I = 0x4c

.field static final TRANSACTION_setTemperatureUnit:I = 0xae

.field static final TRANSACTION_setThemeMode:I = 0xb7

.field static final TRANSACTION_setThemeToCluster:I = 0xcd

.field static final TRANSACTION_setTotalMileage:I = 0x49

.field static final TRANSACTION_setTyrePressureUnit:I = 0xac

.field static final TRANSACTION_setWarningSpeed:I = 0x73

.field static final TRANSACTION_setWarningVolumeLevel:I = 0x77

.field static final TRANSACTION_setXModeStatus:I = 0xa7

.field static final TRANSACTION_systemReset:I = 0xd4

.field static final TRANSACTION_unregisterAFCCallback:I = 0x8e

.field static final TRANSACTION_unregisterAFCPHKMCallback:I = 0x91

.field static final TRANSACTION_unregisterAdsL1ChimeStatusCallback:I = 0xff

.field static final TRANSACTION_unregisterApaStatusCallback:I = 0x16

.field static final TRANSACTION_unregisterAvgElecCallback:I = 0x86

.field static final TRANSACTION_unregisterAvgElecCnsCallback:I = 0x8c

.field static final TRANSACTION_unregisterAvgEnergyCnsCallback:I = 0xe0

.field static final TRANSACTION_unregisterAvgFuCallback:I = 0x88

.field static final TRANSACTION_unregisterAvgFuCnsCallback:I = 0x8a

.field static final TRANSACTION_unregisterAvgSpdCallback:I = 0x97

.field static final TRANSACTION_unregisterAvmCameraStatusCallback:I = 0x60

.field static final TRANSACTION_unregisterAvmLogDataCallback:I = 0x5a

.field static final TRANSACTION_unregisterAvmStatusCallback:I = 0x14

.field static final TRANSACTION_unregisterBatteryAvailableUnitCallback:I = 0xe3

.field static final TRANSACTION_unregisterBootMusicPlayStatusCallback:I = 0x5c

.field static final TRANSACTION_unregisterCCODisplayStatusCallback:I = 0x12

.field static final TRANSACTION_unregisterChargeViewStatus:I = 0x6e

.field static final TRANSACTION_unregisterChargingCurrentCallback:I = 0x7c

.field static final TRANSACTION_unregisterChargingInfoCallback:I = 0x80

.field static final TRANSACTION_unregisterChargingPowerCallback:I = 0x7a

.field static final TRANSACTION_unregisterChargingVoltageCallback:I = 0x7e

.field static final TRANSACTION_unregisterCltcOrWltcCallback:I = 0x62

.field static final TRANSACTION_unregisterClusterFontCallback:I = 0xda

.field static final TRANSACTION_unregisterClusterSwitchThemeCompleteCallback:I = 0xd6

.field static final TRANSACTION_unregisterClusterThemeCallback:I = 0xd0

.field static final TRANSACTION_unregisterDiagDtcCallback:I = 0x20

.field static final TRANSACTION_unregisterDmsCallback:I = 0x2

.field static final TRANSACTION_unregisterDoorOpenCallback:I = 0xa6

.field static final TRANSACTION_unregisterDriveTimeCallback:I = 0x94

.field static final TRANSACTION_unregisterDriverModeCallback:I = 0x6

.field static final TRANSACTION_unregisterDrivingDataCallback:I = 0xfa

.field static final TRANSACTION_unregisterDteAFCValueCallback:I = 0xc2

.field static final TRANSACTION_unregisterDteCalculateValueCallback:I = 0xbf

.field static final TRANSACTION_unregisterDteValueCallbackCallback:I = 0xa

.field static final TRANSACTION_unregisterEnergyCurveProjectionCallback:I = 0x83

.field static final TRANSACTION_unregisterFuelAddEventCallback:I = 0xcb

.field static final TRANSACTION_unregisterFuelConsumptionUnitCallback:I = 0xf3

.field static final TRANSACTION_unregisterFuelTankTypeCallback:I = 0xc5

.field static final TRANSACTION_unregisterFuelVolumeDisplayCallback:I = 0xb9

.field static final TRANSACTION_unregisterFuelVolumeSampleCallback:I = 0xbc

.field static final TRANSACTION_unregisterGaugeSpeedCallback:I = 0x58

.field static final TRANSACTION_unregisterIFECallback:I = 0x9a

.field static final TRANSACTION_unregisterKeytoneCallback:I = 0x54

.field static final TRANSACTION_unregisterLeftSideWarningCallback:I = 0x56

.field static final TRANSACTION_unregisterMainTankResistanceCallback:I = 0x9d

.field static final TRANSACTION_unregisterMotorDrivePowerUnitCallback:I = 0xe7

.field static final TRANSACTION_unregisterMotorDteValueCallback:I = 0x22

.field static final TRANSACTION_unregisterNaviInfoStatusCallback:I = 0xe

.field static final TRANSACTION_unregisterNaviProjectionStatusCallback:I = 0x5e

.field static final TRANSACTION_unregisterOmsCallback:I = 0x4

.field static final TRANSACTION_unregisterOverFillStateCallback:I = 0xc8

.field static final TRANSACTION_unregisterPayloadMaintanceDistanceCallback:I = 0xb5

.field static final TRANSACTION_unregisterPayloadODOValueCallback:I = 0xee

.field static final TRANSACTION_unregisterPayloadTripAValueCallback:I = 0xdd

.field static final TRANSACTION_unregisterRadarWarningStatusCallback:I = 0x1c

.field static final TRANSACTION_unregisterRearviewMirrorStatusCallback:I = 0x1a

.field static final TRANSACTION_unregisterSeatMemorySwitchCallback:I = 0xf6

.field static final TRANSACTION_unregisterSteeringAngleCallback:I = 0x1e

.field static final TRANSACTION_unregisterStrStatusCallback:I = 0x18

.field static final TRANSACTION_unregisterSubTankResistanceCallback:I = 0xa0

.field static final TRANSACTION_unregisterTemperatureHighCallback:I = 0xc

.field static final TRANSACTION_unregisterTimeFormatChangedCallback:I = 0xaa

.field static final TRANSACTION_unregisterTorqueLockStatusCallback:I = 0x8

.field static final TRANSACTION_unregisterTyreTemperatureCallback:I = 0x52

.field static final TRANSACTION_unregisterVehicleFaultInfoChange:I = 0x71

.field static final TRANSACTION_unregisterXModeDisplayStatusCallback:I = 0x10

.field static final TRANSACTION_updateCompassInfo:I = 0x32

.field static final TRANSACTION_updateFuelUnit:I = 0x31

.field static final TRANSACTION_updateMediaInfo:I = 0x30

.field static final TRANSACTION_updatePhoneCallInfo:I = 0x2f

.field static final TRANSACTION_updateRearViewKeyStatus:I = 0x34

.field static final TRANSACTION_updateTimeFormat:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.IClusterInteraction"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.autolink.adapterinterface.clusterinteraction.IClusterInteraction"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    sput-object p0, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub$Proxy;->sDefaultImpl:Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "setDefaultImpl() called twice"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    const v0, 0x5f4e5446

    .line 1
    const-string v1, "com.autolink.adapterinterface.clusterinteraction.IClusterInteraction"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 4
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getAdsL1ChimeStatusInfo()Lcom/autolink/adapterinterface/clusterinteraction/AdsL1ChimeStatusInfo;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p1, p3, v2}, Lcom/autolink/adapterinterface/clusterinteraction/AdsL1ChimeStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 10
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAdsL1ChimeStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 13
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAdsL1ChimeStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 16
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDmsStatus()I

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 20
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->resetTripBAllData()V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 23
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDrivingData()[F

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    .line 27
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDrivingDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 30
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDrivingDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 33
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getSeatMemorySwitch()I

    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 37
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setSeatMemorySwitch(I)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 40
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterSeatMemorySwitchCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerSeatMemorySwitchCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 46
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFuelConsumptionUnit()I

    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 50
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterFuelConsumptionUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 53
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerFuelConsumptionUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 56
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object p1, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    move-object v3, p0

    invoke-interface/range {v3 .. v10}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyTbtNaviTrafficInfo(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 59
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getHEVOdoValue()F

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 63
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getOdoValue()F

    move-result p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 67
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterPayloadODOValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 70
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerPayloadODOValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 73
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getRearSeatWarnningSwitch()I

    move-result p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 77
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setRearSeatWarnningSwitch(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 80
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyNaviTrafficInfo(IIIII)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 83
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getMotorDrivePowerUnit()I

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 87
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setMotorDrivePowerUnit(I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 90
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterMotorDrivePowerUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 93
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerMotorDrivePowerUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 96
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getBatteryAvailableUnit()I

    move-result p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 100
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setBatteryAvailableUnit(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 103
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterBatteryAvailableUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 106
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerBatteryAvailableUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 109
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getAvgEnergyCns()F

    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 113
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvgEnergyCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 116
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvgEnergyCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 119
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getTripAValue()F

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 123
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterPayloadTripAValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 126
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerPayloadTripAValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 129
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyClusterWallpaperChanged(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 132
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterClusterFontCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 135
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerClusterFontCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 138
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getClusterFont()I

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 142
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setClusterFont(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 145
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterClusterSwitchThemeCompleteCallback(Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 148
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerClusterSwitchThemeCompleteCallback(Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 151
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->systemReset(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 154
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getWarningVolumeLevel()I

    move-result p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 158
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getWarningSpeed()I

    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 162
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFatigueDriveTime()I

    move-result p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 166
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterClusterThemeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 169
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerClusterThemeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 172
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getClusterTheme()I

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 176
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setThemeToCluster(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 179
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFuelAddEvent()I

    move-result p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 183
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterFuelAddEventCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 186
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerFuelAddEventCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 189
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getOverFillState()I

    move-result p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 193
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterOverFillStateCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 196
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerOverFillStateCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 199
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFuelTankType()I

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 203
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterFuelTankTypeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 206
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerFuelTankTypeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 209
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDteAFCValue()F

    move-result p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 213
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDteAFCValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 216
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDteAFCValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 219
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDteCalculateValue()I

    move-result p1

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 223
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDteCalculateValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 226
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDteCalculateValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 229
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFuelVolumeSample()F

    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 233
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterFuelVolumeSampleCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 236
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerFuelVolumeSampleCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 239
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFuelVolumeDisplay()F

    move-result p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 243
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterFuelVolumeDisplayCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 246
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerFuelVolumeDisplayCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 249
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setThemeMode(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 252
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getPayloadMaintanceDistance()I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 256
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterPayloadMaintanceDistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 259
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerPayloadMaintanceDistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 262
    :pswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->resetMaintenanceMileage()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 265
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setCarModelColor(II)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 268
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getTemperatureUnit()I

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 272
    :pswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getSpeedUnit()I

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 276
    :pswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getTyrePressureUnit()I

    move-result p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 280
    :pswitch_52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setTemperatureUnit(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 283
    :pswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setSpeedUnit(I)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 286
    :pswitch_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setTyrePressureUnit(I)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 289
    :pswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyAVMWindowsStatus(I)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 292
    :pswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterTimeFormatChangedCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 295
    :pswitch_57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerTimeFormatChangedCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 298
    :pswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getTimeFormat()I

    move-result p1

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 302
    :pswitch_59
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setXModeStatus(I)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 305
    :pswitch_5a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDoorOpenCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 308
    :pswitch_5b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDoorOpenCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 311
    :pswitch_5c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setAltitude(I)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 314
    :pswitch_5d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setAirPressure(I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 317
    :pswitch_5e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyClusterLanguageSetting(I)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 320
    :pswitch_5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getSubTankResistance()I

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 324
    :pswitch_60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterSubTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 327
    :pswitch_61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerSubTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 330
    :pswitch_62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getMainTankResistance()I

    move-result p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 334
    :pswitch_63
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterMainTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 337
    :pswitch_64
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerMainTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback;)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 340
    :pswitch_65
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getIFEValue()I

    move-result p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 344
    :pswitch_66
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterIFECallback(Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 347
    :pswitch_67
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerIFECallback(Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 350
    :pswitch_68
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getAvgSpd()I

    move-result p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 354
    :pswitch_69
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvgSpdCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 357
    :pswitch_6a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvgSpdCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 360
    :pswitch_6b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDriveTime()I

    move-result p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 364
    :pswitch_6c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDriveTimeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 367
    :pswitch_6d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDriveTimeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 370
    :pswitch_6e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getAFCPHKMValue()I

    move-result p1

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 374
    :pswitch_6f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAFCPHKMCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 377
    :pswitch_70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAFCPHKMCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 380
    :pswitch_71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getAFCValue()I

    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 384
    :pswitch_72
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAFCCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 387
    :pswitch_73
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAFCCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 390
    :pswitch_74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvgElecCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 393
    :pswitch_75
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvgElecCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback;)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 396
    :pswitch_76
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvgFuCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 399
    :pswitch_77
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvgFuCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 402
    :pswitch_78
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvgFuCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 405
    :pswitch_79
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvgFuCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 408
    :pswitch_7a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvgElecCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 411
    :pswitch_7b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvgElecCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 414
    :pswitch_7c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getEnergyCurveProjectionStatus()I

    move-result p1

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 418
    :pswitch_7d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterEnergyCurveProjectionCallback(Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback;)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 421
    :pswitch_7e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerEnergyCurveProjectionCallback(Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 424
    :pswitch_7f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getChargingInfo()[F

    move-result-object p1

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    .line 428
    :pswitch_80
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterChargingInfoCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 431
    :pswitch_81
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerChargingInfoCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback;)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 434
    :pswitch_82
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterChargingVoltageCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 437
    :pswitch_83
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerChargingVoltageCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 440
    :pswitch_84
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterChargingCurrentCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback;)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 443
    :pswitch_85
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerChargingCurrentCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback;)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 446
    :pswitch_86
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterChargingPowerCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback;)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 449
    :pswitch_87
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerChargingPowerCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 452
    :pswitch_88
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyBacklightAutoAdjustToCluster(I)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 455
    :pswitch_89
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setWarningVolumeLevel(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 458
    :pswitch_8a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->notifyFactoryReset(I)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 461
    :pswitch_8b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->requestFactoryReset()V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 464
    :pswitch_8c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getVehicleFaultInfo()V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 467
    :pswitch_8d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setWarningSpeed(I)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 470
    :pswitch_8e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setFatigueDriveTime(I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 473
    :pswitch_8f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterVehicleFaultInfoChange(Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 476
    :pswitch_90
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerVehicleFaultInfoChange(Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 479
    :pswitch_91
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setScheduleChargingTime(I)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 482
    :pswitch_92
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterChargeViewStatus(Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 485
    :pswitch_93
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerChargeViewStatus(Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 488
    :pswitch_94
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getRearTorqueLockStatus()I

    move-result p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 492
    :pswitch_95
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getFrontTorqueLockStatus()I

    move-result p1

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 496
    :pswitch_96
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getAvmStatus()Z

    move-result p1

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 500
    :pswitch_97
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->requestAvmStatus()V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 503
    :pswitch_98
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDmsCameraStatus()V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 506
    :pswitch_99
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setDriveMode(I)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 509
    :pswitch_9a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getCurrentSpeed()F

    move-result p1

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    .line 513
    :pswitch_9b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setLaneAssistSetting(I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 516
    :pswitch_9c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setCltcOrWltcMode(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 519
    :pswitch_9d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getCltcOrWltcMode()I

    move-result p1

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 523
    :pswitch_9e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterCltcOrWltcCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 526
    :pswitch_9f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerCltcOrWltcCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 529
    :pswitch_a0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvmCameraStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback;)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 532
    :pswitch_a1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvmCameraStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 535
    :pswitch_a2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterNaviProjectionStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 538
    :pswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerNaviProjectionStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 541
    :pswitch_a4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterBootMusicPlayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 544
    :pswitch_a5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerBootMusicPlayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 547
    :pswitch_a6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvmLogDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback;)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 550
    :pswitch_a7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvmLogDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 553
    :pswitch_a8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterGaugeSpeedCallback(Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 556
    :pswitch_a9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerGaugeSpeedCallback(Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 559
    :pswitch_aa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterLeftSideWarningCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback;)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 562
    :pswitch_ab
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerLeftSideWarningCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback;)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 565
    :pswitch_ac
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterKeytoneCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback;)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 568
    :pswitch_ad
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerKeytoneCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 571
    :pswitch_ae
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterTyreTemperatureCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 574
    :pswitch_af
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerTyreTemperatureCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 577
    :pswitch_b0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getRRTyreTemperature()I

    move-result p1

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 581
    :pswitch_b1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getLRTyreTemperature()I

    move-result p1

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 585
    :pswitch_b2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getRFTyreTemperature()I

    move-result p1

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 589
    :pswitch_b3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getLFTyreTemperature()I

    move-result p1

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 593
    :pswitch_b4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setSunTime(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 596
    :pswitch_b5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setNaviStartupStatus(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 599
    :pswitch_b6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setDayNightMode(I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 602
    :pswitch_b7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setTotalMileage(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 605
    :pswitch_b8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->sendPitchAngleToCluster(FF)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 608
    :pswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->sendPitchAngleToMcu(II)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 611
    :pswitch_ba
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setCarPlateNumber(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 614
    :pswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setStrWriteStatus(IZ)V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 617
    :pswitch_bc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setStrReadStatus(IZ)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 620
    :pswitch_bd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setAvmViewStatus(IZ)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 623
    :pswitch_be
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setApaViewStatus(IZ)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 626
    :pswitch_bf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getNaviProjectionStatus()V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 629
    :pswitch_c0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->appBootCompleted(I)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 632
    :pswitch_c1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setDmsDriverDrowsinessLevel(I)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 635
    :pswitch_c2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setDmsDriverDistractionLevel(I)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 638
    :pswitch_c3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setDmsDriverActionLevel(I)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 641
    :pswitch_c4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getCCODisplayStatus()I

    move-result p1

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 645
    :pswitch_c5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getXModeDisplayStatus()I

    move-result p1

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 649
    :pswitch_c6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDriveMode()I

    move-result p1

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 653
    :pswitch_c7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getDteValue()I

    move-result p1

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 657
    :pswitch_c8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getGaugeFuelPercent()I

    move-result p1

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 661
    :pswitch_c9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setCCOFanStatus(Z)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 664
    :pswitch_ca
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setActivationLicense(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 667
    :pswitch_cb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->bootAnimationCompleted()V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 670
    :pswitch_cc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->updateRearViewKeyStatus(I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 673
    :pswitch_cd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->updateTimeFormat(Z)V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 676
    :pswitch_ce
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->updateCompassInfo(F)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 679
    :pswitch_cf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->updateFuelUnit(I)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 682
    :pswitch_d0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->updateMediaInfo(I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 685
    :pswitch_d1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->updatePhoneCallInfo(I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 688
    :pswitch_d2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->chimeTest()V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 691
    :pswitch_d3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->healthLoginReq(I)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 694
    :pswitch_d4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->omsMonitoringReq(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 697
    :pswitch_d5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->driverMonitorReq(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 700
    :pswitch_d6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->healthMonitorReq(IIIII)V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 703
    :pswitch_d7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->deleteFaceIdReq(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 706
    :pswitch_d8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->loginFaceIdReq(I)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 709
    :pswitch_d9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerFaceIdReq(II)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 712
    :pswitch_da
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-interface {p0, v0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setDmsUserSwitch(Z)V

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 715
    :pswitch_db
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setNaviInfoStatus(I)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 718
    :pswitch_dc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->setNaviCmd(I)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 721
    :pswitch_dd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-interface {p0}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->getMotorDteValue()I

    move-result p1

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 725
    :pswitch_de
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterMotorDteValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback;)V

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 728
    :pswitch_df
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerMotorDteValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback;)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 731
    :pswitch_e0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDiagDtcCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback;)V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 734
    :pswitch_e1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDiagDtcCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback;)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 737
    :pswitch_e2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterSteeringAngleCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 740
    :pswitch_e3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerSteeringAngleCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback;)V

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 743
    :pswitch_e4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterRadarWarningStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 746
    :pswitch_e5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerRadarWarningStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback;)V

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 749
    :pswitch_e6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterRearviewMirrorStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 752
    :pswitch_e7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerRearviewMirrorStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback;)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 755
    :pswitch_e8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterStrStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 758
    :pswitch_e9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerStrStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback;)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 761
    :pswitch_ea
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterApaStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;)V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 764
    :pswitch_eb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerApaStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;)V

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 767
    :pswitch_ec
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterAvmStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 770
    :pswitch_ed
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerAvmStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;)V

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 773
    :pswitch_ee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterCCODisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback;)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 776
    :pswitch_ef
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerCCODisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 779
    :pswitch_f0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterXModeDisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback;)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 782
    :pswitch_f1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerXModeDisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback;)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 785
    :pswitch_f2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterNaviInfoStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback;)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 788
    :pswitch_f3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerNaviInfoStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback;)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 791
    :pswitch_f4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterTemperatureHighCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback;)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 794
    :pswitch_f5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerTemperatureHighCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback;)V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 797
    :pswitch_f6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDteValueCallbackCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback;)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 800
    :pswitch_f7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDteValueCallbackCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 803
    :pswitch_f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterTorqueLockStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback;)V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 806
    :pswitch_f9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerTorqueLockStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback;)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 809
    :pswitch_fa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDriverModeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback;)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 812
    :pswitch_fb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDriverModeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback;)V

    .line 814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 815
    :pswitch_fc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterOmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 818
    :pswitch_fd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerOmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;)V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 821
    :pswitch_fe
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->unregisterDmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;)V

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 824
    :pswitch_ff
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;->registerDmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;)V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
