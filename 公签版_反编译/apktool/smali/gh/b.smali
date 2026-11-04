.class public final Lgh/b;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public volatile b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:[I

.field public final i:Lgh/a;

.field public final j:Lfg/b;

.field public k:Ljava/io/IOException;

.field public final l:[I

.field public m:I

.field public volatile n:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgh/a;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lgh/b;->i:Lgh/a;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lgh/b;->d:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lgh/b;->b:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lgh/b;->a:Z

    .line 13
    .line 14
    const/16 v0, 0x801

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    iput-object v0, p0, Lgh/b;->h:[I

    .line 19
    .line 20
    iput p1, p0, Lgh/b;->e:I

    .line 21
    .line 22
    iput p1, p0, Lgh/b;->f:I

    .line 23
    .line 24
    iget p2, p2, Lgh/a;->q:I

    .line 25
    .line 26
    new-array p2, p2, [I

    .line 27
    .line 28
    iput-object p2, p0, Lgh/b;->l:[I

    .line 29
    .line 30
    iput p1, p0, Lgh/b;->g:I

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lgh/b;->k:Ljava/io/IOException;

    .line 34
    .line 35
    iput-boolean p1, p0, Lgh/b;->c:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Lgh/b;->n:Z

    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    new-instance p1, Lfg/b;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-direct {p1, p0, p2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lgh/b;->j:Lfg/b;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-object p2, p0, Lgh/b;->j:Lfg/b;

    .line 51
    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public final A(Z)I
    .locals 6

    .line 1
    :goto_0
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x2

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 25
    .line 26
    invoke-virtual {v2}, Lgh/a;->i()V

    .line 27
    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 30
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lgh/b;->d:I

    .line 36
    .line 37
    const/16 v2, 0xff

    .line 38
    .line 39
    const/16 v3, 0xf0

    .line 40
    .line 41
    const/4 v4, 0x6

    .line 42
    const/4 v5, 0x0

    .line 43
    packed-switch v1, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    :pswitch_0
    goto/16 :goto_4

    .line 47
    .line 48
    :pswitch_1
    if-eq v0, v3, :cond_4

    .line 49
    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget v1, p0, Lgh/b;->m:I

    .line 54
    .line 55
    iget-object v2, p0, Lgh/b;->l:[I

    .line 56
    .line 57
    array-length v3, v2

    .line 58
    if-ge v1, v3, :cond_3

    .line 59
    .line 60
    add-int/lit8 v3, v1, 0x1

    .line 61
    .line 62
    iput v3, p0, Lgh/b;->m:I

    .line 63
    .line 64
    aput v0, v2, v1

    .line 65
    .line 66
    :cond_3
    :goto_1
    iput v4, p0, Lgh/b;->d:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 70
    .line 71
    monitor-enter v1

    .line 72
    :try_start_1
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 73
    .line 74
    iget-object v2, p0, Lgh/b;->l:[I

    .line 75
    .line 76
    iget v3, p0, Lgh/b;->m:I

    .line 77
    .line 78
    invoke-virtual {v0, v3, v2}, Lgh/a;->l(I[I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 82
    .line 83
    invoke-virtual {v0}, Lgh/a;->g()V

    .line 84
    .line 85
    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iput v5, p0, Lgh/b;->d:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw p1

    .line 93
    :pswitch_2
    if-nez v0, :cond_8

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_3
    if-eq v0, v2, :cond_6

    .line 97
    .line 98
    iget v1, p0, Lgh/b;->m:I

    .line 99
    .line 100
    iget-object v2, p0, Lgh/b;->l:[I

    .line 101
    .line 102
    array-length v3, v2

    .line 103
    if-ge v1, v3, :cond_5

    .line 104
    .line 105
    add-int/lit8 v3, v1, 0x1

    .line 106
    .line 107
    iput v3, p0, Lgh/b;->m:I

    .line 108
    .line 109
    aput v0, v2, v1

    .line 110
    .line 111
    :cond_5
    iput v4, p0, Lgh/b;->d:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    const/16 v0, 0x9

    .line 115
    .line 116
    iput v0, p0, Lgh/b;->d:I

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_4
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 120
    .line 121
    monitor-enter v1

    .line 122
    :try_start_3
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Lgh/a;->k(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 128
    .line 129
    invoke-virtual {v0}, Lgh/a;->g()V

    .line 130
    .line 131
    .line 132
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    iput v5, p0, Lgh/b;->d:I

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :catchall_1
    move-exception p1

    .line 138
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    throw p1

    .line 140
    :pswitch_5
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 141
    .line 142
    monitor-enter v1

    .line 143
    :try_start_5
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 144
    .line 145
    invoke-virtual {v2, v0}, Lgh/a;->j(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 149
    .line 150
    invoke-virtual {v0}, Lgh/a;->g()V

    .line 151
    .line 152
    .line 153
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    iput v5, p0, Lgh/b;->d:I

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :catchall_2
    move-exception p1

    .line 159
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 160
    throw p1

    .line 161
    :pswitch_6
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 162
    .line 163
    monitor-enter v1

    .line 164
    :try_start_7
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Lgh/a;->n(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 170
    .line 171
    invoke-virtual {v0}, Lgh/a;->g()V

    .line 172
    .line 173
    .line 174
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 175
    iput v5, p0, Lgh/b;->d:I

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :catchall_3
    move-exception p1

    .line 180
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 181
    throw p1

    .line 182
    :pswitch_7
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 183
    .line 184
    monitor-enter v1

    .line 185
    :try_start_9
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Lgh/a;->m(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 191
    .line 192
    invoke-virtual {v0}, Lgh/a;->g()V

    .line 193
    .line 194
    .line 195
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 196
    iput v5, p0, Lgh/b;->d:I

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :catchall_4
    move-exception p1

    .line 201
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 202
    throw p1

    .line 203
    :pswitch_8
    if-eq v0, v3, :cond_7

    .line 204
    .line 205
    packed-switch v0, :pswitch_data_1

    .line 206
    .line 207
    .line 208
    iput v5, p0, Lgh/b;->d:I

    .line 209
    .line 210
    iget-object v0, p0, Lgh/b;->i:Lgh/a;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_9
    iput v5, p0, Lgh/b;->d:I

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :pswitch_a
    const/4 v0, 0x5

    .line 221
    iput v0, p0, Lgh/b;->d:I

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_b
    const/4 v0, 0x4

    .line 226
    iput v0, p0, Lgh/b;->d:I

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :pswitch_c
    const/4 v0, 0x3

    .line 231
    iput v0, p0, Lgh/b;->d:I

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_d
    const/4 v0, 0x2

    .line 236
    iput v0, p0, Lgh/b;->d:I

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :pswitch_e
    iput v5, p0, Lgh/b;->m:I

    .line 241
    .line 242
    iput v4, p0, Lgh/b;->d:I

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_7
    iput v5, p0, Lgh/b;->d:I

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_8
    :pswitch_f
    if-ne v0, v2, :cond_9

    .line 251
    .line 252
    const/4 v0, 0x1

    .line 253
    iput v0, p0, Lgh/b;->d:I

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_9
    const/16 p1, 0xd

    .line 258
    .line 259
    if-ne v0, p1, :cond_b

    .line 260
    .line 261
    iget-object p1, p0, Lgh/b;->i:Lgh/a;

    .line 262
    .line 263
    monitor-enter p1

    .line 264
    :try_start_b
    iget-object v1, p0, Lgh/b;->i:Lgh/a;

    .line 265
    .line 266
    invoke-virtual {v1, v5}, Lgh/a;->o(I)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_a

    .line 271
    .line 272
    const/16 v1, 0x8

    .line 273
    .line 274
    iput v1, p0, Lgh/b;->d:I

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :catchall_5
    move-exception v0

    .line 278
    goto :goto_3

    .line 279
    :cond_a
    iput v5, p0, Lgh/b;->d:I

    .line 280
    .line 281
    :goto_2
    monitor-exit p1

    .line 282
    goto :goto_4

    .line 283
    :goto_3
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 284
    throw v0

    .line 285
    :cond_b
    iput v5, p0, Lgh/b;->d:I

    .line 286
    .line 287
    :goto_4
    return v0

    .line 288
    :catchall_6
    move-exception p1

    .line 289
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 290
    goto :goto_6

    .line 291
    :goto_5
    throw p1

    .line 292
    :goto_6
    goto :goto_5

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :pswitch_data_1
    .packed-switch 0xfa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final available()I
    .locals 3

    .line 1
    iget-object v0, p0, Lgh/b;->h:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lgh/b;->n:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lgh/b;->g:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Lgh/b;->g:I

    .line 15
    .line 16
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method public final close()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lgh/b;->h:[I

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lgh/b;->a:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lgh/b;->b:Z

    .line 11
    .line 12
    iget-object v1, p0, Lgh/b;->j:Lfg/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lgh/b;->j:Lfg/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object v1, p0, Lgh/b;->h:[I

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final r(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lgh/b;->h:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lgh/b;->g:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget v4, p0, Lgh/b;->g:I

    .line 14
    .line 15
    iget-object v5, p0, Lgh/b;->h:[I

    .line 16
    .line 17
    array-length v5, v5

    .line 18
    sub-int/2addr v5, v3

    .line 19
    if-lt v4, v5, :cond_2

    .line 20
    .line 21
    iget-boolean v4, p0, Lgh/b;->n:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lgh/b;->h:[I

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object v4, p0, Lgh/b;->h:[I

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    :try_start_2
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "Queue is full! Cannot process another character."

    .line 43
    .line 44
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    iget-boolean v4, p0, Lgh/b;->c:Z

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    iget-boolean v4, p0, Lgh/b;->n:Z

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    iget-object v4, p0, Lgh/b;->h:[I

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v4, p0, Lgh/b;->h:[I

    .line 62
    .line 63
    iget v5, p0, Lgh/b;->f:I

    .line 64
    .line 65
    aput p1, v4, v5

    .line 66
    .line 67
    iget p1, p0, Lgh/b;->g:I

    .line 68
    .line 69
    add-int/2addr p1, v3

    .line 70
    iput p1, p0, Lgh/b;->g:I

    .line 71
    .line 72
    add-int/2addr v5, v3

    .line 73
    iput v5, p0, Lgh/b;->f:I

    .line 74
    .line 75
    array-length p1, v4

    .line 76
    if-lt v5, p1, :cond_4

    .line 77
    .line 78
    iput v2, p0, Lgh/b;->f:I

    .line 79
    .line 80
    :cond_4
    monitor-exit v0

    .line 81
    return v1

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    goto :goto_3

    .line 84
    :goto_2
    throw p1

    .line 85
    :goto_3
    goto :goto_2
.end method

.method public final read()I
    .locals 7

    .line 1
    iget-object v0, p0, Lgh/b;->h:[I

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgh/b;->k:Ljava/io/IOException;

    if-nez v1, :cond_9

    .line 3
    iget v1, p0, Lgh/b;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 4
    iget-boolean v1, p0, Lgh/b;->a:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    .line 6
    :cond_0
    iget-boolean v1, p0, Lgh/b;->n:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lgh/b;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iput-boolean v3, p0, Lgh/b;->c:Z

    .line 9
    iget-object v1, p0, Lgh/b;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 10
    iput-boolean v2, p0, Lgh/b;->c:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "Fatal thread interruption during read."

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    iput-boolean v3, p0, Lgh/b;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    .line 13
    :goto_1
    :try_start_3
    invoke-virtual {p0, v1}, Lgh/b;->A(Z)I

    move-result v1
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, -0x2

    if-gez v1, :cond_2

    if-eq v1, v5, :cond_2

    .line 14
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v1

    :cond_2
    if-eq v1, v5, :cond_3

    .line 15
    :try_start_5
    invoke-virtual {p0, v1}, Lgh/b;->r(I)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 16
    :catch_1
    :try_start_6
    iget-boolean v1, p0, Lgh/b;->b:Z

    if-eqz v1, :cond_3

    .line 17
    monitor-exit v0

    return v4

    .line 18
    :cond_3
    :goto_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Lgh/b;->g:I

    iget-object v5, p0, Lgh/b;->h:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v1, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 19
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lgh/b;->c:Z

    goto :goto_0

    :catch_2
    move-exception v1

    .line 20
    iget-object v2, p0, Lgh/b;->h:[I

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 21
    :try_start_7
    iput-object v1, p0, Lgh/b;->k:Ljava/io/IOException;

    .line 22
    iget-object v1, p0, Lgh/b;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 23
    :try_start_8
    iget-object v1, p0, Lgh/b;->h:[I

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    .line 24
    :catch_3
    :goto_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 25
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return v4

    .line 26
    :goto_5
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1

    .line 27
    :cond_6
    iget-object v4, p0, Lgh/b;->h:[I

    iget v5, p0, Lgh/b;->e:I

    aget v6, v4, v5

    add-int/2addr v5, v3

    .line 28
    iput v5, p0, Lgh/b;->e:I

    array-length v4, v4

    if-lt v5, v4, :cond_7

    .line 29
    iput v2, p0, Lgh/b;->e:I

    :cond_7
    sub-int/2addr v1, v3

    .line 30
    iput v1, p0, Lgh/b;->g:I

    if-nez v1, :cond_8

    .line 31
    iget-boolean v1, p0, Lgh/b;->n:Z

    if-eqz v1, :cond_8

    .line 32
    iget-object v1, p0, Lgh/b;->h:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 33
    :cond_8
    monitor-exit v0

    return v6

    :cond_9
    const/4 v2, 0x0

    .line 34
    iput-object v2, p0, Lgh/b;->k:Ljava/io/IOException;

    .line 35
    throw v1

    .line 36
    :goto_6
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public final read([B)I
    .locals 2

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgh/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 4

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    iget-object v0, p0, Lgh/b;->h:[I

    monitor-enter v0

    .line 39
    :try_start_0
    iget v1, p0, Lgh/b;->g:I

    if-le p3, v1, :cond_1

    move p3, v1

    .line 40
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0}, Lgh/b;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    .line 42
    aput-byte v0, p1, v2

    add-int/2addr p3, v1

    if-lez p3, :cond_4

    .line 43
    invoke-virtual {p0}, Lgh/b;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    sub-int/2addr v3, p2

    return v3

    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final run()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lgh/b;->b:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez v2, :cond_4

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0, v1}, Lgh/b;->A(Z)I

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    if-gez v2, :cond_1

    .line 12
    .line 13
    goto :goto_5

    .line 14
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Lgh/b;->r(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v2

    .line 20
    goto :goto_4

    .line 21
    :catch_1
    :try_start_3
    iget-boolean v2, p0, Lgh/b;->b:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    goto :goto_5

    .line 26
    :cond_2
    const/4 v2, 0x0

    .line 27
    :goto_1
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Lgh/a;->h()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 36
    .line 37
    .line 38
    goto :goto_5

    .line 39
    :catch_3
    move-exception v2

    .line 40
    iget-object v3, p0, Lgh/b;->h:[I

    .line 41
    .line 42
    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 43
    :try_start_4
    iput-object v2, p0, Lgh/b;->k:Ljava/io/IOException;

    .line 44
    .line 45
    iget-object v2, p0, Lgh/b;->h:[I

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_5
    iget-object v2, p0, Lgh/b;->h:[I

    .line 51
    .line 52
    const-wide/16 v4, 0x64

    .line 53
    .line 54
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v2

    .line 59
    goto :goto_3

    .line 60
    :catch_4
    :try_start_6
    iget-boolean v2, p0, Lgh/b;->b:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    monitor-exit v3

    .line 65
    goto :goto_5

    .line 66
    :cond_3
    :goto_2
    monitor-exit v3

    .line 67
    goto :goto_0

    .line 68
    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 70
    :goto_4
    iget-object v3, p0, Lgh/b;->h:[I

    .line 71
    .line 72
    monitor-enter v3

    .line 73
    :try_start_8
    iput-object v2, p0, Lgh/b;->k:Ljava/io/IOException;

    .line 74
    .line 75
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 76
    iget-object v2, p0, Lgh/b;->i:Lgh/a;

    .line 77
    .line 78
    invoke-virtual {v2}, Lgh/a;->h()V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_5
    iget-object v2, p0, Lgh/b;->h:[I

    .line 82
    .line 83
    monitor-enter v2

    .line 84
    :try_start_9
    iput-boolean v1, p0, Lgh/b;->b:Z

    .line 85
    .line 86
    iput-boolean v1, p0, Lgh/b;->a:Z

    .line 87
    .line 88
    iget-object v1, p0, Lgh/b;->h:[I

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 91
    .line 92
    .line 93
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 94
    iput-boolean v0, p0, Lgh/b;->n:Z

    .line 95
    .line 96
    return-void

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 99
    throw v0

    .line 100
    :catchall_2
    move-exception v0

    .line 101
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 102
    goto :goto_7

    .line 103
    :goto_6
    throw v0

    .line 104
    :goto_7
    goto :goto_6
.end method
