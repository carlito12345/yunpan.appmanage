.class public interface abstract Lcom/autolink/adapterinterface/IPkiServiceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IPkiServiceListener$Stub;,
        Lcom/autolink/adapterinterface/IPkiServiceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRecvCertificateStatusReq()V
.end method

.method public abstract onRecvDownloadCertificateRltAck(Z)V
.end method

.method public abstract onRecvGetCertReq()V
.end method
