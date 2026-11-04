.class public interface abstract Lcom/hsae/autosdk/hmi/IHmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/hmi/IHmi$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleKeyPress(I)V
.end method

.method public abstract registerHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
.end method

.method public abstract registerHmiScreenCallback(Lcom/hsae/autosdk/hmi/IHmiScreenCallback;)V
.end method

.method public abstract setNaviTtsPlayState(Z)V
.end method

.method public abstract unregisterHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
.end method

.method public abstract unregisterHmiScreenCallback(Lcom/hsae/autosdk/hmi/IHmiScreenCallback;)V
.end method
