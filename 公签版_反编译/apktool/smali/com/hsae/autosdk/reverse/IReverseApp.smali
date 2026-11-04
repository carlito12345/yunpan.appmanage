.class public interface abstract Lcom/hsae/autosdk/reverse/IReverseApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/reverse/IReverseApp$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeModStatus()V
.end method

.method public abstract getCurrentModStatus()Z
.end method

.method public abstract isCurrentModButtonEnable()Z
.end method

.method public abstract registerReverseAppStatusListener(Lcom/hsae/autosdk/reverse/IReverseAppStatusListener;)V
.end method

.method public abstract sendCameraOFFKey()V
.end method

.method public abstract sendLongAVMKeyPressed()V
.end method

.method public abstract sendNormalAVMKeyPressed()V
.end method

.method public abstract unRegisterReverseAppStatusListener(Lcom/hsae/autosdk/reverse/IReverseAppStatusListener;)V
.end method
