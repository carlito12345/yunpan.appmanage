.class public Lcom/gj/server/GjService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gj/server/GjService$HandshakeTarget;
    }
.end annotation


# static fields
.field private static final HANDSHAKE_TCP_PORT:I = 0x9a67

.field private static final PROXY_TOKEN:Ljava/lang/String; = "com.gj.server.GjService"

.field private static final TAG:Ljava/lang/String; = "GjService"

.field private static final TRANSACTION_PROXY:I = 0x5f000001

.field public static version:I = 0x7


# instance fields
.field binder:Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;

.field private final defaultUserId:I

.field private volatile handshakeServerStarted:Z

.field packageName:Ljava/lang/String;

.field services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/gj/server/GjService;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/gj/server/GjService;->packageName:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gj/server/GjService;->services:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gj/server/GjService;->handshakeServerStarted:Z

    .line 6
    new-instance v0, Lcom/gj/server/GjService$1;

    invoke-direct {v0, p0}, Lcom/gj/server/GjService$1;-><init>(Lcom/gj/server/GjService;)V

    iput-object v0, p0, Lcom/gj/server/GjService;->binder:Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;

    .line 7
    iput-object p1, p0, Lcom/gj/server/GjService;->packageName:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/gj/server/GjService;->defaultUserId:I

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GjService\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GjService"

    invoke-static {p2, p1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/gj/server/GjService;->startServer()V

    return-void
.end method

.method public static synthetic a(Lcom/gj/server/GjService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gj/server/GjService;->lambda$startHandshakeServer$0()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gj/server/GjService;->lambda$startKeepAlive$2()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gj/server/GjService;->lambda$sendBinder_$1()V

    return-void
.end method

.method public static call(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/content/AttributionSource$Builder;

    .line 8
    .line 9
    invoke-static {}, Landroid/system/Os;->getuid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/content/AttributionSource$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v1, p0

    .line 25
    move-object v3, p3

    .line 26
    move-object v4, p4

    .line 27
    move-object v5, p5

    .line 28
    move-object v6, p6

    .line 29
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-object v0, p0

    .line 35
    move-object v1, p2

    .line 36
    move-object v2, p1

    .line 37
    move-object v3, p3

    .line 38
    move-object v4, p4

    .line 39
    move-object v5, p5

    .line 40
    move-object v6, p6

    .line 41
    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v1, 0x1e

    .line 47
    .line 48
    if-lt v0, v1, :cond_1

    .line 49
    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p2

    .line 52
    move-object v2, p1

    .line 53
    move-object v3, p3

    .line 54
    move-object v4, p4

    .line 55
    move-object v5, p5

    .line 56
    move-object v6, p6

    .line 57
    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/16 p1, 0x1d

    .line 63
    .line 64
    if-lt v0, p1, :cond_2

    .line 65
    .line 66
    move-object v0, p0

    .line 67
    move-object v1, p2

    .line 68
    move-object v2, p3

    .line 69
    move-object v3, p4

    .line 70
    move-object v4, p5

    .line 71
    move-object v5, p6

    .line 72
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p0, p2, p4, p5, p6}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_0
    return-object p0
.end method

.method public static bridge synthetic d(Lcom/gj/server/GjService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gj/server/GjService;->defaultUserId:I

    return p0
.end method

.method public static forceStopCompat(Ljava/lang/String;I)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-class v3, Ljava/lang/String;

    .line 5
    .line 6
    const-string v4, "forceStopPackage"

    .line 7
    .line 8
    invoke-static {}, Lcom/gj/server/GjService;->getActivityManagerService()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    new-array v7, v0, [Ljava/lang/Class;

    .line 19
    .line 20
    aput-object v3, v7, v2

    .line 21
    .line 22
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    aput-object v8, v7, v1

    .line 25
    .line 26
    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p0, v0, v2

    .line 37
    .line 38
    aput-object p1, v0, v1

    .line 39
    .line 40
    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-array v0, v1, [Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v3, v0, v2

    .line 51
    .line 52
    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-array v0, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p0, v0, v2

    .line 59
    .line 60
    invoke-virtual {p1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "IActivityManager is null"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method private static forceStopPackageCompat(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-class v3, Ljava/lang/String;

    .line 5
    .line 6
    const-string v4, "forceStopPackage"

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    new-array v6, v0, [Ljava/lang/Class;

    .line 13
    .line 14
    aput-object v3, v6, v2

    .line 15
    .line 16
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v7, v6, v1

    .line 19
    .line 20
    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, v0, v2

    .line 31
    .line 32
    aput-object p2, v0, v1

    .line 33
    .line 34
    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-array v0, v1, [Ljava/lang/Class;

    .line 43
    .line 44
    aput-object v3, v0, v2

    .line 45
    .line 46
    invoke-virtual {p2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-array v0, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, v0, v2

    .line 53
    .line 54
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public static getActivityManagerService()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v4, 0x1a

    .line 7
    .line 8
    if-lt v3, v4, :cond_0

    .line 9
    .line 10
    const-string v3, "android.app.ActivityManager"

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "getService"

    .line 17
    .line 18
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v3, "android.app.ActivityManagerNative"

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "getDefault"

    .line 36
    .line 37
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    return-object v0

    .line 46
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v5, "\u5931\u8d25\uff1a"

    .line 49
    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v6, "GjService"

    .line 65
    .line 66
    invoke-static {v6, v4}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :try_start_1
    const-string v3, "activity"

    .line 73
    .line 74
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v4, "android.app.IActivityManager$Stub"

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v7, "asInterface"

    .line 85
    .line 86
    new-array v8, v1, [Ljava/lang/Class;

    .line 87
    .line 88
    const-class v9, Landroid/os/IBinder;

    .line 89
    .line 90
    aput-object v9, v8, v0

    .line 91
    .line 92
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v3, v1, v0

    .line 99
    .line 100
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    return-object v0

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v6, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    return-object v2
.end method

.method private static getContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const-class v5, Landroid/os/IBinder;

    .line 7
    .line 8
    const-string v6, "getContentProviderExternal"

    .line 9
    .line 10
    const-class v7, Ljava/lang/String;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    new-array v9, v0, [Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v7, v9, v3

    .line 19
    .line 20
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    aput-object v10, v9, v4

    .line 23
    .line 24
    aput-object v5, v9, v2

    .line 25
    .line 26
    aput-object v7, v9, v1

    .line 27
    .line 28
    invoke-virtual {v8, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p1, v0, v3

    .line 39
    .line 40
    aput-object v9, v0, v4

    .line 41
    .line 42
    aput-object p3, v0, v2

    .line 43
    .line 44
    aput-object p4, v0, v1

    .line 45
    .line 46
    invoke-virtual {v8, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    new-array v0, v1, [Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v7, v0, v3

    .line 58
    .line 59
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v7, v0, v4

    .line 62
    .line 63
    aput-object v5, v0, v2

    .line 64
    .line 65
    invoke-virtual {p4, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    new-array v0, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p1, v0, v3

    .line 76
    .line 77
    aput-object p2, v0, v4

    .line 78
    .line 79
    aput-object p3, v0, v2

    .line 80
    .line 81
    invoke-virtual {p4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_0
    if-nez p0, :cond_0

    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "provider"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroid/content/IContentProvider;

    .line 107
    .line 108
    return-object p0
.end method

.method private static getPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "DiscouragedPrivateApi"
        }
    .end annotation

    .line 1
    const-string v0, "android.os.UserHandle"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Class;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v2, v4, v5

    .line 14
    .line 15
    const-string v6, "of"

    .line 16
    .line 17
    invoke-virtual {v1, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p2, v4, v5

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {v1, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x3

    .line 39
    new-array v4, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    const-class v6, Ljava/lang/String;

    .line 42
    .line 43
    aput-object v6, v4, v5

    .line 44
    .line 45
    aput-object v2, v4, v3

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    aput-object v0, v4, v2

    .line 49
    .line 50
    const-class v0, Landroid/content/Context;

    .line 51
    .line 52
    const-string v6, "createPackageContextAsUser"

    .line 53
    .line 54
    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p1, v1, v5

    .line 65
    .line 66
    aput-object v4, v1, v3

    .line 67
    .line 68
    aput-object p2, v1, v2

    .line 69
    .line 70
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroid/content/Context;

    .line 75
    .line 76
    return-object p0
.end method

.method private static getSystemContext()Landroid/content/Context;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "DiscouragedPrivateApi"
        }
    .end annotation

    .line 1
    const-string v0, "android.app.ActivityThread"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "currentActivityThread"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "systemMain"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    const-string v3, "getSystemContext"

    .line 31
    .line 32
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    return-object v0
.end method

.method private handleHandshakeClient(Ljava/net/Socket;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/io/BufferedWriter;

    .line 16
    .line 17
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "\u6536\u5230\u63e1\u624b\u8bf7\u6c42\uff1a"

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v2, "GjService"

    .line 65
    .line 66
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/gj/server/GjService;->parseHandshakeTarget(Ljava/lang/String;)Lcom/gj/server/GjService$HandshakeTarget;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "handshake target: "

    .line 76
    .line 77
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p1, Lcom/gj/server/GjService$HandshakeTarget;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, " user="

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v3, p1, Lcom/gj/server/GjService$HandshakeTarget;->userId:I

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p1, Lcom/gj/server/GjService$HandshakeTarget;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/gj/server/GjService;->binder:Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    iget p1, p1, Lcom/gj/server/GjService$HandshakeTarget;->userId:I

    .line 108
    .line 109
    invoke-static {v0, v2, v3, p1}, Lcom/gj/server/GjService;->sendBinder(Ljava/lang/String;Landroid/os/IBinder;ZI)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    const-string p1, "ok\n"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const-string p1, "fail\n"

    .line 119
    .line 120
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_2
    :goto_1
    const-string p1, "empty\n"

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private static synthetic lambda$sendBinder_$1()V
    .locals 2

    .line 1
    const-string v0, "GjService"

    .line 2
    .line 3
    const-string v1, "exiting..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$startHandshakeServer$0()V
    .locals 8

    .line 1
    const-string v0, "GjService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    .line 5
    .line 6
    const-string v3, "127.0.0.1"

    .line 7
    .line 8
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const v4, 0x9a67

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-direct {v2, v4, v5, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 17
    .line 18
    .line 19
    :try_start_1
    const-string v3, "\u63e1\u624b\u670d\u52a1\u5df2\u542f\u52a8"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28
    :try_start_3
    invoke-direct {p0, v3}, Lcom/gj/server/GjService;->handleHandshakeClient(Ljava/net/Socket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_3

    .line 39
    :catchall_1
    move-exception v4

    .line 40
    goto :goto_2

    .line 41
    :catchall_2
    move-exception v4

    .line 42
    move-object v3, v1

    .line 43
    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "\u63e1\u624b\u670d\u52a1\u5f02\u5e38\uff1a"

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 65
    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_3
    move-exception v1

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    :try_start_6
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 74
    .line 75
    .line 76
    :catch_1
    :cond_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    :catchall_4
    move-exception v2

    .line 78
    move-object v7, v2

    .line 79
    move-object v2, v1

    .line 80
    move-object v1, v7

    .line 81
    :goto_3
    const/4 v3, 0x0

    .line 82
    :try_start_8
    iput-boolean v3, p0, Lcom/gj/server/GjService;->handshakeServerStarted:Z

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v4, "\u63e1\u624b\u670d\u52a1\u542f\u52a8\u5931\u8d25\uff1a"

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    :try_start_9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 111
    .line 112
    .line 113
    :catch_2
    :cond_2
    return-void

    .line 114
    :catchall_5
    move-exception v0

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    :try_start_a
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 118
    .line 119
    .line 120
    :catch_3
    :cond_3
    goto :goto_5

    .line 121
    :goto_4
    throw v0

    .line 122
    :goto_5
    goto :goto_4
.end method

.method private static synthetic lambda$startKeepAlive$2()V
    .locals 2

    .line 1
    :goto_0
    const-wide/32 v0, 0xea60

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    array-length v1, p0

    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    aget-object v1, p0, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, ""

    .line 20
    .line 21
    :goto_0
    if-eqz p0, :cond_2

    .line 22
    .line 23
    array-length v2, p0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-le v2, v3, :cond_2

    .line 26
    .line 27
    aget-object p0, p0, v3

    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/gj/server/GjService;->parseUserId(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    :goto_1
    new-instance v2, Lcom/gj/server/GjService;

    .line 36
    .line 37
    invoke-direct {v2, v1, p0}, Lcom/gj/server/GjService;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private parseHandshakeTarget(Ljava/lang/String;)Lcom/gj/server/GjService$HandshakeTarget;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    iget v0, p0, Lcom/gj/server/GjService;->defaultUserId:I

    .line 11
    .line 12
    const/16 v1, 0x20

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_1

    .line 19
    .line 20
    add-int/lit8 v0, v1, 0x1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v2, p0, Lcom/gj/server/GjService;->defaultUserId:I

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/gj/server/GjService;->parseUserId(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_1
    new-instance v1, Lcom/gj/server/GjService$HandshakeTarget;

    .line 42
    .line 43
    invoke-direct {v1, p1, v0}, Lcom/gj/server/GjService$HandshakeTarget;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method private static parseUserId(Ljava/lang/String;I)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "--user="

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return p0

    .line 33
    :catch_0
    return p1
.end method

.method private static removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/Class;

    .line 7
    .line 8
    const-class v3, Ljava/lang/String;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const-class v3, Landroid/os/IBinder;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    aput-object v3, v2, v5

    .line 17
    .line 18
    const-string v3, "removeContentProviderExternal"

    .line 19
    .line 20
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, v1, v4

    .line 27
    .line 28
    aput-object p2, v1, v5

    .line 29
    .line 30
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static sendBinder(Ljava/lang/String;Landroid/os/IBinder;ZI)Z
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gj/server/GjService;->sendBinder_(Ljava/lang/String;Landroid/os/IBinder;ZI)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    const-string v1, ":acc"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/gj/server/GjService;->sendBinder_(Ljava/lang/String;Landroid/os/IBinder;ZI)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0

    .line 26
    :cond_2
    return v0
.end method

.method private static sendBinder_(Ljava/lang/String;Landroid/os/IBinder;ZI)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "binder"

    .line 6
    .line 7
    const-string v4, "removeContentProviderExternal"

    .line 8
    .line 9
    invoke-static {}, Lcom/gj/server/GjService;->getActivityManagerService()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v7, "GjService"

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    const-string v0, "\u83b7\u53d6ActivityManager\u5931\u8d25"

    .line 19
    .line 20
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v6

    .line 24
    :cond_0
    const-string v8, ".provider"

    .line 25
    .line 26
    invoke-static {v0, v8}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const-string v9, ":acc"

    .line 31
    .line 32
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    if-eqz v9, :cond_1

    .line 37
    .line 38
    const/4 v8, 0x4

    .line 39
    invoke-static {v8, v6, v0}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v8, ".providerAcc"

    .line 44
    .line 45
    invoke-static {v0, v8}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    :cond_1
    move-object v15, v8

    .line 50
    move-object v8, v0

    .line 51
    const/4 v14, 0x0

    .line 52
    move/from16 v13, p3

    .line 53
    .line 54
    :try_start_0
    invoke-static {v5, v15, v13, v14, v15}, Lcom/gj/server/GjService;->getContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/content/IContentProvider;

    .line 55
    .line 56
    .line 57
    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 58
    if-nez v16, :cond_3

    .line 59
    .line 60
    :try_start_1
    const-string v0, "provider is null %s %d"

    .line 61
    .line 62
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-array v9, v1, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v15, v9, v6

    .line 69
    .line 70
    aput-object v3, v9, v2

    .line 71
    .line 72
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    if-eqz v16, :cond_2

    .line 80
    .line 81
    :try_start_2
    invoke-static {v5, v15, v14}, Lcom/gj/server/GjService;->removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object v1, v0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_0
    return v6

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object v9, v14

    .line 109
    move-object v3, v15

    .line 110
    :goto_1
    move-object/from16 v14, v16

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_3
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    const-string v0, "provider is dead %s %d"

    .line 125
    .line 126
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    new-array v9, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object v15, v9, v6

    .line 133
    .line 134
    aput-object v3, v9, v2

    .line 135
    .line 136
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    .line 142
    .line 143
    :try_start_4
    invoke-static {v5, v15, v14}, Lcom/gj/server/GjService;->removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    move-object v1, v0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    return v6

    .line 169
    :cond_4
    if-nez p2, :cond_5

    .line 170
    .line 171
    :try_start_5
    const-string v0, "retry works"

    .line 172
    .line 173
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v9, Lcom/gj/server/BinderWrapper;

    .line 182
    .line 183
    move-object/from16 v10, p1

    .line 184
    .line 185
    invoke-direct {v9, v10}, Lcom/gj/server/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    .line 190
    .line 191
    const-string v17, "sendBinder"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 192
    .line 193
    const/16 v18, 0x0

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    const/4 v11, 0x0

    .line 197
    move-object/from16 v9, v16

    .line 198
    .line 199
    move-object v12, v15

    .line 200
    move-object/from16 v13, v17

    .line 201
    .line 202
    move-object/from16 v14, v18

    .line 203
    .line 204
    move-object/from16 v19, v15

    .line 205
    .line 206
    move-object v15, v0

    .line 207
    :try_start_6
    invoke-static/range {v9 .. v15}, Lcom/gj/server/GjService;->call(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_7

    .line 212
    .line 213
    const-class v9, Lcom/gj/server/BinderWrapper;

    .line 214
    .line 215
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 220
    .line 221
    .line 222
    const-string v9, "send binder to %s in user %d"

    .line 223
    .line 224
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    new-array v11, v1, [Ljava/lang/Object;

    .line 229
    .line 230
    aput-object v8, v11, v6

    .line 231
    .line 232
    aput-object v10, v11, v2

    .line 233
    .line 234
    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-static {v7, v9}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/gj/server/BinderWrapper;

    .line 246
    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    iget-object v3, v0, Lcom/gj/server/BinderWrapper;->binder:Landroid/os/IBinder;

    .line 250
    .line 251
    if-eqz v3, :cond_6

    .line 252
    .line 253
    invoke-interface {v3}, Landroid/os/IBinder;->pingBinder()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_6

    .line 258
    .line 259
    iget-object v0, v0, Lcom/gj/server/BinderWrapper;->binder:Landroid/os/IBinder;

    .line 260
    .line 261
    new-instance v3, Lcom/gj/server/b;

    .line 262
    .line 263
    invoke-direct {v3, v6}, Lcom/gj/server/b;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v0, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 267
    .line 268
    .line 269
    const-string v0, "\u6210\u529f"

    .line 270
    .line 271
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 272
    .line 273
    .line 274
    move-object/from16 v3, v19

    .line 275
    .line 276
    const/4 v9, 0x0

    .line 277
    :try_start_7
    invoke-static {v5, v3, v9}, Lcom/gj/server/GjService;->removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :catchall_3
    move-exception v0

    .line 282
    move-object v1, v0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :goto_3
    return v2

    .line 303
    :catchall_4
    move-exception v0

    .line 304
    move-object/from16 v3, v19

    .line 305
    .line 306
    const/4 v9, 0x0

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_6
    move-object/from16 v3, v19

    .line 310
    .line 311
    const/4 v9, 0x0

    .line 312
    :try_start_8
    const-string v0, "server binder not received"

    .line 313
    .line 314
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :catchall_5
    move-exception v0

    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_7
    move-object/from16 v3, v19

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    :goto_4
    const-string v0, "\u5931\u8d25"

    .line 325
    .line 326
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 327
    .line 328
    .line 329
    :try_start_9
    invoke-static {v5, v3, v9}, Lcom/gj/server/GjService;->removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :catchall_6
    move-exception v0

    .line 334
    move-object v1, v0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :goto_5
    return v6

    .line 355
    :catchall_7
    move-exception v0

    .line 356
    move-object v9, v14

    .line 357
    move-object v3, v15

    .line 358
    :goto_6
    :try_start_a
    new-instance v10, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v11, "failed send binder to %s in user %d"

    .line 364
    .line 365
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    new-array v1, v1, [Ljava/lang/Object;

    .line 370
    .line 371
    aput-object v8, v1, v6

    .line 372
    .line 373
    aput-object v12, v1, v2

    .line 374
    .line 375
    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 394
    .line 395
    .line 396
    if-eqz v14, :cond_8

    .line 397
    .line 398
    :try_start_b
    invoke-static {v5, v3, v9}, Lcom/gj/server/GjService;->removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :catchall_8
    move-exception v0

    .line 403
    move-object v1, v0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_8
    :goto_7
    return v6

    .line 424
    :catchall_9
    move-exception v0

    .line 425
    move-object v1, v0

    .line 426
    if-eqz v14, :cond_9

    .line 427
    .line 428
    :try_start_c
    invoke-static {v5, v3, v9}, Lcom/gj/server/GjService;->removeContentProviderExternalCompat(Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :catchall_a
    move-exception v0

    .line 433
    move-object v2, v0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v7, v0}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :cond_9
    :goto_8
    goto :goto_a

    .line 454
    :goto_9
    throw v1

    .line 455
    :goto_a
    goto :goto_9
.end method

.method private declared-synchronized startHandshakeServer()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/gj/server/GjService;->handshakeServerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/gj/server/GjService;->handshakeServerStarted:Z

    .line 10
    .line 11
    new-instance v0, Lfg/b;

    .line 12
    .line 13
    new-instance v1, La2/h;

    .line 14
    .line 15
    const/16 v2, 0x9

    .line 16
    .line 17
    invoke-direct {v1, v2, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 22
    .line 23
    .line 24
    const-string v1, "gj-handshake"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw v0
.end method

.method private startKeepAlive()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/gj/server/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/gj/server/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private startServer()V
    .locals 5

    .line 1
    const-string v0, "GjService"

    .line 2
    .line 3
    const-string v1, "\u4e0d\u80fdaddService\uff1a"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    const-string v3, "gj_face_server"

    .line 7
    .line 8
    iget-object v4, p0, Lcom/gj/server/GjService;->binder:Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;

    .line 9
    .line 10
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v3

    .line 15
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/gj/server/GjService;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/gj/server/GjService;->binder:Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;

    .line 37
    .line 38
    iget v4, p0, Lcom/gj/server/GjService;->defaultUserId:I

    .line 39
    .line 40
    invoke-static {v1, v3, v2, v4}, Lcom/gj/server/GjService;->sendBinder(Ljava/lang/String;Landroid/os/IBinder;ZI)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/gj/server/GjService;->startHandshakeServer()V

    .line 44
    .line 45
    .line 46
    const-string v1, "\u8fd0\u884c\u5566"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception v1

    .line 53
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v0, v3}, Lcom/yunpan/appmanage/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method
