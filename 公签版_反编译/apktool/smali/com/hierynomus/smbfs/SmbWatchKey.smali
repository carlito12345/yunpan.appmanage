.class Lcom/hierynomus/smbfs/SmbWatchKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/WatchKey;


# instance fields
.field private volatile directory:Lcom/hierynomus/smbj/share/Directory;

.field private final diskShare:Lcom/hierynomus/smbj/share/DiskShare;

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/hierynomus/mssmb2/messages/SMB2ChangeNotifyResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/hierynomus/smbfs/SmbPath;

.field private final signalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final valid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final watchService:Lcom/hierynomus/smbfs/SmbWatchService;


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbfs/SmbPath;Lcom/hierynomus/smbfs/SmbWatchService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->events:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->valid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->signalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->path:Lcom/hierynomus/smbfs/SmbPath;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->watchService:Lcom/hierynomus/smbfs/SmbWatchService;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/hierynomus/smbfs/SmbWatchService;->getShare()Lcom/hierynomus/smbj/share/DiskShare;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->diskShare:Lcom/hierynomus/smbj/share/DiskShare;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Share;->isConnected()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbWatchKey;->arm()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/nio/file/ClosedWatchServiceException;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method private arm()V
    .locals 10

    .line 1
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->diskShare:Lcom/hierynomus/smbj/share/DiskShare;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->path:Lcom/hierynomus/smbfs/SmbPath;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/hierynomus/smbfs/SmbPath;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 20
    .line 21
    sget-object v8, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->directory:Lcom/hierynomus/smbj/share/Directory;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->directory:Lcom/hierynomus/smbj/share/Directory;

    .line 32
    .line 33
    const-class v1, Lcom/hierynomus/mssmb2/SMB2CompletionFilter;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/hierynomus/smbj/share/Directory;->watchAsync(Ljava/util/Set;Z)Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->future:Ljava/util/concurrent/Future;

    .line 45
    .line 46
    return-void
.end method

.method private harvest(Ljava/util/concurrent/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/hierynomus/mssmb2/messages/SMB2ChangeNotifyResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/hierynomus/mssmb2/messages/SMB2ChangeNotifyResponse;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2ChangeNotifyResponse;->getFileNotifyInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/hierynomus/msfscc/directory/FileNotifyInformation;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->events:Ljava/util/List;

    .line 28
    .line 29
    new-instance v2, Lcom/hierynomus/smbfs/SmbWatchEvent;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->watchService:Lcom/hierynomus/smbfs/SmbWatchService;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/hierynomus/smbfs/SmbWatchService;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3, v0}, Lcom/hierynomus/smbfs/SmbWatchEvent;-><init>(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/msfscc/directory/FileNotifyInformation;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbWatchKey;->cancel()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->valid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->future:Ljava/util/concurrent/Future;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->directory:Lcom/hierynomus/smbj/share/Directory;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->watchService:Lcom/hierynomus/smbfs/SmbWatchService;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/hierynomus/smbfs/SmbWatchService;->unregister(Lcom/hierynomus/smbfs/SmbWatchKey;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public isReady()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->valid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->signalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    invoke-direct {p0, v0}, Lcom/hierynomus/smbfs/SmbWatchKey;->harvest(Ljava/util/concurrent/Future;)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_2
    :goto_0
    return v2
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->valid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pollEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->events:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->events:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public reset()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->valid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->signalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->valid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->events:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->diskShare:Lcom/hierynomus/smbj/share/DiskShare;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Share;->isConnected()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbWatchKey;->cancel()V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbWatchKey;->arm()V

    .line 45
    .line 46
    .line 47
    return v2
.end method

.method public watchable()Ljava/nio/file/Watchable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchKey;->path:Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    return-object v0
.end method
