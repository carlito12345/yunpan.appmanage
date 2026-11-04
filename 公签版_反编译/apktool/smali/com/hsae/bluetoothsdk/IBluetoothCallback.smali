.class public interface abstract Lcom/hsae/bluetoothsdk/IBluetoothCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/bluetoothsdk/IBluetoothCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBatterLevelChanged(I)V
.end method

.method public abstract onBtStateChanged(ILjava/lang/String;)V
.end method

.method public abstract onConnectStateChanged(III)V
.end method

.method public abstract onDeviceConnectRequest(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onDeviceInquiried(Ljava/lang/String;Ljava/lang/String;IIZ)V
.end method

.method public abstract onDeviceNameChanged(Ljava/lang/String;)V
.end method

.method public abstract onDevicePairRequest(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onPairStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract onPowerStateChanged(I)V
.end method

.method public abstract onServiceConnected()V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract onSignelLevelChanged(I)V
.end method
