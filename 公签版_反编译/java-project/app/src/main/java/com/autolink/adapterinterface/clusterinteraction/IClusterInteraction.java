package com.autolink.adapterinterface.clusterinteraction;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.autolink.adapterinterface.clusterinteraction.IAFCPHKMValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IAFCValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IAdsL1ChimeStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IApaStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvgElecCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvgElecCnsCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvgEnergyCnsCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvgFuCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvgFuCnsCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvgSpdValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvmCameraStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvmLogDataCallback;
import com.autolink.adapterinterface.clusterinteraction.IAvmStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IBatteryAvailableUnitCallback;
import com.autolink.adapterinterface.clusterinteraction.IBootMusicPlayStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.ICCODisplayStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IChargeCurrentCallback;
import com.autolink.adapterinterface.clusterinteraction.IChargePowerCallback;
import com.autolink.adapterinterface.clusterinteraction.IChargePowerInfoCallback;
import com.autolink.adapterinterface.clusterinteraction.IChargeViewStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IChargeVoltageCallback;
import com.autolink.adapterinterface.clusterinteraction.ICltcOrWltcCallback;
import com.autolink.adapterinterface.clusterinteraction.IClusterFontCallback;
import com.autolink.adapterinterface.clusterinteraction.IClusterLeftWarningCallback;
import com.autolink.adapterinterface.clusterinteraction.IClusterNotifyKeytoneCallback;
import com.autolink.adapterinterface.clusterinteraction.IClusterThemeCallback;
import com.autolink.adapterinterface.clusterinteraction.IDiagDtcInfoCallback;
import com.autolink.adapterinterface.clusterinteraction.IDmsCallback;
import com.autolink.adapterinterface.clusterinteraction.IDoorOpenCallback;
import com.autolink.adapterinterface.clusterinteraction.IDriveTimeCallback;
import com.autolink.adapterinterface.clusterinteraction.IDriverModeCallback;
import com.autolink.adapterinterface.clusterinteraction.IDrivingDataCallback;
import com.autolink.adapterinterface.clusterinteraction.IDteAFCValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IDteCalculateValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IDteValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IEnergyCurveProjectionCallback;
import com.autolink.adapterinterface.clusterinteraction.IFuelAddEventCallback;
import com.autolink.adapterinterface.clusterinteraction.IFuelConsumptionUnitCallback;
import com.autolink.adapterinterface.clusterinteraction.IFuelTankTypeCallback;
import com.autolink.adapterinterface.clusterinteraction.IFuelVolumeDisplayCallback;
import com.autolink.adapterinterface.clusterinteraction.IFuelVolumeSampleCallback;
import com.autolink.adapterinterface.clusterinteraction.IGaugeSpeedValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IIFECallback;
import com.autolink.adapterinterface.clusterinteraction.IMainTankResistanceCallback;
import com.autolink.adapterinterface.clusterinteraction.IMotorDrivePowerUnitCallback;
import com.autolink.adapterinterface.clusterinteraction.IMotorDteValueCallback;
import com.autolink.adapterinterface.clusterinteraction.INaviInfoStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.INaviProjectionStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IOmsCallback;
import com.autolink.adapterinterface.clusterinteraction.IOverFillStateCallback;
import com.autolink.adapterinterface.clusterinteraction.IPayloadMaintanceDistanceCallback;
import com.autolink.adapterinterface.clusterinteraction.IPayloadODOValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IPayloadTripAValueCallback;
import com.autolink.adapterinterface.clusterinteraction.IRadarWarningStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.IRearviewMirrorStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.ISeatMemorySwitchCallback;
import com.autolink.adapterinterface.clusterinteraction.ISteeringAngleCallback;
import com.autolink.adapterinterface.clusterinteraction.IStrStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.ISubTankResistanceCallback;
import com.autolink.adapterinterface.clusterinteraction.ITemperatureHighCallback;
import com.autolink.adapterinterface.clusterinteraction.IThemeSwitchCompleteCallback;
import com.autolink.adapterinterface.clusterinteraction.ITimeFormatChangedCallback;
import com.autolink.adapterinterface.clusterinteraction.ITorqueLockStatusCallback;
import com.autolink.adapterinterface.clusterinteraction.ITyreTemperatureCallback;
import com.autolink.adapterinterface.clusterinteraction.IVehicleFaultInfo;
import com.autolink.adapterinterface.clusterinteraction.IXModeDisplayStatusCallback;
import java.util.List;

/* loaded from: classes.dex */
public interface IClusterInteraction extends IInterface {

