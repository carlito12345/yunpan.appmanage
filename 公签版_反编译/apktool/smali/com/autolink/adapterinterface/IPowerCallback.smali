.class public interface abstract Lcom/autolink/adapterinterface/IPowerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IPowerCallback$Stub;,
        Lcom/autolink/adapterinterface/IPowerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onBrightnessModeChanged(I)V
.end method

.method public abstract onClusterNightModeSwitchChanged(I)V
.end method

.method public abstract onDisplayDayNightModeChanged(I)V
.end method

.method public abstract onHmiBrightnessChanged(I)V
.end method

.method public abstract onIviBrightnessChanged(I)V
.end method

.method public abstract onIviDisplayPowerStateChanged(I)V
.end method

.method public abstract onPowerEventChanged(II)V
.end method

.method public abstract onScreensaverChanged(Z)V
.end method
