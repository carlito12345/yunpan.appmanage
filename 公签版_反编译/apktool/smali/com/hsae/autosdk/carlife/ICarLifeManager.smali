.class public interface abstract Lcom/hsae/autosdk/carlife/ICarLifeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/carlife/ICarLifeManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract accessorySourceChange(IZZ)V
.end method

.method public abstract authenticate()V
.end method

.method public abstract authenticateByMode(I)V
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract hide()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isVrStarted()Z
.end method

.method public abstract onAoaConneced()V
.end method

.method public abstract onHmiChanged(II)V
.end method

.method public abstract onTelOn()V
.end method

.method public abstract onUsbAttached(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract popUpCurrentMode()V
.end method

.method public abstract registerCarLifeListener(Lcom/hsae/autosdk/carlife/ICarLifeListener;)V
.end method

.method public abstract show()V
.end method

.method public abstract startVr()V
.end method

.method public abstract unregisterCarLifeListener(Lcom/hsae/autosdk/carlife/ICarLifeListener;)V
.end method
