.class public interface abstract Lcom/yunpan/appmanage/shizuku/IUserService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunpan/appmanage/shizuku/IUserService$_Parcel;,
        Lcom/yunpan/appmanage/shizuku/IUserService$Stub;,
        Lcom/yunpan/appmanage/shizuku/IUserService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.yunpan.appmanage.shizuku.IUserService"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;
.end method

.method public abstract exit()V
.end method
