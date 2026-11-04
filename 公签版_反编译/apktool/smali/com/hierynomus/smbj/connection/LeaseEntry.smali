.class public Lcom/hierynomus/smbj/connection/LeaseEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile broken:Z

.field private final cache:Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

.field private volatile cacheDirectory:Lcom/hierynomus/smbj/share/Directory;

.field private final cacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile dialect:Lcom/hierynomus/mssmb2/SMB2Dialect;

.field private volatile epoch:I

.field private volatile fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

.field private volatile granted:Z

.field private volatile grantedState:J

.field private final leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final path:Ljava/lang/String;

.field private final requestedState:J

.field private volatile session:Lcom/hierynomus/smbj/session/Session;

.field private volatile treeId:J


# direct methods
.method public constructor <init>(Lcom/hierynomus/mssmb2/LeaseKey;Lcom/hierynomus/mssmb2/LeaseKey;JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cache:Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 22
    .line 23
    iput-wide p3, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->requestedState:J

    .line 24
    .line 25
    iput-object p5, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->path:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getCache()Lcom/hierynomus/smbj/share/LeasedDirectoryCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cache:Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheDirectory()Lcom/hierynomus/smbj/share/Directory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheDirectory:Lcom/hierynomus/smbj/share/Directory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheGeneration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->dialect:Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEpoch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->epoch:I

    .line 2
    .line 3
    return v0
.end method

.method public getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGrantedState()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->grantedState:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParentLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestedState()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->requestedState:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSession()Lcom/hierynomus/smbj/session/Session;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->session:Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTreeId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->treeId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public invalidateCache()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cache:Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->invalidateAll()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheDirectory:Lcom/hierynomus/smbj/share/Directory;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheDirectory:Lcom/hierynomus/smbj/share/Directory;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public isBroken()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->broken:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGranted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->granted:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBroken(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->broken:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCacheDirectory(Lcom/hierynomus/smbj/share/Directory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->cacheDirectory:Lcom/hierynomus/smbj/share/Directory;

    .line 2
    .line 3
    return-void
.end method

.method public setEpoch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->epoch:I

    .line 2
    .line 3
    return-void
.end method

.method public setFileId(Lcom/hierynomus/mssmb2/SMB2FileId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->fileId:Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 2
    .line 3
    return-void
.end method

.method public setGranted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->granted:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGrantedState(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->grantedState:J

    .line 2
    .line 3
    return-void
.end method

.method public setOwner(Lcom/hierynomus/smbj/session/Session;JLcom/hierynomus/mssmb2/SMB2Dialect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->session:Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->treeId:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/hierynomus/smbj/connection/LeaseEntry;->dialect:Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 6
    .line 7
    return-void
.end method
