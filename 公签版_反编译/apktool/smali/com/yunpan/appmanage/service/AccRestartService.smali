.class public Lcom/yunpan/appmanage/service/AccRestartService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Z

.field public b:Z


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
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/AccRestartService;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/service/AccRestartService;->b:Z

    .line 8
    .line 9
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
    :try_start_0
    new-instance v0, Lm0/i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-virtual {v0, v1}, Lm0/i0;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/yunpan/appmanage/service/AccRestartService;->b:Z

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    return p2

    .line 7
    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/yunpan/appmanage/service/AccRestartService;->b:Z

    .line 9
    .line 10
    sget-object p3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 13
    .line 14
    .line 15
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v0, 0x1a

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "AccRestartService1"

    .line 21
    .line 22
    const-string v3, "\u81ea\u52a8\u5316\u6301\u4e45"

    .line 23
    .line 24
    if-lt p3, v0, :cond_1

    .line 25
    .line 26
    new-instance p3, Landroid/app/NotificationChannel;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-direct {p3, v2, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p3, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 40
    .line 41
    .line 42
    const-class v0, Landroid/app/NotificationManager;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/app/NotificationManager;

    .line 49
    .line 50
    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance p3, Lm0/q;

    .line 54
    .line 55
    invoke-direct {p3, p0, v2}, Lm0/q;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p3, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 63
    .line 64
    const-string v0, "\u81ea\u52a8\u5316\u91cd\u542f\u4efb\u52a1"

    .line 65
    .line 66
    invoke-static {v0}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p3, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 71
    .line 72
    iget-object v0, p3, Lm0/q;->m:Landroid/app/Notification;

    .line 73
    .line 74
    const v2, 0x7f08008f

    .line 75
    .line 76
    .line 77
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 78
    .line 79
    iput v1, p3, Lm0/q;->g:I

    .line 80
    .line 81
    const-string v0, "service"

    .line 82
    .line 83
    iput-object v0, p3, Lm0/q;->i:Ljava/lang/String;

    .line 84
    .line 85
    iput-boolean p1, p3, Lm0/q;->n:Z

    .line 86
    .line 87
    invoke-virtual {p3}, Lm0/q;->a()Landroid/app/Notification;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 p3, 0x7

    .line 92
    invoke-virtual {p0, p3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/Thread;

    .line 96
    .line 97
    new-instance p3, Lha/db;

    .line 98
    .line 99
    const/16 v0, 0xf

    .line 100
    .line 101
    invoke-direct {p3, v0, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lph/j;

    .line 111
    .line 112
    const/16 p3, 0x8

    .line 113
    .line 114
    invoke-direct {p1, p3, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance p3, Lmc/c;

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-direct {p3, v0, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p1, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance p3, Lka/c;

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-direct {p3, v0, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p3}, Lec/b;->b(Lec/e;)V

    .line 144
    .line 145
    .line 146
    return p2
.end method
