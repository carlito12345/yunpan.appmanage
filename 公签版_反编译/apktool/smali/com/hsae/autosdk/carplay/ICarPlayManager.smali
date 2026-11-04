.class public interface abstract Lcom/hsae/autosdk/carplay/ICarPlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/carplay/ICarPlayManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract accessorySourceChange(IZZ)V
.end method

.method public abstract authenticate()V
.end method

.method public abstract carplayIconTapped()V
.end method

.method public abstract carplayLinked(Z)V
.end method

.method public abstract getCarPlayRingState()Z
.end method

.method public abstract getPhoneState()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract handupBTPhone()V
.end method

.method public abstract hide()V
.end method

.method public abstract isAppBackground()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isVrStarted()Z
.end method

.method public abstract onHmiChanged(II)V
.end method

.method public abstract onTelOff()V
.end method

.method public abstract onTelOn()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract popUpCurrentMode()V
.end method

.method public abstract registerCarPlayListener(Lcom/hsae/autosdk/carplay/ICarPlayListener;)V
.end method

.method public abstract show()V
.end method

.method public abstract showByVr(I)V
.end method

.method public abstract startCarplayNativeAuthenticate()V
.end method

.method public abstract syncPowerState(Z)V
.end method

.method public abstract syncReverseState(Z)V
.end method

.method public abstract syncSpeedData(II)V
.end method

.method public abstract unregisterCarPlayListener(Lcom/hsae/autosdk/carplay/ICarPlayListener;)V
.end method
