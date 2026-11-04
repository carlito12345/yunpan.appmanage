.class public interface abstract Lcom/autolink/adapterinterface/IMultiWindowCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IMultiWindowCallback$Stub;,
        Lcom/autolink/adapterinterface/IMultiWindowCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppDied(Ljava/lang/String;)V
.end method

.method public abstract onDown()V
.end method

.method public abstract onThreeFingersFling(I)V
.end method
