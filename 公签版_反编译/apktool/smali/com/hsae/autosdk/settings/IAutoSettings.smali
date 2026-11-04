.class public interface abstract Lcom/hsae/autosdk/settings/IAutoSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/IAutoSettings$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeBossForTest(I)V
.end method

.method public abstract changeFrontRearBalanceForTest(II)V
.end method

.method public abstract changeHighForTest(I)V
.end method

.method public abstract changeLeftRightBalanceForTest(II)V
.end method

.method public abstract changeRadioVolumeForTest(II)V
.end method

.method public abstract changeVehicleSpeedLevelForTest(I)V
.end method

.method public abstract changeVehicleSpeedValueForTest(I)V
.end method

.method public abstract changeVolumeFromVoiceRecognition(II)V
.end method

.method public abstract cutSongFromVoiceRecognition(II)V
.end method

.method public abstract executePowerKeyAction(Z)V
.end method

.method public abstract flatModeChanged(I)V
.end method

.method public abstract getAudioChimeStatus()Z
.end method

.method public abstract getAutoLightStatus()I
.end method

.method public abstract getBackLightBrightness()I
.end method

.method public abstract getBspArkamysSoundEffect()I
.end method

.method public abstract getBtPhoneVolume()I
.end method

.method public abstract getContrast()I
.end method

.method public abstract getDayNightModeIndex()I
.end method

.method public abstract getDeviceID()[I
.end method

.method public abstract getDeviceIdEx()Ljava/lang/String;
.end method

.method public abstract getDeviceIdTolaunch()Ljava/lang/String;
.end method

.method public abstract getEQPIN()Ljava/lang/String;
.end method

.method public abstract getFlatMode()I
.end method

.method public abstract getHardwareModelInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHardwareModelInfos()Ljava/lang/String;
.end method

.method public abstract getMapSkinMode()I
.end method

.method public abstract getOnlineAppUpgradeState(I)Z
.end method

.method public abstract getPowerState()Z
.end method

.method public abstract getProductType()I
.end method

.method public abstract getSafeyLockValue()Z
.end method

.method public abstract getSoundEffectWithSpeed()I
.end method

.method public abstract getSystemVolume(I)I
.end method

.method public abstract hideVolumeWindow()V
.end method

.method public abstract isDiagnoseMode()Z
.end method

.method public abstract isSafetyLockEnabled()Z
.end method

.method public abstract mainAudioDuck(ZI)V
.end method

.method public abstract mainAudioDuckIn(Landroid/os/IBinder;)V
.end method

.method public abstract mainAudioDuckOut(Landroid/os/IBinder;)V
.end method

.method public abstract muteMic(Z)V
.end method

.method public abstract notifyNaviEnterTunnel(I)V
.end method

.method public abstract notifyTimeFormat(ZIZ)V
.end method

.method public abstract playChime()V
.end method

.method public abstract popupVolumeChange(I)V
.end method

.method public abstract readVersionResumeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerAutoSetttingsCallback(Lcom/hsae/autosdk/settings/IAutoSettingsCallback;)V
.end method

.method public abstract registerCommonStateCallback(Lcom/hsae/autosdk/settings/ICommonStateCallback;)V
.end method

.method public abstract resetDisplaySettingsToDefault()V
.end method

.method public abstract resetToDefaults()V
.end method

.method public abstract restartMcuAfterUpgrade()V
.end method

.method public abstract restartSystem()V
.end method

.method public abstract sendAvmRestartState(I)V
.end method

.method public abstract setAudioMute(Z)V
.end method

.method public abstract setBackLightBrightness(I)Z
.end method

.method public abstract setBlackScreen()V
.end method

.method public abstract setBrightnessBySetting(I)Z
.end method

.method public abstract setBspArkamysSoundEffect(I)V
.end method

.method public abstract setBtPhoneVolume(I)V
.end method

.method public abstract setContrast(I)V
.end method

.method public abstract setDayNightModeIndex(I)V
.end method

.method public abstract setDrivingSafetyState(Z)V
.end method

.method public abstract setDspUpdate()I
.end method

.method public abstract setFrontRearBalance(I)V
.end method

.method public abstract setHighpitch(I)V
.end method

.method public abstract setInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLauncherEditMode(Z)V
.end method

.method public abstract setLeftRightBalance(I)V
.end method

.method public abstract setLoudness(Z)V
.end method

.method public abstract setLowpitch(I)V
.end method

.method public abstract setMapSkinMode(I)V
.end method

.method public abstract setMuteBtAisle(Z)V
.end method

.method public abstract setNaviMuteState(Z)V
.end method

.method public abstract setNightMode(Z)V
.end method

.method public abstract setOnlineAppUpgradeState(IZ)V
.end method

.method public abstract setPowerState(Z)V
.end method

.method public abstract setProductType(I)V
.end method

.method public abstract setRadioIndexEnable(I)V
.end method

.method public abstract setScreenState(Z)V
.end method

.method public abstract setSoundEffectWithSpeed(I)V
.end method

.method public abstract setSpeedVolumeIncreaseLevel(I)V
.end method

.method public abstract setSystemTime(JI)V
.end method

.method public abstract setSystemVolume(II)V
.end method

.method public abstract setVersion(ILjava/lang/String;)V
.end method

.method public abstract setVolumeFromVoiceRecognition(I)V
.end method

.method public abstract setWifiInfo([BI)V
.end method

.method public abstract switchAudioChime(Z)V
.end method

.method public abstract switchHeadLights(Z)V
.end method

.method public abstract unregisterAutoSetttingsCallback(Lcom/hsae/autosdk/settings/IAutoSettingsCallback;)V
.end method

.method public abstract unregisterCommonStateCallback(Lcom/hsae/autosdk/settings/ICommonStateCallback;)V
.end method

.method public abstract writeVersionResumeList(I)V
.end method
