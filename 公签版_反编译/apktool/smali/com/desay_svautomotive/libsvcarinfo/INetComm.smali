.class public interface abstract Lcom/desay_svautomotive/libsvcarinfo/INetComm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarinfo/INetComm$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCarLanMsg(II)Ljava/lang/String;
.end method

.method public abstract getNetMsg(I)[B
.end method

.method public abstract getNetMsgConnectStatus(I)Z
.end method

.method public abstract regCallBack(Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;)V
.end method

.method public abstract regCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;)V
.end method

.method public abstract sendCarLanMsg(IILjava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract sendNetMsg(I[BI)V
.end method

.method public abstract unRegCallBack(Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;)V
.end method

.method public abstract unRegCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;)V
.end method
