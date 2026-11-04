.class public interface abstract Lcom/hsae/autosdk/settings/ISystemSettingServices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/ISystemSettingServices$Stub;
    }
.end annotation


# virtual methods
.method public abstract getFaultInformation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract operateLocalVrMicPermission(Ljava/lang/String;Z)V
.end method

.method public abstract queryBinder(I)Landroid/os/IBinder;
.end method
