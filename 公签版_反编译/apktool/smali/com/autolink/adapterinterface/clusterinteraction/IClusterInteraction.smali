.class public interface abstract Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub;,
        Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Default;
    }
.end annotation


# virtual methods
.method public abstract appBootCompleted(I)V
.end method

.method public abstract bootAnimationCompleted()V
.end method

.method public abstract chimeTest()V
.end method

.method public abstract deleteFaceIdReq(I)V
.end method

.method public abstract driverMonitorReq(I)V
.end method

.method public abstract getAFCPHKMValue()I
.end method

.method public abstract getAFCValue()I
.end method

.method public abstract getAdsL1ChimeStatusInfo()Lcom/autolink/adapterinterface/clusterinteraction/AdsL1ChimeStatusInfo;
.end method

.method public abstract getAvgEnergyCns()F
.end method

.method public abstract getAvgSpd()I
.end method

.method public abstract getAvmStatus()Z
.end method

.method public abstract getBatteryAvailableUnit()I
.end method

.method public abstract getCCODisplayStatus()I
.end method

.method public abstract getChargingInfo()[F
.end method

.method public abstract getCltcOrWltcMode()I
.end method

.method public abstract getClusterFont()I
.end method

.method public abstract getClusterTheme()I
.end method

.method public abstract getCurrentSpeed()F
.end method

.method public abstract getDmsCameraStatus()V
.end method

.method public abstract getDmsStatus()I
.end method

.method public abstract getDriveMode()I
.end method

.method public abstract getDriveTime()I
.end method

.method public abstract getDrivingData()[F
.end method

.method public abstract getDteAFCValue()F
.end method

.method public abstract getDteCalculateValue()I
.end method

.method public abstract getDteValue()I
.end method

.method public abstract getEnergyCurveProjectionStatus()I
.end method

.method public abstract getFatigueDriveTime()I
.end method

.method public abstract getFrontTorqueLockStatus()I
.end method

.method public abstract getFuelAddEvent()I
.end method

.method public abstract getFuelConsumptionUnit()I
.end method

.method public abstract getFuelTankType()I
.end method

.method public abstract getFuelVolumeDisplay()F
.end method

.method public abstract getFuelVolumeSample()F
.end method

.method public abstract getGaugeFuelPercent()I
.end method

.method public abstract getHEVOdoValue()F
.end method

.method public abstract getIFEValue()I
.end method

.method public abstract getLFTyreTemperature()I
.end method

.method public abstract getLRTyreTemperature()I
.end method

.method public abstract getMainTankResistance()I
.end method

.method public abstract getMotorDrivePowerUnit()I
.end method

.method public abstract getMotorDteValue()I
.end method

.method public abstract getNaviProjectionStatus()V
.end method

.method public abstract getOdoValue()F
.end method

.method public abstract getOverFillState()I
.end method

.method public abstract getPayloadMaintanceDistance()I
.end method

.method public abstract getRFTyreTemperature()I
.end method

.method public abstract getRRTyreTemperature()I
.end method

.method public abstract getRearSeatWarnningSwitch()I
.end method

.method public abstract getRearTorqueLockStatus()I
.end method

.method public abstract getSeatMemorySwitch()I
.end method

.method public abstract getSpeedUnit()I
.end method

.method public abstract getSubTankResistance()I
.end method

.method public abstract getTemperatureUnit()I
.end method

.method public abstract getTimeFormat()I
.end method

.method public abstract getTripAValue()F
.end method

.method public abstract getTyrePressureUnit()I
.end method

.method public abstract getVehicleFaultInfo()V
.end method

.method public abstract getWarningSpeed()I
.end method

.method public abstract getWarningVolumeLevel()I
.end method

.method public abstract getXModeDisplayStatus()I
.end method

.method public abstract healthLoginReq(I)V
.end method

.method public abstract healthMonitorReq(IIIII)V
.end method

.method public abstract loginFaceIdReq(I)V
.end method

.method public abstract notifyAVMWindowsStatus(I)V
.end method

.method public abstract notifyBacklightAutoAdjustToCluster(I)V
.end method

.method public abstract notifyClusterLanguageSetting(I)V
.end method

.method public abstract notifyClusterWallpaperChanged(I)V
.end method

.method public abstract notifyFactoryReset(I)V
.end method

.method public abstract notifyNaviTrafficInfo(IIIII)V
.end method

.method public abstract notifyTbtNaviTrafficInfo(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract omsMonitoringReq(I)V
.end method

.method public abstract registerAFCCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback;)V
.end method

.method public abstract registerAFCPHKMCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback;)V
.end method

.method public abstract registerAdsL1ChimeStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback;)V
.end method

.method public abstract registerApaStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;)V
.end method

.method public abstract registerAvgElecCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback;)V
.end method

