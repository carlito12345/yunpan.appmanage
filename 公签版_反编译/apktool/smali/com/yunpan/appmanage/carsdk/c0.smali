.class public final Lcom/yunpan/appmanage/carsdk/c0;
.super Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/carsdk/h0;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/c0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onKeyEvent(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/c0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/autolink/adapterinterface/IHardKeyCallback;->onKeyEvent(III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onKeyPressed(I)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "click"

    .line 4
    .line 5
    const-string v2, "longClick"

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v4, v3, Lcom/yunpan/appmanage/carsdk/c0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 10
    .line 11
    iget-object v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    invoke-interface {v5, v0}, Lcom/autolink/adapterinterface/IHardKeyCallback;->onKeyPressed(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_0
    iget v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    const/4 v8, -0x1

    .line 28
    const-string v9, "zhClick"

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    if-lez v5, :cond_2

    .line 32
    .line 33
    :try_start_1
    iget v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 34
    .line 35
    if-lez v5, :cond_2

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v11

    .line 41
    iget-wide v13, v4, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 42
    .line 43
    sub-long/2addr v11, v13

    .line 44
    const-wide/16 v13, 0x259

    .line 45
    .line 46
    cmp-long v5, v11, v13

    .line 47
    .line 48
    if-gez v5, :cond_2

    .line 49
    .line 50
    iget v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 51
    .line 52
    if-ne v5, v0, :cond_2

    .line 53
    .line 54
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v2, v4, Lcom/yunpan/appmanage/carsdk/h0;->z:Lcom/yunpan/appmanage/carsdk/b0;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v2, v4, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->x:Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 78
    .line 79
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 80
    .line 81
    iget v2, v4, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lz7/s;

    .line 92
    .line 93
    invoke-virtual {v1, v9}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 98
    .line 99
    .line 100
    iput v8, v4, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 101
    .line 102
    iput-wide v6, v4, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 103
    .line 104
    iput v10, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_2
    iget v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 111
    .line 112
    if-lez v5, :cond_3

    .line 113
    .line 114
    iput v10, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 115
    .line 116
    :cond_3
    iget-object v5, v4, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lz7/s;

    .line 127
    .line 128
    if-nez v5, :cond_4

    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    iget v11, v4, Lcom/yunpan/appmanage/carsdk/h0;->u:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .line 133
    const-string v12, "doubleClick"

    .line 134
    .line 135
    const-wide/16 v13, 0x12c

    .line 136
    .line 137
    if-ne v11, v0, :cond_5

    .line 138
    .line 139
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v15

    .line 143
    iget-wide v10, v4, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 144
    .line 145
    sub-long/2addr v15, v10

    .line 146
    cmp-long v10, v15, v13

    .line 147
    .line 148
    if-gez v10, :cond_5

    .line 149
    .line 150
    invoke-virtual {v5, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    iget-object v10, v10, Lz7/o;->a:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-nez v10, :cond_5

    .line 161
    .line 162
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 163
    .line 164
    iget-object v2, v4, Lcom/yunpan/appmanage/carsdk/h0;->z:Lcom/yunpan/appmanage/carsdk/b0;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 170
    .line 171
    iget-object v2, v4, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->x:Ljava/util/HashSet;

    .line 177
    .line 178
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 186
    .line 187
    invoke-virtual {v5, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 192
    .line 193
    .line 194
    iput v8, v4, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 195
    .line 196
    iput-wide v6, v4, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 197
    .line 198
    const/4 v6, 0x0

    .line 199
    iput v6, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 200
    .line 201
    return-void

    .line 202
    :cond_5
    const/4 v6, 0x0

    .line 203
    iput v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    iput-wide v7, v4, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 210
    .line 211
    const-string v0, "key2"

    .line 212
    .line 213
    invoke-virtual {v5, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iput v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 222
    .line 223
    if-lez v0, :cond_6

    .line 224
    .line 225
    invoke-virtual {v5, v9}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_6

    .line 236
    .line 237
    const/4 v10, 0x1

    .line 238
    goto :goto_0

    .line 239
    :cond_6
    const/4 v10, 0x0

    .line 240
    :goto_0
    invoke-virtual {v5, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    const-wide/16 v6, 0x258

    .line 251
    .line 252
    if-nez v0, :cond_8

    .line 253
    .line 254
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 255
    .line 256
    iget-object v8, v4, Lcom/yunpan/appmanage/carsdk/h0;->z:Lcom/yunpan/appmanage/carsdk/b0;

    .line 257
    .line 258
    if-eqz v10, :cond_7

    .line 259
    .line 260
    move-wide v13, v6

    .line 261
    :cond_7
    invoke-virtual {v0, v8, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    .line 263
    .line 264
    :cond_8
    invoke-virtual {v5, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_c

    .line 275
    .line 276
    if-eqz v10, :cond_9

    .line 277
    .line 278
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 279
    .line 280
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 281
    .line 282
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_9
    invoke-virtual {v5, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_a

    .line 297
    .line 298
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 299
    .line 300
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 301
    .line 302
    const-wide/16 v4, 0x12c

    .line 303
    .line 304
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_a
    invoke-virtual {v5, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_b

    .line 319
    .line 320
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 321
    .line 322
    iget-object v1, v4, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 323
    .line 324
    const-wide/16 v4, 0x12c

    .line 325
    .line 326
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_b
    iget-object v0, v4, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 331
    .line 332
    invoke-virtual {v5, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    :cond_c
    :goto_2
    return-void
.end method

.method public final onKeyReleased(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/c0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/autolink/adapterinterface/IHardKeyCallback;->onKeyReleased(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->x:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->x:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lz7/s;

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iget-object p1, v0, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->z:Lcom/yunpan/appmanage/carsdk/b0;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method
