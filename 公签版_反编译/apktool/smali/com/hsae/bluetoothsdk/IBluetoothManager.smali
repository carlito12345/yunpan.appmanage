.class public interface abstract Lcom/hsae/bluetoothsdk/IBluetoothManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/bluetoothsdk/IBluetoothManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract acceptConnect(I)V
.end method

.method public abstract acceptPair(Ljava/lang/String;Z)V
.end method

.method public abstract btPowerOff()V
.end method

.method public abstract btPowerOn()V
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract connectA2dp(Ljava/lang/String;)V
.end method

.method public abstract connectHfp(Ljava/lang/String;)V
.end method

.method public abstract disConnect()V
.end method

.method public abstract disConnectA2dp()V
.end method

.method public abstract getBatteryCharge()I
.end method

.method public abstract getConnectDeviceAddress()Ljava/lang/String;
.end method

.method public abstract getConnectDeviceName()Ljava/lang/String;
.end method

.method public abstract getConnectStatus(I)I
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getPairedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hsae/bluetoothsdk/bean/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPowerStatus()I
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getSignalValue()I
.end method

.method public abstract isParing()Z
.end method

.method public abstract isSearching()Z
.end method

.method public abstract pairDevice(Ljava/lang/String;I)I
.end method

.method public abstract registCallback(Lcom/hsae/bluetoothsdk/IBluetoothCallback;)Z
.end method

.method public abstract rejectConnect(I)V
.end method

.method public abstract rejectPair(Ljava/lang/String;Z)V
.end method

.method public abstract removePair(Ljava/lang/String;)I
.end method

.method public abstract search(Z)I
.end method

.method public abstract setAutoPowerOn(Z)V
.end method

.method public abstract setBtName(Ljava/lang/String;)V
.end method

.method public abstract stopSearch()I
.end method

.method public abstract supportInbandRing()Z
.end method

.method public abstract supportMusic()Z
.end method

.method public abstract supportPhone()Z
.end method

.method public abstract unBindService()V
.end method

.method public abstract unregistCallback(Lcom/hsae/bluetoothsdk/IBluetoothCallback;)Z
.end method
