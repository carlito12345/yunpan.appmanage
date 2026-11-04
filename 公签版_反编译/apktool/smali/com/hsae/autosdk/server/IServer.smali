.class public interface abstract Lcom/hsae/autosdk/server/IServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/server/IServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V
.end method

.method public abstract unregisterServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V
.end method