.method public abstract registerAvgElecCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback;)V
.end method

.method public abstract registerAvgEnergyCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback;)V
.end method

.method public abstract registerAvgFuCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback;)V
.end method

.method public abstract registerAvgFuCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback;)V
.end method

.method public abstract registerAvgSpdCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback;)V
.end method

.method public abstract registerAvmCameraStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback;)V
.end method

.method public abstract registerAvmLogDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback;)V
.end method

.method public abstract registerAvmStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;)V
.end method

.method public abstract registerBatteryAvailableUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback;)V
.end method

.method public abstract registerBootMusicPlayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback;)V
.end method

.method public abstract registerCCODisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback;)V
.end method

.method public abstract registerChargeViewStatus(Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback;)V
.end method

.method public abstract registerChargingCurrentCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback;)V
.end method

.method public abstract registerChargingInfoCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback;)V
.end method

.method public abstract registerChargingPowerCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback;)V
.end method

.method public abstract registerChargingVoltageCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback;)V
.end method

.method public abstract registerCltcOrWltcCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback;)V
.end method

.method public abstract registerClusterFontCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback;)V
.end method

.method public abstract registerClusterSwitchThemeCompleteCallback(Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback;)V
.end method

.method public abstract registerClusterThemeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback;)V
.end method

.method public abstract registerDiagDtcCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback;)V
.end method

.method public abstract registerDmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;)V
.end method

.method public abstract registerDoorOpenCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback;)V
.end method

.method public abstract registerDriveTimeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback;)V
.end method

.method public abstract registerDriverModeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback;)V
.end method

.method public abstract registerDrivingDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback;)V
.end method

.method public abstract registerDteAFCValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback;)V
.end method

.method public abstract registerDteCalculateValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback;)V
.end method

.method public abstract registerDteValueCallbackCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback;)V
.end method

.method public abstract registerEnergyCurveProjectionCallback(Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback;)V
.end method

.method public abstract registerFaceIdReq(II)V
.end method

.method public abstract registerFuelAddEventCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback;)V
.end method

.method public abstract registerFuelConsumptionUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback;)V
.end method

.method public abstract registerFuelTankTypeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback;)V
.end method

.method public abstract registerFuelVolumeDisplayCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback;)V
.end method

.method public abstract registerFuelVolumeSampleCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback;)V
.end method

.method public abstract registerGaugeSpeedCallback(Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback;)V
.end method

.method public abstract registerIFECallback(Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback;)V
.end method

.method public abstract registerKeytoneCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback;)V
.end method

.method public abstract registerLeftSideWarningCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback;)V
.end method

.method public abstract registerMainTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback;)V
.end method

.method public abstract registerMotorDrivePowerUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback;)V
.end method

.method public abstract registerMotorDteValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback;)V
.end method

.method public abstract registerNaviInfoStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback;)V
.end method

.method public abstract registerNaviProjectionStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback;)V
.end method

.method public abstract registerOmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;)V
.end method

.method public abstract registerOverFillStateCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback;)V
.end method

.method public abstract registerPayloadMaintanceDistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback;)V
.end method

.method public abstract registerPayloadODOValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback;)V
.end method

.method public abstract registerPayloadTripAValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback;)V
.end method

.method public abstract registerRadarWarningStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback;)V
.end method

.method public abstract registerRearviewMirrorStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback;)V
.end method

.method public abstract registerSeatMemorySwitchCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback;)V
.end method

.method public abstract registerSteeringAngleCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback;)V
.end method

.method public abstract registerStrStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback;)V
.end method

.method public abstract registerSubTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback;)V
.end method

.method public abstract registerTemperatureHighCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback;)V
.end method

.method public abstract registerTimeFormatChangedCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback;)V
.end method

.method public abstract registerTorqueLockStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback;)V
.end method

.method public abstract registerTyreTemperatureCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;)V
.end method

.method public abstract registerVehicleFaultInfoChange(Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo;)V
.end method

.method public abstract registerXModeDisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback;)V
.end method

.method public abstract requestAvmStatus()V
.end method

.method public abstract requestFactoryReset()V
.end method

.method public abstract resetMaintenanceMileage()V
.end method

.method public abstract resetTripBAllData()V
.end method

.method public abstract sendPitchAngleToCluster(FF)V
.end method

.method public abstract sendPitchAngleToMcu(II)V
.end method

.method public abstract setActivationLicense(Ljava/lang/String;)V
.end method

.method public abstract setAirPressure(I)V
.end method

.method public abstract setAltitude(I)V
.end method

.method public abstract setApaViewStatus(IZ)V
.end method

.method public abstract setAvmViewStatus(IZ)V
.end method

.method public abstract setBatteryAvailableUnit(I)V
.end method

