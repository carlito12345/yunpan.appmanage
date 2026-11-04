.class public Lcom/hierynomus/smbj/connection/LeaseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final breakExecutor:Ljava/util/concurrent/ExecutorService;

.field private final breaksHandled:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final byKey:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/hierynomus/mssmb2/LeaseKey;",
            "Lcom/hierynomus/smbj/connection/LeaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final byPath:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/hierynomus/mssmb2/LeaseKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/smbj/connection/LeaseManager;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/hierynomus/smbj/connection/LeaseManager;->logger:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byPath:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    .line 18
    new-instance v0, Lcom/hierynomus/smbj/connection/LeaseManager$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/hierynomus/smbj/connection/LeaseManager$1;-><init>(Lcom/hierynomus/smbj/connection/LeaseManager;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->breakExecutor:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->breaksHandled:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/smbj/connection/LeaseManager;->logger:Lorg/slf4j/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static epochDelta(II)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    sub-int v0, p1, p0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_2

    const/high16 v0, 0x10000

    sub-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic lambda$leaseKeyForPath$0(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hierynomus/mssmb2/LeaseKey;->random()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v0, 0x2f

    .line 7
    .line 8
    const/16 v1, 0x5c

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hierynomus/smbj/connection/LeaseManager;->lambda$leaseKeyForPath$0(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->breakExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getCacheDirectory()Lcom/hierynomus/smbj/share/Directory;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byPath:Ljava/util/concurrent/ConcurrentMap;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public dispatchBreak(Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->breakExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/hierynomus/smbj/connection/LeaseManager$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/hierynomus/smbj/connection/LeaseManager$2;-><init>(Lcom/hierynomus/smbj/connection/LeaseManager;Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getBreaksHandled()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->breaksHandled:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public getByPath(Ljava/lang/String;)Lcom/hierynomus/smbj/connection/LeaseEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byPath:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hierynomus/smbj/connection/LeaseManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 24
    .line 25
    :goto_0
    return-object p1
.end method

.method public leaseKeyForExistingPath(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byPath:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hierynomus/smbj/connection/LeaseManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 12
    .line 13
    return-object p1
.end method

.method public leaseKeyForPath(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byPath:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hierynomus/smbj/connection/LeaseManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, La2/n;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, La2/n;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/hierynomus/mssmb2/LeaseKey;

    .line 18
    .line 19
    return-object p1
.end method

.method public lookup(Lcom/hierynomus/mssmb2/LeaseKey;)Lcom/hierynomus/smbj/connection/LeaseEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 8
    .line 9
    return-object p1
.end method

.method public onBreak(Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/hierynomus/smbj/connection/LeaseManager;->logger:Lorg/slf4j/Logger;

    .line 16
    .line 17
    const-string v1, "Lease break for unknown key {}, ignoring"

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewEpoch()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getEpoch()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v1, v2}, Lcom/hierynomus/smbj/connection/LeaseManager;->epochDelta(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewEpoch()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    if-gtz v1, :cond_1

    .line 46
    .line 47
    sget-object v1, Lcom/hierynomus/smbj/connection/LeaseManager;->logger:Lorg/slf4j/Logger;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewEpoch()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getEpoch()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "Stale lease break (newEpoch {} <= stored {}), ignoring"

    .line 66
    .line 67
    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->invalidateCache()I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewLeaseState()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setGrantedState(J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewEpoch()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewEpoch()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setEpoch(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setBroken(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->isAckRequired()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getSession()Lcom/hierynomus/smbj/session/Session;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    new-instance v1, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getSession()Lcom/hierynomus/smbj/session/Session;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->getSessionId()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getTreeId()J

    .line 125
    .line 126
    .line 127
    move-result-wide v6

    .line 128
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewLeaseState()J

    .line 133
    .line 134
    .line 135
    move-result-wide v9

    .line 136
    move-object v2, v1

    .line 137
    invoke-direct/range {v2 .. v10}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;-><init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/LeaseKey;J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getSession()Lcom/hierynomus/smbj/session/Session;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/session/Session;->send(Lcom/hierynomus/mssmb2/SMB2Packet;)Ljava/util/concurrent/Future;

    .line 145
    .line 146
    .line 147
    sget-object v0, Lcom/hierynomus/smbj/connection/LeaseManager;->logger:Lorg/slf4j/Logger;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getNewLeaseState()J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string v2, "Acknowledged lease break for {} -> state {}"

    .line 162
    .line 163
    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    iget-object p1, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->breaksHandled:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public register(Lcom/hierynomus/smbj/connection/LeaseEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byPath:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/hierynomus/smbj/connection/LeaseManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public unregister(Lcom/hierynomus/mssmb2/LeaseKey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager;->byKey:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
