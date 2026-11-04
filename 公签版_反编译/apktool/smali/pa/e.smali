.class public final Lpa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/yunpan/appmanage/service/AccService;

.field public b:Lcom/hsae/autosdk/vehicle/IVehicle;

.field public c:Lpa/b;

.field public d:Lcom/hsae/autosdk/reverse/Reverse;

.field public e:Lpa/c;

.field public f:Z

.field public g:Lcom/hsae/autosdk/settings/IAutoSettings;

.field public h:Ljava/lang/String;

.field public i:I

.field public final j:Landroid/os/Handler;

.field public final k:Landroidx/activity/h;

.field public final l:Landroidx/emoji2/text/o;

.field public final m:Landroidx/emoji2/text/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lpa/e;->f:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lpa/e;->h:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lpa/e;->i:I

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lpa/e;->j:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v0, Landroidx/activity/h;

    .line 22
    .line 23
    const/16 v1, 0xe

    .line 24
    .line 25
    invoke-direct {v0, v1, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lpa/e;->k:Landroidx/activity/h;

    .line 29
    .line 30
    new-instance v0, Landroidx/emoji2/text/o;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, v1}, Landroidx/emoji2/text/o;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 37
    .line 38
    new-instance v0, Landroidx/emoji2/text/o;

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-direct {v0, v1}, Landroidx/emoji2/text/o;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 45
    .line 46
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.hsae.core"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    return v0
.end method


# virtual methods
.method public final a(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lpa/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    :try_start_0
    const-string p1, "com.hsae.auto.IBINDER_VEHICLE"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/hsae/autosdk/vehicle/IVehicle$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lpa/e;->b:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/16 p1, 0x8

    .line 22
    .line 23
    new-array p1, p1, [Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "OFF"

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    aput-object v0, p1, v1

    .line 29
    .line 30
    const-string v0, "P"

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    aput-object v0, p1, v1

    .line 34
    .line 35
    const-string v0, "R"

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    aput-object v0, p1, v1

    .line 39
    .line 40
    const-string v0, "N"

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    aput-object v0, p1, v1

    .line 44
    .line 45
    const-string v0, "D"

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    aput-object v0, p1, v1

    .line 49
    .line 50
    const-string v0, "S"

    .line 51
    .line 52
    const/4 v1, 0x5

    .line 53
    aput-object v0, p1, v1

    .line 54
    .line 55
    const-string v0, "L"

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    aput-object v0, p1, v1

    .line 59
    .line 60
    const-string v0, "B"

    .line 61
    .line 62
    const/4 v1, 0x7

    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    new-instance v0, Lpa/b;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Lpa/b;-><init>(Lpa/e;[Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lpa/e;->c:Lpa/b;

    .line 71
    .line 72
    iget-object p1, p0, Lpa/e;->b:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 73
    .line 74
    iget-object v1, p0, Lpa/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "vehicle_monitor"

    .line 81
    .line 82
    invoke-interface {p1, v0, v1, v2}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .line 84
    .line 85
    :try_start_1
    const-string p1, "com.hsae.auto.IBINDER_SETTINGS"

    .line 86
    .line 87
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/hsae/autosdk/settings/IAutoSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lpa/e;->g:Lcom/hsae/autosdk/settings/IAutoSettings;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    :catch_0
    :try_start_2
    new-instance p1, Lpa/c;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lpa/c;-><init>(Lpa/e;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lpa/e;->e:Lpa/c;

    .line 103
    .line 104
    invoke-static {}, Lcom/hsae/autosdk/reverse/Reverse;->getInstance()Lcom/hsae/autosdk/reverse/Reverse;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lpa/e;->d:Lcom/hsae/autosdk/reverse/Reverse;

    .line 109
    .line 110
    iget-object v0, p0, Lpa/e;->e:Lpa/c;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/hsae/autosdk/reverse/Reverse;->registerStateListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method
