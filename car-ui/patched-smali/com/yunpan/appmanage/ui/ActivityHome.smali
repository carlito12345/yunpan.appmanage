.class public Lcom/yunpan/appmanage/ui/ActivityHome;
.super Lda/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic O:I


# instance fields
.field public C:J

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/g3;

.field public F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

.field public G:Lx9/k2;

.field public H:Landroid/widget/TextView;

.field public I:La2/k;

.field public K:Ldi/d;

.field public final L:Ljava/util/concurrent/ExecutorService;

.field public final M:Lcom/yunpan/appmanage/carsdk/u;

.field public N:Lha/p1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->L:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0x12

    .line 18
    .line 19
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 23
    .line 24
    return-void
.end method

.method public static C(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->k:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Ltb/b;->m(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ltb/b;->d(Ljava/lang/Object;)Landroid/app/ActivityManager$AppTask;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0, p0}, Ltb/b;->n(Landroid/app/ActivityManager$AppTask;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_0
    return-void
.end method

.method public static F()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x26aa

    .line 3
    .line 4
    :cond_0
    sget-object v2, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 5
    .line 6
    sget-object v2, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 7
    .line 8
    new-instance v3, Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 9
    .line 10
    iget-object v4, v2, Lcom/yunpan/appmanage/util/l;->a:Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-direct {v3, v1, v4}, Lcom/yunpan/appmanage/httpserver/RemoteServer;-><init>(ILandroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v3, v2, Lcom/yunpan/appmanage/util/l;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 16
    .line 17
    const/16 v4, 0x3a98

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->start(I)V

    .line 20
    .line 21
    .line 22
    iput v1, v2, Lcom/yunpan/appmanage/util/l;->j0:I

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/l;->g()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/l;->o()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    add-int/2addr v1, v0

    .line 36
    sget-object v2, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 37
    .line 38
    iget-object v3, v2, Lcom/yunpan/appmanage/util/l;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->stop()V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    iput-object v3, v2, Lcom/yunpan/appmanage/util/l;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 47
    .line 48
    :cond_1
    const/16 v2, 0x26b6

    .line 49
    .line 50
    if-lt v1, v2, :cond_0

    .line 51
    .line 52
    :goto_0
    :try_start_1
    invoke-static {}, Lnet/sf/sevenzipjbinding/SevenZip;->initSevenZipFromPlatformJAR()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/util/x;->w(Z)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/util/x;->v(Z)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityHome;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 5
    .line 6
    iget-boolean v1, v0, Lwa/u;->s:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lwa/y;->b:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    sget-object v1, Lwa/x;->a:Lwa/y;

    .line 13
    .line 14
    const-string v2, "\u4e3b\u5e94\u7528\uff1a\u6253\u5f00"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lwa/y;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean v1, v0, Lwa/u;->g:Z

    .line 20
    .line 21
    if-eqz v1, :cond_7

    .line 22
    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x15

    .line 26
    .line 27
    if-lt v1, v2, :cond_7

    .line 28
    .line 29
    iget-boolean v0, v0, Lwa/u;->s:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lwa/y;->b:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    sget-object v0, Lwa/x;->a:Lwa/y;

    .line 36
    .line 37
    const-string v2, "\u6267\u884c\uff1a\u624b\u52a8\u542f\u52a8\u5f00\u673a\u4efb\u52a1"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lwa/y;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    const-wide/32 v4, 0xdbba0

    .line 47
    .line 48
    .line 49
    sub-long/2addr v2, v4

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-wide/32 v6, 0x6ddd00

    .line 55
    .line 56
    .line 57
    add-long/2addr v4, v6

    .line 58
    const/16 v0, 0x16

    .line 59
    .line 60
    const-string v6, "usagestats"

    .line 61
    .line 62
    if-lt v1, v0, :cond_2

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 76
    .line 77
    :goto_0
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-wide/16 v1, 0x0

    .line 82
    .line 83
    move-wide v3, v1

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    new-instance v5, Landroid/app/usage/UsageEvents$Event;

    .line 91
    .line 92
    invoke-direct {v5}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    const/16 v7, 0xf

    .line 103
    .line 104
    if-ne v6, v7, :cond_3

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    cmp-long v0, v3, v1

    .line 112
    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 117
    .line 118
    iget-wide v0, v0, Lwa/u;->f:J

    .line 119
    .line 120
    const-wide/16 v5, 0x1388

    .line 121
    .line 122
    sub-long/2addr v3, v5

    .line 123
    cmp-long v2, v0, v3

    .line 124
    .line 125
    if-lez v2, :cond_6

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    iget-object p0, p0, Lda/g;->A:Lda/g;

    .line 129
    .line 130
    const-string v0, "\u4e3b\u8fdb\u7a0b"

    .line 131
    .line 132
    invoke-static {p0, v0}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .line 134
    .line 135
    :catch_0
    :cond_7
    :goto_2
    return-void
.end method

.method public static y(Lcom/yunpan/appmanage/ui/ActivityHome;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/x;->w:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, La2/w0;->P()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-boolean p1, v0, Lcom/yunpan/appmanage/util/x;->y:Z

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget p1, v0, Lcom/yunpan/appmanage/util/x;->c0:I

    .line 36
    .line 37
    if-nez p1, :cond_8

    .line 38
    .line 39
    :goto_0
    iget-object p1, p0, Lda/g;->A:Lda/g;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string p1, "com.gj.openfile"

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    sget-object p1, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    sget-object p1, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 64
    .line 65
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/l;->f:Z

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-static {}, Lgh/e;->b()Lgh/e;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance p1, Lja/a;

    .line 74
    .line 75
    const/16 v0, 0xa

    .line 76
    .line 77
    invoke-direct {p1, v0, p2}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lgh/e;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_8

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->N:Lha/p1;

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->N:Lha/p1;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 130
    .line 131
    .line 132
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->N:Lha/p1;

    .line 134
    .line 135
    :cond_7
    new-instance p1, Lha/p1;

    .line 136
    .line 137
    invoke-direct {p1, p0, p0, p2}, Lha/p1;-><init>(Lda/g;Lda/g;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->N:Lha/p1;

    .line 141
    .line 142
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_1
    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 16
    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v1, "/"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, -0x1

    .line 35
    if-ne v1, v2, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "-"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_9

    .line 49
    .line 50
    const-string v2, "/storage/"

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_9

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-static {v2}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-static {p0}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 96
    .line 97
    iget-object v1, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_0
    return-void

    .line 108
    :cond_6
    const-string v2, "/mnt/media_rw/"

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_9

    .line 115
    .line 116
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_9

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_7

    .line 139
    .line 140
    invoke-static {p0}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 147
    .line 148
    iget-object v1, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_8
    return-void

    .line 159
    :cond_9
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 162
    .line 163
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_a
    :goto_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 20

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 6
    .line 7
    const-string v4, "/"

    .line 8
    .line 9
    const-string v5, "emulated"

    .line 10
    .line 11
    new-instance v6, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    const-string v7, "SECONDARY_STORAGE"

    .line 17
    .line 18
    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    if-eqz v7, :cond_4

    .line 23
    .line 24
    const-string v8, ":"

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    array-length v8, v7

    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_0
    if-ge v9, v8, :cond_4

    .line 33
    .line 34
    aget-object v10, v7, v9

    .line 35
    .line 36
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    if-eqz v11, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {v10}, Lcom/yunpan/appmanage/util/b0;->i(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-eqz v11, :cond_3

    .line 55
    .line 56
    invoke-static {v10}, Lcom/yunpan/appmanage/util/b0;->c(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-nez v11, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    nop

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    add-int/2addr v9, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    :goto_2
    const-string v7, "storage"

    .line 72
    .line 73
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/os/storage/StorageManager;

    .line 78
    .line 79
    const/16 v7, 0x18

    .line 80
    .line 81
    if-eqz v3, :cond_8

    .line 82
    .line 83
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    if-lt v8, v7, :cond_8

    .line 86
    .line 87
    invoke-static {v3}, La2/s0;->n(Landroid/os/storage/StorageManager;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_8

    .line 100
    .line 101
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-static {v9}, La2/s0;->j(Ljava/lang/Object;)Landroid/os/storage/StorageVolume;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    if-nez v9, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    invoke-static {v9}, La2/s0;->A(Landroid/os/storage/StorageVolume;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_5

    .line 117
    .line 118
    const-string v10, "mounted"

    .line 119
    .line 120
    invoke-static {v9}, La2/s0;->D(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_5

    .line 129
    .line 130
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .line 132
    const/16 v11, 0x1e

    .line 133
    .line 134
    if-lt v10, v11, :cond_5

    .line 135
    .line 136
    invoke-static {v9}, Landroidx/media3/exoplayer/video/a0;->n(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    if-eqz v10, :cond_7

    .line 141
    .line 142
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    invoke-static {v9}, La2/s0;->m(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    if-eqz v9, :cond_5

    .line 155
    .line 156
    const-string v10, "/mnt/media_rw/"

    .line 157
    .line 158
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-static {v9}, Lcom/yunpan/appmanage/util/b0;->i(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_5

    .line 167
    .line 168
    invoke-static {v9}, Lcom/yunpan/appmanage/util/b0;->c(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-eqz v10, :cond_5

    .line 173
    .line 174
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_8
    const/4 v8, 0x0

    .line 179
    :try_start_1
    const-string v9, "android.os.storage.VolumeInfo"

    .line 180
    .line 181
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    const-string v10, "getType"

    .line 186
    .line 187
    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    const-string v11, "getDisk"

    .line 192
    .line 193
    invoke-virtual {v9, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const-string v12, "path"

    .line 198
    .line 199
    invoke-virtual {v9, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v9, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 204
    .line 205
    .line 206
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    if-lt v12, v7, :cond_10

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    const-string v12, "getVolumes"

    .line 215
    .line 216
    invoke-virtual {v7, v12, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    :catch_1
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_10

    .line 235
    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 240
    :try_start_2
    invoke-virtual {v10, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Ljava/lang/Integer;

    .line 245
    .line 246
    if-eqz v12, :cond_9

    .line 247
    .line 248
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-eqz v12, :cond_a

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_a
    invoke-virtual {v11, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    if-nez v12, :cond_b

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_b
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    check-cast v7, Ljava/lang/String;

    .line 267
    .line 268
    if-eqz v7, :cond_9

    .line 269
    .line 270
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    if-eqz v12, :cond_c

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_c
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    if-eqz v12, :cond_d

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_d
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    if-nez v12, :cond_e

    .line 289
    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    :cond_e
    invoke-static {v7}, Lcom/yunpan/appmanage/util/b0;->i(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    if-eqz v12, :cond_9

    .line 310
    .line 311
    invoke-static {v7}, Lcom/yunpan/appmanage/util/b0;->c(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v12

    .line 315
    if-nez v12, :cond_f

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_f
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :catch_2
    :cond_10
    sget-object v3, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 323
    .line 324
    sget-object v3, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 325
    .line 326
    iput-object v6, v3, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 327
    .line 328
    new-array v3, v1, [Ljava/lang/String;

    .line 329
    .line 330
    const-string v4, "df"

    .line 331
    .line 332
    aput-object v4, v3, v0

    .line 333
    .line 334
    invoke-static {v3}, Lu9/d;->q([Ljava/lang/String;)Lv9/e;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v3}, Lv9/e;->C0()Landroidx/room/s;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v3}, Landroidx/room/s;->j()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    const/4 v5, 0x2

    .line 362
    if-le v4, v5, :cond_12

    .line 363
    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    check-cast v5, Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v5, "\n"

    .line 383
    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    check-cast v5, Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    const-string v5, " Use% "

    .line 405
    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-eqz v5, :cond_11

    .line 411
    .line 412
    const/4 v4, 0x0

    .line 413
    goto :goto_5

    .line 414
    :cond_11
    const-string v5, " Size "

    .line 415
    .line 416
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_12

    .line 421
    .line 422
    const/4 v4, 0x1

    .line 423
    goto :goto_5

    .line 424
    :cond_12
    const/4 v4, -0x1

    .line 425
    :goto_5
    const-string v5, "/storage/[0-9A-F]{4,30}"

    .line 426
    .line 427
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    const-string v6, "/storage/[0-9A-Za-z]{4}-[0-9A-Za-z]{4}"

    .line 432
    .line 433
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    const-string v7, "(/mnt/[^/]+/[0-9A-Za-z]{4}-[0-9A-Za-z]{4})"

    .line 438
    .line 439
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    const-string v9, "/storage/usb[0-9A-Za-z]{0,4}"

    .line 444
    .line 445
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    const-string v10, "(/mnt/udisk[0-9]{1})"

    .line 450
    .line 451
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    const-string v11, "(/mnt/usb/[0-9A-Za-z]{1,9})"

    .line 456
    .line 457
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    const-string v12, "^/storage/usbotg/usbotg-sd[a-z]\\d+$"

    .line 462
    .line 463
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 464
    .line 465
    .line 466
    move-result-object v12

    .line 467
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v13

    .line 479
    if-eqz v13, :cond_1d

    .line 480
    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v13

    .line 485
    check-cast v13, Ljava/lang/String;

    .line 486
    .line 487
    const-string v14, "/storage/usbotg/"

    .line 488
    .line 489
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v14

    .line 493
    const-string v15, "/mnt/"

    .line 494
    .line 495
    if-eqz v14, :cond_13

    .line 496
    .line 497
    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 498
    .line 499
    .line 500
    move-result-object v14

    .line 501
    goto :goto_7

    .line 502
    :cond_13
    const-string v14, "/storage/usb"

    .line 503
    .line 504
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v14

    .line 508
    if-eqz v14, :cond_14

    .line 509
    .line 510
    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 511
    .line 512
    .line 513
    move-result-object v14

    .line 514
    goto :goto_7

    .line 515
    :cond_14
    const-string v14, "/storage/"

    .line 516
    .line 517
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 518
    .line 519
    .line 520
    move-result v14

    .line 521
    const-string v8, "-"

    .line 522
    .line 523
    if-eqz v14, :cond_16

    .line 524
    .line 525
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    if-eqz v8, :cond_15

    .line 530
    .line 531
    invoke-virtual {v6, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    goto :goto_7

    .line 536
    :cond_15
    invoke-virtual {v5, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 537
    .line 538
    .line 539
    move-result-object v14

    .line 540
    goto :goto_7

    .line 541
    :cond_16
    const-string v14, "/mnt/usb/"

    .line 542
    .line 543
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 544
    .line 545
    .line 546
    move-result v14

    .line 547
    if-eqz v14, :cond_17

    .line 548
    .line 549
    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 550
    .line 551
    .line 552
    move-result-object v14

    .line 553
    goto :goto_7

    .line 554
    :cond_17
    const-string v14, "/mnt/udisk"

    .line 555
    .line 556
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 557
    .line 558
    .line 559
    move-result v14

    .line 560
    if-eqz v14, :cond_18

    .line 561
    .line 562
    invoke-virtual {v10, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 563
    .line 564
    .line 565
    move-result-object v14

    .line 566
    goto :goto_7

    .line 567
    :cond_18
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 568
    .line 569
    .line 570
    move-result v14

    .line 571
    if-eqz v14, :cond_19

    .line 572
    .line 573
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 574
    .line 575
    .line 576
    move-result v8

    .line 577
    if-eqz v8, :cond_19

    .line 578
    .line 579
    invoke-virtual {v7, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 580
    .line 581
    .line 582
    move-result-object v14

    .line 583
    goto :goto_7

    .line 584
    :cond_19
    const/4 v14, 0x0

    .line 585
    :goto_7
    if-nez v14, :cond_1b

    .line 586
    .line 587
    :cond_1a
    :goto_8
    const/4 v8, 0x0

    .line 588
    goto :goto_6

    .line 589
    :cond_1b
    :goto_9
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    if-eqz v8, :cond_1c

    .line 594
    .line 595
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v8

    .line 599
    invoke-static {v8}, Lcom/yunpan/appmanage/ui/ActivityHome;->z(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto :goto_9

    .line 603
    :cond_1c
    if-ne v4, v1, :cond_1a

    .line 604
    .line 605
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    if-eqz v8, :cond_1a

    .line 610
    .line 611
    const-string v8, "G"

    .line 612
    .line 613
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 614
    .line 615
    .line 616
    move-result v14

    .line 617
    if-eqz v14, :cond_1a

    .line 618
    .line 619
    const-string v14, "/mnt/shared/"

    .line 620
    .line 621
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 622
    .line 623
    .line 624
    move-result v14

    .line 625
    if-nez v14, :cond_1a

    .line 626
    .line 627
    const-string v14, " "

    .line 628
    .line 629
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v15

    .line 633
    invoke-virtual {v13, v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    add-int/2addr v15, v1

    .line 638
    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 651
    .line 652
    .line 653
    move-result-wide v16

    .line 654
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 655
    .line 656
    cmpg-double v15, v16, v18

    .line 657
    .line 658
    if-gez v15, :cond_1a

    .line 659
    .line 660
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 661
    .line 662
    .line 663
    move-result-wide v16

    .line 664
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    .line 665
    .line 666
    cmpl-double v8, v16, v18

    .line 667
    .line 668
    if-lez v8, :cond_1a

    .line 669
    .line 670
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 671
    .line 672
    .line 673
    move-result v8

    .line 674
    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v8

    .line 678
    invoke-static {v8}, Lcom/yunpan/appmanage/ui/ActivityHome;->z(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    goto :goto_8

    .line 682
    :cond_1d
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 683
    .line 684
    iget-object v3, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 685
    .line 686
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    if-le v3, v1, :cond_1e

    .line 691
    .line 692
    iget-object v3, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 693
    .line 694
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    new-instance v4, Lmh/g0;

    .line 699
    .line 700
    const/16 v5, 0xd

    .line 701
    .line 702
    invoke-direct {v4, v5}, Lmh/g0;-><init>(I)V

    .line 703
    .line 704
    .line 705
    invoke-static {v3, v4}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 706
    .line 707
    .line 708
    :cond_1e
    invoke-static {}, Lgh/e;->b()Lgh/e;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    new-instance v4, Lja/c;

    .line 713
    .line 714
    invoke-direct {v4, v1}, Lja/c;-><init>(I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3, v4}, Lgh/e;->f(Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->v:Ljava/util/HashSet;

    .line 721
    .line 722
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    new-instance v1, Lmh/g0;

    .line 727
    .line 728
    const/16 v3, 0xe

    .line 729
    .line 730
    invoke-direct {v1, v3}, Lmh/g0;-><init>(I)V

    .line 731
    .line 732
    .line 733
    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 734
    .line 735
    .line 736
    return-void
.end method

.method public final B()V
    .locals 4

    .line 1
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/o0;->d()V

    .line 4
    .line 5
    .line 6
    new-instance v0, La2/k;

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->I:La2/k;

    .line 14
    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x3e8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 23
    .line 24
    .line 25
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "package"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->I:La2/k;

    .line 51
    .line 52
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    new-instance v0, Ldi/d;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-direct {v0, v2}, Ldi/d;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->K:Ldi/d;

    .line 62
    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 69
    .line 70
    .line 71
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "file"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->K:Ldi/d;

    .line 117
    .line 118
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    sget-object v0, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 122
    .line 123
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/l;->k()V

    .line 126
    .line 127
    .line 128
    :try_start_0
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 129
    .line 130
    const-string v1, "wifi"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 137
    .line 138
    const-string v1, "WifiLock"

    .line 139
    .line 140
    const/4 v2, 0x3

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    :catch_0
    sget-object v0, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 149
    .line 150
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 151
    .line 152
    iget-object v1, v0, Lcom/yunpan/appmanage/util/l;->g0:Ljava/util/concurrent/ExecutorService;

    .line 153
    .line 154
    new-instance v2, Lua/c2;

    .line 155
    .line 156
    const/4 v3, 0x1

    .line 157
    invoke-direct {v2, p0, v3}, Lua/c2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 161
    .line 162
    .line 163
    :try_start_1
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/l;->j:Z

    .line 164
    .line 165
    if-eqz v0, :cond_0

    .line 166
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    .line 169
    const/16 v1, 0x1a

    .line 170
    .line 171
    if-lt v0, v1, :cond_0

    .line 172
    .line 173
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 174
    .line 175
    iput-object p0, v0, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 176
    .line 177
    new-instance v1, Landroid/os/HandlerThread;

    .line 178
    .line 179
    const-string v2, "MyCar"

    .line 180
    .line 181
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 187
    .line 188
    .line 189
    new-instance v1, Landroid/os/Handler;

    .line 190
    .line 191
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v2, Landroid/os/HandlerThread;

    .line 194
    .line 195
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    .line 201
    .line 202
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/k0;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .line 206
    .line 207
    :catch_1
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, v0, Lcom/yunpan/appmanage/util/l;->e:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->g0:Ljava/util/concurrent/ExecutorService;

    .line 216
    .line 217
    new-instance v1, Lua/c2;

    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    invoke-direct {v1, p0, v2}, Lua/c2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;I)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getGetInstalledAppsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x3

    .line 16
    new-array v4, v4, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v1, v4, v5

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object v2, v4, v1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput-object v3, v4, v1

    .line 26
    .line 27
    invoke-static {v0, v4}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityHome;->B()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getGetInstalledAppsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lua/b2;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lua/b2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final E()V
    .locals 7

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityHome;->D()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "\u4e0a"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x0

    .line 24
    const-string v4, "\u53f3"

    .line 25
    .line 26
    const-string v5, "\u5de6"

    .line 27
    .line 28
    const-string v6, "\u4e0b"

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    :cond_1
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    iget-object v0, v0, Lcom/yunpan/appmanage/util/x;->j:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 92
    :goto_1
    new-instance v1, Lha/bd;

    .line 93
    .line 94
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 95
    .line 96
    new-instance v4, Lua/b2;

    .line 97
    .line 98
    invoke-direct {v4, p0}, Lua/b2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v2, v0, v3, v4}, Lha/bd;-><init>(Landroid/content/Context;ZZLha/ad;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/i0;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v1, 0x3e9

    .line 9
    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x13

    .line 15
    .line 16
    if-lt v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->G:Lx9/k2;

    .line 19
    .line 20
    iget-object v1, v1, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lda/h;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p1, p2}, Lm0/h;->n(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 7

    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->back(Landroid/app/Activity;)Z
    move-result v0
    if-eqz v0, :carui_original_back
    return-void
    :carui_original_back

    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;


    invoke-virtual {v0}, Lc6/g;->b()I



    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0


    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z



    move-result v0

    if-nez v0, :cond_b


    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;


    invoke-virtual {v0}, Lx9/g3;->F()I



    move-result v0

    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;


    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;



    move-result-object v2

    check-cast v2, Lx9/h3;


    iget-object v2, v2, Lx9/h3;->a:Ljava/lang/String;


    const-string v3, "\u7f51\u7edc\u5b58\u50a8"


    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z



    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5


    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->G:Lx9/k2;


    iget-object v2, v2, Lx9/k2;->h:Ljava/util/ArrayList;


    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;



    move-result-object v0

    check-cast v0, Lua/k9;


    iget-object v2, v0, Lua/k9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;


    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I



    move-result v2

    if-nez v2, :cond_1


    iget-object v2, v0, Lua/k9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;


    const/16 v3, 0x8


    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V



    :cond_1
    iget-object v2, v0, Lua/k9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z



    move-result v2

    if-nez v2, :cond_4


    iget-object v2, v0, Lua/k9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z



    move-result v2

    if-eqz v2, :cond_2


    goto :goto_0

    :cond_2
    iget-object v2, v0, Lua/k9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z



    move-result v2

    if-nez v2, :cond_3


    iget-object v2, v0, Lua/k9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z



    move-result v2

    if-eqz v2, :cond_a


    :cond_3
    iget-object v2, v0, Lua/k9;->n:Lx9/a6;


    invoke-virtual {v2}, Lc6/g;->b()I



    move-result v2

    if-le v2, v1, :cond_a


    iget-object v2, v0, Lua/k9;->n:Lx9/a6;


    invoke-virtual {v2}, Lc6/g;->b()I



    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lc6/g;->C(I)V



    iget-object v2, v0, Lua/k9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    iget-object v3, v0, Lua/k9;->n:Lx9/a6;


    invoke-virtual {v3}, Lc6/g;->b()I



    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V



    iget-object v1, v0, Lua/k9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z



    invoke-virtual {v0, v4}, Lua/k9;->z(Z)V



    goto :goto_1

    :cond_4
    :goto_0
    iget-object v2, v0, Lua/k9;->x:Lx9/g0;


    invoke-virtual {v2}, Lc6/g;->b()I



    move-result v2

    if-le v2, v1, :cond_a


    iget-object v2, v0, Lua/k9;->x:Lx9/g0;


    invoke-virtual {v2}, Lc6/g;->b()I



    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lc6/g;->C(I)V



    iget-object v2, v0, Lua/k9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    iget-object v3, v0, Lua/k9;->x:Lx9/g0;


    invoke-static {v3, v1, v2}, Lg/g;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V



    iget-object v2, v0, Lua/k9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z



    iget-object v2, v0, Lua/k9;->x:Lx9/g0;


    invoke-static {v2, v1}, Lg/g;->g(Lx9/g0;I)Ljava/lang/Object;



    move-result-object v1

    check-cast v1, Lx9/w3;


    invoke-virtual {v0, v1, v4}, Lua/k9;->n(Lx9/w3;Z)V



    :goto_1
    return-void

    :cond_5
    const-string v3, "\u6587\u4ef6\u7ba1\u7406"


    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z



    move-result v2

    if-eqz v2, :cond_a


    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->G:Lx9/k2;


    iget-object v2, v2, Lx9/k2;->h:Ljava/util/ArrayList;


    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;



    move-result-object v0

    check-cast v0, Lua/r8;


    iget-boolean v2, v0, Lua/r8;->p:Z


    if-nez v2, :cond_a


    iget-object v2, v0, Lua/r8;->l:Lx9/g0;


    invoke-virtual {v2}, Lc6/g;->b()I



    move-result v2

    if-le v2, v1, :cond_a


    iget-object v2, v0, Lua/r8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    iget-object v3, v0, Lua/r8;->l:Lx9/g0;


    const/4 v5, 0x2

    invoke-static {v3, v5, v2}, Lg/g;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V



    iget-object v2, v0, Lua/r8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z



    iget-object v2, v0, Lua/r8;->l:Lx9/g0;


    invoke-virtual {v2}, Lc6/g;->b()I



    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lc6/g;->C(I)V



    iget-object v2, v0, Lua/r8;->l:Lx9/g0;


    invoke-static {v2, v1}, Lg/g;->g(Lx9/g0;I)Ljava/lang/Object;



    move-result-object v2

    check-cast v2, Lx9/w3;


    iget-object v3, v2, Lx9/w3;->b:Ljava/lang/String;


    if-eqz v3, :cond_7


    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z



    move-result v3

    if-eqz v3, :cond_6


    goto :goto_2

    :cond_6
    iget-object v2, v0, Lua/r8;->l:Lx9/g0;


    invoke-static {v2, v1}, Lg/g;->g(Lx9/g0;I)Ljava/lang/Object;



    move-result-object v1

    check-cast v1, Lx9/w3;


    invoke-virtual {v0, v1, v4}, Lua/r8;->v(Lx9/w3;Z)V



    goto :goto_3

    :cond_7
    :goto_2
    iget-object v3, v2, Lx9/w3;->a:Ljava/lang/String;


    const-string v4, "\u6536\u85cf\u680f"


    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z



    move-result v3

    if-eqz v3, :cond_8


    invoke-virtual {v0, v1}, Lua/r8;->p(Z)V



    goto :goto_3

    :cond_8
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;


    const-string v2, "\u641c\u7d22\u7ed3\u679c"


    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z



    move-result v1

    if-eqz v1, :cond_9


    iget-object v1, v0, Lua/r8;->n:Lx9/n;


    iget-object v0, v0, Lua/r8;->O:Ljava/util/ArrayList;


    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V



    :cond_9
    :goto_3
    return-void

    :cond_a
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;


    invoke-virtual {v0}, Lc6/g;->b()I



    move-result v0

    if-le v0, v1, :cond_b


    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z



    move-result v0

    if-eqz v0, :cond_b


    return-void

    :cond_b
    sget-object v0, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;


    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/x;->v:Z


    const-string v2, "(2)\u79d2\u5185\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u9000\u51fa\u5e94\u7528"


    const-wide/16 v3, 0x7d0


    if-eqz v0, :cond_d


    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z



    move-result v0

    if-nez v0, :cond_f


    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J



    move-result-wide v0

    iget-wide v5, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->C:J


    sub-long/2addr v0, v5

    cmp-long v5, v0, v3


    if-gez v5, :cond_c


    invoke-virtual {p0}, Landroid/app/Activity;->finish()V



    goto :goto_4

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J



    move-result-wide v0

    iput-wide v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->C:J


    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V



    goto :goto_4

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J



    move-result-wide v0

    iget-wide v5, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->C:J


    sub-long/2addr v0, v5

    cmp-long v5, v0, v3


    if-gez v5, :cond_e


    invoke-virtual {p0}, Landroid/app/Activity;->finish()V



    goto :goto_4

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J



    move-result-wide v0

    iput-wide v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->C:J


    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V



    :cond_f
    :goto_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0b0381

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const v1, 0x7f0b036d

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v1, 0x7f0b03c5

    .line 36
    .line 37
    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    new-instance p1, Lha/gc;

    .line 41
    .line 42
    invoke-direct {p1, p0, p0}, Lha/gc;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lha/gc;->show()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const v0, 0x7f0b03b4

    .line 54
    .line 55
    .line 56
    if-ne p1, v0, :cond_4

    .line 57
    .line 58
    new-instance p1, Lha/p1;

    .line 59
    .line 60
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 61
    .line 62
    new-instance v1, Lua/h1;

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    invoke-direct {v1, p0, v2}, Lua/h1;-><init>(Lda/g;I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0, v0, v1}, Lha/p1;-><init>(Lda/g;Lda/g;Lua/h1;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "android.intent.category.LAUNCHER"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "android.intent.action.MAIN"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lda/g;->onCreate(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 41
    .line 42
    sget-object p1, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 43
    .line 44
    iput-object p0, p1, Lcom/yunpan/appmanage/util/l;->a:Landroid/content/ContextWrapper;

    .line 45
    .line 46
    sget-object p1, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 47
    .line 48
    iput-object p0, p1, Lcom/yunpan/appmanage/util/x;->b:Landroid/content/ContextWrapper;

    .line 49
    .line 50
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 3
    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x15

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {v3}, Lcom/yunpan/appmanage/ui/ActivityHome;->C(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 16
    .line 17
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/x;->L:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-array v1, v3, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "setprop sys.jsbd.apk_verify 0"

    .line 25
    .line 26
    aput-object v4, v1, v0

    .line 27
    .line 28
    invoke-static {v1}, Lu9/d;->q([Ljava/lang/String;)Lv9/e;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v2}, Lmf/c;->u0(Lua/l6;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v1, v4, v5}, Lwa/u;->d(J)V

    .line 42
    .line 43
    .line 44
    iget-boolean v1, v1, Lwa/u;->s:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    sget-object v1, Lwa/y;->b:Ljava/util/concurrent/ExecutorService;

    .line 49
    .line 50
    sget-object v1, Lwa/x;->a:Lwa/y;

    .line 51
    .line 52
    const-string v4, "\u4e3b\u5e94\u7528\uff1a\u5173\u95ed"

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Lwa/y;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    sget-object v1, Lfa/n0;->a:Lfa/o0;

    .line 58
    .line 59
    iget-boolean v4, v1, Lfa/o0;->h:Z

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iput-boolean v0, v1, Lfa/o0;->a:Z

    .line 65
    .line 66
    iput-object v2, v1, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 67
    .line 68
    :try_start_0
    iget-object v0, v1, Lfa/o0;->f:Lcom/bumptech/glide/manager/t;

    .line 69
    .line 70
    invoke-static {v0}, Ldi/b;->m(Lcom/bumptech/glide/manager/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :try_start_1
    iget-object v0, v1, Lfa/o0;->b:Lfa/j0;

    .line 74
    .line 75
    sget-object v2, Ldi/b;->k:Ljava/util/ArrayList;

    .line 76
    .line 77
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :try_start_2
    new-instance v4, Lcom/hierynomus/smbj/auth/a;

    .line 79
    .line 80
    const/4 v5, 0x3

    .line 81
    invoke-direct {v4, v5, v0}, Lcom/hierynomus/smbj/auth/a;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 85
    .line 86
    .line 87
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    iget-object v0, v1, Lfa/o0;->c:Lfa/k0;

    .line 89
    .line 90
    invoke-static {v0}, Ldi/b;->h(Lfa/k0;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Lfa/o0;->d:Lfa/l0;

    .line 94
    .line 95
    invoke-static {v0}, Ldi/b;->i(Lfa/l0;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 102
    :catch_1
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->I:La2/k;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->K:Ldi/d;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    .line 111
    .line 112
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    .line 113
    .line 114
    const-class v1, Lcom/yunpan/appmanage/service/HttpService;

    .line 115
    .line 116
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 120
    .line 121
    .line 122
    :catch_2
    invoke-static {}, Lgh/e;->b()Lgh/e;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lgh/e;->l(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :try_start_7
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 130
    .line 131
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Landroid/os/HandlerThread;

    .line 134
    .line 135
    if-nez v1, :cond_4

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    iput-boolean v3, v0, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 139
    .line 140
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Landroid/os/Handler;

    .line 143
    .line 144
    new-instance v2, La2/h;

    .line 145
    .line 146
    const/16 v4, 0xf

    .line 147
    .line 148
    invoke-direct {v2, v4, v0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 152
    .line 153
    .line 154
    :catch_3
    :goto_1
    :try_start_8
    sget-object v0, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 155
    .line 156
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/yunpan/appmanage/util/l;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 159
    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->stop()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 163
    .line 164
    .line 165
    :catch_4
    :cond_5
    :try_start_9
    invoke-static {}, Lmf/c;->p()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 166
    .line 167
    .line 168
    :catch_5
    :try_start_a
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 169
    .line 170
    .line 171
    :catch_6
    :try_start_b
    invoke-virtual {p0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 172
    .line 173
    .line 174
    :catch_7
    sget-object v0, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 175
    .line 176
    sget-object v0, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 177
    .line 178
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/l;->k:Z

    .line 179
    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 187
    .line 188
    .line 189
    :cond_6
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x52

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lgh/e;->b()Lgh/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "\u653e\u5f00\u83dc\u5355\u952e"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lgh/e;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public onReceiveMsg(Lja/a;)V
    .locals 2
    .annotation runtime Lgh/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9
    iget v0, p1, Lja/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 10
    iget-object p1, p1, Lja/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 11
    new-instance v0, Lsa/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lsa/a;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->L:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lgh/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "\u5173\u95ed\u5e94\u7528"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->C:J

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :cond_1
    const-string v0, "telnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lha/nd;

    invoke-direct {p1, p0, p0}, Lha/nd;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;Lcom/yunpan/appmanage/ui/ActivityHome;)V

    invoke-virtual {p1}, Lha/a4;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0037

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lgh/e;->b()Lgh/e;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Lgh/e;->e(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lgh/e;->b()Lgh/e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p0}, Lgh/e;->j(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const v1, 0x7f0b060a

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    sget-object v2, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 29
    .line 30
    sget-object v2, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 31
    .line 32
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/l;->k:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string v2, "\u221a \u516c\u7b7eUID"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/l;->j:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const-string v2, "\u221a \u516c\u7b7e"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    const v1, 0x7f0b031b

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->H:Landroid/widget/TextView;

    .line 61
    .line 62
    const v1, 0x7f0b0381

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    const v1, 0x7f0b036d

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    const v1, 0x7f0b03c5

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0b03b4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lx9/h3;

    .line 108
    .line 109
    const-string v3, "\u529f\u80fd\u9762\u677f"

    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    invoke-direct {v2, v3, v4}, Lx9/h3;-><init>(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v2, Lx9/h3;

    .line 119
    .line 120
    const-string v3, "\u6587\u4ef6\u7ba1\u7406"

    .line 121
    .line 122
    invoke-direct {v2, v3, v0}, Lx9/h3;-><init>(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v2, Lx9/h3;

    .line 129
    .line 130
    const-string v3, "\u7f51\u7edc\u5b58\u50a8"

    .line 131
    .line 132
    invoke-direct {v2, v3, v0}, Lx9/h3;-><init>(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v3, Lua/a8;

    .line 144
    .line 145
    invoke-direct {v3}, Lua/a8;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v3, Lua/r8;

    .line 152
    .line 153
    invoke-direct {v3}, Lua/r8;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v3, Lua/k9;

    .line 160
    .line 161
    invoke-direct {v3}, Lua/k9;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    const v3, 0x7f0b0520

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 175
    .line 176
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 177
    .line 178
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 179
    .line 180
    iget-object v6, p0, Lda/g;->A:Lda/g;

    .line 181
    .line 182
    invoke-direct {v5, v6, v0, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 186
    .line 187
    .line 188
    new-instance v3, Lx9/g3;

    .line 189
    .line 190
    invoke-direct {v3}, Lx9/g3;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;

    .line 194
    .line 195
    invoke-virtual {v3, v1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 199
    .line 200
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;

    .line 201
    .line 202
    invoke-virtual {v1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 203
    .line 204
    .line 205
    const v1, 0x7f0b031a

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 213
    .line 214
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 215
    .line 216
    :try_start_0
    const-class v1, Lk4/h;

    .line 217
    .line 218
    const-string v3, "h"

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 225
    .line 226
    .line 227
    new-instance v3, Lxa/a;

    .line 228
    .line 229
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 230
    .line 231
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    .line 232
    .line 233
    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-direct {v3, v4, v5}, Lxa/a;-><init>(Lda/g;Landroid/view/animation/AccelerateInterpolator;)V

    .line 237
    .line 238
    .line 239
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 240
    .line 241
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    const/16 v1, 0x6f

    .line 245
    .line 246
    iput v1, v3, Lxa/a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    :catch_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 249
    .line 250
    new-instance v3, Lua/y5;

    .line 251
    .line 252
    const/16 v4, 0x13

    .line 253
    .line 254
    invoke-direct {v3, v4, v0}, Lua/y5;-><init>(IZ)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v3}, Lk4/h;->n(Lua/y5;)V

    .line 258
    .line 259
    .line 260
    new-instance v1, Lx9/k2;

    .line 261
    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->p()Landroidx/fragment/app/d1;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-direct {v1, v3, v2}, Lx9/k2;-><init>(Landroidx/fragment/app/d1;Ljava/util/ArrayList;)V

    .line 267
    .line 268
    .line 269
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->G:Lx9/k2;

    .line 270
    .line 271
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 272
    .line 273
    invoke-virtual {v2, v1}, Lk4/h;->setAdapter(Lk4/a;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 277
    .line 278
    invoke-virtual {v1, v0, v0, v0}, Lk4/h;->m(IZZ)V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->E:Lx9/g3;

    .line 282
    .line 283
    new-instance v2, Lua/b2;

    .line 284
    .line 285
    invoke-direct {v2, p0}, Lua/b2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;)V

    .line 286
    .line 287
    .line 288
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 289
    .line 290
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 291
    .line 292
    new-instance v2, Lua/e2;

    .line 293
    .line 294
    invoke-direct {v2, p0}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 301
    .line 302
    new-instance v2, Lua/s0;

    .line 303
    .line 304
    const/4 v3, 0x7

    .line 305
    invoke-direct {v2, v3}, Lua/s0;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 312
    .line 313
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 314
    .line 315
    .line 316
    sget-object v1, Lcom/yunpan/appmanage/util/l;->w0:Ljava/text/DecimalFormat;

    .line 317
    .line 318
    sget-object v1, Lcom/yunpan/appmanage/util/k;->a:Lcom/yunpan/appmanage/util/l;

    .line 319
    .line 320
    iget-object v1, v1, Lcom/yunpan/appmanage/util/l;->g0:Ljava/util/concurrent/ExecutorService;

    .line 321
    .line 322
    new-instance v2, Lua/c2;

    .line 323
    .line 324
    const/4 v3, 0x2

    .line 325
    invoke-direct {v2, p0, v3}, Lua/c2;-><init>(Lcom/yunpan/appmanage/ui/ActivityHome;I)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 332
    .line 333
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    new-instance v2, Lua/d2;

    .line 338
    .line 339
    invoke-direct {v2, v0, p0}, Lua/d2;-><init>(ILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 343
    .line 344
    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 346
    .line 347
    const/16 v1, 0x15

    .line 348
    .line 349
    if-lt v0, v1, :cond_3

    .line 350
    .line 351
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 352
    .line 353
    iget-boolean v0, v0, Lwa/u;->A:Z

    .line 354
    .line 355
    invoke-static {v0}, Lcom/yunpan/appmanage/ui/ActivityHome;->C(Z)V

    .line 356
    .line 357
    .line 358
    :cond_3
    return-void
.end method
