.class public interface abstract Lcom/hsae/autosdk/reverse/IReverse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/reverse/IReverse$Stub;
    }
.end annotation


# virtual methods
.method public abstract avmControlCmd(BBBBBBB)V
.end method

.method public abstract getCameraType()I
.end method

.method public abstract getCurrentVehicleType()I
.end method

.method public abstract getFrameType()B
.end method

.method public abstract getQuickReverseState()Z
.end method

.method public abstract getReverseState()Z
.end method

.method public abstract getSteeringWheelAngle()I
.end method

.method public abstract getSteeringWheelFlag()I
.end method

.method public abstract getVehicleType()I
.end method

.method public abstract notifyReverseStartSucess(Z)V
.end method

.method public abstract registerReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V
.end method

.method public abstract registerReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V
.end method

.method public abstract reqAVMAnimationEnable(B)V
.end method

.method public abstract reqAVMReset()V
.end method

.method public abstract reqAVMReverseState()V
.end method

.method public abstract reqAVMStateInfo(BBBB)V
.end method

.method public abstract reqAVMSwitchScreen(B)V
.end method

.method public abstract reqAVMSynchronizationData(IBB)V
.end method

.method public abstract reqAVMTouchInfo(II)V
.end method

.method public abstract reqAVMVersion()V
.end method

.method public abstract reqChangeAVMLaungage(B)V
.end method

.method public abstract reqChangeCarColor(B)V
.end method

.method public abstract reqCurrentAVMSettingValue()V
.end method

.method public abstract reqDisplayTrackLine(B)V
.end method

.method public abstract reqEnterAVMFrame(B)V
.end method

.method public abstract reqEnterAVMSettingFrame()V
.end method

.method public abstract reqExitAVMFrame()V
.end method

.method public abstract setReverseType(I)V
.end method

.method public abstract setVehicleType(I)V
.end method

.method public abstract unregisterReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V
.end method

.method public abstract unregisterReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V
.end method
