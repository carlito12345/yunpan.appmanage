.class public interface abstract Lcom/autolink/adapterinterface/audio/IALAudio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/audio/IALAudio$Stub;,
        Lcom/autolink/adapterinterface/audio/IALAudio$Default;
    }
.end annotation


# virtual methods
.method public abstract isRhythmLampOpen()Z
.end method

.method public abstract registerRhythmLampListener(Landroid/os/IBinder;)V
.end method

.method public abstract setRhythmLampChangeSpeed(I)V
.end method

.method public abstract setRhythmLampOpen(Z)Z
.end method

.method public abstract setVoiceLampOpen(Z)Z
.end method

.method public abstract unregisterRhythmLampListener(Landroid/os/IBinder;)V
.end method
