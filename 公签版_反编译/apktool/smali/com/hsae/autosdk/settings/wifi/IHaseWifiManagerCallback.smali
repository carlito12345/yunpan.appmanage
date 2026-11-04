.class public interface abstract Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWifiApConnectNumChange(I)V
.end method

.method public abstract onWifiApStateChange(I)V
.end method

.method public abstract onWifiControlEnabled(Z)V
.end method

.method public abstract onWifiOperationResult(IZ)V
.end method

.method public abstract onWifiStateChange(I)V
.end method
