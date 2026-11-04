.class public final synthetic Lcom/yunpan/appmanage/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/util/f;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/util/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/util/e;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/util/e;->b:Lcom/yunpan/appmanage/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/util/e;->b:Lcom/yunpan/appmanage/util/f;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/util/f;->d:Lh5/m;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lh5/m;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lha/qc;

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lha/qc;->i:Lx9/r2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string v0, "\u672a\u627e\u5230smb\u670d\u52a1\u5668"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :cond_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/e;->b:Lcom/yunpan/appmanage/util/f;

    .line 37
    .line 38
    iget v1, v0, Lcom/yunpan/appmanage/util/f;->b:I

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    :try_start_1
    invoke-static {}, Lcom/yunpan/appmanage/util/f;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/f;->f:Z

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/f;->b()V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :catchall_0
    move-exception v3

    .line 68
    goto :goto_5

    .line 69
    :cond_2
    const/16 v4, 0x2e

    .line 70
    .line 71
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v5, 0x1

    .line 76
    add-int/2addr v4, v5

    .line 77
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 82
    .line 83
    const/16 v7, 0xfe

    .line 84
    .line 85
    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    if-gt v5, v7, :cond_5

    .line 89
    .line 90
    iget-object v8, v0, Lcom/yunpan/appmanage/util/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_3

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_4

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    new-instance v9, La2/e0;

    .line 122
    .line 123
    const/4 v10, 0x4

    .line 124
    invoke-direct {v9, v0, v8, v6, v10}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    :goto_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 134
    .line 135
    const-wide/16 v4, 0x64

    .line 136
    .line 137
    invoke-virtual {v6, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_1

    .line 142
    .line 143
    iget-object v3, v0, Lcom/yunpan/appmanage/util/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :goto_4
    return-void

    .line 164
    :goto_5
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/f;->f:Z

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/f;->b()V

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :goto_6
    throw v3

    .line 174
    :goto_7
    goto :goto_6

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
