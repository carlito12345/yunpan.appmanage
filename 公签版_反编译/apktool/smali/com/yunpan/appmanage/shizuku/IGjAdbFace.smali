.class public interface abstract Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunpan/appmanage/shizuku/IGjAdbFace$_Parcel;,
        Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;,
        Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.yunpan.appmanage.shizuku.IGjAdbFace"


# virtual methods
.method public abstract exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;
.end method

.method public abstract exit()V
.end method

.method public abstract file_canRead(Ljava/lang/String;)Z
.end method

.method public abstract file_canReadAndWrite(Ljava/lang/String;)Z
.end method

.method public abstract file_delete(Ljava/lang/String;)Z
.end method

.method public abstract file_exists(Ljava/lang/String;)Z
.end method

.method public abstract file_length(Ljava/lang/String;)J
.end method

.method public abstract file_listFiles(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/shizuku/FileParcelable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract file_mkdirs(Ljava/lang/String;)Z
.end method

.method public abstract file_rename(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract forceStop(Ljava/lang/String;I)V
.end method

.method public abstract getGroupMaxVolume(I)I
.end method

.method public abstract getNewProcess()Loa/b;
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract keyCode(IZ)Z
.end method

.method public abstract openFileRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract openFileWrite(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract transactRemote(Ljava/lang/String;I[BI)[B
.end method
