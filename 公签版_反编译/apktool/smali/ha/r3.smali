.class public final Lha/r3;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/media/audiofx/LoudnessEnhancer;

.field public C:Lx9/w3;

.field public final D:Ljava/util/ArrayList;

.field public E:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public F:Landroid/media/AudioFocusRequest;

.field public G:Lha/m3;

.field public final g:Lha/h8;

.field public h:Landroid/widget/TextView;

.field public i:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public j:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public k:Landroid/media/MediaPlayer;

.field public l:Z

.field public m:Landroid/media/AudioTrack;

.field public final n:Ljava/util/concurrent/ExecutorService;

.field public p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public t:I

.field public v:I

.field public w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public x:Lx9/d0;

.field public y:Landroid/media/AudioManager;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0093

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/r3;->l:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lha/r3;->n:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lha/r3;->t:I

    .line 22
    .line 23
    iput p2, p0, Lha/r3;->v:I

    .line 24
    .line 25
    iput-object p1, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/r3;->D:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object p3, p0, Lha/r3;->g:Lha/h8;

    .line 35
    .line 36
    return-void
.end method

.method public static a(Lha/r3;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lha/r3;->x:Lx9/d0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v2, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_11

    .line 17
    .line 18
    :cond_0
    iget-object v0, v1, Lha/r3;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v3, "\u505c\u6b62"

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, -0x1

    .line 36
    const/4 v6, 0x1

    .line 37
    const/16 v7, 0x17

    .line 38
    .line 39
    const/16 v8, 0x64

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    if-eqz v0, :cond_7

    .line 43
    .line 44
    iget-object v0, v1, Lha/r3;->h:Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v2, "\u8bd5\u542c"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget v0, v1, Lha/r3;->t:I

    .line 52
    .line 53
    if-ltz v0, :cond_2

    .line 54
    .line 55
    iget v2, v1, Lha/r3;->v:I

    .line 56
    .line 57
    if-ltz v2, :cond_2

    .line 58
    .line 59
    if-lt v0, v8, :cond_1

    .line 60
    .line 61
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 62
    .line 63
    sub-int/2addr v0, v8

    .line 64
    invoke-virtual {v3, v0, v2}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v3, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 69
    .line 70
    invoke-virtual {v3, v0, v2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iput v5, v1, Lha/r3;->t:I

    .line 74
    .line 75
    iput v5, v1, Lha/r3;->v:I

    .line 76
    .line 77
    :cond_2
    iget-object v0, v1, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    :try_start_0
    invoke-virtual {v0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    iput-object v4, v1, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 85
    .line 86
    :cond_3
    iput-boolean v6, v1, Lha/r3;->l:Z

    .line 87
    .line 88
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    :catch_1
    :try_start_2
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    :catch_2
    iput-object v4, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    iput-object v4, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 105
    .line 106
    throw v0

    .line 107
    :cond_4
    :goto_1
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    :try_start_3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 112
    .line 113
    .line 114
    :catch_3
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    if-lt v0, v7, :cond_5

    .line 117
    .line 118
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 119
    .line 120
    invoke-virtual {v0, v4}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 121
    .line 122
    .line 123
    :catch_4
    :cond_5
    :try_start_5
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 126
    .line 127
    .line 128
    :catch_5
    :try_start_6
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    .line 132
    .line 133
    :catch_6
    iput-object v4, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    iput-object v4, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 138
    .line 139
    throw v0

    .line 140
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lha/r3;->c()V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_11

    .line 144
    .line 145
    :cond_7
    iget-object v0, v1, Lha/r3;->x:Lx9/d0;

    .line 146
    .line 147
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_8

    .line 152
    .line 153
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_11

    .line 157
    .line 158
    :cond_8
    iget-object v0, v1, Lha/r3;->x:Lx9/d0;

    .line 159
    .line 160
    invoke-virtual {v0, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lx9/w3;

    .line 165
    .line 166
    iput-object v0, v1, Lha/r3;->C:Lx9/w3;

    .line 167
    .line 168
    iget-boolean v0, v0, Lx9/w3;->c:Z

    .line 169
    .line 170
    if-eqz v0, :cond_f

    .line 171
    .line 172
    :try_start_7
    new-instance v0, Ljava/io/File;

    .line 173
    .line 174
    iget-object v2, v1, Lha/r3;->C:Lx9/w3;

    .line 175
    .line 176
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 185
    const-string v2, "\u6b64\u76ee\u5f55\u6ca1\u6709\u97f3\u9891\u6587\u4ef6"

    .line 186
    .line 187
    if-eqz v0, :cond_e

    .line 188
    .line 189
    :try_start_8
    array-length v10, v0

    .line 190
    if-nez v10, :cond_9

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    sub-int/2addr v0, v6

    .line 207
    :goto_3
    if-ltz v0, :cond_c

    .line 208
    .line 209
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    check-cast v11, Ljava/io/File;

    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-eqz v11, :cond_a

    .line 220
    .line 221
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, Ljava/io/File;

    .line 226
    .line 227
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    invoke-static {v11}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-nez v11, :cond_b

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catch_7
    move-exception v0

    .line 239
    goto :goto_6

    .line 240
    :cond_a
    :goto_4
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_d

    .line 251
    .line 252
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_11

    .line 256
    .line 257
    :cond_d
    new-instance v0, Lx9/w3;

    .line 258
    .line 259
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    invoke-virtual {v2, v9, v11}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Ljava/io/File;

    .line 276
    .line 277
    invoke-direct {v0, v2}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 278
    .line 279
    .line 280
    iput-object v0, v1, Lha/r3;->C:Lx9/w3;

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_e
    :goto_5
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 284
    .line 285
    .line 286
    goto/16 :goto_11

    .line 287
    .line 288
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    const-string v0, "\u65e0\u6cd5\u8bfb\u53d6\u6b64\u76ee\u5f55"

    .line 292
    .line 293
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_11

    .line 297
    .line 298
    :cond_f
    iget-object v0, v1, Lha/r3;->x:Lx9/d0;

    .line 299
    .line 300
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    iget-object v10, v1, Lha/r3;->x:Lx9/d0;

    .line 309
    .line 310
    invoke-virtual {v10}, Lc6/g;->b()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    invoke-virtual {v2, v9, v10}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lx9/w3;

    .line 323
    .line 324
    iput-object v0, v1, Lha/r3;->C:Lx9/w3;

    .line 325
    .line 326
    :goto_7
    iget-object v0, v1, Lha/r3;->h:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v1, Lha/r3;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 332
    .line 333
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 334
    .line 335
    if-eq v0, v5, :cond_12

    .line 336
    .line 337
    const/16 v2, 0x32

    .line 338
    .line 339
    if-le v0, v2, :cond_10

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    .line 344
    const/16 v3, 0x1a

    .line 345
    .line 346
    if-lt v2, v3, :cond_11

    .line 347
    .line 348
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    .line 349
    .line 350
    invoke-direct {v2, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 354
    .line 355
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 356
    .line 357
    .line 358
    const/16 v3, 0xc

    .line 359
    .line 360
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 369
    .line 370
    .line 371
    new-instance v0, Lha/m3;

    .line 372
    .line 373
    const/4 v3, 0x0

    .line 374
    invoke-direct {v0, v1, v3}, Lha/m3;-><init>(Lha/r3;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iput-object v0, v1, Lha/r3;->F:Landroid/media/AudioFocusRequest;

    .line 385
    .line 386
    iget-object v2, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 387
    .line 388
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eq v0, v6, :cond_12

    .line 393
    .line 394
    iput-object v4, v1, Lha/r3;->F:Landroid/media/AudioFocusRequest;

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_11
    new-instance v2, Lha/m3;

    .line 398
    .line 399
    const/4 v3, 0x1

    .line 400
    invoke-direct {v2, v1, v3}, Lha/m3;-><init>(Lha/r3;I)V

    .line 401
    .line 402
    .line 403
    iput-object v2, v1, Lha/r3;->G:Lha/m3;

    .line 404
    .line 405
    iget-object v3, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 406
    .line 407
    const/4 v10, 0x3

    .line 408
    invoke-virtual {v3, v2, v10, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eq v0, v6, :cond_12

    .line 413
    .line 414
    iput-object v4, v1, Lha/r3;->G:Lha/m3;

    .line 415
    .line 416
    :cond_12
    :goto_8
    iget-object v0, v1, Lha/r3;->C:Lx9/w3;

    .line 417
    .line 418
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const-string v2, ".pcm"

    .line 425
    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    const/16 v2, 0x15

    .line 431
    .line 432
    const/4 v3, 0x2

    .line 433
    if-eqz v0, :cond_1a

    .line 434
    .line 435
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 436
    .line 437
    if-nez v0, :cond_14

    .line 438
    .line 439
    const v12, 0xac44

    .line 440
    .line 441
    .line 442
    const/4 v0, 0x4

    .line 443
    invoke-static {v12, v0, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 444
    .line 445
    .line 446
    move-result v16

    .line 447
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 448
    .line 449
    if-lt v4, v2, :cond_13

    .line 450
    .line 451
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 452
    .line 453
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 454
    .line 455
    .line 456
    iget-object v4, v1, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 457
    .line 458
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 459
    .line 460
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 469
    .line 470
    .line 471
    move-result-object v14

    .line 472
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 473
    .line 474
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-virtual {v2, v12}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 490
    .line 491
    .line 492
    move-result-object v15

    .line 493
    new-instance v0, Landroid/media/AudioTrack;

    .line 494
    .line 495
    const/16 v17, 0x1

    .line 496
    .line 497
    const/16 v18, 0x0

    .line 498
    .line 499
    move-object v13, v0

    .line 500
    invoke-direct/range {v13 .. v18}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 501
    .line 502
    .line 503
    iput-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 504
    .line 505
    goto :goto_9

    .line 506
    :cond_13
    new-instance v0, Landroid/media/AudioTrack;

    .line 507
    .line 508
    iget-object v2, v1, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 509
    .line 510
    iget v11, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 511
    .line 512
    const/4 v13, 0x4

    .line 513
    const/4 v14, 0x2

    .line 514
    const/4 v2, 0x1

    .line 515
    move-object v10, v0

    .line 516
    move/from16 v15, v16

    .line 517
    .line 518
    move/from16 v16, v2

    .line 519
    .line 520
    invoke-direct/range {v10 .. v16}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 521
    .line 522
    .line 523
    iput-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 524
    .line 525
    :cond_14
    :goto_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 526
    .line 527
    if-lt v0, v7, :cond_16

    .line 528
    .line 529
    iget-object v0, v1, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 530
    .line 531
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 532
    .line 533
    if-eq v0, v5, :cond_16

    .line 534
    .line 535
    iget-object v0, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 536
    .line 537
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    array-length v2, v0

    .line 542
    const/4 v3, 0x0

    .line 543
    :goto_a
    if-ge v3, v2, :cond_16

    .line 544
    .line 545
    aget-object v4, v0, v3

    .line 546
    .line 547
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    iget-object v7, v1, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 552
    .line 553
    iget v7, v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 554
    .line 555
    if-ne v5, v7, :cond_15

    .line 556
    .line 557
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 558
    .line 559
    invoke-virtual {v0, v4}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 560
    .line 561
    .line 562
    goto :goto_b

    .line 563
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 564
    .line 565
    goto :goto_a

    .line 566
    :cond_16
    :goto_b
    iget-object v0, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 567
    .line 568
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 569
    .line 570
    .line 571
    iget-object v0, v1, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 572
    .line 573
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 574
    .line 575
    if-ltz v0, :cond_18

    .line 576
    .line 577
    iput v0, v1, Lha/r3;->t:I

    .line 578
    .line 579
    if-lt v0, v8, :cond_17

    .line 580
    .line 581
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 582
    .line 583
    sub-int/2addr v0, v8

    .line 584
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    iput v0, v1, Lha/r3;->v:I

    .line 589
    .line 590
    iget-object v0, v1, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 591
    .line 592
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 593
    .line 594
    sub-int/2addr v0, v8

    .line 595
    iget-object v3, v1, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 596
    .line 597
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    invoke-virtual {v2, v0, v3}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 602
    .line 603
    .line 604
    goto :goto_c

    .line 605
    :cond_17
    iget-object v2, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 606
    .line 607
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    iput v0, v1, Lha/r3;->v:I

    .line 612
    .line 613
    iget-object v0, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 614
    .line 615
    iget-object v2, v1, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 616
    .line 617
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 618
    .line 619
    iget-object v3, v1, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 620
    .line 621
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    invoke-virtual {v0, v2, v3, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 626
    .line 627
    .line 628
    :cond_18
    :goto_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 629
    .line 630
    const/16 v2, 0x13

    .line 631
    .line 632
    if-lt v0, v2, :cond_19

    .line 633
    .line 634
    iget-object v0, v1, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 635
    .line 636
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-lez v0, :cond_19

    .line 641
    .line 642
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    .line 643
    .line 644
    iget-object v2, v1, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 645
    .line 646
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    invoke-direct {v0, v2}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 651
    .line 652
    .line 653
    iput-object v0, v1, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 654
    .line 655
    iget-object v2, v1, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 656
    .line 657
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    mul-int/lit8 v2, v2, 0x64

    .line 662
    .line 663
    invoke-virtual {v0, v2}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 664
    .line 665
    .line 666
    iget-object v0, v1, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 667
    .line 668
    invoke-virtual {v0, v6}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 669
    .line 670
    .line 671
    :cond_19
    iput-boolean v9, v1, Lha/r3;->l:Z

    .line 672
    .line 673
    new-instance v0, Lha/n3;

    .line 674
    .line 675
    const/4 v2, 0x1

    .line 676
    invoke-direct {v0, v1, v2}, Lha/n3;-><init>(Lha/r3;I)V

    .line 677
    .line 678
    .line 679
    iget-object v1, v1, Lha/r3;->n:Ljava/util/concurrent/ExecutorService;

    .line 680
    .line 681
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 682
    .line 683
    .line 684
    goto/16 :goto_11

    .line 685
    .line 686
    :cond_1a
    new-instance v0, Landroid/media/MediaPlayer;

    .line 687
    .line 688
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 689
    .line 690
    .line 691
    iput-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 692
    .line 693
    :try_start_9
    sget-object v6, Lwa/t;->a:Lwa/u;

    .line 694
    .line 695
    iget-object v6, v6, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 696
    .line 697
    new-instance v7, Ljava/io/File;

    .line 698
    .line 699
    iget-object v8, v1, Lha/r3;->C:Lx9/w3;

    .line 700
    .line 701
    iget-object v8, v8, Lx9/w3;->b:Ljava/lang/String;

    .line 702
    .line 703
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 707
    .line 708
    .line 709
    move-result-object v7

    .line 710
    invoke-virtual {v0, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 711
    .line 712
    .line 713
    goto :goto_d

    .line 714
    :catch_8
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 715
    .line 716
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 717
    .line 718
    .line 719
    iput-object v4, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 720
    .line 721
    invoke-virtual/range {p0 .. p0}, Lha/r3;->c()V

    .line 722
    .line 723
    .line 724
    :goto_d
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 725
    .line 726
    if-eqz v0, :cond_1f

    .line 727
    .line 728
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 729
    .line 730
    if-lt v4, v2, :cond_1c

    .line 731
    .line 732
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 733
    .line 734
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 735
    .line 736
    .line 737
    iget-object v2, v1, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 738
    .line 739
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 740
    .line 741
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 745
    .line 746
    .line 747
    const/16 v2, 0x1d

    .line 748
    .line 749
    if-lt v4, v2, :cond_1b

    .line 750
    .line 751
    invoke-static {v0}, Lh4/e0;->n(Landroid/media/AudioAttributes$Builder;)V

    .line 752
    .line 753
    .line 754
    :cond_1b
    iget-object v2, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 755
    .line 756
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 761
    .line 762
    .line 763
    goto :goto_e

    .line 764
    :cond_1c
    iget-object v2, v1, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 765
    .line 766
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 767
    .line 768
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 769
    .line 770
    .line 771
    :goto_e
    const/16 v0, 0x1c

    .line 772
    .line 773
    if-lt v4, v0, :cond_1e

    .line 774
    .line 775
    iget-object v0, v1, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 776
    .line 777
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 778
    .line 779
    if-eq v0, v5, :cond_1e

    .line 780
    .line 781
    iget-object v0, v1, Lha/r3;->y:Landroid/media/AudioManager;

    .line 782
    .line 783
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    array-length v2, v0

    .line 788
    :goto_f
    if-ge v9, v2, :cond_1e

    .line 789
    .line 790
    aget-object v3, v0, v9

    .line 791
    .line 792
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    iget-object v5, v1, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 797
    .line 798
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 799
    .line 800
    if-ne v4, v5, :cond_1d

    .line 801
    .line 802
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 803
    .line 804
    invoke-static {v0, v3}, Landroidx/emoji2/text/b;->w(Landroid/media/MediaPlayer;Landroid/media/AudioDeviceInfo;)V

    .line 805
    .line 806
    .line 807
    goto :goto_10

    .line 808
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    .line 809
    .line 810
    goto :goto_f

    .line 811
    :cond_1e
    :goto_10
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 812
    .line 813
    new-instance v2, Lha/e3;

    .line 814
    .line 815
    const/4 v3, 0x1

    .line 816
    invoke-direct {v2, v1, v3}, Lha/e3;-><init>(Lha/a4;I)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 820
    .line 821
    .line 822
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 823
    .line 824
    new-instance v2, Lha/f3;

    .line 825
    .line 826
    invoke-direct {v2, v1, v3}, Lha/f3;-><init>(Lha/a4;I)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 830
    .line 831
    .line 832
    iget-object v0, v1, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 833
    .line 834
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 835
    .line 836
    .line 837
    :cond_1f
    :goto_11
    return-void
.end method

.method public static b(Lha/r3;Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    .line 18
    .line 19
    iget-object v1, p0, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {v0, v1}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 29
    .line 30
    iget-object v1, p0, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    mul-int/lit8 v1, v1, 0x64

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 48
    .line 49
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-ltz v0, :cond_2

    .line 53
    .line 54
    iput v0, p0, Lha/r3;->t:I

    .line 55
    .line 56
    if-lt v0, v2, :cond_1

    .line 57
    .line 58
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 59
    .line 60
    sub-int/2addr v0, v2

    .line 61
    invoke-virtual {v3, v0}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lha/r3;->v:I

    .line 66
    .line 67
    iget v0, p0, Lha/r3;->t:I

    .line 68
    .line 69
    sub-int/2addr v0, v2

    .line 70
    iget-object v4, p0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v3, v0, v4}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v3, p0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lha/r3;->v:I

    .line 87
    .line 88
    iget-object v0, p0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 89
    .line 90
    iget-object v3, p0, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 91
    .line 92
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 93
    .line 94
    iget-object v4, p0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v3, "\u62a5\u9519\uff1a"

    .line 111
    .line 112
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget p1, p0, Lha/r3;->t:I

    .line 130
    .line 131
    if-ltz p1, :cond_4

    .line 132
    .line 133
    iget p1, p0, Lha/r3;->v:I

    .line 134
    .line 135
    if-ltz p1, :cond_4

    .line 136
    .line 137
    iget v0, p0, Lha/r3;->t:I

    .line 138
    .line 139
    if-lt v0, v2, :cond_3

    .line 140
    .line 141
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 142
    .line 143
    sub-int/2addr v0, v2

    .line 144
    invoke-virtual {v1, v0, p1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    iget-object v2, p0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 149
    .line 150
    invoke-virtual {v2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 151
    .line 152
    .line 153
    :goto_1
    const/4 p1, -0x1

    .line 154
    iput p1, p0, Lha/r3;->t:I

    .line 155
    .line 156
    iput p1, p0, Lha/r3;->v:I

    .line 157
    .line 158
    :cond_4
    iget-object p1, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    :try_start_1
    invoke-virtual {p1}, Landroid/media/audiofx/LoudnessEnhancer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    .line 166
    :catch_1
    iput-object v0, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 167
    .line 168
    :cond_5
    iget-object p1, p0, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 174
    .line 175
    invoke-virtual {p0}, Lha/r3;->c()V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lha/r3;->h:Landroid/widget/TextView;

    .line 179
    .line 180
    const-string p1, "\u8bd5\u542c\u64ad\u653e"

    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    :goto_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "audio"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/media/AudioManager;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lha/r3;->F:Landroid/media/AudioFocusRequest;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0, v1}, Leg/a;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lha/r3;->F:Landroid/media/AudioFocusRequest;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lha/r3;->G:Lha/m3;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lha/r3;->G:Lha/m3;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget v0, p0, Lha/r3;->v:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lha/r3;->t:I

    .line 6
    .line 7
    if-ltz v1, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    invoke-virtual {v3, v1, v0}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :try_start_0
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    iput-object v1, p0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_1
    nop

    .line 45
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lha/r3;->l:Z

    .line 47
    .line 48
    iget-object v0, p0, Lha/r3;->n:Ljava/util/concurrent/ExecutorService;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    .line 59
    .line 60
    :catch_2
    :try_start_3
    iget-object v0, p0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 63
    .line 64
    .line 65
    :catch_3
    :try_start_4
    iget-object v0, p0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 68
    .line 69
    .line 70
    :catch_4
    :try_start_5
    iget-object v0, p0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 73
    .line 74
    .line 75
    :catch_5
    :cond_4
    invoke-virtual {p0}, Lha/r3;->c()V

    .line 76
    .line 77
    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/16 v2, 0x64

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 11
    .line 12
    const-string v5, "audio"

    .line 13
    .line 14
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Landroid/media/AudioManager;

    .line 19
    .line 20
    iput-object v5, p0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 21
    .line 22
    new-instance v5, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v7, 0x15

    .line 30
    .line 31
    const-string v8, "\u901a\u9053"

    .line 32
    .line 33
    if-lt v6, v7, :cond_0

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_0
    const/16 v9, 0x65

    .line 37
    .line 38
    if-ge v6, v9, :cond_1

    .line 39
    .line 40
    :try_start_0
    new-instance v9, Landroid/media/AudioAttributes$Builder;

    .line 41
    .line 42
    invoke-direct {v9}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 49
    .line 50
    invoke-static {v6, v8}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-direct {v9, v10, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :catch_0
    add-int/2addr v6, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v6, 0x0

    .line 63
    :goto_1
    const/16 v9, 0x10

    .line 64
    .line 65
    if-ge v6, v9, :cond_1

    .line 66
    .line 67
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 68
    .line 69
    invoke-static {v6, v8}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-direct {v9, v10, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/2addr v6, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    if-lt v6, v7, :cond_2

    .line 84
    .line 85
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 86
    .line 87
    const-string v9, "\u901a\u90531"

    .line 88
    .line 89
    invoke-direct {v8, v9, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iput-object v8, p0, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 96
    .line 97
    const-string v9, "\u901a\u90533"

    .line 98
    .line 99
    invoke-direct {v8, v9, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    iput-object v8, p0, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 103
    .line 104
    :goto_2
    const v8, 0x7f0b05f9

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object v9, p0, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 114
    .line 115
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    const v9, 0x7f0b05f8

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    new-instance v10, Lha/k3;

    .line 128
    .line 129
    invoke-direct {v10, p0, v5, v8, v1}, Lha/k3;-><init>(Lha/r3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    new-instance v5, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 141
    .line 142
    const-string v9, "\u65e0"

    .line 143
    .line 144
    const/4 v10, -0x1

    .line 145
    invoke-direct {v8, v9, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 152
    .line 153
    const-string v9, "\u64ad\u653e\u65f6\u964d\u4f4e\u5176\u5b83\u97f3\u91cf"

    .line 154
    .line 155
    invoke-direct {v8, v9, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 162
    .line 163
    const-string v9, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u9891"

    .line 164
    .line 165
    const/4 v11, 0x2

    .line 166
    invoke-direct {v8, v9, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    iput-object v8, p0, Lha/r3;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 170
    .line 171
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    if-lt v6, v7, :cond_4

    .line 175
    .line 176
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 177
    .line 178
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 179
    .line 180
    iget-boolean v7, v7, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 181
    .line 182
    if-nez v7, :cond_3

    .line 183
    .line 184
    const-class v7, Lcom/yunpan/appmanage/service/StartService;

    .line 185
    .line 186
    invoke-static {p1, v7}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_4

    .line 191
    .line 192
    :cond_3
    const-string v7, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u4e50app\u97f3\u9891(\u667a)"

    .line 193
    .line 194
    const/16 v8, 0xc8

    .line 195
    .line 196
    invoke-static {v7, v8, v5}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    const v7, 0x7f0b0619

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Landroid/widget/TextView;

    .line 207
    .line 208
    iget-object v8, p0, Lha/r3;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 209
    .line 210
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    const v8, 0x7f0b0618

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    new-instance v9, Lha/k3;

    .line 223
    .line 224
    invoke-direct {v9, p0, v5, v7, v4}, Lha/k3;-><init>(Lha/r3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    new-instance v5, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 236
    .line 237
    const-string v8, "\u4e0d\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 238
    .line 239
    invoke-direct {v7, v8, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    iput-object v7, p0, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 243
    .line 244
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 248
    .line 249
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u8bdd\u97f3\u91cf)"

    .line 250
    .line 251
    invoke-direct {v7, v8, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 258
    .line 259
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u7cfb\u7edf\u97f3\u91cf)"

    .line 260
    .line 261
    invoke-direct {v7, v8, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 268
    .line 269
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u94c3\u58f0\u97f3\u91cf)"

    .line 270
    .line 271
    invoke-direct {v7, v8, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 278
    .line 279
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u5a92\u4f53\u97f3\u91cf)"

    .line 280
    .line 281
    invoke-direct {v7, v8, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 288
    .line 289
    const-string v7, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u95f9\u949f\u97f3\u91cf)"

    .line 290
    .line 291
    const/4 v8, 0x4

    .line 292
    invoke-direct {v1, v7, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 299
    .line 300
    const-string v7, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u77e5\u97f3\u91cf)"

    .line 301
    .line 302
    invoke-direct {v1, v7, v0}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 309
    .line 310
    const-string v7, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(MF\u97f3\u91cf)"

    .line 311
    .line 312
    const/16 v8, 0x8

    .line 313
    .line 314
    invoke-direct {v1, v7, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const/16 v1, 0x1a

    .line 321
    .line 322
    if-lt v6, v1, :cond_5

    .line 323
    .line 324
    const-string v7, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(ACC\u97f3\u91cf)"

    .line 325
    .line 326
    const/16 v8, 0xa

    .line 327
    .line 328
    invoke-static {v7, v8, v5}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 329
    .line 330
    .line 331
    :cond_5
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 332
    .line 333
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(6)"

    .line 334
    .line 335
    const/4 v9, 0x6

    .line 336
    invoke-direct {v7, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 343
    .line 344
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(7)"

    .line 345
    .line 346
    const/4 v9, 0x7

    .line 347
    invoke-direct {v7, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 354
    .line 355
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(9)"

    .line 356
    .line 357
    const/16 v9, 0x9

    .line 358
    .line 359
    invoke-direct {v7, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 366
    .line 367
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(11)"

    .line 368
    .line 369
    const/16 v9, 0xb

    .line 370
    .line 371
    invoke-direct {v7, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    if-lt v6, v1, :cond_7

    .line 378
    .line 379
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 382
    .line 383
    if-eqz v1, :cond_7

    .line 384
    .line 385
    const/4 v1, 0x0

    .line 386
    :goto_3
    const/16 v6, 0x20

    .line 387
    .line 388
    if-ge v1, v6, :cond_7

    .line 389
    .line 390
    :try_start_1
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 391
    .line 392
    add-int/lit8 v7, v1, -0x64

    .line 393
    .line 394
    invoke-virtual {v6, v7}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    if-lez v6, :cond_6

    .line 399
    .line 400
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 401
    .line 402
    const-string v7, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(Car\u901a\u90530)"

    .line 403
    .line 404
    add-int/lit8 v8, v1, 0x64

    .line 405
    .line 406
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    .line 411
    .line 412
    :cond_6
    add-int/2addr v1, v4

    .line 413
    goto :goto_3

    .line 414
    :catch_1
    :cond_7
    const v1, 0x7f0b05fc

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Landroid/widget/TextView;

    .line 422
    .line 423
    iget-object v6, p0, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 424
    .line 425
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    const v6, 0x7f0b05fb

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    new-instance v7, Lha/k3;

    .line 438
    .line 439
    invoke-direct {v7, p0, v5, v1, v3}, Lha/k3;-><init>(Lha/r3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 446
    .line 447
    const-string v5, "\u9ed8\u8ba4"

    .line 448
    .line 449
    invoke-direct {v1, v5, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    iput-object v1, p0, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 453
    .line 454
    iget-object v5, p0, Lha/r3;->D:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 460
    .line 461
    const/16 v6, 0x17

    .line 462
    .line 463
    if-lt v1, v6, :cond_8

    .line 464
    .line 465
    :try_start_2
    iget-object v1, p0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 466
    .line 467
    invoke-static {v1}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    array-length v6, v1

    .line 472
    const/4 v7, 0x0

    .line 473
    :goto_4
    if-ge v7, v6, :cond_8

    .line 474
    .line 475
    aget-object v8, v1, v7

    .line 476
    .line 477
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 478
    .line 479
    new-instance v10, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-static {v8}, Ld2/c;->j(Landroid/media/AudioDeviceInfo;)Ljava/lang/CharSequence;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v11, "("

    .line 492
    .line 493
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-static {v8}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v11, ")"

    .line 504
    .line 505
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v10

    .line 512
    invoke-static {v8}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    invoke-direct {v9, v10, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    .line 521
    .line 522
    add-int/2addr v7, v4

    .line 523
    goto :goto_4

    .line 524
    :catch_2
    :cond_8
    const v1, 0x7f0b0571

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 532
    .line 533
    iput-object v1, p0, Lha/r3;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 534
    .line 535
    const v1, 0x7f0b0572

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    check-cast v1, Landroid/widget/TextView;

    .line 543
    .line 544
    iget-object v5, p0, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 545
    .line 546
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    .line 550
    .line 551
    iget-object v5, p0, Lha/r3;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 552
    .line 553
    new-instance v6, Lc6/c;

    .line 554
    .line 555
    invoke-direct {v6, p0, v0, v1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    .line 560
    .line 561
    const v0, 0x7f0b060f

    .line 562
    .line 563
    .line 564
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    check-cast v0, Landroid/widget/TextView;

    .line 569
    .line 570
    iput-object v0, p0, Lha/r3;->z:Landroid/widget/TextView;

    .line 571
    .line 572
    const v0, 0x7f0b0560

    .line 573
    .line 574
    .line 575
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 580
    .line 581
    iput-object v0, p0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 582
    .line 583
    new-instance v1, Lha/q3;

    .line 584
    .line 585
    invoke-direct {v1, p0, v3}, Lha/q3;-><init>(Lha/r3;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 589
    .line 590
    .line 591
    iget-object v0, p0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 592
    .line 593
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 594
    .line 595
    .line 596
    iget-object v0, p0, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 597
    .line 598
    const/16 v1, 0x50

    .line 599
    .line 600
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 601
    .line 602
    .line 603
    const v0, 0x7f0b0490

    .line 604
    .line 605
    .line 606
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Landroid/widget/TextView;

    .line 611
    .line 612
    iput-object v0, p0, Lha/r3;->A:Landroid/widget/TextView;

    .line 613
    .line 614
    const v0, 0x7f0b0561

    .line 615
    .line 616
    .line 617
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 622
    .line 623
    iput-object v0, p0, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 626
    .line 627
    .line 628
    iget-object v0, p0, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 629
    .line 630
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 631
    .line 632
    .line 633
    iget-object v0, p0, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 634
    .line 635
    new-instance v1, Lha/q3;

    .line 636
    .line 637
    invoke-direct {v1, p0, v4}, Lha/q3;-><init>(Lha/r3;I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 641
    .line 642
    .line 643
    const v0, 0x7f0b03f2

    .line 644
    .line 645
    .line 646
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    check-cast v0, Landroid/widget/TextView;

    .line 651
    .line 652
    new-instance v1, Ljava/util/ArrayList;

    .line 653
    .line 654
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .line 656
    .line 657
    const-string v2, "\u9009\u62e9\u6587\u4ef6\u5939"

    .line 658
    .line 659
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    const-string v2, "\u9009\u62e9\u97f3\u9891\u6587\u4ef6"

    .line 663
    .line 664
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    const-string v2, "\u9009\u62e9\u666e\u901a\u6587\u4ef6"

    .line 668
    .line 669
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    new-instance v2, Lha/k3;

    .line 673
    .line 674
    invoke-direct {v2, p0, v0, v1}, Lha/k3;-><init>(Lha/r3;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    .line 679
    .line 680
    const v0, 0x7f0b03f3

    .line 681
    .line 682
    .line 683
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    new-instance v1, Lha/p3;

    .line 688
    .line 689
    invoke-direct {v1, p0, v3}, Lha/p3;-><init>(Lha/r3;I)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    .line 694
    .line 695
    const v0, 0x7f0b04f1

    .line 696
    .line 697
    .line 698
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 703
    .line 704
    iput-object v0, p0, Lha/r3;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 705
    .line 706
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 707
    .line 708
    invoke-direct {v1, p1, v4, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 712
    .line 713
    .line 714
    new-instance p1, Lx9/d0;

    .line 715
    .line 716
    invoke-direct {p1}, Lx9/d0;-><init>()V

    .line 717
    .line 718
    .line 719
    iput-object p1, p0, Lha/r3;->x:Lx9/d0;

    .line 720
    .line 721
    iget-object v0, p0, Lha/r3;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 722
    .line 723
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 724
    .line 725
    .line 726
    iget-object p1, p0, Lha/r3;->x:Lx9/d0;

    .line 727
    .line 728
    new-instance v0, Lha/o3;

    .line 729
    .line 730
    invoke-direct {v0, p0}, Lha/o3;-><init>(Lha/r3;)V

    .line 731
    .line 732
    .line 733
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 734
    .line 735
    const p1, 0x7f0b0359

    .line 736
    .line 737
    .line 738
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    check-cast p1, Landroid/widget/TextView;

    .line 743
    .line 744
    iput-object p1, p0, Lha/r3;->h:Landroid/widget/TextView;

    .line 745
    .line 746
    new-instance v0, Lha/p3;

    .line 747
    .line 748
    invoke-direct {v0, p0, v4}, Lha/p3;-><init>(Lha/r3;I)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    .line 753
    .line 754
    return-void
.end method
