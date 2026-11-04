.class public final synthetic Lfa/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lea/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lfa/c0;->a:I

    iput-object p2, p0, Lfa/c0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfa/c0;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lfa/c0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg0/e;ZLjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lfa/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/c0;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lfa/c0;->b:Z

    iput-object p3, p0, Lfa/c0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lfa/c0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 4
    .line 5
    iget-object v1, p0, Lfa/c0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lua/i9;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, v1, Lua/i9;->h:Lha/u9;

    .line 12
    .line 13
    const-string v2, "\u62f7\u8d1d\u4e2d"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lha/u9;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lph/j;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {p1, v2, v0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lmc/c;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lua/g;

    .line 45
    .line 46
    iget-boolean v2, p0, Lfa/c0;->b:Z

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    invoke-direct {v0, v1, v2, v3}, Lua/g;-><init>(Ljava/lang/Object;ZI)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, v1, Lua/i9;->h:Lha/u9;

    .line 57
    .line 58
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 59
    .line 60
    .line 61
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    new-instance p1, Lha/y4;

    .line 70
    .line 71
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 72
    .line 73
    iget-object v3, v1, Lda/h;->e:Landroid/content/Context;

    .line 74
    .line 75
    new-instance v4, Lua/i8;

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    invoke-direct {v4, v1, v5, v0}, Lua/i8;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v2, v3, v0, v4}, Lha/y4;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/bean/FileCopyBean;Lha/x4;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance p1, Lha/s5;

    .line 89
    .line 90
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 91
    .line 92
    iget-object v3, v1, Lda/h;->e:Landroid/content/Context;

    .line 93
    .line 94
    invoke-direct {p1, v2, v3}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 98
    .line 99
    .line 100
    iget-object v2, p1, Lha/s5;->h:Landroid/widget/TextView;

    .line 101
    .line 102
    const-string v3, "\u5206\u6790\u4e2d"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lw/r3;

    .line 108
    .line 109
    invoke-direct {v2}, Lw/r3;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lua/i8;

    .line 113
    .line 114
    const/4 v4, 0x2

    .line 115
    invoke-direct {v3, v1, v4, p1}, Lua/i8;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object v3, v2, Lw/r3;->b:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance p1, La2/c0;

    .line 121
    .line 122
    const/16 v1, 0xf

    .line 123
    .line 124
    invoke-direct {p1, v2, v1, v0}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v2, Lw/r3;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 130
    .line 131
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 14

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    iget-boolean v3, p0, Lfa/c0;->b:Z

    .line 7
    .line 8
    const-string v4, "id"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Lfa/c0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, p0, Lfa/c0;->d:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    iget v9, p0, Lfa/c0;->a:I

    .line 17
    .line 18
    packed-switch v9, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v7, Ljava/lang/String;

    .line 22
    .line 23
    check-cast v6, Lg0/e;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v9, " "

    .line 29
    .line 30
    const-string v10, "logcat"

    .line 31
    .line 32
    invoke-static {}, Lq4/a;->c()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lq4/a;->u()I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    const/4 v12, 0x4

    .line 40
    if-le v11, v12, :cond_0

    .line 41
    .line 42
    const-string v11, "\u68c0\u6d4b\u5230\u60a8\u7684\u7cfb\u7edf\u65e5\u5fd7\u7b49\u7ea7\u8fc7\u4f4e"

    .line 43
    .line 44
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {}, Lq4/a;->D()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-nez v11, :cond_1

    .line 52
    .line 53
    const-string v11, "\u68c0\u6d4b\u5230\u60a8\u53ef\u80fd\u672a\u5f00\u542f\u7cfb\u7edf\u65e5\u5fd7"

    .line 54
    .line 55
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iput-boolean v5, v6, Lg0/e;->a:Z

    .line 59
    .line 60
    iput-boolean v5, v6, Lg0/e;->b:Z

    .line 61
    .line 62
    :try_start_0
    const-string v11, "sh"

    .line 63
    .line 64
    invoke-virtual {v6, v11}, Lg0/e;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v11

    .line 69
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v4}, Lg0/e;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    const-string v4, "logcat -c"

    .line 76
    .line 77
    invoke-virtual {v6, v4}, Lg0/e;->g(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v11, 0x12c

    .line 81
    .line 82
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    .line 84
    .line 85
    iget-object v4, v6, Lg0/e;->h:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 90
    .line 91
    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-string v2, " -v tag"

    .line 96
    .line 97
    :goto_1
    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v6, v2}, Lg0/e;->g(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    const/4 v2, 0x0

    .line 105
    :cond_3
    iget-boolean v10, v6, Lg0/e;->a:Z

    .line 106
    .line 107
    if-nez v10, :cond_d

    .line 108
    .line 109
    iget-boolean v10, v6, Lg0/e;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    .line 111
    if-nez v10, :cond_d

    .line 112
    .line 113
    :try_start_3
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    .line 115
    const-wide/16 v11, 0x6

    .line 116
    .line 117
    invoke-virtual {v4, v11, v12, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catch_1
    nop

    .line 125
    move-object v10, v1

    .line 126
    :goto_3
    if-nez v10, :cond_4

    .line 127
    .line 128
    add-int/2addr v2, v8

    .line 129
    const/16 v10, 0x9

    .line 130
    .line 131
    if-lt v2, v10, :cond_3

    .line 132
    .line 133
    :try_start_4
    const-string v0, "\u76d1\u542c\u4e0d\u5230\u7cfb\u7edf\u65e5\u5fd7\uff0c\u5df2\u505c\u6b62"

    .line 134
    .line 135
    invoke-static {v0, v5}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :catch_2
    move-exception v0

    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_4
    if-nez v3, :cond_5

    .line 144
    .line 145
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const/16 v11, 0x2f

    .line 150
    .line 151
    if-eq v2, v11, :cond_a

    .line 152
    .line 153
    const-string v2, "/"

    .line 154
    .line 155
    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    const/4 v11, 0x2

    .line 160
    if-le v2, v11, :cond_a

    .line 161
    .line 162
    sub-int/2addr v2, v8

    .line 163
    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    goto :goto_4

    .line 168
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const/16 v11, 0x15

    .line 173
    .line 174
    if-ge v2, v11, :cond_6

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-gez v2, :cond_7

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {v10, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-gez v11, :cond_8

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_8
    invoke-virtual {v2, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-gez v2, :cond_9

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_9
    add-int/2addr v2, v8

    .line 215
    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    :cond_a
    :goto_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-nez v2, :cond_b

    .line 227
    .line 228
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_b

    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_c

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :cond_c
    invoke-virtual {p1, v10}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    .line 246
    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v2, "\u76d1\u542c\u65e5\u5fd7\u51fa\u9519\uff1a"

    .line 252
    .line 253
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0, v5}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 268
    .line 269
    .line 270
    :cond_d
    :goto_6
    invoke-virtual {v6}, Lg0/e;->k()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_0
    check-cast v7, Landroid/hardware/usb/UsbInterface;

    .line 278
    .line 279
    const-string v9, "shell:"

    .line 280
    .line 281
    sget-object v10, Lfa/a;->b:Lfa/e0;

    .line 282
    .line 283
    iget-object v11, v10, Lfa/e0;->a:Landroid/hardware/usb/UsbManager;

    .line 284
    .line 285
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 286
    .line 287
    invoke-virtual {v11, v6}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    iput-object v6, v10, Lfa/e0;->b:Landroid/hardware/usb/UsbDeviceConnection;

    .line 292
    .line 293
    if-eqz v6, :cond_1c

    .line 294
    .line 295
    :try_start_5
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 296
    .line 297
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 298
    .line 299
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 300
    .line 301
    invoke-static {v6}, Lfa/e0;->b(Landroid/content/ContextWrapper;)Lz9/b;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    new-instance v11, Lz9/e;

    .line 306
    .line 307
    iget-object v12, v10, Lfa/e0;->b:Landroid/hardware/usb/UsbDeviceConnection;

    .line 308
    .line 309
    invoke-direct {v11, v12, v7}, Lz9/e;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    .line 310
    .line 311
    .line 312
    new-instance v7, Lz9/a;

    .line 313
    .line 314
    invoke-direct {v7}, Lz9/a;-><init>()V

    .line 315
    .line 316
    .line 317
    iput-object v6, v7, Lz9/a;->g:Lz9/b;

    .line 318
    .line 319
    iput-object v11, v7, Lz9/a;->a:Lz9/e;

    .line 320
    .line 321
    iput-object v7, v10, Lfa/e0;->c:Lz9/a;

    .line 322
    .line 323
    invoke-virtual {v7}, Lz9/a;->r()V

    .line 324
    .line 325
    .line 326
    iget-object v6, v10, Lfa/e0;->d:Lz9/d;

    .line 327
    .line 328
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 329
    .line 330
    .line 331
    iget-object v6, v10, Lfa/e0;->c:Lz9/a;

    .line 332
    .line 333
    invoke-virtual {v6, v9}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    iput-object v6, v10, Lfa/e0;->d:Lz9/d;

    .line 338
    .line 339
    const-wide/16 v6, 0xde

    .line 340
    .line 341
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 342
    .line 343
    .line 344
    iget-object v11, v10, Lfa/e0;->d:Lz9/d;

    .line 345
    .line 346
    const-wide/16 v12, 0x29a

    .line 347
    .line 348
    invoke-virtual {v11, v12, v13}, Lz9/d;->K(J)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    invoke-virtual {v11}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-nez v12, :cond_e

    .line 365
    .line 366
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    goto :goto_7

    .line 371
    :catch_3
    move-exception v0

    .line 372
    goto/16 :goto_a

    .line 373
    .line 374
    :cond_e
    :goto_7
    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-nez v0, :cond_f

    .line 379
    .line 380
    const-string v0, "password"

    .line 381
    .line 382
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_f

    .line 387
    .line 388
    const-string v0, "error:"

    .line 389
    .line 390
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_10

    .line 395
    .line 396
    :cond_f
    iput-boolean v8, v10, Lfa/e0;->f:Z

    .line 397
    .line 398
    iget-object v0, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_10

    .line 405
    .line 406
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 407
    .line 408
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->Y:Ljava/lang/String;

    .line 409
    .line 410
    iput-object v0, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 411
    .line 412
    :cond_10
    iget-object v0, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-nez v0, :cond_11

    .line 419
    .line 420
    iget-object v0, v10, Lfa/e0;->d:Lz9/d;

    .line 421
    .line 422
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 426
    .line 427
    const-string v11, "\""

    .line 428
    .line 429
    const-string v12, "\'"

    .line 430
    .line 431
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    iput-object v0, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 436
    .line 437
    iget-object v0, v10, Lfa/e0;->c:Lz9/a;

    .line 438
    .line 439
    new-instance v11, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v12, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v11

    .line 453
    invoke-virtual {v0, v11}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 454
    .line 455
    .line 456
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 457
    .line 458
    .line 459
    iget-object v0, v10, Lfa/e0;->c:Lz9/a;

    .line 460
    .line 461
    invoke-virtual {v0, v9}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    iput-object v0, v10, Lfa/e0;->d:Lz9/d;

    .line 466
    .line 467
    iget-object v6, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v0, v6}, Lz9/d;->M(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v0, v10, Lfa/e0;->d:Lz9/d;

    .line 473
    .line 474
    const-wide/16 v6, 0x1f4

    .line 475
    .line 476
    invoke-virtual {v0, v6, v7}, Lz9/d;->K(J)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 477
    .line 478
    .line 479
    :cond_11
    iget-object v0, v10, Lfa/e0;->d:Lz9/d;

    .line 480
    .line 481
    invoke-virtual {v0, v4}, Lz9/d;->M(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-object v0, v10, Lfa/e0;->d:Lz9/d;

    .line 485
    .line 486
    const-wide/16 v6, 0x29c

    .line 487
    .line 488
    invoke-virtual {v0, v6, v7}, Lz9/d;->K(J)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    const-string v6, "tream open actively rejected"

    .line 501
    .line 502
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-nez v4, :cond_1b

    .line 507
    .line 508
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    const-string v6, "\u6267\u884c\u547d\u4ee4\u8d85\u65f6"

    .line 517
    .line 518
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-eqz v4, :cond_13

    .line 523
    .line 524
    if-eqz v3, :cond_12

    .line 525
    .line 526
    new-instance v0, Ljava/lang/Exception;

    .line 527
    .line 528
    const-string v3, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301"

    .line 529
    .line 530
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v0

    .line 534
    :cond_12
    new-instance v0, Ljava/lang/Exception;

    .line 535
    .line 536
    const-string v3, "\u8bf7\u7528OTG\u8fde\u63a5\u5176\u5b83\u5b89\u5353\u8bbe\u5907"

    .line 537
    .line 538
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw v0

    .line 542
    :cond_13
    iget v3, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 543
    .line 544
    if-nez v3, :cond_14

    .line 545
    .line 546
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string v3, "uid="

    .line 551
    .line 552
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_14

    .line 557
    .line 558
    iput-boolean v5, v10, Lfa/e0;->f:Z

    .line 559
    .line 560
    goto :goto_8

    .line 561
    :cond_14
    iput-boolean v8, v10, Lfa/e0;->f:Z

    .line 562
    .line 563
    :goto_8
    iget-boolean v0, v10, Lfa/e0;->f:Z

    .line 564
    .line 565
    if-eqz v0, :cond_16

    .line 566
    .line 567
    new-instance v0, Ljava/lang/Exception;

    .line 568
    .line 569
    iget-object v3, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_15

    .line 576
    .line 577
    const-string v3, "shell\u9700\u8981\u5bc6\u7801"

    .line 578
    .line 579
    goto :goto_9

    .line 580
    :cond_15
    const-string v3, "shell\u5bc6\u7801\u9519\u8bef"

    .line 581
    .line 582
    :goto_9
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v0

    .line 586
    :cond_16
    iget-object v0, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-nez v0, :cond_17

    .line 593
    .line 594
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 595
    .line 596
    iget-object v3, v10, Lfa/e0;->g:Ljava/lang/String;

    .line 597
    .line 598
    iput-object v3, v0, Lcom/yunpan/appmanage/util/w;->Y:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 599
    .line 600
    :try_start_6
    iget-object v4, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 601
    .line 602
    const-string v6, "OtgAdbShellPassword"

    .line 603
    .line 604
    invoke-virtual {v4, v6, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 605
    .line 606
    .line 607
    :catch_4
    :try_start_7
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 608
    .line 609
    .line 610
    :cond_17
    const-string v0, "setprop persist.sv.enable_adb_install 1"

    .line 611
    .line 612
    const-wide/16 v3, 0x378

    .line 613
    .line 614
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 615
    .line 616
    .line 617
    const-string v0, "setprop sys.jsbd.apk_verify 1"

    .line 618
    .line 619
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 620
    .line 621
    .line 622
    const-string v0, "settings put global verifier_verify_adb_installs 0"

    .line 623
    .line 624
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 625
    .line 626
    .line 627
    const-string v0, "settings put global package_verifier_enable 0"

    .line 628
    .line 629
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 630
    .line 631
    .line 632
    const-string v0, "settings put secure install_non_market_apps 1"

    .line 633
    .line 634
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 635
    .line 636
    .line 637
    const-string v0, "am get-current-user"

    .line 638
    .line 639
    const-wide/16 v3, 0x7d0

    .line 640
    .line 641
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    iget v6, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 646
    .line 647
    if-nez v6, :cond_18

    .line 648
    .line 649
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 650
    .line 651
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 652
    .line 653
    .line 654
    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 655
    if-nez v6, :cond_18

    .line 656
    .line 657
    :try_start_8
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 658
    .line 659
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 660
    .line 661
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v7

    .line 665
    check-cast v7, Ljava/lang/String;

    .line 666
    .line 667
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 671
    .line 672
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    check-cast v0, Ljava/lang/String;

    .line 677
    .line 678
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    iput v0, v10, Lfa/e0;->i:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 683
    .line 684
    :catch_5
    :cond_18
    :try_start_9
    const-string v0, "getprop ro.build.version.sdk"

    .line 685
    .line 686
    invoke-virtual {v10, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    iget v3, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 694
    .line 695
    if-nez v3, :cond_1a

    .line 696
    .line 697
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 698
    .line 699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    if-eqz v3, :cond_1a

    .line 708
    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    check-cast v3, Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    if-nez v4, :cond_19

    .line 724
    .line 725
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 726
    .line 727
    .line 728
    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 729
    const/4 v5, 0x3

    .line 730
    if-ge v4, v5, :cond_19

    .line 731
    .line 732
    :try_start_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    iput v0, v10, Lfa/e0;->h:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 737
    .line 738
    :catch_6
    :cond_1a
    :try_start_b
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 739
    .line 740
    .line 741
    goto :goto_b

    .line 742
    :cond_1b
    iget-object v0, v10, Lfa/e0;->d:Lz9/d;

    .line 743
    .line 744
    invoke-virtual {v0}, Lz9/d;->close()V

    .line 745
    .line 746
    .line 747
    iput-object v1, v10, Lfa/e0;->d:Lz9/d;

    .line 748
    .line 749
    new-instance v0, Ljava/lang/Exception;

    .line 750
    .line 751
    const-string v3, "\u65e0\u6cd5\u6253\u5f00\uff1aadb shell"

    .line 752
    .line 753
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
    :cond_1c
    new-instance v0, Ljava/lang/Exception;

    .line 758
    .line 759
    const-string v3, "usb\u8fde\u63a5\u5931\u8d25"

    .line 760
    .line 761
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 765
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .line 769
    .line 770
    invoke-static {v0, v3, v2}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    if-eqz v2, :cond_1d

    .line 779
    .line 780
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 781
    .line 782
    :cond_1d
    iget-object v2, v10, Lfa/e0;->d:Lz9/d;

    .line 783
    .line 784
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 785
    .line 786
    .line 787
    iput-object v1, v10, Lfa/e0;->d:Lz9/d;

    .line 788
    .line 789
    iget-object v2, v10, Lfa/e0;->c:Lz9/a;

    .line 790
    .line 791
    if-eqz v2, :cond_1e

    .line 792
    .line 793
    invoke-virtual {v2}, Lz9/a;->close()V

    .line 794
    .line 795
    .line 796
    :cond_1e
    iget-object v2, v10, Lfa/e0;->c:Lz9/a;

    .line 797
    .line 798
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 799
    .line 800
    .line 801
    iput-object v1, v10, Lfa/e0;->c:Lz9/a;

    .line 802
    .line 803
    :try_start_c
    iget-object v2, v10, Lfa/e0;->b:Landroid/hardware/usb/UsbDeviceConnection;

    .line 804
    .line 805
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 806
    .line 807
    .line 808
    iput-object v1, v10, Lfa/e0;->b:Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 809
    .line 810
    :catch_7
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 811
    .line 812
    .line 813
    :goto_b
    return-void

    .line 814
    nop

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
