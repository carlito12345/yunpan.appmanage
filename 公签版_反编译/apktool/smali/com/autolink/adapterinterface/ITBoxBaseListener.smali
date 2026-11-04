.class public interface abstract Lcom/autolink/adapterinterface/ITBoxBaseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/ITBoxBaseListener$Stub;,
        Lcom/autolink/adapterinterface/ITBoxBaseListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCallCommandResp(Z)V
.end method

.method public abstract onCallStateChanged(II)V
.end method

.method public abstract onConnectStatusChanged(I)V
.end method

.method public abstract onFaultStateReport(I)V
.end method

.method public abstract onGeneralInfoResp(Lcom/autolink/adapterinterface/GeneralInfo;)V
.end method

.method public abstract onNetworkStateReport(II)V
.end method

.method public abstract onSignalStrengthChanged(I)V
.end method
