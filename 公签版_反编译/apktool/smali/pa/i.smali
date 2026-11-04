.class public final Lpa/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Lpa/i;


# instance fields
.field public a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

.field public final b:Ljava/util/ArrayList;

.field public c:Lcom/hsae/autosdk/settings/ISystemSettingServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpa/i;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v0, "com.hsae.auto.IBINDER_SETTINGS_MANAGER"

    .line 12
    .line 13
    invoke-static {v0}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/hsae/autosdk/settings/ISystemSettingServices$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/ISystemSettingServices;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lpa/i;->c:Lcom/hsae/autosdk/settings/ISystemSettingServices;

    .line 22
    .line 23
    return-void
.end method

.method public static e()Lpa/i;
    .locals 2

    .line 1
    sget-object v0, Lpa/i;->d:Lpa/i;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lpa/i;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lpa/i;->d:Lpa/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lpa/i;

    .line 13
    .line 14
    invoke-direct {v1}, Lpa/i;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lpa/i;->d:Lpa/i;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lpa/i;->d:Lpa/i;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;
    .locals 2

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    const-string v0, "com.hsae.auto.IBINDER_SETTINGS_MANAGER"

    .line 12
    .line 13
    invoke-static {v0}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/hsae/autosdk/settings/ISystemSettingServices$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/ISystemSettingServices;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lpa/i;->c:Lcom/hsae/autosdk/settings/ISystemSettingServices;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :try_start_1
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/ISystemSettingServices;->queryBinder(I)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lpa/i;->a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lpa/i;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->registerHaseWifiManager(Lcom/hsae/autosdk/settings/wifi/IHaseWifiManagerCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    iget-object v0, p0, Lpa/i;->a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 70
    .line 71
    return-object v0
.end method

.method public final b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lpa/i;->c:Lcom/hsae/autosdk/settings/ISystemSettingServices;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpa/i;->a()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    :try_start_0
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/ISystemSettingServices;->queryBinder(I)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lpa/i;->a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lpa/i;->c:Lcom/hsae/autosdk/settings/ISystemSettingServices;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lpa/i;->a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lpa/i;->a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 44
    .line 45
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lpa/i;->a:Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lpa/i;->a()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v1, "HaseWifiStateManager service doesn\'t start"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v1, "SystemSetting service doesn\'t start"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiApState()I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiApState()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiState()I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->getWifiState()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method
