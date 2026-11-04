.class public interface abstract Lcom/autolink/adapterinterface/IHardKeyCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;,
        Lcom/autolink/adapterinterface/IHardKeyCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onKeyEvent(III)V
.end method

.method public abstract onKeyPressed(I)V
.end method

.method public abstract onKeyReleased(I)V
.end method