    public static class Default implements IClusterInteraction {
        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void appBootCompleted(int i10) {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void bootAnimationCompleted() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void chimeTest() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void deleteFaceIdReq(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void driverMonitorReq(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getAFCPHKMValue() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getAFCValue() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public AdsL1ChimeStatusInfo getAdsL1ChimeStatusInfo() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getAvgEnergyCns() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getAvgSpd() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public boolean getAvmStatus() {
            return false;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getBatteryAvailableUnit() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getCCODisplayStatus() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float[] getChargingInfo() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getCltcOrWltcMode() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getClusterFont() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getClusterTheme() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getCurrentSpeed() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void getDmsCameraStatus() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getDmsStatus() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getDriveMode() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getDriveTime() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float[] getDrivingData() {
            return null;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getDteAFCValue() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getDteCalculateValue() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getDteValue() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getEnergyCurveProjectionStatus() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getFatigueDriveTime() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getFrontTorqueLockStatus() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getFuelAddEvent() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getFuelConsumptionUnit() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getFuelTankType() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getFuelVolumeDisplay() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getFuelVolumeSample() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getGaugeFuelPercent() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getHEVOdoValue() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getIFEValue() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getLFTyreTemperature() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getLRTyreTemperature() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getMainTankResistance() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getMotorDrivePowerUnit() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getMotorDteValue() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void getNaviProjectionStatus() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getOdoValue() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getOverFillState() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getPayloadMaintanceDistance() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getRFTyreTemperature() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getRRTyreTemperature() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getRearSeatWarnningSwitch() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getRearTorqueLockStatus() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getSeatMemorySwitch() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getSpeedUnit() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getSubTankResistance() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getTemperatureUnit() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getTimeFormat() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public float getTripAValue() {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getTyrePressureUnit() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void getVehicleFaultInfo() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getWarningSpeed() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getWarningVolumeLevel() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public int getXModeDisplayStatus() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void healthLoginReq(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void healthMonitorReq(int i10, int i11, int i12, int i13, int i14) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void loginFaceIdReq(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyAVMWindowsStatus(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyBacklightAutoAdjustToCluster(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyClusterLanguageSetting(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyClusterWallpaperChanged(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyFactoryReset(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyNaviTrafficInfo(int i10, int i11, int i12, int i13, int i14) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void notifyTbtNaviTrafficInfo(int i10, String str, String str2, List<TbtTrafficLaneInfo> list, int i11, String str3, boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void omsMonitoringReq(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAFCCallback(IAFCValueCallback iAFCValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAFCPHKMCallback(IAFCPHKMValueCallback iAFCPHKMValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerApaStatusCallback(IApaStatusCallback iApaStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvgElecCallback(IAvgElecCallback iAvgElecCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvgElecCnsCallback(IAvgElecCnsCallback iAvgElecCnsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvgEnergyCnsCallback(IAvgEnergyCnsCallback iAvgEnergyCnsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvgFuCallback(IAvgFuCallback iAvgFuCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvgFuCnsCallback(IAvgFuCnsCallback iAvgFuCnsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvgSpdCallback(IAvgSpdValueCallback iAvgSpdValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvmCameraStatusCallback(IAvmCameraStatusCallback iAvmCameraStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvmLogDataCallback(IAvmLogDataCallback iAvmLogDataCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerAvmStatusCallback(IAvmStatusCallback iAvmStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback iBootMusicPlayStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerCCODisplayStatusCallback(ICCODisplayStatusCallback iCCODisplayStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerChargeViewStatus(IChargeViewStatusCallback iChargeViewStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerChargingCurrentCallback(IChargeCurrentCallback iChargeCurrentCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerChargingInfoCallback(IChargePowerInfoCallback iChargePowerInfoCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerChargingPowerCallback(IChargePowerCallback iChargePowerCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerChargingVoltageCallback(IChargeVoltageCallback iChargeVoltageCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerCltcOrWltcCallback(ICltcOrWltcCallback iCltcOrWltcCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerClusterFontCallback(IClusterFontCallback iClusterFontCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback iThemeSwitchCompleteCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerClusterThemeCallback(IClusterThemeCallback iClusterThemeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDiagDtcCallback(IDiagDtcInfoCallback iDiagDtcInfoCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDmsCallback(IDmsCallback iDmsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDoorOpenCallback(IDoorOpenCallback iDoorOpenCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDriveTimeCallback(IDriveTimeCallback iDriveTimeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDriverModeCallback(IDriverModeCallback iDriverModeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDrivingDataCallback(IDrivingDataCallback iDrivingDataCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDteAFCValueCallback(IDteAFCValueCallback iDteAFCValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDteCalculateValueCallback(IDteCalculateValueCallback iDteCalculateValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerDteValueCallbackCallback(IDteValueCallback iDteValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerFaceIdReq(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerFuelAddEventCallback(IFuelAddEventCallback iFuelAddEventCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback iFuelConsumptionUnitCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerFuelTankTypeCallback(IFuelTankTypeCallback iFuelTankTypeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback iFuelVolumeDisplayCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerFuelVolumeSampleCallback(IFuelVolumeSampleCallback iFuelVolumeSampleCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerGaugeSpeedCallback(IGaugeSpeedValueCallback iGaugeSpeedValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerIFECallback(IIFECallback iIFECallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerKeytoneCallback(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerLeftSideWarningCallback(IClusterLeftWarningCallback iClusterLeftWarningCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerMainTankResistanceCallback(IMainTankResistanceCallback iMainTankResistanceCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerMotorDteValueCallback(IMotorDteValueCallback iMotorDteValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerNaviInfoStatusCallback(INaviInfoStatusCallback iNaviInfoStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerNaviProjectionStatusCallback(INaviProjectionStatusCallback iNaviProjectionStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerOmsCallback(IOmsCallback iOmsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerOverFillStateCallback(IOverFillStateCallback iOverFillStateCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerPayloadODOValueCallback(IPayloadODOValueCallback iPayloadODOValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerPayloadTripAValueCallback(IPayloadTripAValueCallback iPayloadTripAValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerRadarWarningStatusCallback(IRadarWarningStatusCallback iRadarWarningStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback iRearviewMirrorStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerSeatMemorySwitchCallback(ISeatMemorySwitchCallback iSeatMemorySwitchCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerSteeringAngleCallback(ISteeringAngleCallback iSteeringAngleCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerStrStatusCallback(IStrStatusCallback iStrStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerSubTankResistanceCallback(ISubTankResistanceCallback iSubTankResistanceCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerTemperatureHighCallback(ITemperatureHighCallback iTemperatureHighCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerTimeFormatChangedCallback(ITimeFormatChangedCallback iTimeFormatChangedCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerTorqueLockStatusCallback(ITorqueLockStatusCallback iTorqueLockStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerTyreTemperatureCallback(ITyreTemperatureCallback iTyreTemperatureCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerVehicleFaultInfoChange(IVehicleFaultInfo iVehicleFaultInfo) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void registerXModeDisplayStatusCallback(IXModeDisplayStatusCallback iXModeDisplayStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void requestAvmStatus() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void requestFactoryReset() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void resetMaintenanceMileage() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void resetTripBAllData() {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void sendPitchAngleToCluster(float f10, float f11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void sendPitchAngleToMcu(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setActivationLicense(String str) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setAirPressure(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setAltitude(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setApaViewStatus(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setAvmViewStatus(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setBatteryAvailableUnit(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setCCOFanStatus(boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setCarModelColor(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setCarPlateNumber(String str) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setCltcOrWltcMode(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setClusterFont(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setDayNightMode(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setDmsDriverActionLevel(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setDmsDriverDistractionLevel(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setDmsDriverDrowsinessLevel(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setDmsUserSwitch(boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setDriveMode(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setFatigueDriveTime(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setLaneAssistSetting(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setMotorDrivePowerUnit(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setNaviCmd(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setNaviInfoStatus(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setNaviStartupStatus(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setRearSeatWarnningSwitch(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setScheduleChargingTime(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setSeatMemorySwitch(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setSpeedUnit(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setStrReadStatus(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setStrWriteStatus(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setSunTime(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setTemperatureUnit(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setThemeMode(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setThemeToCluster(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setTotalMileage(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setTyrePressureUnit(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setWarningSpeed(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setWarningVolumeLevel(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void setXModeStatus(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void systemReset(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAFCCallback(IAFCValueCallback iAFCValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAFCPHKMCallback(IAFCPHKMValueCallback iAFCPHKMValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterApaStatusCallback(IApaStatusCallback iApaStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvgElecCallback(IAvgElecCallback iAvgElecCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvgElecCnsCallback(IAvgElecCnsCallback iAvgElecCnsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvgEnergyCnsCallback(IAvgEnergyCnsCallback iAvgEnergyCnsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvgFuCallback(IAvgFuCallback iAvgFuCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvgFuCnsCallback(IAvgFuCnsCallback iAvgFuCnsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvgSpdCallback(IAvgSpdValueCallback iAvgSpdValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvmCameraStatusCallback(IAvmCameraStatusCallback iAvmCameraStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvmLogDataCallback(IAvmLogDataCallback iAvmLogDataCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterAvmStatusCallback(IAvmStatusCallback iAvmStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback iBootMusicPlayStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterCCODisplayStatusCallback(ICCODisplayStatusCallback iCCODisplayStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterChargeViewStatus(IChargeViewStatusCallback iChargeViewStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterChargingCurrentCallback(IChargeCurrentCallback iChargeCurrentCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterChargingInfoCallback(IChargePowerInfoCallback iChargePowerInfoCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterChargingPowerCallback(IChargePowerCallback iChargePowerCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterChargingVoltageCallback(IChargeVoltageCallback iChargeVoltageCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterCltcOrWltcCallback(ICltcOrWltcCallback iCltcOrWltcCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterClusterFontCallback(IClusterFontCallback iClusterFontCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback iThemeSwitchCompleteCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterClusterThemeCallback(IClusterThemeCallback iClusterThemeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDiagDtcCallback(IDiagDtcInfoCallback iDiagDtcInfoCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDmsCallback(IDmsCallback iDmsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDoorOpenCallback(IDoorOpenCallback iDoorOpenCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDriveTimeCallback(IDriveTimeCallback iDriveTimeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDriverModeCallback(IDriverModeCallback iDriverModeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDrivingDataCallback(IDrivingDataCallback iDrivingDataCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDteAFCValueCallback(IDteAFCValueCallback iDteAFCValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDteCalculateValueCallback(IDteCalculateValueCallback iDteCalculateValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterDteValueCallbackCallback(IDteValueCallback iDteValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterFuelAddEventCallback(IFuelAddEventCallback iFuelAddEventCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback iFuelConsumptionUnitCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterFuelTankTypeCallback(IFuelTankTypeCallback iFuelTankTypeCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback iFuelVolumeDisplayCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterFuelVolumeSampleCallback(IFuelVolumeSampleCallback iFuelVolumeSampleCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterGaugeSpeedCallback(IGaugeSpeedValueCallback iGaugeSpeedValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterIFECallback(IIFECallback iIFECallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterKeytoneCallback(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterLeftSideWarningCallback(IClusterLeftWarningCallback iClusterLeftWarningCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterMainTankResistanceCallback(IMainTankResistanceCallback iMainTankResistanceCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterMotorDteValueCallback(IMotorDteValueCallback iMotorDteValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterNaviInfoStatusCallback(INaviInfoStatusCallback iNaviInfoStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterNaviProjectionStatusCallback(INaviProjectionStatusCallback iNaviProjectionStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterOmsCallback(IOmsCallback iOmsCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterOverFillStateCallback(IOverFillStateCallback iOverFillStateCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterPayloadODOValueCallback(IPayloadODOValueCallback iPayloadODOValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterPayloadTripAValueCallback(IPayloadTripAValueCallback iPayloadTripAValueCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterRadarWarningStatusCallback(IRadarWarningStatusCallback iRadarWarningStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback iRearviewMirrorStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterSeatMemorySwitchCallback(ISeatMemorySwitchCallback iSeatMemorySwitchCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterSteeringAngleCallback(ISteeringAngleCallback iSteeringAngleCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterStrStatusCallback(IStrStatusCallback iStrStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterSubTankResistanceCallback(ISubTankResistanceCallback iSubTankResistanceCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterTemperatureHighCallback(ITemperatureHighCallback iTemperatureHighCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterTimeFormatChangedCallback(ITimeFormatChangedCallback iTimeFormatChangedCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterTorqueLockStatusCallback(ITorqueLockStatusCallback iTorqueLockStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterTyreTemperatureCallback(ITyreTemperatureCallback iTyreTemperatureCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterVehicleFaultInfoChange(IVehicleFaultInfo iVehicleFaultInfo) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void unregisterXModeDisplayStatusCallback(IXModeDisplayStatusCallback iXModeDisplayStatusCallback) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void updateCompassInfo(float f10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void updateFuelUnit(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void updateMediaInfo(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void updatePhoneCallInfo(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void updateRearViewKeyStatus(int i10) {
        }

        @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
        public void updateTimeFormat(boolean z) {
        }
    }

    public static abstract class Stub extends Binder implements IClusterInteraction {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.clusterinteraction.IClusterInteraction";
        static final int TRANSACTION_appBootCompleted = 64;
        static final int TRANSACTION_bootAnimationCompleted = 53;
        static final int TRANSACTION_chimeTest = 46;
        static final int TRANSACTION_deleteFaceIdReq = 41;
        static final int TRANSACTION_driverMonitorReq = 43;
        static final int TRANSACTION_getAFCPHKMValue = 146;
        static final int TRANSACTION_getAFCValue = 143;
        static final int TRANSACTION_getAdsL1ChimeStatusInfo = 256;
        static final int TRANSACTION_getAvgEnergyCns = 225;
        static final int TRANSACTION_getAvgSpd = 152;
        static final int TRANSACTION_getAvmStatus = 106;
        static final int TRANSACTION_getBatteryAvailableUnit = 229;
        static final int TRANSACTION_getCCODisplayStatus = 60;
        static final int TRANSACTION_getChargingInfo = 129;
        static final int TRANSACTION_getCltcOrWltcMode = 99;
        static final int TRANSACTION_getClusterFont = 216;
        static final int TRANSACTION_getClusterTheme = 206;
        static final int TRANSACTION_getCurrentSpeed = 102;
        static final int TRANSACTION_getDmsCameraStatus = 104;
        static final int TRANSACTION_getDmsStatus = 253;
        static final int TRANSACTION_getDriveMode = 58;
        static final int TRANSACTION_getDriveTime = 149;
        static final int TRANSACTION_getDrivingData = 251;
        static final int TRANSACTION_getDteAFCValue = 195;
        static final int TRANSACTION_getDteCalculateValue = 192;
        static final int TRANSACTION_getDteValue = 57;
        static final int TRANSACTION_getEnergyCurveProjectionStatus = 132;
        static final int TRANSACTION_getFatigueDriveTime = 209;
        static final int TRANSACTION_getFrontTorqueLockStatus = 107;
        static final int TRANSACTION_getFuelAddEvent = 204;
        static final int TRANSACTION_getFuelConsumptionUnit = 244;
        static final int TRANSACTION_getFuelTankType = 198;
        static final int TRANSACTION_getFuelVolumeDisplay = 186;
        static final int TRANSACTION_getFuelVolumeSample = 189;
        static final int TRANSACTION_getGaugeFuelPercent = 56;
        static final int TRANSACTION_getHEVOdoValue = 240;
        static final int TRANSACTION_getIFEValue = 155;
        static final int TRANSACTION_getLFTyreTemperature = 77;
        static final int TRANSACTION_getLRTyreTemperature = 79;
        static final int TRANSACTION_getMainTankResistance = 158;
        static final int TRANSACTION_getMotorDrivePowerUnit = 233;
        static final int TRANSACTION_getMotorDteValue = 35;
        static final int TRANSACTION_getNaviProjectionStatus = 65;
        static final int TRANSACTION_getOdoValue = 239;
        static final int TRANSACTION_getOverFillState = 201;
        static final int TRANSACTION_getPayloadMaintanceDistance = 182;
        static final int TRANSACTION_getRFTyreTemperature = 78;
        static final int TRANSACTION_getRRTyreTemperature = 80;
        static final int TRANSACTION_getRearSeatWarnningSwitch = 236;
        static final int TRANSACTION_getRearTorqueLockStatus = 108;
        static final int TRANSACTION_getSeatMemorySwitch = 248;
        static final int TRANSACTION_getSpeedUnit = 176;
        static final int TRANSACTION_getSubTankResistance = 161;
        static final int TRANSACTION_getTemperatureUnit = 177;
        static final int TRANSACTION_getTimeFormat = 168;
        static final int TRANSACTION_getTripAValue = 222;
        static final int TRANSACTION_getTyrePressureUnit = 175;
        static final int TRANSACTION_getVehicleFaultInfo = 116;
        static final int TRANSACTION_getWarningSpeed = 210;
        static final int TRANSACTION_getWarningVolumeLevel = 211;
        static final int TRANSACTION_getXModeDisplayStatus = 59;
        static final int TRANSACTION_healthLoginReq = 45;
        static final int TRANSACTION_healthMonitorReq = 42;
        static final int TRANSACTION_loginFaceIdReq = 40;
        static final int TRANSACTION_notifyAVMWindowsStatus = 171;
        static final int TRANSACTION_notifyBacklightAutoAdjustToCluster = 120;
        static final int TRANSACTION_notifyClusterLanguageSetting = 162;
        static final int TRANSACTION_notifyClusterWallpaperChanged = 219;
        static final int TRANSACTION_notifyFactoryReset = 118;
        static final int TRANSACTION_notifyNaviTrafficInfo = 234;
        static final int TRANSACTION_notifyTbtNaviTrafficInfo = 241;
        static final int TRANSACTION_omsMonitoringReq = 44;
        static final int TRANSACTION_registerAFCCallback = 141;
        static final int TRANSACTION_registerAFCPHKMCallback = 144;
        static final int TRANSACTION_registerAdsL1ChimeStatusCallback = 254;
        static final int TRANSACTION_registerApaStatusCallback = 21;
        static final int TRANSACTION_registerAvgElecCallback = 133;
        static final int TRANSACTION_registerAvgElecCnsCallback = 139;
        static final int TRANSACTION_registerAvgEnergyCnsCallback = 223;
        static final int TRANSACTION_registerAvgFuCallback = 135;
        static final int TRANSACTION_registerAvgFuCnsCallback = 137;
        static final int TRANSACTION_registerAvgSpdCallback = 150;
        static final int TRANSACTION_registerAvmCameraStatusCallback = 95;
        static final int TRANSACTION_registerAvmLogDataCallback = 89;
        static final int TRANSACTION_registerAvmStatusCallback = 19;
        static final int TRANSACTION_registerBatteryAvailableUnitCallback = 226;
        static final int TRANSACTION_registerBootMusicPlayStatusCallback = 91;
        static final int TRANSACTION_registerCCODisplayStatusCallback = 17;
        static final int TRANSACTION_registerChargeViewStatus = 109;
        static final int TRANSACTION_registerChargingCurrentCallback = 123;
        static final int TRANSACTION_registerChargingInfoCallback = 127;
        static final int TRANSACTION_registerChargingPowerCallback = 121;
        static final int TRANSACTION_registerChargingVoltageCallback = 125;
        static final int TRANSACTION_registerCltcOrWltcCallback = 97;
        static final int TRANSACTION_registerClusterFontCallback = 217;
        static final int TRANSACTION_registerClusterSwitchThemeCompleteCallback = 213;
        static final int TRANSACTION_registerClusterThemeCallback = 207;
        static final int TRANSACTION_registerDiagDtcCallback = 31;
        static final int TRANSACTION_registerDmsCallback = 1;
        static final int TRANSACTION_registerDoorOpenCallback = 165;
        static final int TRANSACTION_registerDriveTimeCallback = 147;
        static final int TRANSACTION_registerDriverModeCallback = 5;
        static final int TRANSACTION_registerDrivingDataCallback = 249;
        static final int TRANSACTION_registerDteAFCValueCallback = 193;
        static final int TRANSACTION_registerDteCalculateValueCallback = 190;
        static final int TRANSACTION_registerDteValueCallbackCallback = 9;
        static final int TRANSACTION_registerEnergyCurveProjectionCallback = 130;
        static final int TRANSACTION_registerFaceIdReq = 39;
        static final int TRANSACTION_registerFuelAddEventCallback = 202;
        static final int TRANSACTION_registerFuelConsumptionUnitCallback = 242;
        static final int TRANSACTION_registerFuelTankTypeCallback = 196;
        static final int TRANSACTION_registerFuelVolumeDisplayCallback = 184;
        static final int TRANSACTION_registerFuelVolumeSampleCallback = 187;
        static final int TRANSACTION_registerGaugeSpeedCallback = 87;
        static final int TRANSACTION_registerIFECallback = 153;
        static final int TRANSACTION_registerKeytoneCallback = 83;
        static final int TRANSACTION_registerLeftSideWarningCallback = 85;
        static final int TRANSACTION_registerMainTankResistanceCallback = 156;
        static final int TRANSACTION_registerMotorDrivePowerUnitCallback = 230;
        static final int TRANSACTION_registerMotorDteValueCallback = 33;
        static final int TRANSACTION_registerNaviInfoStatusCallback = 13;
        static final int TRANSACTION_registerNaviProjectionStatusCallback = 93;
        static final int TRANSACTION_registerOmsCallback = 3;
        static final int TRANSACTION_registerOverFillStateCallback = 199;
        static final int TRANSACTION_registerPayloadMaintanceDistanceCallback = 180;
        static final int TRANSACTION_registerPayloadODOValueCallback = 237;
        static final int TRANSACTION_registerPayloadTripAValueCallback = 220;
        static final int TRANSACTION_registerRadarWarningStatusCallback = 27;
        static final int TRANSACTION_registerRearviewMirrorStatusCallback = 25;
        static final int TRANSACTION_registerSeatMemorySwitchCallback = 245;
        static final int TRANSACTION_registerSteeringAngleCallback = 29;
        static final int TRANSACTION_registerStrStatusCallback = 23;
        static final int TRANSACTION_registerSubTankResistanceCallback = 159;
        static final int TRANSACTION_registerTemperatureHighCallback = 11;
        static final int TRANSACTION_registerTimeFormatChangedCallback = 169;
        static final int TRANSACTION_registerTorqueLockStatusCallback = 7;
        static final int TRANSACTION_registerTyreTemperatureCallback = 81;
        static final int TRANSACTION_registerVehicleFaultInfoChange = 112;
        static final int TRANSACTION_registerXModeDisplayStatusCallback = 15;
        static final int TRANSACTION_requestAvmStatus = 105;
        static final int TRANSACTION_requestFactoryReset = 117;
        static final int TRANSACTION_resetMaintenanceMileage = 179;
        static final int TRANSACTION_resetTripBAllData = 252;
        static final int TRANSACTION_sendPitchAngleToCluster = 72;
        static final int TRANSACTION_sendPitchAngleToMcu = 71;
        static final int TRANSACTION_setActivationLicense = 54;
        static final int TRANSACTION_setAirPressure = 163;
        static final int TRANSACTION_setAltitude = 164;
        static final int TRANSACTION_setApaViewStatus = 66;
        static final int TRANSACTION_setAvmViewStatus = 67;
        static final int TRANSACTION_setBatteryAvailableUnit = 228;
        static final int TRANSACTION_setCCOFanStatus = 55;
        static final int TRANSACTION_setCarModelColor = 178;
        static final int TRANSACTION_setCarPlateNumber = 70;
        static final int TRANSACTION_setCltcOrWltcMode = 100;
        static final int TRANSACTION_setClusterFont = 215;
        static final int TRANSACTION_setDayNightMode = 74;
        static final int TRANSACTION_setDmsDriverActionLevel = 61;
        static final int TRANSACTION_setDmsDriverDistractionLevel = 62;
        static final int TRANSACTION_setDmsDriverDrowsinessLevel = 63;
        static final int TRANSACTION_setDmsUserSwitch = 38;
        static final int TRANSACTION_setDriveMode = 103;
        static final int TRANSACTION_setFatigueDriveTime = 114;
        static final int TRANSACTION_setLaneAssistSetting = 101;
        static final int TRANSACTION_setMotorDrivePowerUnit = 232;
        static final int TRANSACTION_setNaviCmd = 36;
        static final int TRANSACTION_setNaviInfoStatus = 37;
        static final int TRANSACTION_setNaviStartupStatus = 75;
        static final int TRANSACTION_setRearSeatWarnningSwitch = 235;
        static final int TRANSACTION_setScheduleChargingTime = 111;
        static final int TRANSACTION_setSeatMemorySwitch = 247;
        static final int TRANSACTION_setSpeedUnit = 173;
        static final int TRANSACTION_setStrReadStatus = 68;
        static final int TRANSACTION_setStrWriteStatus = 69;
        static final int TRANSACTION_setSunTime = 76;
        static final int TRANSACTION_setTemperatureUnit = 174;
        static final int TRANSACTION_setThemeMode = 183;
        static final int TRANSACTION_setThemeToCluster = 205;
        static final int TRANSACTION_setTotalMileage = 73;
        static final int TRANSACTION_setTyrePressureUnit = 172;
        static final int TRANSACTION_setWarningSpeed = 115;
        static final int TRANSACTION_setWarningVolumeLevel = 119;
        static final int TRANSACTION_setXModeStatus = 167;
        static final int TRANSACTION_systemReset = 212;
        static final int TRANSACTION_unregisterAFCCallback = 142;
        static final int TRANSACTION_unregisterAFCPHKMCallback = 145;
        static final int TRANSACTION_unregisterAdsL1ChimeStatusCallback = 255;
        static final int TRANSACTION_unregisterApaStatusCallback = 22;
        static final int TRANSACTION_unregisterAvgElecCallback = 134;
        static final int TRANSACTION_unregisterAvgElecCnsCallback = 140;
        static final int TRANSACTION_unregisterAvgEnergyCnsCallback = 224;
        static final int TRANSACTION_unregisterAvgFuCallback = 136;
        static final int TRANSACTION_unregisterAvgFuCnsCallback = 138;
        static final int TRANSACTION_unregisterAvgSpdCallback = 151;
        static final int TRANSACTION_unregisterAvmCameraStatusCallback = 96;
        static final int TRANSACTION_unregisterAvmLogDataCallback = 90;
        static final int TRANSACTION_unregisterAvmStatusCallback = 20;
        static final int TRANSACTION_unregisterBatteryAvailableUnitCallback = 227;
        static final int TRANSACTION_unregisterBootMusicPlayStatusCallback = 92;
        static final int TRANSACTION_unregisterCCODisplayStatusCallback = 18;
        static final int TRANSACTION_unregisterChargeViewStatus = 110;
        static final int TRANSACTION_unregisterChargingCurrentCallback = 124;
        static final int TRANSACTION_unregisterChargingInfoCallback = 128;
        static final int TRANSACTION_unregisterChargingPowerCallback = 122;
        static final int TRANSACTION_unregisterChargingVoltageCallback = 126;
        static final int TRANSACTION_unregisterCltcOrWltcCallback = 98;
        static final int TRANSACTION_unregisterClusterFontCallback = 218;
        static final int TRANSACTION_unregisterClusterSwitchThemeCompleteCallback = 214;
        static final int TRANSACTION_unregisterClusterThemeCallback = 208;
        static final int TRANSACTION_unregisterDiagDtcCallback = 32;
        static final int TRANSACTION_unregisterDmsCallback = 2;
        static final int TRANSACTION_unregisterDoorOpenCallback = 166;
        static final int TRANSACTION_unregisterDriveTimeCallback = 148;
        static final int TRANSACTION_unregisterDriverModeCallback = 6;
        static final int TRANSACTION_unregisterDrivingDataCallback = 250;
        static final int TRANSACTION_unregisterDteAFCValueCallback = 194;
        static final int TRANSACTION_unregisterDteCalculateValueCallback = 191;
        static final int TRANSACTION_unregisterDteValueCallbackCallback = 10;
        static final int TRANSACTION_unregisterEnergyCurveProjectionCallback = 131;
        static final int TRANSACTION_unregisterFuelAddEventCallback = 203;
        static final int TRANSACTION_unregisterFuelConsumptionUnitCallback = 243;
        static final int TRANSACTION_unregisterFuelTankTypeCallback = 197;
        static final int TRANSACTION_unregisterFuelVolumeDisplayCallback = 185;
        static final int TRANSACTION_unregisterFuelVolumeSampleCallback = 188;
        static final int TRANSACTION_unregisterGaugeSpeedCallback = 88;
        static final int TRANSACTION_unregisterIFECallback = 154;
        static final int TRANSACTION_unregisterKeytoneCallback = 84;
        static final int TRANSACTION_unregisterLeftSideWarningCallback = 86;
        static final int TRANSACTION_unregisterMainTankResistanceCallback = 157;
        static final int TRANSACTION_unregisterMotorDrivePowerUnitCallback = 231;
        static final int TRANSACTION_unregisterMotorDteValueCallback = 34;
        static final int TRANSACTION_unregisterNaviInfoStatusCallback = 14;
        static final int TRANSACTION_unregisterNaviProjectionStatusCallback = 94;
        static final int TRANSACTION_unregisterOmsCallback = 4;
        static final int TRANSACTION_unregisterOverFillStateCallback = 200;
        static final int TRANSACTION_unregisterPayloadMaintanceDistanceCallback = 181;
        static final int TRANSACTION_unregisterPayloadODOValueCallback = 238;
        static final int TRANSACTION_unregisterPayloadTripAValueCallback = 221;
        static final int TRANSACTION_unregisterRadarWarningStatusCallback = 28;
        static final int TRANSACTION_unregisterRearviewMirrorStatusCallback = 26;
        static final int TRANSACTION_unregisterSeatMemorySwitchCallback = 246;
        static final int TRANSACTION_unregisterSteeringAngleCallback = 30;
        static final int TRANSACTION_unregisterStrStatusCallback = 24;
        static final int TRANSACTION_unregisterSubTankResistanceCallback = 160;
        static final int TRANSACTION_unregisterTemperatureHighCallback = 12;
        static final int TRANSACTION_unregisterTimeFormatChangedCallback = 170;
        static final int TRANSACTION_unregisterTorqueLockStatusCallback = 8;
        static final int TRANSACTION_unregisterTyreTemperatureCallback = 82;
        static final int TRANSACTION_unregisterVehicleFaultInfoChange = 113;
        static final int TRANSACTION_unregisterXModeDisplayStatusCallback = 16;
        static final int TRANSACTION_updateCompassInfo = 50;
        static final int TRANSACTION_updateFuelUnit = 49;
        static final int TRANSACTION_updateMediaInfo = 48;
        static final int TRANSACTION_updatePhoneCallInfo = 47;
        static final int TRANSACTION_updateRearViewKeyStatus = 52;
        static final int TRANSACTION_updateTimeFormat = 51;

        public static class Proxy implements IClusterInteraction {
            public static IClusterInteraction sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void appBootCompleted(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(64, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().appBootCompleted(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void bootAnimationCompleted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(53, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().bootAnimationCompleted();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void chimeTest() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(46, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().chimeTest();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void deleteFaceIdReq(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().deleteFaceIdReq(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void driverMonitorReq(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().driverMonitorReq(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getAFCPHKMValue() {
                int aFCPHKMValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(146, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        aFCPHKMValue = parcelObtain2.readInt();
                    } else {
                        aFCPHKMValue = Stub.getDefaultImpl().getAFCPHKMValue();
                    }
                    return aFCPHKMValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getAFCValue() {
                int aFCValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(143, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        aFCValue = parcelObtain2.readInt();
                    } else {
                        aFCValue = Stub.getDefaultImpl().getAFCValue();
                    }
                    return aFCValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public AdsL1ChimeStatusInfo getAdsL1ChimeStatusInfo() {
                AdsL1ChimeStatusInfo adsL1ChimeStatusInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(256, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        adsL1ChimeStatusInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? AdsL1ChimeStatusInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        adsL1ChimeStatusInfoCreateFromParcel = Stub.getDefaultImpl().getAdsL1ChimeStatusInfo();
                    }
                    return adsL1ChimeStatusInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getAvgEnergyCns() {
                float avgEnergyCns;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(Stub.TRANSACTION_getAvgEnergyCns, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        avgEnergyCns = parcelObtain2.readFloat();
                    } else {
                        avgEnergyCns = Stub.getDefaultImpl().getAvgEnergyCns();
                    }
                    return avgEnergyCns;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getAvgSpd() {
                int avgSpd;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(152, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        avgSpd = parcelObtain2.readInt();
                    } else {
                        avgSpd = Stub.getDefaultImpl().getAvgSpd();
                    }
                    return avgSpd;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public boolean getAvmStatus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(106, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvmStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getBatteryAvailableUnit() {
                int batteryAvailableUnit;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(229, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        batteryAvailableUnit = parcelObtain2.readInt();
                    } else {
                        batteryAvailableUnit = Stub.getDefaultImpl().getBatteryAvailableUnit();
                    }
                    return batteryAvailableUnit;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getCCODisplayStatus() {
                int cCODisplayStatus;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(60, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        cCODisplayStatus = parcelObtain2.readInt();
                    } else {
                        cCODisplayStatus = Stub.getDefaultImpl().getCCODisplayStatus();
                    }
                    return cCODisplayStatus;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float[] getChargingInfo() {
                float[] fArrCreateFloatArray;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(129, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fArrCreateFloatArray = parcelObtain2.createFloatArray();
                    } else {
                        fArrCreateFloatArray = Stub.getDefaultImpl().getChargingInfo();
                    }
                    return fArrCreateFloatArray;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getCltcOrWltcMode() {
                int cltcOrWltcMode;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(99, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        cltcOrWltcMode = parcelObtain2.readInt();
                    } else {
                        cltcOrWltcMode = Stub.getDefaultImpl().getCltcOrWltcMode();
                    }
                    return cltcOrWltcMode;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getClusterFont() {
                int clusterFont;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(216, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        clusterFont = parcelObtain2.readInt();
                    } else {
                        clusterFont = Stub.getDefaultImpl().getClusterFont();
                    }
                    return clusterFont;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getClusterTheme() {
                int clusterTheme;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(206, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        clusterTheme = parcelObtain2.readInt();
                    } else {
                        clusterTheme = Stub.getDefaultImpl().getClusterTheme();
                    }
                    return clusterTheme;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getCurrentSpeed() {
                float currentSpeed;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(102, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        currentSpeed = parcelObtain2.readFloat();
                    } else {
                        currentSpeed = Stub.getDefaultImpl().getCurrentSpeed();
                    }
                    return currentSpeed;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void getDmsCameraStatus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(104, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getDmsCameraStatus();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getDmsStatus() {
                int dmsStatus;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(253, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        dmsStatus = parcelObtain2.readInt();
                    } else {
                        dmsStatus = Stub.getDefaultImpl().getDmsStatus();
                    }
                    return dmsStatus;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getDriveMode() {
                int driveMode;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(58, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        driveMode = parcelObtain2.readInt();
                    } else {
                        driveMode = Stub.getDefaultImpl().getDriveMode();
                    }
                    return driveMode;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getDriveTime() {
                int driveTime;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(149, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        driveTime = parcelObtain2.readInt();
                    } else {
                        driveTime = Stub.getDefaultImpl().getDriveTime();
                    }
                    return driveTime;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float[] getDrivingData() {
                float[] fArrCreateFloatArray;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(251, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fArrCreateFloatArray = parcelObtain2.createFloatArray();
                    } else {
                        fArrCreateFloatArray = Stub.getDefaultImpl().getDrivingData();
                    }
                    return fArrCreateFloatArray;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getDteAFCValue() {
                float dteAFCValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(195, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        dteAFCValue = parcelObtain2.readFloat();
                    } else {
                        dteAFCValue = Stub.getDefaultImpl().getDteAFCValue();
                    }
                    return dteAFCValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getDteCalculateValue() {
                int dteCalculateValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(192, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        dteCalculateValue = parcelObtain2.readInt();
                    } else {
                        dteCalculateValue = Stub.getDefaultImpl().getDteCalculateValue();
                    }
                    return dteCalculateValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getDteValue() {
                int dteValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(57, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        dteValue = parcelObtain2.readInt();
                    } else {
                        dteValue = Stub.getDefaultImpl().getDteValue();
                    }
                    return dteValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getEnergyCurveProjectionStatus() {
                int energyCurveProjectionStatus;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(132, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        energyCurveProjectionStatus = parcelObtain2.readInt();
                    } else {
                        energyCurveProjectionStatus = Stub.getDefaultImpl().getEnergyCurveProjectionStatus();
                    }
                    return energyCurveProjectionStatus;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getFatigueDriveTime() {
                int fatigueDriveTime;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(209, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fatigueDriveTime = parcelObtain2.readInt();
                    } else {
                        fatigueDriveTime = Stub.getDefaultImpl().getFatigueDriveTime();
                    }
                    return fatigueDriveTime;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getFrontTorqueLockStatus() {
                int frontTorqueLockStatus;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(107, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        frontTorqueLockStatus = parcelObtain2.readInt();
                    } else {
                        frontTorqueLockStatus = Stub.getDefaultImpl().getFrontTorqueLockStatus();
                    }
                    return frontTorqueLockStatus;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getFuelAddEvent() {
                int fuelAddEvent;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(204, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fuelAddEvent = parcelObtain2.readInt();
                    } else {
                        fuelAddEvent = Stub.getDefaultImpl().getFuelAddEvent();
                    }
                    return fuelAddEvent;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getFuelConsumptionUnit() {
                int fuelConsumptionUnit;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(244, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fuelConsumptionUnit = parcelObtain2.readInt();
                    } else {
                        fuelConsumptionUnit = Stub.getDefaultImpl().getFuelConsumptionUnit();
                    }
                    return fuelConsumptionUnit;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getFuelTankType() {
                int fuelTankType;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(198, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fuelTankType = parcelObtain2.readInt();
                    } else {
                        fuelTankType = Stub.getDefaultImpl().getFuelTankType();
                    }
                    return fuelTankType;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getFuelVolumeDisplay() {
                float fuelVolumeDisplay;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(186, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fuelVolumeDisplay = parcelObtain2.readFloat();
                    } else {
                        fuelVolumeDisplay = Stub.getDefaultImpl().getFuelVolumeDisplay();
                    }
                    return fuelVolumeDisplay;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getFuelVolumeSample() {
                float fuelVolumeSample;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(189, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        fuelVolumeSample = parcelObtain2.readFloat();
                    } else {
                        fuelVolumeSample = Stub.getDefaultImpl().getFuelVolumeSample();
                    }
                    return fuelVolumeSample;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getGaugeFuelPercent() {
                int gaugeFuelPercent;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(56, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        gaugeFuelPercent = parcelObtain2.readInt();
                    } else {
                        gaugeFuelPercent = Stub.getDefaultImpl().getGaugeFuelPercent();
                    }
                    return gaugeFuelPercent;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getHEVOdoValue() {
                float hEVOdoValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(240, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        hEVOdoValue = parcelObtain2.readFloat();
                    } else {
                        hEVOdoValue = Stub.getDefaultImpl().getHEVOdoValue();
                    }
                    return hEVOdoValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getIFEValue() {
                int iFEValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(155, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iFEValue = parcelObtain2.readInt();
                    } else {
                        iFEValue = Stub.getDefaultImpl().getIFEValue();
                    }
                    return iFEValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getLFTyreTemperature() {
                int lFTyreTemperature;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(77, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        lFTyreTemperature = parcelObtain2.readInt();
                    } else {
                        lFTyreTemperature = Stub.getDefaultImpl().getLFTyreTemperature();
                    }
                    return lFTyreTemperature;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getLRTyreTemperature() {
                int lRTyreTemperature;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(79, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        lRTyreTemperature = parcelObtain2.readInt();
                    } else {
                        lRTyreTemperature = Stub.getDefaultImpl().getLRTyreTemperature();
                    }
                    return lRTyreTemperature;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getMainTankResistance() {
                int mainTankResistance;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(158, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        mainTankResistance = parcelObtain2.readInt();
                    } else {
                        mainTankResistance = Stub.getDefaultImpl().getMainTankResistance();
                    }
                    return mainTankResistance;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getMotorDrivePowerUnit() {
                int motorDrivePowerUnit;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(233, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        motorDrivePowerUnit = parcelObtain2.readInt();
                    } else {
                        motorDrivePowerUnit = Stub.getDefaultImpl().getMotorDrivePowerUnit();
                    }
                    return motorDrivePowerUnit;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getMotorDteValue() {
                int motorDteValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        motorDteValue = parcelObtain2.readInt();
                    } else {
                        motorDteValue = Stub.getDefaultImpl().getMotorDteValue();
                    }
                    return motorDteValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void getNaviProjectionStatus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(65, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getNaviProjectionStatus();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getOdoValue() {
                float odoValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(239, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        odoValue = parcelObtain2.readFloat();
                    } else {
                        odoValue = Stub.getDefaultImpl().getOdoValue();
                    }
                    return odoValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getOverFillState() {
                int overFillState;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(201, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        overFillState = parcelObtain2.readInt();
                    } else {
                        overFillState = Stub.getDefaultImpl().getOverFillState();
                    }
                    return overFillState;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getPayloadMaintanceDistance() {
                int payloadMaintanceDistance;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(182, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        payloadMaintanceDistance = parcelObtain2.readInt();
                    } else {
                        payloadMaintanceDistance = Stub.getDefaultImpl().getPayloadMaintanceDistance();
                    }
                    return payloadMaintanceDistance;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getRFTyreTemperature() {
                int rFTyreTemperature;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(78, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        rFTyreTemperature = parcelObtain2.readInt();
                    } else {
                        rFTyreTemperature = Stub.getDefaultImpl().getRFTyreTemperature();
                    }
                    return rFTyreTemperature;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getRRTyreTemperature() {
                int rRTyreTemperature;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(80, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        rRTyreTemperature = parcelObtain2.readInt();
                    } else {
                        rRTyreTemperature = Stub.getDefaultImpl().getRRTyreTemperature();
                    }
                    return rRTyreTemperature;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getRearSeatWarnningSwitch() {
                int rearSeatWarnningSwitch;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(236, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        rearSeatWarnningSwitch = parcelObtain2.readInt();
                    } else {
                        rearSeatWarnningSwitch = Stub.getDefaultImpl().getRearSeatWarnningSwitch();
                    }
                    return rearSeatWarnningSwitch;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getRearTorqueLockStatus() {
                int rearTorqueLockStatus;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(108, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        rearTorqueLockStatus = parcelObtain2.readInt();
                    } else {
                        rearTorqueLockStatus = Stub.getDefaultImpl().getRearTorqueLockStatus();
                    }
                    return rearTorqueLockStatus;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getSeatMemorySwitch() {
                int seatMemorySwitch;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(248, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        seatMemorySwitch = parcelObtain2.readInt();
                    } else {
                        seatMemorySwitch = Stub.getDefaultImpl().getSeatMemorySwitch();
                    }
                    return seatMemorySwitch;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getSpeedUnit() {
                int speedUnit;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(176, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        speedUnit = parcelObtain2.readInt();
                    } else {
                        speedUnit = Stub.getDefaultImpl().getSpeedUnit();
                    }
                    return speedUnit;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getSubTankResistance() {
                int subTankResistance;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(161, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        subTankResistance = parcelObtain2.readInt();
                    } else {
                        subTankResistance = Stub.getDefaultImpl().getSubTankResistance();
                    }
                    return subTankResistance;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getTemperatureUnit() {
                int temperatureUnit;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(177, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        temperatureUnit = parcelObtain2.readInt();
                    } else {
                        temperatureUnit = Stub.getDefaultImpl().getTemperatureUnit();
                    }
                    return temperatureUnit;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getTimeFormat() {
                int timeFormat;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(168, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        timeFormat = parcelObtain2.readInt();
                    } else {
                        timeFormat = Stub.getDefaultImpl().getTimeFormat();
                    }
                    return timeFormat;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public float getTripAValue() {
                float tripAValue;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(222, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        tripAValue = parcelObtain2.readFloat();
                    } else {
                        tripAValue = Stub.getDefaultImpl().getTripAValue();
                    }
                    return tripAValue;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getTyrePressureUnit() {
                int tyrePressureUnit;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(175, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        tyrePressureUnit = parcelObtain2.readInt();
                    } else {
                        tyrePressureUnit = Stub.getDefaultImpl().getTyrePressureUnit();
                    }
                    return tyrePressureUnit;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void getVehicleFaultInfo() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(116, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getVehicleFaultInfo();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getWarningSpeed() {
                int warningSpeed;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(210, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        warningSpeed = parcelObtain2.readInt();
                    } else {
                        warningSpeed = Stub.getDefaultImpl().getWarningSpeed();
                    }
                    return warningSpeed;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getWarningVolumeLevel() {
                int warningVolumeLevel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(211, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        warningVolumeLevel = parcelObtain2.readInt();
                    } else {
                        warningVolumeLevel = Stub.getDefaultImpl().getWarningVolumeLevel();
                    }
                    return warningVolumeLevel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public int getXModeDisplayStatus() {
                int xModeDisplayStatus;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(59, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        xModeDisplayStatus = parcelObtain2.readInt();
                    } else {
                        xModeDisplayStatus = Stub.getDefaultImpl().getXModeDisplayStatus();
                    }
                    return xModeDisplayStatus;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void healthLoginReq(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().healthLoginReq(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void healthMonitorReq(int i10, int i11, int i12, int i13, int i14) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    parcelObtain.writeInt(i14);
                    if (this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().healthMonitorReq(i10, i11, i12, i13, i14);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void loginFaceIdReq(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().loginFaceIdReq(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void notifyAVMWindowsStatus(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(171, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyAVMWindowsStatus(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void notifyBacklightAutoAdjustToCluster(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(120, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyBacklightAutoAdjustToCluster(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void notifyClusterLanguageSetting(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(162, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyClusterLanguageSetting(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void notifyClusterWallpaperChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(Stub.TRANSACTION_notifyClusterWallpaperChanged, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyClusterWallpaperChanged(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void notifyFactoryReset(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(118, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyFactoryReset(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void notifyNaviTrafficInfo(int i10, int i11, int i12, int i13, int i14) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    parcelObtain.writeInt(i14);
                    if (this.mRemote.transact(234, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyNaviTrafficInfo(i10, i11, i12, i13, i14);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:28:0x004e A[Catch: all -> 0x006e, TryCatch #7 {all -> 0x006e, blocks: (B:26:0x0044, B:28:0x004e, B:30:0x0054, B:33:0x0070), top: B:59:0x0044 }] */
            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void notifyTbtNaviTrafficInfo(int i10, String str, String str2, List<TbtTrafficLaneInfo> list, int i11, String str3, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        parcelObtain.writeInt(i10);
                    } catch (Throwable unused) {
                        if (this.mRemote.transact(241, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable unused2) {
                }
                try {
                    parcelObtain.writeString(str);
                    try {
                        parcelObtain.writeString(str2);
                        try {
                            parcelObtain.writeTypedList(list);
                            try {
                                parcelObtain.writeInt(i11);
                                try {
                                    parcelObtain.writeString(str3);
                                    try {
                                        parcelObtain.writeInt(z ? 1 : 0);
                                    } catch (Throwable unused3) {
                                    }
                                } catch (Throwable unused4) {
                                    if (this.mRemote.transact(241, parcelObtain, parcelObtain2, 0)) {
                                    }
                                    parcelObtain2.readException();
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                }
                            } catch (Throwable unused5) {
                                if (this.mRemote.transact(241, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused6) {
                            if (this.mRemote.transact(241, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused7) {
                        if (this.mRemote.transact(241, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable unused8) {
                    if (this.mRemote.transact(241, parcelObtain, parcelObtain2, 0)) {
                    }
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
                try {
                    if (!this.mRemote.transact(241, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().notifyTbtNaviTrafficInfo(i10, str, str2, list, i11, str3, z);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw new RemoteException(th2.getMessage());
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void omsMonitoringReq(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().omsMonitoringReq(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAFCCallback(IAFCValueCallback iAFCValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAFCValueCallback != null ? iAFCValueCallback.asBinder() : null);
                    if (this.mRemote.transact(141, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAFCCallback(iAFCValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAFCPHKMCallback(IAFCPHKMValueCallback iAFCPHKMValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAFCPHKMValueCallback != null ? iAFCPHKMValueCallback.asBinder() : null);
                    if (this.mRemote.transact(144, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAFCPHKMCallback(iAFCPHKMValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAdsL1ChimeStatusCallback != null ? iAdsL1ChimeStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(254, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAdsL1ChimeStatusCallback(iAdsL1ChimeStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerApaStatusCallback(IApaStatusCallback iApaStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApaStatusCallback != null ? iApaStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerApaStatusCallback(iApaStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvgElecCallback(IAvgElecCallback iAvgElecCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgElecCallback != null ? iAvgElecCallback.asBinder() : null);
                    if (this.mRemote.transact(133, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvgElecCallback(iAvgElecCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvgElecCnsCallback(IAvgElecCnsCallback iAvgElecCnsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgElecCnsCallback != null ? iAvgElecCnsCallback.asBinder() : null);
                    if (this.mRemote.transact(139, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvgElecCnsCallback(iAvgElecCnsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvgEnergyCnsCallback(IAvgEnergyCnsCallback iAvgEnergyCnsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgEnergyCnsCallback != null ? iAvgEnergyCnsCallback.asBinder() : null);
                    if (this.mRemote.transact(223, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvgEnergyCnsCallback(iAvgEnergyCnsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvgFuCallback(IAvgFuCallback iAvgFuCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgFuCallback != null ? iAvgFuCallback.asBinder() : null);
                    if (this.mRemote.transact(135, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvgFuCallback(iAvgFuCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvgFuCnsCallback(IAvgFuCnsCallback iAvgFuCnsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgFuCnsCallback != null ? iAvgFuCnsCallback.asBinder() : null);
                    if (this.mRemote.transact(137, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvgFuCnsCallback(iAvgFuCnsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvgSpdCallback(IAvgSpdValueCallback iAvgSpdValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgSpdValueCallback != null ? iAvgSpdValueCallback.asBinder() : null);
                    if (this.mRemote.transact(150, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvgSpdCallback(iAvgSpdValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvmCameraStatusCallback(IAvmCameraStatusCallback iAvmCameraStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvmCameraStatusCallback != null ? iAvmCameraStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(95, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvmCameraStatusCallback(iAvmCameraStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvmLogDataCallback(IAvmLogDataCallback iAvmLogDataCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvmLogDataCallback != null ? iAvmLogDataCallback.asBinder() : null);
                    if (this.mRemote.transact(89, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvmLogDataCallback(iAvmLogDataCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerAvmStatusCallback(IAvmStatusCallback iAvmStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvmStatusCallback != null ? iAvmStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAvmStatusCallback(iAvmStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBatteryAvailableUnitCallback != null ? iBatteryAvailableUnitCallback.asBinder() : null);
                    if (this.mRemote.transact(Stub.TRANSACTION_registerBatteryAvailableUnitCallback, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerBatteryAvailableUnitCallback(iBatteryAvailableUnitCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback iBootMusicPlayStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBootMusicPlayStatusCallback != null ? iBootMusicPlayStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(91, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerBootMusicPlayStatusCallback(iBootMusicPlayStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerCCODisplayStatusCallback(ICCODisplayStatusCallback iCCODisplayStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCCODisplayStatusCallback != null ? iCCODisplayStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCCODisplayStatusCallback(iCCODisplayStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerChargeViewStatus(IChargeViewStatusCallback iChargeViewStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargeViewStatusCallback != null ? iChargeViewStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(109, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerChargeViewStatus(iChargeViewStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerChargingCurrentCallback(IChargeCurrentCallback iChargeCurrentCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargeCurrentCallback != null ? iChargeCurrentCallback.asBinder() : null);
                    if (this.mRemote.transact(123, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerChargingCurrentCallback(iChargeCurrentCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerChargingInfoCallback(IChargePowerInfoCallback iChargePowerInfoCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargePowerInfoCallback != null ? iChargePowerInfoCallback.asBinder() : null);
                    if (this.mRemote.transact(127, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerChargingInfoCallback(iChargePowerInfoCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerChargingPowerCallback(IChargePowerCallback iChargePowerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargePowerCallback != null ? iChargePowerCallback.asBinder() : null);
                    if (this.mRemote.transact(121, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerChargingPowerCallback(iChargePowerCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerChargingVoltageCallback(IChargeVoltageCallback iChargeVoltageCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargeVoltageCallback != null ? iChargeVoltageCallback.asBinder() : null);
                    if (this.mRemote.transact(125, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerChargingVoltageCallback(iChargeVoltageCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerCltcOrWltcCallback(ICltcOrWltcCallback iCltcOrWltcCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCltcOrWltcCallback != null ? iCltcOrWltcCallback.asBinder() : null);
                    if (this.mRemote.transact(97, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCltcOrWltcCallback(iCltcOrWltcCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerClusterFontCallback(IClusterFontCallback iClusterFontCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterFontCallback != null ? iClusterFontCallback.asBinder() : null);
                    if (this.mRemote.transact(217, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerClusterFontCallback(iClusterFontCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback iThemeSwitchCompleteCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iThemeSwitchCompleteCallback != null ? iThemeSwitchCompleteCallback.asBinder() : null);
                    if (this.mRemote.transact(213, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerClusterSwitchThemeCompleteCallback(iThemeSwitchCompleteCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerClusterThemeCallback(IClusterThemeCallback iClusterThemeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterThemeCallback != null ? iClusterThemeCallback.asBinder() : null);
                    if (this.mRemote.transact(207, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerClusterThemeCallback(iClusterThemeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDiagDtcCallback(IDiagDtcInfoCallback iDiagDtcInfoCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDiagDtcInfoCallback != null ? iDiagDtcInfoCallback.asBinder() : null);
                    if (this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDiagDtcCallback(iDiagDtcInfoCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDmsCallback(IDmsCallback iDmsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDmsCallback != null ? iDmsCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDmsCallback(iDmsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDoorOpenCallback(IDoorOpenCallback iDoorOpenCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDoorOpenCallback != null ? iDoorOpenCallback.asBinder() : null);
                    if (this.mRemote.transact(165, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDoorOpenCallback(iDoorOpenCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDriveTimeCallback(IDriveTimeCallback iDriveTimeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDriveTimeCallback != null ? iDriveTimeCallback.asBinder() : null);
                    if (this.mRemote.transact(147, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDriveTimeCallback(iDriveTimeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDriverModeCallback(IDriverModeCallback iDriverModeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDriverModeCallback != null ? iDriverModeCallback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDriverModeCallback(iDriverModeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDrivingDataCallback(IDrivingDataCallback iDrivingDataCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDrivingDataCallback != null ? iDrivingDataCallback.asBinder() : null);
                    if (this.mRemote.transact(249, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDrivingDataCallback(iDrivingDataCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDteAFCValueCallback(IDteAFCValueCallback iDteAFCValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDteAFCValueCallback != null ? iDteAFCValueCallback.asBinder() : null);
                    if (this.mRemote.transact(193, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDteAFCValueCallback(iDteAFCValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDteCalculateValueCallback(IDteCalculateValueCallback iDteCalculateValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDteCalculateValueCallback != null ? iDteCalculateValueCallback.asBinder() : null);
                    if (this.mRemote.transact(190, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDteCalculateValueCallback(iDteCalculateValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerDteValueCallbackCallback(IDteValueCallback iDteValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDteValueCallback != null ? iDteValueCallback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDteValueCallbackCallback(iDteValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iEnergyCurveProjectionCallback != null ? iEnergyCurveProjectionCallback.asBinder() : null);
                    if (this.mRemote.transact(130, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerEnergyCurveProjectionCallback(iEnergyCurveProjectionCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerFaceIdReq(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerFaceIdReq(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerFuelAddEventCallback(IFuelAddEventCallback iFuelAddEventCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelAddEventCallback != null ? iFuelAddEventCallback.asBinder() : null);
                    if (this.mRemote.transact(202, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerFuelAddEventCallback(iFuelAddEventCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback iFuelConsumptionUnitCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelConsumptionUnitCallback != null ? iFuelConsumptionUnitCallback.asBinder() : null);
                    if (this.mRemote.transact(242, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerFuelConsumptionUnitCallback(iFuelConsumptionUnitCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerFuelTankTypeCallback(IFuelTankTypeCallback iFuelTankTypeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelTankTypeCallback != null ? iFuelTankTypeCallback.asBinder() : null);
                    if (this.mRemote.transact(196, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerFuelTankTypeCallback(iFuelTankTypeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback iFuelVolumeDisplayCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelVolumeDisplayCallback != null ? iFuelVolumeDisplayCallback.asBinder() : null);
                    if (this.mRemote.transact(184, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerFuelVolumeDisplayCallback(iFuelVolumeDisplayCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerFuelVolumeSampleCallback(IFuelVolumeSampleCallback iFuelVolumeSampleCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelVolumeSampleCallback != null ? iFuelVolumeSampleCallback.asBinder() : null);
                    if (this.mRemote.transact(187, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerFuelVolumeSampleCallback(iFuelVolumeSampleCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerGaugeSpeedCallback(IGaugeSpeedValueCallback iGaugeSpeedValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iGaugeSpeedValueCallback != null ? iGaugeSpeedValueCallback.asBinder() : null);
                    if (this.mRemote.transact(87, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerGaugeSpeedCallback(iGaugeSpeedValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerIFECallback(IIFECallback iIFECallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIFECallback != null ? iIFECallback.asBinder() : null);
                    if (this.mRemote.transact(153, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerIFECallback(iIFECallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerKeytoneCallback(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterNotifyKeytoneCallback != null ? iClusterNotifyKeytoneCallback.asBinder() : null);
                    if (this.mRemote.transact(83, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerKeytoneCallback(iClusterNotifyKeytoneCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerLeftSideWarningCallback(IClusterLeftWarningCallback iClusterLeftWarningCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterLeftWarningCallback != null ? iClusterLeftWarningCallback.asBinder() : null);
                    if (this.mRemote.transact(85, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerLeftSideWarningCallback(iClusterLeftWarningCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerMainTankResistanceCallback(IMainTankResistanceCallback iMainTankResistanceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMainTankResistanceCallback != null ? iMainTankResistanceCallback.asBinder() : null);
                    if (this.mRemote.transact(156, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerMainTankResistanceCallback(iMainTankResistanceCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMotorDrivePowerUnitCallback != null ? iMotorDrivePowerUnitCallback.asBinder() : null);
                    if (this.mRemote.transact(230, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerMotorDrivePowerUnitCallback(iMotorDrivePowerUnitCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerMotorDteValueCallback(IMotorDteValueCallback iMotorDteValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMotorDteValueCallback != null ? iMotorDteValueCallback.asBinder() : null);
                    if (this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerMotorDteValueCallback(iMotorDteValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerNaviInfoStatusCallback(INaviInfoStatusCallback iNaviInfoStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNaviInfoStatusCallback != null ? iNaviInfoStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerNaviInfoStatusCallback(iNaviInfoStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerNaviProjectionStatusCallback(INaviProjectionStatusCallback iNaviProjectionStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNaviProjectionStatusCallback != null ? iNaviProjectionStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(93, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerNaviProjectionStatusCallback(iNaviProjectionStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerOmsCallback(IOmsCallback iOmsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOmsCallback != null ? iOmsCallback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerOmsCallback(iOmsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerOverFillStateCallback(IOverFillStateCallback iOverFillStateCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOverFillStateCallback != null ? iOverFillStateCallback.asBinder() : null);
                    if (this.mRemote.transact(199, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerOverFillStateCallback(iOverFillStateCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPayloadMaintanceDistanceCallback != null ? iPayloadMaintanceDistanceCallback.asBinder() : null);
                    if (this.mRemote.transact(180, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerPayloadMaintanceDistanceCallback(iPayloadMaintanceDistanceCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerPayloadODOValueCallback(IPayloadODOValueCallback iPayloadODOValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPayloadODOValueCallback != null ? iPayloadODOValueCallback.asBinder() : null);
                    if (this.mRemote.transact(237, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerPayloadODOValueCallback(iPayloadODOValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerPayloadTripAValueCallback(IPayloadTripAValueCallback iPayloadTripAValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPayloadTripAValueCallback != null ? iPayloadTripAValueCallback.asBinder() : null);
                    if (this.mRemote.transact(220, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerPayloadTripAValueCallback(iPayloadTripAValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerRadarWarningStatusCallback(IRadarWarningStatusCallback iRadarWarningStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRadarWarningStatusCallback != null ? iRadarWarningStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerRadarWarningStatusCallback(iRadarWarningStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback iRearviewMirrorStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRearviewMirrorStatusCallback != null ? iRearviewMirrorStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerRearviewMirrorStatusCallback(iRearviewMirrorStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerSeatMemorySwitchCallback(ISeatMemorySwitchCallback iSeatMemorySwitchCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iSeatMemorySwitchCallback != null ? iSeatMemorySwitchCallback.asBinder() : null);
                    if (this.mRemote.transact(245, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerSeatMemorySwitchCallback(iSeatMemorySwitchCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerSteeringAngleCallback(ISteeringAngleCallback iSteeringAngleCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iSteeringAngleCallback != null ? iSteeringAngleCallback.asBinder() : null);
                    if (this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerSteeringAngleCallback(iSteeringAngleCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerStrStatusCallback(IStrStatusCallback iStrStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iStrStatusCallback != null ? iStrStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerStrStatusCallback(iStrStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerSubTankResistanceCallback(ISubTankResistanceCallback iSubTankResistanceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iSubTankResistanceCallback != null ? iSubTankResistanceCallback.asBinder() : null);
                    if (this.mRemote.transact(159, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerSubTankResistanceCallback(iSubTankResistanceCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerTemperatureHighCallback(ITemperatureHighCallback iTemperatureHighCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTemperatureHighCallback != null ? iTemperatureHighCallback.asBinder() : null);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerTemperatureHighCallback(iTemperatureHighCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerTimeFormatChangedCallback(ITimeFormatChangedCallback iTimeFormatChangedCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTimeFormatChangedCallback != null ? iTimeFormatChangedCallback.asBinder() : null);
                    if (this.mRemote.transact(169, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerTimeFormatChangedCallback(iTimeFormatChangedCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerTorqueLockStatusCallback(ITorqueLockStatusCallback iTorqueLockStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTorqueLockStatusCallback != null ? iTorqueLockStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerTorqueLockStatusCallback(iTorqueLockStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerTyreTemperatureCallback(ITyreTemperatureCallback iTyreTemperatureCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTyreTemperatureCallback != null ? iTyreTemperatureCallback.asBinder() : null);
                    if (this.mRemote.transact(81, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerTyreTemperatureCallback(iTyreTemperatureCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerVehicleFaultInfoChange(IVehicleFaultInfo iVehicleFaultInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleFaultInfo != null ? iVehicleFaultInfo.asBinder() : null);
                    if (this.mRemote.transact(112, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerVehicleFaultInfoChange(iVehicleFaultInfo);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void registerXModeDisplayStatusCallback(IXModeDisplayStatusCallback iXModeDisplayStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iXModeDisplayStatusCallback != null ? iXModeDisplayStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerXModeDisplayStatusCallback(iXModeDisplayStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void requestAvmStatus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(105, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().requestAvmStatus();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void requestFactoryReset() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(117, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().requestFactoryReset();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void resetMaintenanceMileage() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(179, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().resetMaintenanceMileage();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void resetTripBAllData() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(252, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().resetTripBAllData();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void sendPitchAngleToCluster(float f10, float f11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeFloat(f11);
                    if (this.mRemote.transact(72, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendPitchAngleToCluster(f10, f11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void sendPitchAngleToMcu(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(71, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendPitchAngleToMcu(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setActivationLicense(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(54, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setActivationLicense(str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setAirPressure(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(163, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setAirPressure(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setAltitude(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(164, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setAltitude(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setApaViewStatus(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(66, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setApaViewStatus(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setAvmViewStatus(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(67, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setAvmViewStatus(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setBatteryAvailableUnit(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(Stub.TRANSACTION_setBatteryAvailableUnit, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setBatteryAvailableUnit(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setCCOFanStatus(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(55, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCCOFanStatus(z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setCarModelColor(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(178, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCarModelColor(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setCarPlateNumber(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(70, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCarPlateNumber(str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setCltcOrWltcMode(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(100, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCltcOrWltcMode(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setClusterFont(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(215, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setClusterFont(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setDayNightMode(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(74, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setDayNightMode(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setDmsDriverActionLevel(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(61, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setDmsDriverActionLevel(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setDmsDriverDistractionLevel(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(62, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setDmsDriverDistractionLevel(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setDmsDriverDrowsinessLevel(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(63, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setDmsDriverDrowsinessLevel(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setDmsUserSwitch(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setDmsUserSwitch(z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setDriveMode(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(103, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setDriveMode(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setFatigueDriveTime(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(114, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setFatigueDriveTime(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setLaneAssistSetting(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(101, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setLaneAssistSetting(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setMotorDrivePowerUnit(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(232, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setMotorDrivePowerUnit(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setNaviCmd(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setNaviCmd(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setNaviInfoStatus(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setNaviInfoStatus(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setNaviStartupStatus(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(75, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setNaviStartupStatus(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setRearSeatWarnningSwitch(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(235, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setRearSeatWarnningSwitch(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setScheduleChargingTime(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(111, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setScheduleChargingTime(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setSeatMemorySwitch(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(247, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setSeatMemorySwitch(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setSpeedUnit(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(173, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setSpeedUnit(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setStrReadStatus(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(68, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setStrReadStatus(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setStrWriteStatus(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(69, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setStrWriteStatus(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setSunTime(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(76, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setSunTime(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setTemperatureUnit(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(174, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setTemperatureUnit(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setThemeMode(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(183, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setThemeMode(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setThemeToCluster(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(205, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setThemeToCluster(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setTotalMileage(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(73, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setTotalMileage(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setTyrePressureUnit(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(172, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setTyrePressureUnit(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setWarningSpeed(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(115, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setWarningSpeed(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setWarningVolumeLevel(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(119, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setWarningVolumeLevel(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void setXModeStatus(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(167, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setXModeStatus(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void systemReset(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(212, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().systemReset(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAFCCallback(IAFCValueCallback iAFCValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAFCValueCallback != null ? iAFCValueCallback.asBinder() : null);
                    if (this.mRemote.transact(142, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAFCCallback(iAFCValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAFCPHKMCallback(IAFCPHKMValueCallback iAFCPHKMValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAFCPHKMValueCallback != null ? iAFCPHKMValueCallback.asBinder() : null);
                    if (this.mRemote.transact(145, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAFCPHKMCallback(iAFCPHKMValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAdsL1ChimeStatusCallback != null ? iAdsL1ChimeStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(255, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAdsL1ChimeStatusCallback(iAdsL1ChimeStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterApaStatusCallback(IApaStatusCallback iApaStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApaStatusCallback != null ? iApaStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterApaStatusCallback(iApaStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvgElecCallback(IAvgElecCallback iAvgElecCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgElecCallback != null ? iAvgElecCallback.asBinder() : null);
                    if (this.mRemote.transact(134, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvgElecCallback(iAvgElecCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvgElecCnsCallback(IAvgElecCnsCallback iAvgElecCnsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgElecCnsCallback != null ? iAvgElecCnsCallback.asBinder() : null);
                    if (this.mRemote.transact(140, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvgElecCnsCallback(iAvgElecCnsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvgEnergyCnsCallback(IAvgEnergyCnsCallback iAvgEnergyCnsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgEnergyCnsCallback != null ? iAvgEnergyCnsCallback.asBinder() : null);
                    if (this.mRemote.transact(224, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvgEnergyCnsCallback(iAvgEnergyCnsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvgFuCallback(IAvgFuCallback iAvgFuCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgFuCallback != null ? iAvgFuCallback.asBinder() : null);
                    if (this.mRemote.transact(136, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvgFuCallback(iAvgFuCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvgFuCnsCallback(IAvgFuCnsCallback iAvgFuCnsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgFuCnsCallback != null ? iAvgFuCnsCallback.asBinder() : null);
                    if (this.mRemote.transact(138, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvgFuCnsCallback(iAvgFuCnsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvgSpdCallback(IAvgSpdValueCallback iAvgSpdValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvgSpdValueCallback != null ? iAvgSpdValueCallback.asBinder() : null);
                    if (this.mRemote.transact(151, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvgSpdCallback(iAvgSpdValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvmCameraStatusCallback(IAvmCameraStatusCallback iAvmCameraStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvmCameraStatusCallback != null ? iAvmCameraStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(96, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvmCameraStatusCallback(iAvmCameraStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvmLogDataCallback(IAvmLogDataCallback iAvmLogDataCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvmLogDataCallback != null ? iAvmLogDataCallback.asBinder() : null);
                    if (this.mRemote.transact(90, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvmLogDataCallback(iAvmLogDataCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterAvmStatusCallback(IAvmStatusCallback iAvmStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAvmStatusCallback != null ? iAvmStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAvmStatusCallback(iAvmStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBatteryAvailableUnitCallback != null ? iBatteryAvailableUnitCallback.asBinder() : null);
                    if (this.mRemote.transact(227, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterBatteryAvailableUnitCallback(iBatteryAvailableUnitCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback iBootMusicPlayStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBootMusicPlayStatusCallback != null ? iBootMusicPlayStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(92, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterBootMusicPlayStatusCallback(iBootMusicPlayStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterCCODisplayStatusCallback(ICCODisplayStatusCallback iCCODisplayStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCCODisplayStatusCallback != null ? iCCODisplayStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCCODisplayStatusCallback(iCCODisplayStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterChargeViewStatus(IChargeViewStatusCallback iChargeViewStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargeViewStatusCallback != null ? iChargeViewStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(110, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterChargeViewStatus(iChargeViewStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterChargingCurrentCallback(IChargeCurrentCallback iChargeCurrentCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargeCurrentCallback != null ? iChargeCurrentCallback.asBinder() : null);
                    if (this.mRemote.transact(124, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterChargingCurrentCallback(iChargeCurrentCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterChargingInfoCallback(IChargePowerInfoCallback iChargePowerInfoCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargePowerInfoCallback != null ? iChargePowerInfoCallback.asBinder() : null);
                    if (this.mRemote.transact(128, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterChargingInfoCallback(iChargePowerInfoCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterChargingPowerCallback(IChargePowerCallback iChargePowerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargePowerCallback != null ? iChargePowerCallback.asBinder() : null);
                    if (this.mRemote.transact(122, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterChargingPowerCallback(iChargePowerCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterChargingVoltageCallback(IChargeVoltageCallback iChargeVoltageCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iChargeVoltageCallback != null ? iChargeVoltageCallback.asBinder() : null);
                    if (this.mRemote.transact(126, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterChargingVoltageCallback(iChargeVoltageCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterCltcOrWltcCallback(ICltcOrWltcCallback iCltcOrWltcCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCltcOrWltcCallback != null ? iCltcOrWltcCallback.asBinder() : null);
                    if (this.mRemote.transact(98, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCltcOrWltcCallback(iCltcOrWltcCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterClusterFontCallback(IClusterFontCallback iClusterFontCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterFontCallback != null ? iClusterFontCallback.asBinder() : null);
                    if (this.mRemote.transact(Stub.TRANSACTION_unregisterClusterFontCallback, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterClusterFontCallback(iClusterFontCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback iThemeSwitchCompleteCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iThemeSwitchCompleteCallback != null ? iThemeSwitchCompleteCallback.asBinder() : null);
                    if (this.mRemote.transact(214, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterClusterSwitchThemeCompleteCallback(iThemeSwitchCompleteCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterClusterThemeCallback(IClusterThemeCallback iClusterThemeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterThemeCallback != null ? iClusterThemeCallback.asBinder() : null);
                    if (this.mRemote.transact(208, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterClusterThemeCallback(iClusterThemeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDiagDtcCallback(IDiagDtcInfoCallback iDiagDtcInfoCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDiagDtcInfoCallback != null ? iDiagDtcInfoCallback.asBinder() : null);
                    if (this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDiagDtcCallback(iDiagDtcInfoCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDmsCallback(IDmsCallback iDmsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDmsCallback != null ? iDmsCallback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDmsCallback(iDmsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDoorOpenCallback(IDoorOpenCallback iDoorOpenCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDoorOpenCallback != null ? iDoorOpenCallback.asBinder() : null);
                    if (this.mRemote.transact(166, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDoorOpenCallback(iDoorOpenCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDriveTimeCallback(IDriveTimeCallback iDriveTimeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDriveTimeCallback != null ? iDriveTimeCallback.asBinder() : null);
                    if (this.mRemote.transact(148, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDriveTimeCallback(iDriveTimeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDriverModeCallback(IDriverModeCallback iDriverModeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDriverModeCallback != null ? iDriverModeCallback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDriverModeCallback(iDriverModeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDrivingDataCallback(IDrivingDataCallback iDrivingDataCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDrivingDataCallback != null ? iDrivingDataCallback.asBinder() : null);
                    if (this.mRemote.transact(250, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDrivingDataCallback(iDrivingDataCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDteAFCValueCallback(IDteAFCValueCallback iDteAFCValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDteAFCValueCallback != null ? iDteAFCValueCallback.asBinder() : null);
                    if (this.mRemote.transact(194, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDteAFCValueCallback(iDteAFCValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDteCalculateValueCallback(IDteCalculateValueCallback iDteCalculateValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDteCalculateValueCallback != null ? iDteCalculateValueCallback.asBinder() : null);
                    if (this.mRemote.transact(191, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDteCalculateValueCallback(iDteCalculateValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterDteValueCallbackCallback(IDteValueCallback iDteValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDteValueCallback != null ? iDteValueCallback.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterDteValueCallbackCallback(iDteValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iEnergyCurveProjectionCallback != null ? iEnergyCurveProjectionCallback.asBinder() : null);
                    if (this.mRemote.transact(131, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterEnergyCurveProjectionCallback(iEnergyCurveProjectionCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterFuelAddEventCallback(IFuelAddEventCallback iFuelAddEventCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelAddEventCallback != null ? iFuelAddEventCallback.asBinder() : null);
                    if (this.mRemote.transact(203, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterFuelAddEventCallback(iFuelAddEventCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback iFuelConsumptionUnitCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelConsumptionUnitCallback != null ? iFuelConsumptionUnitCallback.asBinder() : null);
                    if (this.mRemote.transact(243, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterFuelConsumptionUnitCallback(iFuelConsumptionUnitCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterFuelTankTypeCallback(IFuelTankTypeCallback iFuelTankTypeCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelTankTypeCallback != null ? iFuelTankTypeCallback.asBinder() : null);
                    if (this.mRemote.transact(197, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterFuelTankTypeCallback(iFuelTankTypeCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback iFuelVolumeDisplayCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelVolumeDisplayCallback != null ? iFuelVolumeDisplayCallback.asBinder() : null);
                    if (this.mRemote.transact(185, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterFuelVolumeDisplayCallback(iFuelVolumeDisplayCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterFuelVolumeSampleCallback(IFuelVolumeSampleCallback iFuelVolumeSampleCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFuelVolumeSampleCallback != null ? iFuelVolumeSampleCallback.asBinder() : null);
                    if (this.mRemote.transact(188, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterFuelVolumeSampleCallback(iFuelVolumeSampleCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterGaugeSpeedCallback(IGaugeSpeedValueCallback iGaugeSpeedValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iGaugeSpeedValueCallback != null ? iGaugeSpeedValueCallback.asBinder() : null);
                    if (this.mRemote.transact(88, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterGaugeSpeedCallback(iGaugeSpeedValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterIFECallback(IIFECallback iIFECallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIFECallback != null ? iIFECallback.asBinder() : null);
                    if (this.mRemote.transact(154, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterIFECallback(iIFECallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterKeytoneCallback(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterNotifyKeytoneCallback != null ? iClusterNotifyKeytoneCallback.asBinder() : null);
                    if (this.mRemote.transact(84, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterKeytoneCallback(iClusterNotifyKeytoneCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterLeftSideWarningCallback(IClusterLeftWarningCallback iClusterLeftWarningCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iClusterLeftWarningCallback != null ? iClusterLeftWarningCallback.asBinder() : null);
                    if (this.mRemote.transact(86, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterLeftSideWarningCallback(iClusterLeftWarningCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterMainTankResistanceCallback(IMainTankResistanceCallback iMainTankResistanceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMainTankResistanceCallback != null ? iMainTankResistanceCallback.asBinder() : null);
                    if (this.mRemote.transact(157, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterMainTankResistanceCallback(iMainTankResistanceCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMotorDrivePowerUnitCallback != null ? iMotorDrivePowerUnitCallback.asBinder() : null);
                    if (this.mRemote.transact(231, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterMotorDrivePowerUnitCallback(iMotorDrivePowerUnitCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterMotorDteValueCallback(IMotorDteValueCallback iMotorDteValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMotorDteValueCallback != null ? iMotorDteValueCallback.asBinder() : null);
                    if (this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterMotorDteValueCallback(iMotorDteValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterNaviInfoStatusCallback(INaviInfoStatusCallback iNaviInfoStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNaviInfoStatusCallback != null ? iNaviInfoStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterNaviInfoStatusCallback(iNaviInfoStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterNaviProjectionStatusCallback(INaviProjectionStatusCallback iNaviProjectionStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNaviProjectionStatusCallback != null ? iNaviProjectionStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(94, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterNaviProjectionStatusCallback(iNaviProjectionStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterOmsCallback(IOmsCallback iOmsCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOmsCallback != null ? iOmsCallback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterOmsCallback(iOmsCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterOverFillStateCallback(IOverFillStateCallback iOverFillStateCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOverFillStateCallback != null ? iOverFillStateCallback.asBinder() : null);
                    if (this.mRemote.transact(200, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterOverFillStateCallback(iOverFillStateCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPayloadMaintanceDistanceCallback != null ? iPayloadMaintanceDistanceCallback.asBinder() : null);
                    if (this.mRemote.transact(181, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterPayloadMaintanceDistanceCallback(iPayloadMaintanceDistanceCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterPayloadODOValueCallback(IPayloadODOValueCallback iPayloadODOValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPayloadODOValueCallback != null ? iPayloadODOValueCallback.asBinder() : null);
                    if (this.mRemote.transact(238, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterPayloadODOValueCallback(iPayloadODOValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterPayloadTripAValueCallback(IPayloadTripAValueCallback iPayloadTripAValueCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPayloadTripAValueCallback != null ? iPayloadTripAValueCallback.asBinder() : null);
                    if (this.mRemote.transact(221, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterPayloadTripAValueCallback(iPayloadTripAValueCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterRadarWarningStatusCallback(IRadarWarningStatusCallback iRadarWarningStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRadarWarningStatusCallback != null ? iRadarWarningStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterRadarWarningStatusCallback(iRadarWarningStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback iRearviewMirrorStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRearviewMirrorStatusCallback != null ? iRearviewMirrorStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterRearviewMirrorStatusCallback(iRearviewMirrorStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterSeatMemorySwitchCallback(ISeatMemorySwitchCallback iSeatMemorySwitchCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iSeatMemorySwitchCallback != null ? iSeatMemorySwitchCallback.asBinder() : null);
                    if (this.mRemote.transact(246, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterSeatMemorySwitchCallback(iSeatMemorySwitchCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterSteeringAngleCallback(ISteeringAngleCallback iSteeringAngleCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iSteeringAngleCallback != null ? iSteeringAngleCallback.asBinder() : null);
                    if (this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterSteeringAngleCallback(iSteeringAngleCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterStrStatusCallback(IStrStatusCallback iStrStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iStrStatusCallback != null ? iStrStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterStrStatusCallback(iStrStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterSubTankResistanceCallback(ISubTankResistanceCallback iSubTankResistanceCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iSubTankResistanceCallback != null ? iSubTankResistanceCallback.asBinder() : null);
                    if (this.mRemote.transact(160, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterSubTankResistanceCallback(iSubTankResistanceCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterTemperatureHighCallback(ITemperatureHighCallback iTemperatureHighCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTemperatureHighCallback != null ? iTemperatureHighCallback.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterTemperatureHighCallback(iTemperatureHighCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterTimeFormatChangedCallback(ITimeFormatChangedCallback iTimeFormatChangedCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTimeFormatChangedCallback != null ? iTimeFormatChangedCallback.asBinder() : null);
                    if (this.mRemote.transact(170, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterTimeFormatChangedCallback(iTimeFormatChangedCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterTorqueLockStatusCallback(ITorqueLockStatusCallback iTorqueLockStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTorqueLockStatusCallback != null ? iTorqueLockStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterTorqueLockStatusCallback(iTorqueLockStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterTyreTemperatureCallback(ITyreTemperatureCallback iTyreTemperatureCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTyreTemperatureCallback != null ? iTyreTemperatureCallback.asBinder() : null);
                    if (this.mRemote.transact(82, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterTyreTemperatureCallback(iTyreTemperatureCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterVehicleFaultInfoChange(IVehicleFaultInfo iVehicleFaultInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleFaultInfo != null ? iVehicleFaultInfo.asBinder() : null);
                    if (this.mRemote.transact(113, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterVehicleFaultInfoChange(iVehicleFaultInfo);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void unregisterXModeDisplayStatusCallback(IXModeDisplayStatusCallback iXModeDisplayStatusCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iXModeDisplayStatusCallback != null ? iXModeDisplayStatusCallback.asBinder() : null);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterXModeDisplayStatusCallback(iXModeDisplayStatusCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void updateCompassInfo(float f10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f10);
                    if (this.mRemote.transact(50, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateCompassInfo(f10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void updateFuelUnit(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(49, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateFuelUnit(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void updateMediaInfo(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(48, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateMediaInfo(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void updatePhoneCallInfo(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(47, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updatePhoneCallInfo(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void updateRearViewKeyStatus(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(52, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateRearViewKeyStatus(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.clusterinteraction.IClusterInteraction
            public void updateTimeFormat(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(51, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateTimeFormat(z);
                    }
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

        public static IClusterInteraction asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IClusterInteraction)) ? new Proxy(iBinder) : (IClusterInteraction) iInterfaceQueryLocalInterface;
        }

        public static IClusterInteraction getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IClusterInteraction iClusterInteraction) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iClusterInteraction == null) {
                return false;
            }
            Proxy.sDefaultImpl = iClusterInteraction;
            return true;
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
                    registerDmsCallback(IDmsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDmsCallback(IDmsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOmsCallback(IOmsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOmsCallback(IOmsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDriverModeCallback(IDriverModeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDriverModeCallback(IDriverModeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTorqueLockStatusCallback(ITorqueLockStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterTorqueLockStatusCallback(ITorqueLockStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDteValueCallbackCallback(IDteValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDteValueCallbackCallback(IDteValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTemperatureHighCallback(ITemperatureHighCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterTemperatureHighCallback(ITemperatureHighCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerNaviInfoStatusCallback(INaviInfoStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterNaviInfoStatusCallback(INaviInfoStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerXModeDisplayStatusCallback(IXModeDisplayStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterXModeDisplayStatusCallback(IXModeDisplayStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCCODisplayStatusCallback(ICCODisplayStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCCODisplayStatusCallback(ICCODisplayStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvmStatusCallback(IAvmStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvmStatusCallback(IAvmStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerApaStatusCallback(IApaStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterApaStatusCallback(IApaStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerStrStatusCallback(IStrStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterStrStatusCallback(IStrStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRadarWarningStatusCallback(IRadarWarningStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRadarWarningStatusCallback(IRadarWarningStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSteeringAngleCallback(ISteeringAngleCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSteeringAngleCallback(ISteeringAngleCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDiagDtcCallback(IDiagDtcInfoCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDiagDtcCallback(IDiagDtcInfoCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMotorDteValueCallback(IMotorDteValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMotorDteValueCallback(IMotorDteValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    int motorDteValue = getMotorDteValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(motorDteValue);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNaviCmd(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNaviInfoStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDmsUserSwitch(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerFaceIdReq(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    loginFaceIdReq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteFaceIdReq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    healthMonitorReq(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    driverMonitorReq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    omsMonitoringReq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    healthLoginReq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    chimeTest();
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePhoneCallInfo(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateMediaInfo(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateFuelUnit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateCompassInfo(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateTimeFormat(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateRearViewKeyStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    bootAnimationCompleted();
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActivationLicense(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCCOFanStatus(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    int gaugeFuelPercent = getGaugeFuelPercent();
                    parcel2.writeNoException();
                    parcel2.writeInt(gaugeFuelPercent);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dteValue = getDteValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(dteValue);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    int driveMode = getDriveMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(driveMode);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    int xModeDisplayStatus = getXModeDisplayStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(xModeDisplayStatus);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cCODisplayStatus = getCCODisplayStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(cCODisplayStatus);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDmsDriverActionLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDmsDriverDistractionLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDmsDriverDrowsinessLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    appBootCompleted(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    getNaviProjectionStatus();
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    setApaViewStatus(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAvmViewStatus(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStrReadStatus(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStrWriteStatus(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCarPlateNumber(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendPitchAngleToMcu(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendPitchAngleToCluster(parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTotalMileage(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDayNightMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNaviStartupStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSunTime(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lFTyreTemperature = getLFTyreTemperature();
                    parcel2.writeNoException();
                    parcel2.writeInt(lFTyreTemperature);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    int rFTyreTemperature = getRFTyreTemperature();
                    parcel2.writeNoException();
                    parcel2.writeInt(rFTyreTemperature);
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lRTyreTemperature = getLRTyreTemperature();
                    parcel2.writeNoException();
                    parcel2.writeInt(lRTyreTemperature);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    int rRTyreTemperature = getRRTyreTemperature();
                    parcel2.writeNoException();
                    parcel2.writeInt(rRTyreTemperature);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTyreTemperatureCallback(ITyreTemperatureCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterTyreTemperatureCallback(ITyreTemperatureCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerKeytoneCallback(IClusterNotifyKeytoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterKeytoneCallback(IClusterNotifyKeytoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerLeftSideWarningCallback(IClusterLeftWarningCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterLeftSideWarningCallback(IClusterLeftWarningCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerGaugeSpeedCallback(IGaugeSpeedValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterGaugeSpeedCallback(IGaugeSpeedValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvmLogDataCallback(IAvmLogDataCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvmLogDataCallback(IAvmLogDataCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerNaviProjectionStatusCallback(INaviProjectionStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterNaviProjectionStatusCallback(INaviProjectionStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvmCameraStatusCallback(IAvmCameraStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvmCameraStatusCallback(IAvmCameraStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCltcOrWltcCallback(ICltcOrWltcCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 98:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCltcOrWltcCallback(ICltcOrWltcCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 99:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cltcOrWltcMode = getCltcOrWltcMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(cltcOrWltcMode);
                    return true;
                case 100:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCltcOrWltcMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 101:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLaneAssistSetting(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 102:
                    parcel.enforceInterface(DESCRIPTOR);
                    float currentSpeed = getCurrentSpeed();
                    parcel2.writeNoException();
                    parcel2.writeFloat(currentSpeed);
                    return true;
                case 103:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDriveMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 104:
                    parcel.enforceInterface(DESCRIPTOR);
                    getDmsCameraStatus();
                    parcel2.writeNoException();
                    return true;
                case 105:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestAvmStatus();
                    parcel2.writeNoException();
                    return true;
                case 106:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean avmStatus = getAvmStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(avmStatus ? 1 : 0);
                    return true;
                case 107:
                    parcel.enforceInterface(DESCRIPTOR);
                    int frontTorqueLockStatus = getFrontTorqueLockStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(frontTorqueLockStatus);
                    return true;
                case 108:
                    parcel.enforceInterface(DESCRIPTOR);
                    int rearTorqueLockStatus = getRearTorqueLockStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(rearTorqueLockStatus);
                    return true;
                case 109:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerChargeViewStatus(IChargeViewStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 110:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterChargeViewStatus(IChargeViewStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 111:
                    parcel.enforceInterface(DESCRIPTOR);
                    setScheduleChargingTime(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 112:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerVehicleFaultInfoChange(IVehicleFaultInfo.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 113:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterVehicleFaultInfoChange(IVehicleFaultInfo.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 114:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFatigueDriveTime(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 115:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWarningSpeed(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 116:
                    parcel.enforceInterface(DESCRIPTOR);
                    getVehicleFaultInfo();
                    parcel2.writeNoException();
                    return true;
                case 117:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestFactoryReset();
                    parcel2.writeNoException();
                    return true;
                case 118:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyFactoryReset(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 119:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWarningVolumeLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 120:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyBacklightAutoAdjustToCluster(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 121:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerChargingPowerCallback(IChargePowerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 122:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterChargingPowerCallback(IChargePowerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 123:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerChargingCurrentCallback(IChargeCurrentCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 124:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterChargingCurrentCallback(IChargeCurrentCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 125:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerChargingVoltageCallback(IChargeVoltageCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 126:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterChargingVoltageCallback(IChargeVoltageCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 127:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerChargingInfoCallback(IChargePowerInfoCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 128:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterChargingInfoCallback(IChargePowerInfoCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 129:
                    parcel.enforceInterface(DESCRIPTOR);
                    float[] chargingInfo = getChargingInfo();
                    parcel2.writeNoException();
                    parcel2.writeFloatArray(chargingInfo);
                    return true;
                case 130:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 131:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 132:
                    parcel.enforceInterface(DESCRIPTOR);
                    int energyCurveProjectionStatus = getEnergyCurveProjectionStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(energyCurveProjectionStatus);
                    return true;
                case 133:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvgElecCallback(IAvgElecCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 134:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvgElecCallback(IAvgElecCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 135:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvgFuCallback(IAvgFuCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 136:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvgFuCallback(IAvgFuCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 137:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvgFuCnsCallback(IAvgFuCnsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 138:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvgFuCnsCallback(IAvgFuCnsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 139:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvgElecCnsCallback(IAvgElecCnsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 140:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvgElecCnsCallback(IAvgElecCnsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 141:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAFCCallback(IAFCValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 142:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAFCCallback(IAFCValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 143:
                    parcel.enforceInterface(DESCRIPTOR);
                    int aFCValue = getAFCValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(aFCValue);
                    return true;
                case 144:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAFCPHKMCallback(IAFCPHKMValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 145:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAFCPHKMCallback(IAFCPHKMValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 146:
                    parcel.enforceInterface(DESCRIPTOR);
                    int aFCPHKMValue = getAFCPHKMValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(aFCPHKMValue);
                    return true;
                case 147:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDriveTimeCallback(IDriveTimeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 148:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDriveTimeCallback(IDriveTimeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 149:
                    parcel.enforceInterface(DESCRIPTOR);
                    int driveTime = getDriveTime();
                    parcel2.writeNoException();
                    parcel2.writeInt(driveTime);
                    return true;
                case 150:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvgSpdCallback(IAvgSpdValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 151:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvgSpdCallback(IAvgSpdValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 152:
                    parcel.enforceInterface(DESCRIPTOR);
                    int avgSpd = getAvgSpd();
                    parcel2.writeNoException();
                    parcel2.writeInt(avgSpd);
                    return true;
                case 153:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerIFECallback(IIFECallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 154:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterIFECallback(IIFECallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 155:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFEValue = getIFEValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(iFEValue);
                    return true;
                case 156:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMainTankResistanceCallback(IMainTankResistanceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 157:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMainTankResistanceCallback(IMainTankResistanceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 158:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mainTankResistance = getMainTankResistance();
                    parcel2.writeNoException();
                    parcel2.writeInt(mainTankResistance);
                    return true;
                case 159:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSubTankResistanceCallback(ISubTankResistanceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 160:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSubTankResistanceCallback(ISubTankResistanceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 161:
                    parcel.enforceInterface(DESCRIPTOR);
                    int subTankResistance = getSubTankResistance();
                    parcel2.writeNoException();
                    parcel2.writeInt(subTankResistance);
                    return true;
                case 162:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyClusterLanguageSetting(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 163:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAirPressure(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 164:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAltitude(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 165:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDoorOpenCallback(IDoorOpenCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 166:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDoorOpenCallback(IDoorOpenCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 167:
                    parcel.enforceInterface(DESCRIPTOR);
                    setXModeStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 168:
                    parcel.enforceInterface(DESCRIPTOR);
                    int timeFormat = getTimeFormat();
                    parcel2.writeNoException();
                    parcel2.writeInt(timeFormat);
                    return true;
                case 169:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTimeFormatChangedCallback(ITimeFormatChangedCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 170:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterTimeFormatChangedCallback(ITimeFormatChangedCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 171:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyAVMWindowsStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 172:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTyrePressureUnit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 173:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeedUnit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 174:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTemperatureUnit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 175:
                    parcel.enforceInterface(DESCRIPTOR);
                    int tyrePressureUnit = getTyrePressureUnit();
                    parcel2.writeNoException();
                    parcel2.writeInt(tyrePressureUnit);
                    return true;
                case 176:
                    parcel.enforceInterface(DESCRIPTOR);
                    int speedUnit = getSpeedUnit();
                    parcel2.writeNoException();
                    parcel2.writeInt(speedUnit);
                    return true;
                case 177:
                    parcel.enforceInterface(DESCRIPTOR);
                    int temperatureUnit = getTemperatureUnit();
                    parcel2.writeNoException();
                    parcel2.writeInt(temperatureUnit);
                    return true;
                case 178:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCarModelColor(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 179:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetMaintenanceMileage();
                    parcel2.writeNoException();
                    return true;
                case 180:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 181:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 182:
                    parcel.enforceInterface(DESCRIPTOR);
                    int payloadMaintanceDistance = getPayloadMaintanceDistance();
                    parcel2.writeNoException();
                    parcel2.writeInt(payloadMaintanceDistance);
                    return true;
                case 183:
                    parcel.enforceInterface(DESCRIPTOR);
                    setThemeMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 184:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 185:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 186:
                    parcel.enforceInterface(DESCRIPTOR);
                    float fuelVolumeDisplay = getFuelVolumeDisplay();
                    parcel2.writeNoException();
                    parcel2.writeFloat(fuelVolumeDisplay);
                    return true;
                case 187:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerFuelVolumeSampleCallback(IFuelVolumeSampleCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 188:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterFuelVolumeSampleCallback(IFuelVolumeSampleCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 189:
                    parcel.enforceInterface(DESCRIPTOR);
                    float fuelVolumeSample = getFuelVolumeSample();
                    parcel2.writeNoException();
                    parcel2.writeFloat(fuelVolumeSample);
                    return true;
                case 190:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDteCalculateValueCallback(IDteCalculateValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 191:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDteCalculateValueCallback(IDteCalculateValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 192:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dteCalculateValue = getDteCalculateValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(dteCalculateValue);
                    return true;
                case 193:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDteAFCValueCallback(IDteAFCValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 194:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDteAFCValueCallback(IDteAFCValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 195:
                    parcel.enforceInterface(DESCRIPTOR);
                    float dteAFCValue = getDteAFCValue();
                    parcel2.writeNoException();
                    parcel2.writeFloat(dteAFCValue);
                    return true;
                case 196:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerFuelTankTypeCallback(IFuelTankTypeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 197:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterFuelTankTypeCallback(IFuelTankTypeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 198:
                    parcel.enforceInterface(DESCRIPTOR);
                    int fuelTankType = getFuelTankType();
                    parcel2.writeNoException();
                    parcel2.writeInt(fuelTankType);
                    return true;
                case 199:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOverFillStateCallback(IOverFillStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 200:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOverFillStateCallback(IOverFillStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 201:
                    parcel.enforceInterface(DESCRIPTOR);
                    int overFillState = getOverFillState();
                    parcel2.writeNoException();
                    parcel2.writeInt(overFillState);
                    return true;
                case 202:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerFuelAddEventCallback(IFuelAddEventCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 203:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterFuelAddEventCallback(IFuelAddEventCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 204:
                    parcel.enforceInterface(DESCRIPTOR);
                    int fuelAddEvent = getFuelAddEvent();
                    parcel2.writeNoException();
                    parcel2.writeInt(fuelAddEvent);
                    return true;
                case 205:
                    parcel.enforceInterface(DESCRIPTOR);
                    setThemeToCluster(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 206:
                    parcel.enforceInterface(DESCRIPTOR);
                    int clusterTheme = getClusterTheme();
                    parcel2.writeNoException();
                    parcel2.writeInt(clusterTheme);
                    return true;
                case 207:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClusterThemeCallback(IClusterThemeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 208:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterClusterThemeCallback(IClusterThemeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 209:
                    parcel.enforceInterface(DESCRIPTOR);
                    int fatigueDriveTime = getFatigueDriveTime();
                    parcel2.writeNoException();
                    parcel2.writeInt(fatigueDriveTime);
                    return true;
                case 210:
                    parcel.enforceInterface(DESCRIPTOR);
                    int warningSpeed = getWarningSpeed();
                    parcel2.writeNoException();
                    parcel2.writeInt(warningSpeed);
                    return true;
                case 211:
                    parcel.enforceInterface(DESCRIPTOR);
                    int warningVolumeLevel = getWarningVolumeLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(warningVolumeLevel);
                    return true;
                case 212:
                    parcel.enforceInterface(DESCRIPTOR);
                    systemReset(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 213:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 214:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 215:
                    parcel.enforceInterface(DESCRIPTOR);
                    setClusterFont(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 216:
                    parcel.enforceInterface(DESCRIPTOR);
                    int clusterFont = getClusterFont();
                    parcel2.writeNoException();
                    parcel2.writeInt(clusterFont);
                    return true;
                case 217:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClusterFontCallback(IClusterFontCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_unregisterClusterFontCallback /* 218 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterClusterFontCallback(IClusterFontCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_notifyClusterWallpaperChanged /* 219 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyClusterWallpaperChanged(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 220:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPayloadTripAValueCallback(IPayloadTripAValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 221:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPayloadTripAValueCallback(IPayloadTripAValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 222:
                    parcel.enforceInterface(DESCRIPTOR);
                    float tripAValue = getTripAValue();
                    parcel2.writeNoException();
                    parcel2.writeFloat(tripAValue);
                    return true;
                case 223:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAvgEnergyCnsCallback(IAvgEnergyCnsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 224:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAvgEnergyCnsCallback(IAvgEnergyCnsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_getAvgEnergyCns /* 225 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    float avgEnergyCns = getAvgEnergyCns();
                    parcel2.writeNoException();
                    parcel2.writeFloat(avgEnergyCns);
                    return true;
                case TRANSACTION_registerBatteryAvailableUnitCallback /* 226 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 227:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_setBatteryAvailableUnit /* 228 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBatteryAvailableUnit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 229:
                    parcel.enforceInterface(DESCRIPTOR);
                    int batteryAvailableUnit = getBatteryAvailableUnit();
                    parcel2.writeNoException();
                    parcel2.writeInt(batteryAvailableUnit);
                    return true;
                case 230:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 231:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 232:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMotorDrivePowerUnit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 233:
                    parcel.enforceInterface(DESCRIPTOR);
                    int motorDrivePowerUnit = getMotorDrivePowerUnit();
                    parcel2.writeNoException();
                    parcel2.writeInt(motorDrivePowerUnit);
                    return true;
                case 234:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyNaviTrafficInfo(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 235:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRearSeatWarnningSwitch(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 236:
                    parcel.enforceInterface(DESCRIPTOR);
                    int rearSeatWarnningSwitch = getRearSeatWarnningSwitch();
                    parcel2.writeNoException();
                    parcel2.writeInt(rearSeatWarnningSwitch);
                    return true;
                case 237:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPayloadODOValueCallback(IPayloadODOValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 238:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPayloadODOValueCallback(IPayloadODOValueCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 239:
                    parcel.enforceInterface(DESCRIPTOR);
                    float odoValue = getOdoValue();
                    parcel2.writeNoException();
                    parcel2.writeFloat(odoValue);
                    return true;
                case 240:
                    parcel.enforceInterface(DESCRIPTOR);
                    float hEVOdoValue = getHEVOdoValue();
                    parcel2.writeNoException();
                    parcel2.writeFloat(hEVOdoValue);
                    return true;
                case 241:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyTbtNaviTrafficInfo(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createTypedArrayList(TbtTrafficLaneInfo.CREATOR), parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 242:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 243:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 244:
                    parcel.enforceInterface(DESCRIPTOR);
                    int fuelConsumptionUnit = getFuelConsumptionUnit();
                    parcel2.writeNoException();
                    parcel2.writeInt(fuelConsumptionUnit);
                    return true;
                case 245:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSeatMemorySwitchCallback(ISeatMemorySwitchCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 246:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSeatMemorySwitchCallback(ISeatMemorySwitchCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 247:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSeatMemorySwitch(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 248:
                    parcel.enforceInterface(DESCRIPTOR);
                    int seatMemorySwitch = getSeatMemorySwitch();
                    parcel2.writeNoException();
                    parcel2.writeInt(seatMemorySwitch);
                    return true;
                case 249:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDrivingDataCallback(IDrivingDataCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 250:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterDrivingDataCallback(IDrivingDataCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 251:
                    parcel.enforceInterface(DESCRIPTOR);
                    float[] drivingData = getDrivingData();
                    parcel2.writeNoException();
                    parcel2.writeFloatArray(drivingData);
                    return true;
                case 252:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetTripBAllData();
                    parcel2.writeNoException();
                    return true;
                case 253:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dmsStatus = getDmsStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(dmsStatus);
                    return true;
                case 254:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 255:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 256:
                    parcel.enforceInterface(DESCRIPTOR);
                    AdsL1ChimeStatusInfo adsL1ChimeStatusInfo = getAdsL1ChimeStatusInfo();
                    parcel2.writeNoException();
                    if (adsL1ChimeStatusInfo != null) {
                        parcel2.writeInt(1);
                        adsL1ChimeStatusInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void appBootCompleted(int i10);

    void bootAnimationCompleted();

    void chimeTest();

    void deleteFaceIdReq(int i10);

    void driverMonitorReq(int i10);

    int getAFCPHKMValue();

    int getAFCValue();

    AdsL1ChimeStatusInfo getAdsL1ChimeStatusInfo();

    float getAvgEnergyCns();

    int getAvgSpd();

    boolean getAvmStatus();

    int getBatteryAvailableUnit();

    int getCCODisplayStatus();

    float[] getChargingInfo();

    int getCltcOrWltcMode();

    int getClusterFont();

    int getClusterTheme();

    float getCurrentSpeed();

    void getDmsCameraStatus();

    int getDmsStatus();

    int getDriveMode();

    int getDriveTime();

    float[] getDrivingData();

    float getDteAFCValue();

    int getDteCalculateValue();

    int getDteValue();

    int getEnergyCurveProjectionStatus();

    int getFatigueDriveTime();

    int getFrontTorqueLockStatus();

    int getFuelAddEvent();

    int getFuelConsumptionUnit();

    int getFuelTankType();

    float getFuelVolumeDisplay();

    float getFuelVolumeSample();

    int getGaugeFuelPercent();

    float getHEVOdoValue();

    int getIFEValue();

    int getLFTyreTemperature();

    int getLRTyreTemperature();

    int getMainTankResistance();

    int getMotorDrivePowerUnit();

    int getMotorDteValue();

    void getNaviProjectionStatus();

    float getOdoValue();

    int getOverFillState();

    int getPayloadMaintanceDistance();

    int getRFTyreTemperature();

    int getRRTyreTemperature();

    int getRearSeatWarnningSwitch();

    int getRearTorqueLockStatus();

    int getSeatMemorySwitch();

    int getSpeedUnit();

    int getSubTankResistance();

    int getTemperatureUnit();

    int getTimeFormat();

    float getTripAValue();

    int getTyrePressureUnit();

    void getVehicleFaultInfo();

    int getWarningSpeed();

    int getWarningVolumeLevel();

    int getXModeDisplayStatus();

    void healthLoginReq(int i10);

    void healthMonitorReq(int i10, int i11, int i12, int i13, int i14);

    void loginFaceIdReq(int i10);

    void notifyAVMWindowsStatus(int i10);

    void notifyBacklightAutoAdjustToCluster(int i10);

    void notifyClusterLanguageSetting(int i10);

    void notifyClusterWallpaperChanged(int i10);

    void notifyFactoryReset(int i10);

    void notifyNaviTrafficInfo(int i10, int i11, int i12, int i13, int i14);

    void notifyTbtNaviTrafficInfo(int i10, String str, String str2, List<TbtTrafficLaneInfo> list, int i11, String str3, boolean z);

    void omsMonitoringReq(int i10);

    void registerAFCCallback(IAFCValueCallback iAFCValueCallback);

    void registerAFCPHKMCallback(IAFCPHKMValueCallback iAFCPHKMValueCallback);

    void registerAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback);

    void registerApaStatusCallback(IApaStatusCallback iApaStatusCallback);

    void registerAvgElecCallback(IAvgElecCallback iAvgElecCallback);

    void registerAvgElecCnsCallback(IAvgElecCnsCallback iAvgElecCnsCallback);

    void registerAvgEnergyCnsCallback(IAvgEnergyCnsCallback iAvgEnergyCnsCallback);

    void registerAvgFuCallback(IAvgFuCallback iAvgFuCallback);

    void registerAvgFuCnsCallback(IAvgFuCnsCallback iAvgFuCnsCallback);

    void registerAvgSpdCallback(IAvgSpdValueCallback iAvgSpdValueCallback);

    void registerAvmCameraStatusCallback(IAvmCameraStatusCallback iAvmCameraStatusCallback);

    void registerAvmLogDataCallback(IAvmLogDataCallback iAvmLogDataCallback);

    void registerAvmStatusCallback(IAvmStatusCallback iAvmStatusCallback);

    void registerBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback);

    void registerBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback iBootMusicPlayStatusCallback);

    void registerCCODisplayStatusCallback(ICCODisplayStatusCallback iCCODisplayStatusCallback);

    void registerChargeViewStatus(IChargeViewStatusCallback iChargeViewStatusCallback);

    void registerChargingCurrentCallback(IChargeCurrentCallback iChargeCurrentCallback);

    void registerChargingInfoCallback(IChargePowerInfoCallback iChargePowerInfoCallback);

    void registerChargingPowerCallback(IChargePowerCallback iChargePowerCallback);

    void registerChargingVoltageCallback(IChargeVoltageCallback iChargeVoltageCallback);

    void registerCltcOrWltcCallback(ICltcOrWltcCallback iCltcOrWltcCallback);

    void registerClusterFontCallback(IClusterFontCallback iClusterFontCallback);

    void registerClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback iThemeSwitchCompleteCallback);

    void registerClusterThemeCallback(IClusterThemeCallback iClusterThemeCallback);

    void registerDiagDtcCallback(IDiagDtcInfoCallback iDiagDtcInfoCallback);

    void registerDmsCallback(IDmsCallback iDmsCallback);

    void registerDoorOpenCallback(IDoorOpenCallback iDoorOpenCallback);

    void registerDriveTimeCallback(IDriveTimeCallback iDriveTimeCallback);

    void registerDriverModeCallback(IDriverModeCallback iDriverModeCallback);

    void registerDrivingDataCallback(IDrivingDataCallback iDrivingDataCallback);

    void registerDteAFCValueCallback(IDteAFCValueCallback iDteAFCValueCallback);

    void registerDteCalculateValueCallback(IDteCalculateValueCallback iDteCalculateValueCallback);

    void registerDteValueCallbackCallback(IDteValueCallback iDteValueCallback);

    void registerEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback);

    void registerFaceIdReq(int i10, int i11);

    void registerFuelAddEventCallback(IFuelAddEventCallback iFuelAddEventCallback);

    void registerFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback iFuelConsumptionUnitCallback);

    void registerFuelTankTypeCallback(IFuelTankTypeCallback iFuelTankTypeCallback);

    void registerFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback iFuelVolumeDisplayCallback);

    void registerFuelVolumeSampleCallback(IFuelVolumeSampleCallback iFuelVolumeSampleCallback);

    void registerGaugeSpeedCallback(IGaugeSpeedValueCallback iGaugeSpeedValueCallback);

    void registerIFECallback(IIFECallback iIFECallback);

    void registerKeytoneCallback(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback);

    void registerLeftSideWarningCallback(IClusterLeftWarningCallback iClusterLeftWarningCallback);

    void registerMainTankResistanceCallback(IMainTankResistanceCallback iMainTankResistanceCallback);

    void registerMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback);

    void registerMotorDteValueCallback(IMotorDteValueCallback iMotorDteValueCallback);

    void registerNaviInfoStatusCallback(INaviInfoStatusCallback iNaviInfoStatusCallback);

    void registerNaviProjectionStatusCallback(INaviProjectionStatusCallback iNaviProjectionStatusCallback);

    void registerOmsCallback(IOmsCallback iOmsCallback);

    void registerOverFillStateCallback(IOverFillStateCallback iOverFillStateCallback);

    void registerPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback);

    void registerPayloadODOValueCallback(IPayloadODOValueCallback iPayloadODOValueCallback);

    void registerPayloadTripAValueCallback(IPayloadTripAValueCallback iPayloadTripAValueCallback);

    void registerRadarWarningStatusCallback(IRadarWarningStatusCallback iRadarWarningStatusCallback);

    void registerRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback iRearviewMirrorStatusCallback);

    void registerSeatMemorySwitchCallback(ISeatMemorySwitchCallback iSeatMemorySwitchCallback);

    void registerSteeringAngleCallback(ISteeringAngleCallback iSteeringAngleCallback);

    void registerStrStatusCallback(IStrStatusCallback iStrStatusCallback);

    void registerSubTankResistanceCallback(ISubTankResistanceCallback iSubTankResistanceCallback);

    void registerTemperatureHighCallback(ITemperatureHighCallback iTemperatureHighCallback);

    void registerTimeFormatChangedCallback(ITimeFormatChangedCallback iTimeFormatChangedCallback);

    void registerTorqueLockStatusCallback(ITorqueLockStatusCallback iTorqueLockStatusCallback);

    void registerTyreTemperatureCallback(ITyreTemperatureCallback iTyreTemperatureCallback);

    void registerVehicleFaultInfoChange(IVehicleFaultInfo iVehicleFaultInfo);

    void registerXModeDisplayStatusCallback(IXModeDisplayStatusCallback iXModeDisplayStatusCallback);

    void requestAvmStatus();

    void requestFactoryReset();

    void resetMaintenanceMileage();

    void resetTripBAllData();

    void sendPitchAngleToCluster(float f10, float f11);

    void sendPitchAngleToMcu(int i10, int i11);

    void setActivationLicense(String str);

    void setAirPressure(int i10);

    void setAltitude(int i10);

    void setApaViewStatus(int i10, boolean z);

    void setAvmViewStatus(int i10, boolean z);

    void setBatteryAvailableUnit(int i10);

    void setCCOFanStatus(boolean z);

    void setCarModelColor(int i10, int i11);

    void setCarPlateNumber(String str);

    void setCltcOrWltcMode(int i10);

    void setClusterFont(int i10);

    void setDayNightMode(int i10);

    void setDmsDriverActionLevel(int i10);

    void setDmsDriverDistractionLevel(int i10);

    void setDmsDriverDrowsinessLevel(int i10);

    void setDmsUserSwitch(boolean z);

    void setDriveMode(int i10);

    void setFatigueDriveTime(int i10);

    void setLaneAssistSetting(int i10);

    void setMotorDrivePowerUnit(int i10);

    void setNaviCmd(int i10);

    void setNaviInfoStatus(int i10);

    void setNaviStartupStatus(int i10);

    void setRearSeatWarnningSwitch(int i10);

    void setScheduleChargingTime(int i10);

    void setSeatMemorySwitch(int i10);

    void setSpeedUnit(int i10);

    void setStrReadStatus(int i10, boolean z);

    void setStrWriteStatus(int i10, boolean z);

    void setSunTime(int i10);

    void setTemperatureUnit(int i10);

    void setThemeMode(int i10);

    void setThemeToCluster(int i10);

    void setTotalMileage(int i10);

    void setTyrePressureUnit(int i10);

    void setWarningSpeed(int i10);

    void setWarningVolumeLevel(int i10);

    void setXModeStatus(int i10);

    void systemReset(int i10);

    void unregisterAFCCallback(IAFCValueCallback iAFCValueCallback);

    void unregisterAFCPHKMCallback(IAFCPHKMValueCallback iAFCPHKMValueCallback);

    void unregisterAdsL1ChimeStatusCallback(IAdsL1ChimeStatusCallback iAdsL1ChimeStatusCallback);

    void unregisterApaStatusCallback(IApaStatusCallback iApaStatusCallback);

    void unregisterAvgElecCallback(IAvgElecCallback iAvgElecCallback);

    void unregisterAvgElecCnsCallback(IAvgElecCnsCallback iAvgElecCnsCallback);

    void unregisterAvgEnergyCnsCallback(IAvgEnergyCnsCallback iAvgEnergyCnsCallback);

    void unregisterAvgFuCallback(IAvgFuCallback iAvgFuCallback);

    void unregisterAvgFuCnsCallback(IAvgFuCnsCallback iAvgFuCnsCallback);

    void unregisterAvgSpdCallback(IAvgSpdValueCallback iAvgSpdValueCallback);

    void unregisterAvmCameraStatusCallback(IAvmCameraStatusCallback iAvmCameraStatusCallback);

    void unregisterAvmLogDataCallback(IAvmLogDataCallback iAvmLogDataCallback);

    void unregisterAvmStatusCallback(IAvmStatusCallback iAvmStatusCallback);

    void unregisterBatteryAvailableUnitCallback(IBatteryAvailableUnitCallback iBatteryAvailableUnitCallback);

    void unregisterBootMusicPlayStatusCallback(IBootMusicPlayStatusCallback iBootMusicPlayStatusCallback);

    void unregisterCCODisplayStatusCallback(ICCODisplayStatusCallback iCCODisplayStatusCallback);

    void unregisterChargeViewStatus(IChargeViewStatusCallback iChargeViewStatusCallback);

    void unregisterChargingCurrentCallback(IChargeCurrentCallback iChargeCurrentCallback);

    void unregisterChargingInfoCallback(IChargePowerInfoCallback iChargePowerInfoCallback);

    void unregisterChargingPowerCallback(IChargePowerCallback iChargePowerCallback);

    void unregisterChargingVoltageCallback(IChargeVoltageCallback iChargeVoltageCallback);

    void unregisterCltcOrWltcCallback(ICltcOrWltcCallback iCltcOrWltcCallback);

    void unregisterClusterFontCallback(IClusterFontCallback iClusterFontCallback);

    void unregisterClusterSwitchThemeCompleteCallback(IThemeSwitchCompleteCallback iThemeSwitchCompleteCallback);

    void unregisterClusterThemeCallback(IClusterThemeCallback iClusterThemeCallback);

    void unregisterDiagDtcCallback(IDiagDtcInfoCallback iDiagDtcInfoCallback);

    void unregisterDmsCallback(IDmsCallback iDmsCallback);

    void unregisterDoorOpenCallback(IDoorOpenCallback iDoorOpenCallback);

    void unregisterDriveTimeCallback(IDriveTimeCallback iDriveTimeCallback);

    void unregisterDriverModeCallback(IDriverModeCallback iDriverModeCallback);

    void unregisterDrivingDataCallback(IDrivingDataCallback iDrivingDataCallback);

    void unregisterDteAFCValueCallback(IDteAFCValueCallback iDteAFCValueCallback);

    void unregisterDteCalculateValueCallback(IDteCalculateValueCallback iDteCalculateValueCallback);

    void unregisterDteValueCallbackCallback(IDteValueCallback iDteValueCallback);

    void unregisterEnergyCurveProjectionCallback(IEnergyCurveProjectionCallback iEnergyCurveProjectionCallback);

    void unregisterFuelAddEventCallback(IFuelAddEventCallback iFuelAddEventCallback);

    void unregisterFuelConsumptionUnitCallback(IFuelConsumptionUnitCallback iFuelConsumptionUnitCallback);

    void unregisterFuelTankTypeCallback(IFuelTankTypeCallback iFuelTankTypeCallback);

    void unregisterFuelVolumeDisplayCallback(IFuelVolumeDisplayCallback iFuelVolumeDisplayCallback);

    void unregisterFuelVolumeSampleCallback(IFuelVolumeSampleCallback iFuelVolumeSampleCallback);

    void unregisterGaugeSpeedCallback(IGaugeSpeedValueCallback iGaugeSpeedValueCallback);

    void unregisterIFECallback(IIFECallback iIFECallback);

    void unregisterKeytoneCallback(IClusterNotifyKeytoneCallback iClusterNotifyKeytoneCallback);

    void unregisterLeftSideWarningCallback(IClusterLeftWarningCallback iClusterLeftWarningCallback);

    void unregisterMainTankResistanceCallback(IMainTankResistanceCallback iMainTankResistanceCallback);

    void unregisterMotorDrivePowerUnitCallback(IMotorDrivePowerUnitCallback iMotorDrivePowerUnitCallback);

    void unregisterMotorDteValueCallback(IMotorDteValueCallback iMotorDteValueCallback);

    void unregisterNaviInfoStatusCallback(INaviInfoStatusCallback iNaviInfoStatusCallback);

    void unregisterNaviProjectionStatusCallback(INaviProjectionStatusCallback iNaviProjectionStatusCallback);

    void unregisterOmsCallback(IOmsCallback iOmsCallback);

    void unregisterOverFillStateCallback(IOverFillStateCallback iOverFillStateCallback);

    void unregisterPayloadMaintanceDistanceCallback(IPayloadMaintanceDistanceCallback iPayloadMaintanceDistanceCallback);

    void unregisterPayloadODOValueCallback(IPayloadODOValueCallback iPayloadODOValueCallback);

    void unregisterPayloadTripAValueCallback(IPayloadTripAValueCallback iPayloadTripAValueCallback);

    void unregisterRadarWarningStatusCallback(IRadarWarningStatusCallback iRadarWarningStatusCallback);

    void unregisterRearviewMirrorStatusCallback(IRearviewMirrorStatusCallback iRearviewMirrorStatusCallback);

    void unregisterSeatMemorySwitchCallback(ISeatMemorySwitchCallback iSeatMemorySwitchCallback);

    void unregisterSteeringAngleCallback(ISteeringAngleCallback iSteeringAngleCallback);

    void unregisterStrStatusCallback(IStrStatusCallback iStrStatusCallback);

    void unregisterSubTankResistanceCallback(ISubTankResistanceCallback iSubTankResistanceCallback);

    void unregisterTemperatureHighCallback(ITemperatureHighCallback iTemperatureHighCallback);

    void unregisterTimeFormatChangedCallback(ITimeFormatChangedCallback iTimeFormatChangedCallback);

    void unregisterTorqueLockStatusCallback(ITorqueLockStatusCallback iTorqueLockStatusCallback);

    void unregisterTyreTemperatureCallback(ITyreTemperatureCallback iTyreTemperatureCallback);

    void unregisterVehicleFaultInfoChange(IVehicleFaultInfo iVehicleFaultInfo);

    void unregisterXModeDisplayStatusCallback(IXModeDisplayStatusCallback iXModeDisplayStatusCallback);

    void updateCompassInfo(float f10);

    void updateFuelUnit(int i10);

    void updateMediaInfo(int i10);

    void updatePhoneCallInfo(int i10);

    void updateRearViewKeyStatus(int i10);

    void updateTimeFormat(boolean z);
}
