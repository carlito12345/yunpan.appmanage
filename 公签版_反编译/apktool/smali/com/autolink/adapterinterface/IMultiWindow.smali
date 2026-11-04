.class public interface abstract Lcom/autolink/adapterinterface/IMultiWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IMultiWindow$Stub;,
        Lcom/autolink/adapterinterface/IMultiWindow$Default;
    }
.end annotation


# virtual methods
.method public abstract isNaviBarVisable()Z
.end method

.method public abstract registerCallback(Lcom/autolink/adapterinterface/IMultiWindowCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/autolink/adapterinterface/IMultiWindowCallback;)V
.end method
