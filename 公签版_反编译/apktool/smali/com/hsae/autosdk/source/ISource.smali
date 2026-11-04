.class public interface abstract Lcom/hsae/autosdk/source/ISource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/source/ISource$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentAudioCard()I
.end method

.method public abstract getCurrentSource()I
.end method

.method public abstract getFocusedApp()I
.end method

.method public abstract getLastSource()I
.end method

.method public abstract getPrevSource()I
.end method

.method public abstract getSoundCardType()I
.end method

.method public abstract isAllowPlay(I)Z
.end method

.method public abstract isAudioPlayPermitted()Z
.end method

.method public abstract isBTPhoneComing(ZZ)V
.end method

.method public abstract isInUpgrade(I)Z
.end method

.method public abstract isNaviOnTop()Z
.end method

.method public abstract mainAudioChanged(IZ)V
.end method

.method public abstract notifyBtState(Z)V
.end method

.method public abstract notifyCarPlayPhoneState(Z)V
.end method

.method public abstract notifyDiagnoseState(Z)V
.end method

.method public abstract notifyPhoneState(Z)V
.end method

.method public abstract registerSourceListener(Lcom/hsae/autosdk/source/ISourceCallback;)V
.end method

.method public abstract resetToDefaults()V
.end method

.method public abstract setAudioCardMode(II)V
.end method

.method public abstract setBTPhoneActive(Z)V
.end method

.method public abstract setFocusedApp(I)V
.end method

.method public abstract showApp(I)V
.end method

.method public abstract switchAudioI2SMode(IZI)V
.end method

.method public abstract switchMicMode(Z)V
.end method

.method public abstract switchOTG()V
.end method

.method public abstract unregisterSourceListener(Lcom/hsae/autosdk/source/ISourceCallback;)V
.end method
