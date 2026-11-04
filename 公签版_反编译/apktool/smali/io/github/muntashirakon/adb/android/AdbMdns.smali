.class public Lio/github/muntashirakon/adb/android/AdbMdns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$ServiceType;
    }
.end annotation


# static fields
.field public static final SERVICE_TYPE_ADB:Ljava/lang/String; = "adb"

.field public static final SERVICE_TYPE_TELNET:Ljava/lang/String; = "telnet"

.field public static final SERVICE_TYPE_TLS_CONNECT:Ljava/lang/String; = "adb-tls-connect"

.field public static final SERVICE_TYPE_TLS_PAIRING:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field private final mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

.field private final mContext:Landroid/content/Context;

.field private final mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private final mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistered:Z

.field private mRunning:Z

.field private mServiceName:Ljava/lang/String;

.field private final mServiceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "_"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, "._tcp"

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 37
    .line 38
    const-string p2, "servicediscovery"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/net/nsd/NsdManager;

    .line 45
    .line 46
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 47
    .line 48
    new-instance p1, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p0, p2}, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 55
    .line 56
    return-void
.end method

.method public static bridge synthetic a(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/android/AdbMdns;->onDiscoverStop()V

    return-void
.end method

.method public static bridge synthetic b(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/android/AdbMdns;->onDiscoveryStart()V

    return-void
.end method

.method public static bridge synthetic c(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public static bridge synthetic d(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public static bridge synthetic e(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private isPortAvailable(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 9
    .line 10
    iget-object v4, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v4}, Lio/github/muntashirakon/adb/android/AndroidUtils;->getHostIpAddress(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-direct {v3, v4, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_3
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception v2

    .line 32
    :try_start_4
    const-class v3, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 33
    .line 34
    :try_start_5
    const-string v4, "addSuppressed"

    .line 35
    .line 36
    new-array v5, v1, [Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v3, v5, v0

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-array v4, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v2, v4, v0

    .line 47
    .line 48
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :goto_0
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 52
    :catch_1
    return v1
.end method

.method private onDiscoverStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 3
    .line 4
    return-void
.end method

.method private onDiscoveryStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 3
    .line 4
    return-void
.end method

.method private onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 2
    .line 3
    new-instance v1, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, -0x1

    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-interface {v0, p1, v1, v2}, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;->onPortChanged(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/net/NetworkInterface;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/net/InetAddress;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {p0, v2}, Lio/github/muntashirakon/adb/android/AdbMdns;->isPortAvailable(I)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget-object v5, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v2, v3, v4, v5}, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;->onPortChanged(Ljava/net/InetAddress;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 2
    .line 3
    return v0
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 14
    .line 15
    iget-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceType:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 14
    .line 15
    iget-object v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
