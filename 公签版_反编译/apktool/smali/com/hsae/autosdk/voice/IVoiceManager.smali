.class public interface abstract Lcom/hsae/autosdk/voice/IVoiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/voice/IVoiceManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract hideVR()V
.end method

.method public abstract isAllowMediaPlay()Z
.end method

.method public abstract isIflytekChipPrepared()Z
.end method

.method public abstract isSpeechStarted()Z
.end method

.method public abstract isTtsPlayStarted()Z
.end method

.method public abstract isVrStarted()Z
.end method

.method public abstract isWakeUpStarted()Z
.end method

.method public abstract phoneCallStateChange(ILjava/lang/String;)V
.end method

.method public abstract reStartWakeRecord()V
.end method

.method public abstract resetIflytekSetting()V
.end method

.method public abstract resetVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V
.end method

.method public abstract resourceRefresh(I)V
.end method

.method public abstract setVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V
.end method

.method public abstract startSettings()V
.end method

.method public abstract startTTS(Ljava/lang/String;)V
.end method

.method public abstract startVR()V
.end method

.method public abstract stopIflytekTts()V
.end method

.method public abstract stopSrView()V
.end method

.method public abstract stopTTS()V
.end method

.method public abstract stopVR()V
.end method

.method public abstract stopWakeRecord()V
.end method
