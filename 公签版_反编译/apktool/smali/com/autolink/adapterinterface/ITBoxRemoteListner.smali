.class public interface abstract Lcom/autolink/adapterinterface/ITBoxRemoteListner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/ITBoxRemoteListner$Stub;,
        Lcom/autolink/adapterinterface/ITBoxRemoteListner$Default;
    }
.end annotation


# virtual methods
.method public abstract lightShowCtrlReq(I)V
.end method

.method public abstract onChargeReserveSetResp(Z)V
.end method

.method public abstract onInquireChargeReserveResp(Lcom/autolink/adapterinterface/InquireCharge;)V
.end method

.method public abstract onPhoneChargeReserveStatuReport(II)V
.end method

.method public abstract onPhoneChargeReserveSyncReq(Lcom/autolink/adapterinterface/ChargeReserveSync;)V
.end method

.method public abstract onRemoteHuAwkReq([B)V
.end method
