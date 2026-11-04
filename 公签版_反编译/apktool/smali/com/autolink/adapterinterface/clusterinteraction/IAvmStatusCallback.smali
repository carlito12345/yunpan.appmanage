.class public interface abstract Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback$Stub;,
        Lcom/autolink/adapterinterface/clusterinteraction/IAvmStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAvmClosedBySpeed()V
.end method

.method public abstract onAvmStatusChanged(Z)V
.end method
