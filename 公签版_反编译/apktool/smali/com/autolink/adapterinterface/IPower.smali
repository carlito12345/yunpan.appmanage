.class public interface abstract Lcom/autolink/adapterinterface/IPower;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IPower$Stub;,
        Lcom/autolink/adapterinterface/IPower$Default;
    }
.end annotation


# virtual methods
.method public abstract enterUpgradeState()V
.end method

.method public abstract exitUpgradeState()V
.end method

.method public abstract getClusterNightModeSwitch()I
.end method

.method public abstract getHmiBrightness()I
.end method

.method public abstract getIviBrightness()I
.end method

.method public abstract getIviBrightnessMode()I
.end method

.method public abstract getIviDisplayPowerState()I
.end method

.method public abstract getIviThemeMode()I
.end method

.method public abstract isCurScreenSaver()Z
.end method

.method public abstract keepClusterNightModeSwitchOn(I)V
.end method

.method public abstract registerPowerCallback(Lcom/autolink/adapterinterface/IPowerCallback;)V
.end method

.method public abstract sendScreensaverEvent(IZ)V
.end method

.method public abstract setClusterDisplayPowerState(I)V
.end method

.method public abstract setHmiBrightness(I)V
.end method

.method public abstract setIviBrightness(I)V
.end method

.method public abstract setIviBrightnessMode(I)V
.end method

.method public abstract setIviDisplayPowerState(I)V
.end method

.method public abstract setIviThemeMode(I)V
.end method

.method public abstract unregisterPowerCallback(Lcom/autolink/adapterinterface/IPowerCallback;)V
.end method