.method public abstract setCCOFanStatus(Z)V
.end method

.method public abstract setCarModelColor(II)V
.end method

.method public abstract setCarPlateNumber(Ljava/lang/String;)V
.end method

.method public abstract setCltcOrWltcMode(I)V
.end method

.method public abstract setClusterFont(I)V
.end method

.method public abstract setDayNightMode(I)V
.end method

.method public abstract setDmsDriverActionLevel(I)V
.end method

.method public abstract setDmsDriverDistractionLevel(I)V
.end method

.method public abstract setDmsDriverDrowsinessLevel(I)V
.end method

.method public abstract setDmsUserSwitch(Z)V
.end method

.method public abstract setDriveMode(I)V
.end method

.method public abstract setFatigueDriveTime(I)V
.end method

.method public abstract setLaneAssistSetting(I)V
.end method

.method public abstract setMotorDrivePowerUnit(I)V
.end method

.method public abstract setNaviCmd(I)V
.end method

.method public abstract setNaviInfoStatus(I)V
.end method

.method public abstract setNaviStartupStatus(I)V
.end method

.method public abstract setRearSeatWarnningSwitch(I)V
.end method

.method public abstract setScheduleChargingTime(I)V
.end method

.method public abstract setSeatMemorySwitch(I)V
.end method

.method public abstract setSpeedUnit(I)V
.end method

.method public abstract setStrReadStatus(IZ)V
.end method

.method public abstract setStrWriteStatus(IZ)V
.end method

.method public abstract setSunTime(I)V
.end method

.method public abstract setTemperatureUnit(I)V
.end method

.method public abstract setThemeMode(I)V
.end method

.method public abstract setThemeToCluster(I)V
.end method

.method public abstract setTotalMileage(I)V
.end method

.method public abstract setTyrePressureUnit(I)V
.end method

.method public abstract setWarningSpeed(I)V
.end method

.method public abstract setWarningVolumeLevel(I)V
.end method

.method public abstract setXModeStatus(I)V
.end method

.method public abstract systemReset(I)V
.end method

.method public abstract unregisterAFCCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCValueCallback;)V
.end method

.method public abstract unregisterAFCPHKMCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAFCPHKMValueCallback;)V
.end method

.method public abstract unregisterAdsL1ChimeStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAdsL1ChimeStatusCallback;)V
.end method

.method public abstract unregisterApaStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;)V
.end method

.method public abstract unregisterAvgElecCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCallback;)V
.end method

.method public abstract unregisterAvgElecCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgElecCnsCallback;)V
.end method

.method public abstract unregisterAvgEnergyCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgEnergyCnsCallback;)V
.end method

.method public abstract unregisterAvgFuCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCallback;)V
.end method

.method public abstract unregisterAvgFuCnsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgFuCnsCallback;)V
.end method

.method public abstract unregisterAvgSpdCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvgSpdValueCallback;)V
.end method

.method public abstract unregisterAvmCameraStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmCameraStatusCallback;)V
.end method

.method public abstract unregisterAvmLogDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmLogDataCallback;)V
.end method

.method public abstract unregisterAvmStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;)V
.end method

.method public abstract unregisterBatteryAvailableUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBatteryAvailableUnitCallback;)V
.end method

.method public abstract unregisterBootMusicPlayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IBootMusicPlayStatusCallback;)V
.end method

.method public abstract unregisterCCODisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICCODisplayStatusCallback;)V
.end method

.method public abstract unregisterChargeViewStatus(Lcom/autolink/adapterinterface/clusterinteraction/IChargeViewStatusCallback;)V
.end method

.method public abstract unregisterChargingCurrentCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeCurrentCallback;)V
.end method

.method public abstract unregisterChargingInfoCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerInfoCallback;)V
.end method

.method public abstract unregisterChargingPowerCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargePowerCallback;)V
.end method

.method public abstract unregisterChargingVoltageCallback(Lcom/autolink/adapterinterface/clusterinteraction/IChargeVoltageCallback;)V
.end method

.method public abstract unregisterCltcOrWltcCallback(Lcom/autolink/adapterinterface/clusterinteraction/ICltcOrWltcCallback;)V
.end method

.method public abstract unregisterClusterFontCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterFontCallback;)V
.end method

.method public abstract unregisterClusterSwitchThemeCompleteCallback(Lcom/autolink/adapterinterface/clusterinteraction/IThemeSwitchCompleteCallback;)V
.end method

.method public abstract unregisterClusterThemeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterThemeCallback;)V
.end method

.method public abstract unregisterDiagDtcCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDiagDtcInfoCallback;)V
.end method

.method public abstract unregisterDmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDmsCallback;)V
.end method

.method public abstract unregisterDoorOpenCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDoorOpenCallback;)V
.end method

