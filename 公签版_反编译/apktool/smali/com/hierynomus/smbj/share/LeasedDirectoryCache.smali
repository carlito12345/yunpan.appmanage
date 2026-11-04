.class public Lcom/hierynomus/smbj/share/LeasedDirectoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hierynomus/smbj/share/LeasedDirectoryCache$CacheKey;
    }
.end annotation


# static fields
.field private static final TOTAL_HITS:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final TOTAL_POPULATES:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final entries:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/hierynomus/smbj/share/LeasedDirectoryCache$CacheKey;",
            "Ljava/util/List<",
            "+",
            "Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final populates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final serveHits:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_HITS:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_POPULATES:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->entries:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->serveHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->populates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    .line 25
    return-void
.end method

.method private static infoClassOf(Ljava/lang/Class;)Lcom/hierynomus/msfscc/FileInformationClass;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/hierynomus/msfscc/fileinformation/FileInformation;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)",
            "Lcom/hierynomus/msfscc/FileInformationClass;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/hierynomus/msfscc/fileinformation/FileInformationFactory;->getDecoder(Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileInformation$Decoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/hierynomus/msfscc/fileinformation/FileInformation$Decoder;->getInformationClass()Lcom/hierynomus/msfscc/FileInformationClass;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static isCacheable(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static resetStats()V
    .locals 3

    .line 1
    sget-object v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_HITS:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_POPULATES:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static totalHits()J
    .locals 2

    .line 1
    sget-object v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_HITS:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static totalPopulates()J
    .locals 2

    .line 1
    sget-object v0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_POPULATES:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method


# virtual methods
.method public getPopulates()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->populates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getServeHits()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->serveHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public invalidateAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->entries:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public populate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->isCacheable(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->entries:Ljava/util/concurrent/ConcurrentMap;

    .line 9
    .line 10
    new-instance v1, Lcom/hierynomus/smbj/share/LeasedDirectoryCache$CacheKey;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->infoClassOf(Ljava/lang/Class;)Lcom/hierynomus/msfscc/FileInformationClass;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {v1, p1, p2, p3}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache$CacheKey;-><init>(Ljava/lang/String;Lcom/hierynomus/msfscc/FileInformationClass;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->populates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_POPULATES:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->isCacheable(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->entries:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v1, Lcom/hierynomus/smbj/share/LeasedDirectoryCache$CacheKey;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->infoClassOf(Ljava/lang/Class;)Lcom/hierynomus/msfscc/FileInformationClass;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {v1, p1, p2, p3}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache$CacheKey;-><init>(Ljava/lang/String;Lcom/hierynomus/msfscc/FileInformationClass;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/util/List;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->serveHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 31
    .line 32
    .line 33
    sget-object p2, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->TOTAL_HITS:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->entries:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
