.class public Lcom/yunpan/appmanage/service/HttpService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lcom/yunpan/appmanage/httpserver/RemoteServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/service/HttpService;->a:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yunpan/appmanage/service/HttpService;->a:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->stop()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/yunpan/appmanage/service/HttpService;->a:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Lm0/i0;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-virtual {v0, v1}, Lm0/i0;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    const/4 v0, 0x1

    .line 26
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    :catch_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onReceiveMsg(Lja/d;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lkh/e;->e(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 p2, 0x1a

    .line 21
    .line 22
    const-string p3, "HTTP\u670d\u52a1"

    .line 23
    .line 24
    if-lt p1, p2, :cond_1

    .line 25
    .line 26
    const-string p1, "notification"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/app/NotificationManager;

    .line 33
    .line 34
    new-instance p2, Landroid/app/NotificationChannel;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-direct {p2, v0, p3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance p1, Lm0/q;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p0, p2}, Lm0/q;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p3}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p1, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 61
    .line 62
    const-string p2, "\u5728\u7ebf\u64ad\u653e\u6d41\u5a92\u4f53\u670d\u52a1"

    .line 63
    .line 64
    invoke-static {p2}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, p1, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 69
    .line 70
    iget-object p2, p1, Lm0/q;->m:Landroid/app/Notification;

    .line 71
    .line 72
    const p3, 0x7f08008f

    .line 73
    .line 74
    .line 75
    iput p3, p2, Landroid/app/Notification;->icon:I

    .line 76
    .line 77
    const/4 p2, -0x1

    .line 78
    iput p2, p1, Lm0/q;->g:I

    .line 79
    .line 80
    const-string p2, "service"

    .line 81
    .line 82
    iput-object p2, p1, Lm0/q;->i:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1}, Lm0/q;->c()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lm0/q;->d()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lm0/q;->a()Landroid/app/Notification;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 p2, 0x5

    .line 95
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lfg/b;

    .line 99
    .line 100
    new-instance p2, Lha/db;

    .line 101
    .line 102
    const/16 p3, 0x11

    .line 103
    .line 104
    invoke-direct {p2, p3, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const/4 p3, 0x1

    .line 108
    invoke-direct {p1, p2, p3}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x1

    .line 115
    return p1
.end method
