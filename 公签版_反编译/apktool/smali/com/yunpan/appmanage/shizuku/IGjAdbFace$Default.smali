.class public Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/shizuku/IGjAdbFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public file_canRead(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public file_canReadAndWrite(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public file_delete(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public file_exists(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public file_length(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public file_listFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public file_mkdirs(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public file_rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public forceStop(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public getGroupMaxVolume(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNewProcess()Loa/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUid()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyCode(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openFileRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public openFileWrite(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public transactRemote(Ljava/lang/String;I[BI)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
