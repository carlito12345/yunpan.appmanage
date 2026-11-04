.class public final synthetic Lta/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/service/AccService;

.field public final synthetic c:Lz7/o;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/AccService;Lz7/o;I)V
    .locals 0

    .line 1
    iput p3, p0, Lta/b;->a:I

    iput-object p1, p0, Lta/b;->b:Lcom/yunpan/appmanage/service/AccService;

    iput-object p2, p0, Lta/b;->c:Lz7/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lta/b;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    iget-object v1, p0, Lta/b;->c:Lz7/o;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/yunpan/appmanage/service/AccService;->R0:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 11
    .line 12
    iget v2, v2, Lwa/u;->z:I

    .line 13
    .line 14
    if-lez v2, :cond_3

    .line 15
    .line 16
    iget-object v2, v0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    sub-long v5, v3, v5

    .line 53
    .line 54
    const-wide/32 v7, 0x1d4c0

    .line 55
    .line 56
    .line 57
    cmp-long v9, v5, v7

    .line 58
    .line 59
    if-lez v9, :cond_1

    .line 60
    .line 61
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v3, v0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 76
    .line 77
    iget v4, v4, Lwa/u;->z:I

    .line 78
    .line 79
    if-lt v3, v4, :cond_2

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    iput-boolean v1, v0, Lcom/yunpan/appmanage/service/AccService;->R0:Z

    .line 83
    .line 84
    const-string v1, "\u89e6\u53d1\u7194\u65ad\u4fdd\u62a4\uff0c3\u79d2\u540e\u505c\u6b62\u81ea\u52a8\u5316"

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static {v1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    const-wide/16 v3, 0xbb8

    .line 91
    .line 92
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :catch_0
    :try_start_2
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 96
    .line 97
    const/4 v1, -0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    .line 100
    .line 101
    monitor-exit v2

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    monitor-exit v2

    .line 104
    goto :goto_2

    .line 105
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    throw v0

    .line 107
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lta/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lta/b;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 7
    .line 8
    iget-object v1, p0, Lta/b;->c:Lz7/o;

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/yunpan/appmanage/service/AccService;->T0:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 16
    .line 17
    iget v2, v2, Lwa/u;->A:I

    .line 18
    .line 19
    if-lez v2, :cond_3

    .line 20
    .line 21
    iget-object v2, v0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    sub-long v5, v3, v5

    .line 58
    .line 59
    const-wide/32 v7, 0x1d4c0

    .line 60
    .line 61
    .line 62
    cmp-long v9, v5, v7

    .line 63
    .line 64
    if-lez v9, :cond_1

    .line 65
    .line 66
    iget-object v5, v0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v3, v0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 81
    .line 82
    iget v4, v4, Lwa/u;->A:I

    .line 83
    .line 84
    if-lt v3, v4, :cond_2

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    iput-boolean v1, v0, Lcom/yunpan/appmanage/service/AccService;->T0:Z

    .line 88
    .line 89
    const-string v1, "\u89e6\u53d1\u65e5\u5fd7\u7194\u65ad\u4fdd\u62a4\uff0c3\u79d2\u540e\u505c\u6b62\u81ea\u52a8\u5316"

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-static {v1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    const-wide/16 v3, 0xbb8

    .line 96
    .line 97
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :catch_0
    :try_start_2
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 101
    .line 102
    const/4 v1, -0x1

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    .line 105
    .line 106
    monitor-exit v2

    .line 107
    goto :goto_3

    .line 108
    :cond_2
    monitor-exit v2

    .line 109
    goto :goto_2

    .line 110
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    throw v0

    .line 112
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    .line 113
    .line 114
    .line 115
    :goto_3
    return-void

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lta/b;->a()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
