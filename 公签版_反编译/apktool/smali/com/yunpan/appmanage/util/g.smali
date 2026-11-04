.class public final synthetic Lcom/yunpan/appmanage/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/util/h;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/util/h;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/util/g;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/util/g;->b:Lcom/yunpan/appmanage/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/util/g;->b:Lcom/yunpan/appmanage/util/h;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/util/h;->d:Lh5/m;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lh5/m;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lha/r7;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lha/r7;->j:Landroid/widget/TextView;

    .line 23
    .line 24
    const-string v2, "\u641c\u5bfb"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "\u672a\u627e\u5230\u5176\u5b83\u8bbe\u5907\uff0c\u9700\u6253\u5f00"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 47
    .line 48
    const v2, 0x7f13002f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/g;->b:Lcom/yunpan/appmanage/util/h;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/yunpan/appmanage/util/h;->d:Lh5/m;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, v0, Lh5/m;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lha/r7;

    .line 75
    .line 76
    iget-object v0, v0, Lha/r7;->i:Lx9/r2;

    .line 77
    .line 78
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/yunpan/appmanage/util/g;->b:Lcom/yunpan/appmanage/util/h;

    .line 87
    .line 88
    iget v1, v0, Lcom/yunpan/appmanage/util/h;->b:I

    .line 89
    .line 90
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/4 v2, 0x0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/util/h;->a()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/h;->f:Z

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/h;->c()V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :catchall_0
    move-exception v3

    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    :try_start_1
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 122
    .line 123
    iget-object v5, v4, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const/4 v6, 0x1

    .line 130
    if-nez v5, :cond_7

    .line 131
    .line 132
    iget-object v4, v4, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    sub-int/2addr v4, v6

    .line 139
    const/4 v5, 0x0

    .line 140
    :goto_1
    if-ltz v4, :cond_6

    .line 141
    .line 142
    sget-object v7, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 143
    .line 144
    iget-object v8, v7, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Lcom/yunpan/appmanage/util/d;

    .line 151
    .line 152
    invoke-static {v8}, Lcom/yunpan/appmanage/util/h;->b(Lcom/yunpan/appmanage/util/d;)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_5

    .line 157
    .line 158
    iget-object v5, v7, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const/4 v5, 0x1

    .line 164
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    if-eqz v5, :cond_7

    .line 168
    .line 169
    iget-object v4, v0, Lcom/yunpan/appmanage/util/h;->e:Landroid/os/Handler;

    .line 170
    .line 171
    new-instance v5, Lcom/yunpan/appmanage/util/g;

    .line 172
    .line 173
    const/4 v7, 0x1

    .line 174
    invoke-direct {v5, v0, v7}, Lcom/yunpan/appmanage/util/g;-><init>(Lcom/yunpan/appmanage/util/h;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    :cond_7
    const/16 v4, 0x2e

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    add-int/2addr v4, v6

    .line 187
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    .line 192
    .line 193
    const/16 v7, 0xfe

    .line 194
    .line 195
    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 196
    .line 197
    .line 198
    :goto_2
    if-gt v6, v7, :cond_a

    .line 199
    .line 200
    iget-object v8, v0, Lcom/yunpan/appmanage/util/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_8

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eqz v9, :cond_9

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_9
    new-instance v9, La2/e0;

    .line 232
    .line 233
    const/4 v10, 0x5

    .line 234
    invoke-direct {v9, v0, v8, v5, v10}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_a
    :goto_4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    .line 245
    const-wide/16 v6, 0x64

    .line 246
    .line 247
    invoke-virtual {v5, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_3

    .line 252
    .line 253
    iget-object v3, v0, Lcom/yunpan/appmanage/util/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_a

    .line 260
    .line 261
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :goto_5
    return-void

    .line 276
    :goto_6
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/h;->f:Z

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/h;->c()V

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :goto_7
    throw v3

    .line 286
    :goto_8
    goto :goto_7

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
