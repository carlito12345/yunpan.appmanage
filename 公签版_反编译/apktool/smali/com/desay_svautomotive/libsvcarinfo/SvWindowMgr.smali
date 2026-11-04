.class public Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;,
        Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;
    }
.end annotation


# static fields
.field private static final ACTION_CLOSE_PANEL:Ljava/lang/String; = "com.desay.automotive.systemui.CLOSE_PANEL"

.field private static final ACTION_PANEL_SHOW_STATUS:Ljava/lang/String; = "com.desay.automotive.systemui.PANEL_SHOW_STATUS"

.field private static final ACTION_REQUEST_SHOW_PANEL:Ljava/lang/String; = "com.desay.automotive.systemui.SHOW_PANEL"

.field private static final KEY_FROM_PACKAGE:Ljava/lang/String; = "fromPackage"

.field private static final KEY_FROM_PANEL_ID:Ljava/lang/String; = "fromPanelId"

.field private static final KEY_SHOW_PANEL_ID:Ljava/lang/String; = "showPanelId"

.field private static final KEY_SHOW_STATUS:Ljava/lang/String; = "showStatus"

.field private static final MSG_ID_CLOSE_PANEL:I = 0x0

.field private static final MSG_ID_PANEL_SHOW_STATUS:I = 0x2

.field private static final MSG_ID_REQUEST_CLOSE_PANEL:I = 0x1

.field private static final MSG_ID_REQUEST_SHOW_PANEL:I = 0x3

.field public static final SYSTEM_PANEL_ACCOUNT:I = 0x1

.field public static final SYSTEM_PANEL_ALL_MENU:I = 0x8

.field public static final SYSTEM_PANEL_BLUETOOTH:I = 0x4

.field public static final SYSTEM_PANEL_DRIVE:I = 0x9

.field public static final SYSTEM_PANEL_DROPDOWN_MENU:I = 0xc

.field public static final SYSTEM_PANEL_GUIDANCE:I = 0x12

.field public static final SYSTEM_PANEL_HVAC:I = 0xa

.field public static final SYSTEM_PANEL_HVAC_BLIND_LEFT:I = 0xd

.field public static final SYSTEM_PANEL_HVAC_BLIND_RIGHT:I = 0xe

.field public static final SYSTEM_PANEL_HVAC_FRAGRANCE:I = 0x10

.field public static final SYSTEM_PANEL_HVAC_SCENE:I = 0xf

.field public static final SYSTEM_PANEL_HVAC_WIND_LEVEL:I = 0x13

.field private static final SYSTEM_PANEL_MAXID:I = 0x20

.field public static final SYSTEM_PANEL_MSGCENTER:I = 0x2

.field public static final SYSTEM_PANEL_NONE:I = 0x0

.field public static final SYSTEM_PANEL_SCREENSAVER:I = 0x11

.field public static final SYSTEM_PANEL_SEAT_SETTING:I = 0xb

.field public static final SYSTEM_PANEL_TBOX:I = 0x5

.field public static final SYSTEM_PANEL_TIME_SETTING:I = 0x7

.field public static final SYSTEM_PANEL_WIFI:I = 0x6

.field public static final SYSTEM_PANEL_WIRELESS_CHARGING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SvWindowMgr"

.field private static volatile mInstance:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtReceiver:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

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
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;-><init>(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mExtReceiver:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;

    .line 18
    .line 19
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;-><init>(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;
    .locals 2

    .line 1
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const-class v0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, p0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_2
    sget-object p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 33
    .line 34
    return-object p0
.end method

.method public static getSystemPanelShowStatus(I)Z
    .locals 3

    .line 1
    const-string v0, "sys.vehicle.gac.window_show_status"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    shr-int p0, v0, p0

    .line 16
    .line 17
    and-int/2addr p0, v2

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    return v1
.end method

.method private static startSettingCard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "com.desay.setting"

    .line 4
    .line 5
    const-string v2, "com.desay.setting.activity.DialogActivity"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/high16 p1, 0x10000000

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public addListener(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "com.desay.automotive.systemui.CLOSE_PANEL"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "com.desay.automotive.systemui.SHOW_PANEL"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "com.desay.automotive.systemui.PANEL_SHOW_STATUS"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mExtReceiver:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method public delayHideSystemPanel(II)V
    .locals 1

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p2, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->hideSystemPanel(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public hideSystemPanel(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->hideSystemPanel(IZ)V

    return-void
.end method

.method public hideSystemPanel(IZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->getSystemPanelShowStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 4
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 5
    const-string v0, "com.desay.automotive.systemui.CLOSE_PANEL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromPackage"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v0, "fromPanelId"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mExtReceiver:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public requestShowSystemPanel(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "com.desay_sv.show_window.Bluetooth"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->startSettingCard(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x5

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v0, "com.desay_sv.show_window.Net"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->startSettingCard(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x6

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v0, "com.desay_sv.show_window.WiFi"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->startSettingCard(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "com.desay.automotive.systemui.SHOW_PANEL"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "fromPackage"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string v1, "showPanelId"

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public setSystemPanelShowStatus(IZ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "sys.vehicle.gac.window_show_status"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    shl-int/2addr v2, p1

    .line 10
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->getSystemPanelShowStatus(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eq v3, p2, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    xor-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    and-int/2addr v2, v0

    .line 21
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "com.desay.automotive.systemui.PANEL_SHOW_STATUS"

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "fromPackage"

    .line 45
    .line 46
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string v3, "fromPanelId"

    .line 50
    .line 51
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string p1, "showStatus"

    .line 55
    .line 56
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    return-void
.end method
