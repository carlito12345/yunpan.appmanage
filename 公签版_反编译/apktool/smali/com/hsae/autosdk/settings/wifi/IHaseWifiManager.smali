.class public interface abstract Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeWifi()V
.end method

.method public abstract closeWifiAP()V
.end method

.method public abstract getConnectWifiHotNum()I
.end method

.method public abstract getWifiApPSW()Ljava/lang/String;
.end method

.method public abstract getWifiApSSID()Ljava/lang/String;
.end method

.method public abstract getWifiApState()I
.end method

.method public abstract getWifiState()I
.end method

.method public abstract isWifiCtrlEnabled()Z
.end method

.method public abstract openWifi()V
.end method

.method public abstract openWifiAP()V
.end method

.method public abstract openWifiAPBySetting()V
.end method

.method public abstract registerHaseWifiManager(Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;)V
.end method

.method public abstract setWifiApConfi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setWifiCtrlEnabled(IZ)V
.end method

.method public abstract unRegisterHaseWifiManager(Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;)V
.end method
