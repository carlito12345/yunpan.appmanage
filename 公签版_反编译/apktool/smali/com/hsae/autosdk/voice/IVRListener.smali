.class public interface abstract Lcom/hsae/autosdk/voice/IVRListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/voice/IVRListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProgress(I)V
.end method

.method public abstract onResetVrResult(Z)V
.end method

.method public abstract onSrState(I)V
.end method

.method public abstract onVRItemSelected(I)V
.end method

.method public abstract onVRPageDown()V
.end method

.method public abstract onVRPageUP()V
.end method

.method public abstract onVrState(I)V
.end method

.method public abstract syncVrState(I)V
.end method
