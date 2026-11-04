.class public interface abstract Lcom/autolink/adapterinterface/IOtaStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IOtaStateListener$Stub;,
        Lcom/autolink/adapterinterface/IOtaStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract SubNodeReqEnterFactoryAck(Z)V
.end method

.method public abstract SubNodeReqStartFactoryAck(Z)V
.end method

.method public abstract fotaStateDisplayRequest(Lcom/autolink/adapterinterface/FotaStateDisplayReq;)V
.end method

.method public abstract fotaUserComfirmRequest(Lcom/autolink/adapterinterface/FotaUserComfirmReq;)V
.end method

.method public abstract otaSubNodeRefreshNowRequest(JLjava/lang/String;II)V
.end method

.method public abstract otaSubNodeReq(Lcom/autolink/adapterinterface/OtaSubNodeInfo;)V
.end method

.method public abstract otaSubNodeStateReportAck(I)V
.end method
