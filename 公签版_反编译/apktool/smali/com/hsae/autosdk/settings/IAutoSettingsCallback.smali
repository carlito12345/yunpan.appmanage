.class public interface abstract Lcom/hsae/autosdk/settings/IAutoSettingsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/IAutoSettingsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAcConnectState(I)V
.end method

.method public abstract onAcRemoteControlRequest(I)V
.end method

.method public abstract onAvmConnectState(I)V
.end method

.method public abstract onBTPhoneVolumeResponse(I)V
.end method

.method public abstract onBrightnessResponse(I)V
.end method

.method public abstract onContrastResponse(I)V
.end method

.method public abstract onDayNightAutoStateResponse(I)V
.end method

.method public abstract onDrivingSafetyStateResponse(Z)V
.end method

.method public abstract onMCANInstrumentSetClock(IJ)V
.end method

.method public abstract onMapSkinModeChanged(I)V
.end method

.method public abstract onOnlineAppUpgradeStateChanged(IZ)V
.end method

.method public abstract onProductTypeChanged(I)V
.end method

.method public abstract onScreenStateResponse(Z)V
.end method

.method public abstract onSoundEffectWithSpeedChanged(I)V
.end method

.method public abstract onSystemVolumeResponse(II)V
.end method

.method public abstract setNaviMuteState(Z)V
.end method
