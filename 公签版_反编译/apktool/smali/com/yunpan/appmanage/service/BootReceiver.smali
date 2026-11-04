.class public Lcom/yunpan/appmanage/service/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/yunpan/appmanage/service/BootReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Lq4/a;->E(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/yunpan/appmanage/service/BootReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 34
    .line 35
    iget-boolean v0, v0, Lwa/u;->e0:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/yunpan/appmanage/service/BootReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "\uff1a\u5f00\u59cb\u6267\u884c\u4efb\u52a1"

    .line 2
    .line 3
    const-class v1, Lcom/yunpan/appmanage/service/BootTaskService;

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0, v1}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    sget-object p0, Lwa/t;->a:Lwa/u;

    .line 12
    .line 13
    iget-boolean v0, p0, Lwa/u;->t:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "\uff1a\u653e\u5f03\u4efb\u52a1\uff0c\u5f00\u673a\u670d\u52a1\u8fd0\u884c\u4e2d\uff0c\u4e0a\u6b21\u6267\u884c\u65f6\u95f4\uff1a"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lwa/u;->c:Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    new-instance v2, Ljava/util/Date;

    .line 33
    .line 34
    iget-wide v3, p0, Lwa/u;->g:J

    .line 35
    .line 36
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-virtual {v2, v3, v4}, Lwa/u;->g(J)V

    .line 64
    .line 65
    .line 66
    iget-boolean v2, v2, Lwa/u;->t:Z

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 78
    .line 79
    invoke-virtual {v0}, Lfa/e;->h()V

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/content/Intent;

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v2, 0x1a

    .line 90
    .line 91
    if-lt v1, v2, :cond_3

    .line 92
    .line 93
    invoke-static {p0, v0}, Leg/a;->k(Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 102
    .line 103
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    const-string v0, "\uff1a\u542f\u52a8\u670d\u52a1\u5931\u8d25\uff0c"

    .line 108
    .line 109
    invoke-static {p1, v0}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 9
    .line 10
    iget-boolean v1, v0, Lwa/u;->t:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "\u6536\u5230\u5e7f\u64ad\uff1a"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lwa/w;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-boolean v1, v0, Lwa/u;->h:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-boolean p1, v0, Lwa/u;->t:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string p1, "\u5f00\u673a\u5e7f\u64ad\uff1a\u60a8\u52fe\u9009\u4e86\u624b\u52a8\u70b9\u51fb\u542f\u52a8"

    .line 44
    .line 45
    invoke-static {p1}, Lwa/w;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    iget-boolean p2, v0, Lwa/u;->j:Z

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    const-string p2, "\u5c4f\u5e55\u89e3\u9501"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget-boolean p2, v0, Lwa/u;->k:Z

    .line 73
    .line 74
    if-nez p2, :cond_5

    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    const-string p2, "\u5f00\u673a\u5e7f\u64ad"

    .line 78
    .line 79
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    :goto_0
    return-void
.end method
