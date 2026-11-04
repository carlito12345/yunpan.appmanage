.class public final synthetic Lta/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lta/o;


# direct methods
.method public synthetic constructor <init>(Lta/o;I)V
    .locals 0

    .line 1
    iput p2, p0, Lta/n;->a:I

    iput-object p1, p0, Lta/n;->b:Lta/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lta/n;->b:Lta/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, p0, Lta/n;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lq4/a;->c()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lta/o;->e:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v3, Lta/n;

    .line 16
    .line 17
    invoke-direct {v3, v0, v2}, Lta/n;-><init>(Lta/o;I)V

    .line 18
    .line 19
    .line 20
    const-wide/32 v4, 0xea60

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 31
    .line 32
    new-instance v4, Ljava/io/InputStreamReader;

    .line 33
    .line 34
    iget-object v5, v0, Lta/o;->i:Ljava/io/InputStream;

    .line 35
    .line 36
    const-string v6, "UTF-8"

    .line 37
    .line 38
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    const/4 v6, 0x0

    .line 53
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 54
    :goto_1
    iget-boolean v8, v0, Lta/o;->b:Z

    .line 55
    .line 56
    if-nez v8, :cond_a

    .line 57
    .line 58
    iget-object v8, v0, Lta/o;->k:Lfg/b;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_2

    .line 65
    .line 66
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 67
    .line 68
    iget-boolean v4, v4, Lwa/u;->u:Z

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    const-string v4, "\u65e5\u5fd7\u6d88\u606f\u63a5\u6536\u7ebf\u7a0b-\u4e2d\u65ad"

    .line 73
    .line 74
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception v4

    .line 79
    goto :goto_4

    .line 80
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .line 82
    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :catch_0
    move-exception v3

    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :cond_2
    :try_start_3
    iget-object v8, v0, Lta/o;->k:Lfg/b;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_3

    .line 95
    .line 96
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 97
    .line 98
    iget-boolean v4, v4, Lwa/u;->u:Z

    .line 99
    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    const-string v4, "\u65e5\u5fd7\u6d88\u606f\u63a5\u6536\u7ebf\u7a0b-\u6b7b\u4ea1"

    .line 103
    .line 104
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    if-nez v8, :cond_5

    .line 113
    .line 114
    add-int/2addr v7, v2

    .line 115
    const/4 v8, 0x2

    .line 116
    if-lt v7, v8, :cond_4

    .line 117
    .line 118
    iput-boolean v2, v0, Lta/o;->c:Z

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const-wide/16 v8, 0x64

    .line 122
    .line 123
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    if-nez v6, :cond_8

    .line 128
    .line 129
    const-string v9, "beginning of system"

    .line 130
    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_6

    .line 136
    .line 137
    const/4 v6, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    sub-long/2addr v9, v4

    .line 144
    const-wide/16 v11, 0x3e8

    .line 145
    .line 146
    cmp-long v13, v9, v11

    .line 147
    .line 148
    if-gez v13, :cond_7

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    const/4 v6, 0x1

    .line 152
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    if-eqz v9, :cond_9

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_9
    iget-object v7, v0, Lta/o;->l:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 160
    .line 161
    :try_start_4
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-nez v9, :cond_0

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_a
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_7

    .line 175
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :catchall_1
    move-exception v3

    .line 180
    :try_start_7
    const-class v5, Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 181
    .line 182
    :try_start_8
    const-string v6, "addSuppressed"

    .line 183
    .line 184
    new-array v7, v2, [Ljava/lang/Class;

    .line 185
    .line 186
    aput-object v5, v7, v1

    .line 187
    .line 188
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    new-array v6, v2, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v3, v6, v1

    .line 195
    .line 196
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 197
    .line 198
    .line 199
    :catch_1
    :goto_5
    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 200
    :goto_6
    iget-boolean v4, v0, Lta/o;->m:Z

    .line 201
    .line 202
    if-eqz v4, :cond_c

    .line 203
    .line 204
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 205
    .line 206
    iget-boolean v2, v2, Lwa/u;->u:Z

    .line 207
    .line 208
    if-eqz v2, :cond_b

    .line 209
    .line 210
    const-string v2, "\u91cd\u65b0\u521b\u5efashell\uff0c\u4e3b\u52a8\u9000\u51fa"

    .line 211
    .line 212
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_b
    iput-boolean v1, v0, Lta/o;->m:Z

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_c
    iget-boolean v1, v0, Lta/o;->b:Z

    .line 219
    .line 220
    if-nez v1, :cond_e

    .line 221
    .line 222
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 223
    .line 224
    iget-boolean v1, v1, Lwa/u;->u:Z

    .line 225
    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v4, "\u65e5\u5fd7\u6d88\u606f\u63a5\u6536\u7ebf\u7a0b-\u62a5\u9519\uff1a"

    .line 231
    .line 232
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    iput-boolean v2, v0, Lta/o;->c:Z

    .line 253
    .line 254
    :cond_e
    :goto_7
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 255
    .line 256
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 257
    .line 258
    if-eqz v0, :cond_f

    .line 259
    .line 260
    const-string v0, "\u65e5\u5fd7\u6d88\u606f\u63a5\u6536\u7ebf\u7a0b-\u7ec8\u6b62"

    .line 261
    .line 262
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_f
    :goto_8
    return-void

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
