.class Lcom/hierynomus/smbfs/SmbWatchService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/WatchService;


# static fields
.field private static final POLL_INTERVAL_MILLIS:J = 0xaL


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

.field private final share:Lcom/hierynomus/smbj/share/DiskShare;

.field private final watchKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hierynomus/smbfs/SmbWatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbfs/SmbFileSystem;)V
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
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbWatchService;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/hierynomus/smbfs/SmbWatchService;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 22
    .line 23
    return-void
.end method

.method private requireOpen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/nio/file/ClosedWatchServiceException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

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
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/hierynomus/smbfs/SmbWatchKey;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/hierynomus/smbfs/SmbWatchKey;->cancel()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShare()Lcom/hierynomus/smbj/share/DiskShare;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 2
    .line 3
    return-object v0
.end method

.method public poll()Ljava/nio/file/WatchKey;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbWatchService;->requireOpen()V

    .line 2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hierynomus/smbfs/SmbWatchKey;

    .line 3
    invoke-virtual {v1}, Lcom/hierynomus/smbfs/SmbWatchKey;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbWatchService;->requireOpen()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hierynomus/smbfs/SmbWatchKey;

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/smbfs/SmbWatchKey;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 8
    :cond_2
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-gez p3, :cond_3

    iget-object p3, p0, Lcom/hierynomus/smbfs/SmbWatchService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public register(Lcom/hierynomus/smbfs/SmbPath;)Ljava/nio/file/WatchKey;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbWatchService;->requireOpen()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hierynomus/smbfs/SmbWatchKey;

    .line 5
    .line 6
    invoke-direct {v0, p1, p0}, Lcom/hierynomus/smbfs/SmbWatchKey;-><init>(Lcom/hierynomus/smbfs/SmbPath;Lcom/hierynomus/smbfs/SmbWatchService;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public take()Ljava/nio/file/WatchKey;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbWatchService;->requireOpen()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/hierynomus/smbfs/SmbWatchKey;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/hierynomus/smbfs/SmbWatchKey;->isReady()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    const-wide/16 v1, 0xa

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Ljava/nio/file/ClosedWatchServiceException;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    throw v0

    .line 52
    :goto_2
    goto :goto_1
.end method

.method public unregister(Lcom/hierynomus/smbfs/SmbWatchKey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbWatchService;->watchKeys:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
