.class public interface abstract Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback$Stub;,
        Lcom/autolink/adapterinterface/clusterinteraction/IApaStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onApaClosedBySpeed()V
.end method

.method public abstract onApaStatusChanged(Z)V
.end method
