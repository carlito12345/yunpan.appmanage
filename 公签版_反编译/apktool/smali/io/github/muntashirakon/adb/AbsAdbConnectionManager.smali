.class public abstract Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field isConnected:Z

.field private mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

.field private mApi:I

.field private mHostAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mThrowOnUnauthorised:Z

.field private mTimeout:J

.field private mTimeoutUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v0, "127.0.0.1"

    .line 12
    .line 13
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    iput v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 18
    .line 19
    const-wide/16 v0, 0xd05

    .line 20
    .line 21
    iput-wide v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    .line 22
    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic A(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->lambda$autoConnect$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic J(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->lambda$autoConnect$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method private autoConnect(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 10

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 84
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 86
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 87
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 88
    new-instance v7, Lio/github/muntashirakon/adb/android/AdbMdns;

    new-instance v8, Lio/github/muntashirakon/adb/a;

    const/4 v9, 0x2

    invoke-direct {v8, v4, v2, v5, v9}, Lio/github/muntashirakon/adb/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-direct {v7, p1, p2, v8}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 89
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p3, p4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    .line 91
    :try_start_2
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 92
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 93
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p1, :cond_1

    if-eq p2, v3, :cond_1

    .line 94
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 95
    new-instance p3, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    invoke-direct {p3, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 96
    invoke-virtual {p3, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 97
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 100
    iget-wide p2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object p4, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, p2, p3, p4, v2}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iput-boolean v6, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 102
    monitor-exit v1

    return v6

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 103
    :cond_0
    monitor-exit v1

    return v0

    .line 104
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not find any valid host address or port"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/InterruptedException;

    const-string p2, "Timed out while trying to find a valid host address and port"

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 106
    :try_start_4
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 107
    throw p1

    .line 108
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;
    .locals 3

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getPrivateKey()Ljava/security/PrivateKey;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast v1, Ljava/security/PrivateKey;

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getCertificate()Ljava/security/cert/Certificate;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/adb/KeyPair;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private static lambda$autoConnect$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lwa/t;->a:Lwa/u;

    .line 14
    .line 15
    iget-boolean p0, p0, Lwa/u;->v:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, "tcp\u627e\u5230\u7aef\u53e3\uff1a"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static lambda$autoConnect$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lwa/t;->a:Lwa/u;

    .line 14
    .line 15
    iget-boolean p0, p0, Lwa/u;->v:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, "tls\u627e\u5230\u7aef\u53e3\uff1a"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static synthetic lambda$autoConnect$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic r(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->lambda$autoConnect$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public autoConnect(Landroid/content/Context;J)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 2
    iget-object v3, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 6
    sget-object v9, Lwa/t;->a:Lwa/u;

    .line 7
    iget-boolean v9, v9, Lwa/u;->v:Z

    if-eqz v9, :cond_0

    .line 8
    const-string v9, "\u641c\u7d22\u7aef\u53e3\u4e2d......"

    invoke-static {v9}, Lwa/w;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 9
    :cond_0
    :goto_0
    sget-object v9, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 10
    iget-boolean v9, v9, Lcom/yunpan/appmanage/util/w;->D:Z

    if-eqz v9, :cond_1

    const-wide/16 v12, 0x8ae

    goto :goto_1

    :cond_1
    move-wide/from16 v12, p2

    :goto_1
    const/4 v9, 0x0

    :goto_2
    add-int/2addr v9, v8

    const/4 v14, 0x6

    if-gt v9, v14, :cond_12

    .line 11
    new-instance v14, Lio/github/muntashirakon/adb/android/AdbMdns;

    const-string v15, "adb"

    new-instance v10, Lio/github/muntashirakon/adb/a;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v4, v7, v11}, Lio/github/muntashirakon/adb/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-direct {v14, v0, v15, v10}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 12
    invoke-virtual {v14}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V

    .line 13
    new-instance v10, Lio/github/muntashirakon/adb/android/AdbMdns;

    const-string v11, "adb-tls-connect"

    new-instance v15, Lio/github/muntashirakon/adb/a;

    const/4 v5, 0x1

    invoke-direct {v15, v6, v4, v7, v5}, Lio/github/muntashirakon/adb/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-direct {v10, v0, v11, v15}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 14
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v12, v13, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 16
    sget-object v5, Lwa/t;->a:Lwa/u;

    .line 17
    iget-boolean v11, v5, Lwa/u;->v:Z

    if-eqz v11, :cond_2

    .line 18
    const-string v11, "\u641c\u7d22\u4e0d\u5230\u7aef\u53e3"

    invoke-static {v11}, Lwa/w;->b(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    .line 19
    :cond_2
    :goto_3
    sget-object v11, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 20
    iget-boolean v11, v11, Lcom/yunpan/appmanage/util/w;->D:Z

    if-eqz v11, :cond_5

    .line 21
    iget-boolean v11, v5, Lwa/u;->v:Z

    if-eqz v11, :cond_3

    .line 22
    const-string v11, "\u535a\u8d8aL\u6a21\u5f0f \u641c\u7d22\u4e0d\u5230\u7aef\u53e3"

    invoke-static {v11}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :cond_3
    :try_start_2
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 24
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v15, "adb_wifi_enabled"

    invoke-static {v11, v15, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v16, 0xc8

    .line 25
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 27
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v15, "adb_enabled"

    invoke-static {v11, v15, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v16, 0x1f4

    .line 28
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 29
    iget-boolean v5, v5, Lwa/u;->v:Z

    if-eqz v5, :cond_4

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adb_wifi_enabled\uff1a"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 32
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v15, "adb_wifi_enabled"

    invoke-static {v11, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lwa/w;->b(Ljava/lang/String;)V

    .line 33
    :cond_4
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 34
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "adb_enabled"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v16, 0x14d

    .line 35
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 36
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 37
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "adb_wifi_enabled"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v16, 0x3e8

    .line 38
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 39
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v2, "\u672a\u627e\u5230adb\u7aef\u53e3\uff0c\u8bf7\u786e\u4fdd\u5df2\u5f00\u542fUSB\u8c03\u8bd5\u548c\u65e0\u7ebf\u8c03\u8bd5"

    invoke-direct {v0, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catch_0
    :cond_6
    :goto_4
    :try_start_4
    invoke-virtual {v14}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 41
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 42
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 43
    iget-boolean v10, v5, Lcom/yunpan/appmanage/util/w;->D:Z

    if-eqz v10, :cond_8

    .line 44
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-gtz v16, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 45
    :cond_8
    :goto_5
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eqz v0, :cond_11

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    .line 47
    iput-object v0, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 48
    sget-object v6, Lwa/t;->a:Lwa/u;

    .line 49
    iget-boolean v7, v6, Lwa/u;->v:Z

    if-eqz v7, :cond_9

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5c1d\u8bd5\u8fde\u63a5 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lwa/w;->b(Ljava/lang/String;)V

    .line 51
    :cond_9
    new-instance v7, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    invoke-direct {v7, v0, v4}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget v0, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 52
    invoke-virtual {v7, v0}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object v0

    .line 53
    invoke-direct/range {p0 .. p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object v7

    invoke-virtual {v0, v7}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object v0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object v0

    iput-object v0, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 56
    iget-wide v9, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object v7, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v11, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {v0, v9, v10, v7, v11}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    iget-boolean v0, v6, Lwa/u;->v:Z

    if-eqz v0, :cond_a

    .line 58
    const-string v0, "\u8fde\u63a5\u6210\u529f"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    :cond_a
    const/16 v0, 0x2710

    if-le v4, v0, :cond_e

    .line 59
    iget-boolean v0, v5, Lcom/yunpan/appmanage/util/w;->C:Z

    if-eqz v0, :cond_e

    .line 60
    iget-boolean v0, v6, Lwa/u;->v:Z

    if-eqz v0, :cond_b

    .line 61
    const-string v0, "\u5df2\u52fe\u9009\u81ea\u52a8\u4fee\u6539\u7aef\u53e3\u4e3a5555"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 62
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object v0

    const-string v2, "tcpip:5555"

    invoke-virtual {v0, v2}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v4, 0x8ae

    .line 63
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 64
    :catch_1
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 65
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 66
    iget-boolean v0, v0, Lwa/u;->v:Z

    if-eqz v0, :cond_c

    .line 67
    const-string v0, "\u4fee\u6539\u5b8c\u6210\uff0c\u91cd\u65b0\u8fde\u63a5"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    :cond_c
    const/16 v0, 0x15b3

    .line 68
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->connect(I)Z

    move-result v0

    monitor-exit v3

    return v0

    .line 69
    :cond_d
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 70
    iget-boolean v0, v0, Lwa/u;->v:Z

    if-eqz v0, :cond_e

    .line 71
    const-string v0, "\u4fee\u6539\u7aef\u53e3\u7591\u662f\u5931\u8d25"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 72
    :cond_e
    iput-boolean v8, v1, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 73
    monitor-exit v3

    return v8

    .line 74
    :cond_f
    iget-boolean v0, v6, Lwa/u;->v:Z

    if-eqz v0, :cond_10

    .line 75
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 76
    :cond_10
    monitor-exit v3

    return v2

    .line 77
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\u672a\u627e\u5230\u6709\u6548\u7684adb\u7aef\u53e3"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :goto_6
    invoke-virtual {v14}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 79
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 80
    throw v0

    .line 81
    :cond_12
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v2, "\u672a\u627e\u5230adb\u7aef\u53e3\uff0c\u8bf7\u786e\u4fdd\u5df2\u5f00\u542fUSB\u8c03\u8bd5\u548c\u65e0\u7ebf\u8c03\u8bd5"

    invoke-direct {v0, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :goto_7
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getPrivateKey()Ljava/security/PrivateKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Leg/a;->r(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection;->close()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public connect(I)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 2
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    iget-object v3, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 6
    invoke-virtual {v2, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 10
    iget-wide v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object v4, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v5, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, v2, v3, v4, v5}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 12
    monitor-exit v1

    return p1

    .line 13
    :cond_1
    monitor-exit v1

    return v0

    .line 14
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 16
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 20
    new-instance v2, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    invoke-direct {v2, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 21
    invoke-virtual {v2, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 22
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 25
    iget-wide v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object p2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v4, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, v2, v3, p2, v4}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 27
    monitor-exit v1

    return p1

    .line 28
    :cond_1
    monitor-exit v1

    return v0

    .line 29
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connectTcp(Landroid/content/Context;J)Z
    .locals 1

    .line 1
    const-string v0, "adb"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public connectTls(Landroid/content/Context;J)Z
    .locals 1

    .line 1
    const-string v0, "adb-tls-connect"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public disconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->close()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getApi()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getCertificate()Ljava/security/cert/Certificate;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getPrivateKey()Ljava/security/PrivateKey;
.end method

.method public getTimeout()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getTimeoutUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbConnection;->isConnected()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbConnection;->isConnectionEstablished()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    monitor-exit v0

    .line 33
    return v1

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method public isThrowOnUnauthorised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    .line 2
    .line 3
    return v0
.end method

.method public varargs openStream(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 2

    .line 7
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 9
    :try_start_1
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    invoke-virtual {v1, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection;->open(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p1
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not connected to ADB."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public openStream(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    invoke-virtual {v1, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p1
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Not connected to ADB."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public pair(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->pair(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pair(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setApi(I)V

    .line 3
    iget-object v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object v7

    .line 5
    new-instance v9, Lio/github/muntashirakon/adb/PairingConnectionCtx;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "UTF-8"

    invoke-static {p3, v3}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lio/github/muntashirakon/adb/PairingConnectionCtx;-><init>(Ljava/lang/String;I[BLio/github/muntashirakon/adb/KeyPair;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v9}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-virtual {v9}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->close()V

    .line 8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    invoke-virtual {v9}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    const-class p3, Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v3, "addSuppressed"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object p3, v4, v0

    invoke-virtual {p3, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    :goto_0
    :try_start_6
    throw p1

    .line 10
    :goto_1
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public setApi(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 2
    .line 3
    return-void
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setThrowOnUnauthorised(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    .line 2
    .line 3
    iput-object p3, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    return-void
.end method
