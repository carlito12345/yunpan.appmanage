.class public Lcom/hsae/autosdk/util/LogConfigure;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogConfigure"

.field public static final synthetic a:I

.field private static mInstance:Lcom/hsae/autosdk/util/LogConfigure;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private retryCount:I

.field private volatile service:Lcom/hsae/d531mc/logservice/ILogService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hsae/autosdk/util/LogConfigure;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hsae/autosdk/util/LogConfigure;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hsae/autosdk/util/LogConfigure;->mInstance:Lcom/hsae/autosdk/util/LogConfigure;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->retryCount:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->service:Lcom/hsae/d531mc/logservice/ILogService;

    .line 9
    .line 10
    new-instance v0, Lcom/hsae/autosdk/util/LogConfigure$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/hsae/autosdk/util/LogConfigure$1;-><init>(Lcom/hsae/autosdk/util/LogConfigure;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->conn:Landroid/content/ServiceConnection;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/util/LogConfigure;Lcom/hsae/d531mc/logservice/ILogService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hsae/autosdk/util/LogConfigure;->service:Lcom/hsae/d531mc/logservice/ILogService;

    return-void
.end method

.method public static getInstance()Lcom/hsae/autosdk/util/LogConfigure;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/util/LogConfigure;->mInstance:Lcom/hsae/autosdk/util/LogConfigure;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bindLogService()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->retryCount:I

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->retryCount:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/content/ComponentName;

    .line 23
    .line 24
    const-string v2, "com.hsae.d531mc.logservice"

    .line 25
    .line 26
    const-string v3, "com.hsae.d531mc.logservice.LogService"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/hsae/autosdk/util/LogConfigure;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/hsae/autosdk/util/LogConfigure;->conn:Landroid/content/ServiceConnection;

    .line 37
    .line 38
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, La2/s0;->i(I)Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v0, v2, v3}, Landroidx/media3/exoplayer/video/b0;->A(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/hsae/autosdk/util/LogConfigure;->bindLogService()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public declared-synchronized getLogger()Lcom/hsae/d531mc/logservice/ILogService;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->service:Lcom/hsae/d531mc/logservice/ILogService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/hsae/autosdk/util/LogConfigure;->bindLogService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hsae/autosdk/util/LogConfigure;->service:Lcom/hsae/d531mc/logservice/ILogService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw v0
.end method

.method public declared-synchronized initConfigure(Landroid/content/Context;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/hsae/autosdk/util/LogConfigure;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hsae/autosdk/util/LogConfigure;->bindLogService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method
