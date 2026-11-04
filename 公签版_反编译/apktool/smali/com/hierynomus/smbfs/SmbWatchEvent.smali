.class Lcom/hierynomus/smbfs/SmbWatchEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/WatchEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/WatchEvent<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

.field private final info:Lcom/hierynomus/msfscc/directory/FileNotifyInformation;


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/msfscc/directory/FileNotifyInformation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbWatchEvent;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hierynomus/smbfs/SmbWatchEvent;->info:Lcom/hierynomus/msfscc/directory/FileNotifyInformation;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic context()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbWatchEvent;->context()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public context()Ljava/nio/file/Path;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchEvent;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchEvent;->info:Lcom/hierynomus/msfscc/directory/FileNotifyInformation;

    invoke-virtual {v1}, Lcom/hierynomus/msfscc/directory/FileNotifyInformation;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0
.end method

.method public count()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public kind()Ljava/nio/file/WatchEvent$Kind;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hierynomus/smbfs/SmbWatchEvent$1;->$SwitchMap$com$hierynomus$msfscc$FileNotifyAction:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchEvent;->info:Lcom/hierynomus/msfscc/directory/FileNotifyInformation;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/hierynomus/msfscc/directory/FileNotifyInformation;->getAction()Lcom/hierynomus/msfscc/FileNotifyAction;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->v()Ljava/nio/file/WatchEvent$Kind;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :pswitch_0
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->x()Ljava/nio/file/WatchEvent$Kind;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->v()Ljava/nio/file/WatchEvent$Kind;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_2
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->j()Ljava/nio/file/WatchEvent$Kind;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