.method public abstract unregisterDriveTimeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriveTimeCallback;)V
.end method

.method public abstract unregisterDriverModeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDriverModeCallback;)V
.end method

.method public abstract unregisterDrivingDataCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDrivingDataCallback;)V
.end method

.method public abstract unregisterDteAFCValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteAFCValueCallback;)V
.end method

.method public abstract unregisterDteCalculateValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteCalculateValueCallback;)V
.end method

.method public abstract unregisterDteValueCallbackCallback(Lcom/autolink/adapterinterface/clusterinteraction/IDteValueCallback;)V
.end method

.method public abstract unregisterEnergyCurveProjectionCallback(Lcom/autolink/adapterinterface/clusterinteraction/IEnergyCurveProjectionCallback;)V
.end method

.method public abstract unregisterFuelAddEventCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelAddEventCallback;)V
.end method

.method public abstract unregisterFuelConsumptionUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelConsumptionUnitCallback;)V
.end method

.method public abstract unregisterFuelTankTypeCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelTankTypeCallback;)V
.end method

.method public abstract unregisterFuelVolumeDisplayCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeDisplayCallback;)V
.end method

.method public abstract unregisterFuelVolumeSampleCallback(Lcom/autolink/adapterinterface/clusterinteraction/IFuelVolumeSampleCallback;)V
.end method

.method public abstract unregisterGaugeSpeedCallback(Lcom/autolink/adapterinterface/clusterinteraction/IGaugeSpeedValueCallback;)V
.end method

.method public abstract unregisterIFECallback(Lcom/autolink/adapterinterface/clusterinteraction/IIFECallback;)V
.end method

.method public abstract unregisterKeytoneCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterNotifyKeytoneCallback;)V
.end method

.method public abstract unregisterLeftSideWarningCallback(Lcom/autolink/adapterinterface/clusterinteraction/IClusterLeftWarningCallback;)V
.end method

.method public abstract unregisterMainTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMainTankResistanceCallback;)V
.end method

.method public abstract unregisterMotorDrivePowerUnitCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDrivePowerUnitCallback;)V
.end method

.method public abstract unregisterMotorDteValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IMotorDteValueCallback;)V
.end method

.method public abstract unregisterNaviInfoStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviInfoStatusCallback;)V
.end method

.method public abstract unregisterNaviProjectionStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/INaviProjectionStatusCallback;)V
.end method

.method public abstract unregisterOmsCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOmsCallback;)V
.end method

.method public abstract unregisterOverFillStateCallback(Lcom/autolink/adapterinterface/clusterinteraction/IOverFillStateCallback;)V
.end method

.method public abstract unregisterPayloadMaintanceDistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadMaintanceDistanceCallback;)V
.end method

.method public abstract unregisterPayloadODOValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadODOValueCallback;)V
.end method

.method public abstract unregisterPayloadTripAValueCallback(Lcom/autolink/adapterinterface/clusterinteraction/IPayloadTripAValueCallback;)V
.end method

.method public abstract unregisterRadarWarningStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRadarWarningStatusCallback;)V
.end method

.method public abstract unregisterRearviewMirrorStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IRearviewMirrorStatusCallback;)V
.end method

.method public abstract unregisterSeatMemorySwitchCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISeatMemorySwitchCallback;)V
.end method

.method public abstract unregisterSteeringAngleCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISteeringAngleCallback;)V
.end method

.method public abstract unregisterStrStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IStrStatusCallback;)V
.end method

.method public abstract unregisterSubTankResistanceCallback(Lcom/autolink/adapterinterface/clusterinteraction/ISubTankResistanceCallback;)V
.end method

.method public abstract unregisterTemperatureHighCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITemperatureHighCallback;)V
.end method

.method public abstract unregisterTimeFormatChangedCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITimeFormatChangedCallback;)V
.end method

.method public abstract unregisterTorqueLockStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITorqueLockStatusCallback;)V
.end method

.method public abstract unregisterTyreTemperatureCallback(Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;)V
.end method

.method public abstract unregisterVehicleFaultInfoChange(Lcom/autolink/adapterinterface/clusterinteraction/IVehicleFaultInfo;)V
.end method

.method public abstract unregisterXModeDisplayStatusCallback(Lcom/autolink/adapterinterface/clusterinteraction/IXModeDisplayStatusCallback;)V
.end method

.method public abstract updateCompassInfo(F)V
.end method

.method public abstract updateFuelUnit(I)V
.end method

.method public abstract updateMediaInfo(I)V
.end method

.method public abstract updatePhoneCallInfo(I)V
.end method

.method public abstract updateRearViewKeyStatus(I)V
.end method

.method public abstract updateTimeFormat(Z)V
.end method
