.class public final Lha/j3;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public A:Landroid/media/AudioManager;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/media/audiofx/LoudnessEnhancer;

.field public final E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final F:Ljava/util/ArrayList;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H:Landroid/media/AudioFocusRequest;

.field public I:Lha/c3;

.field public final g:Lha/i3;

.field public h:Lx9/w3;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public n:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public p:Landroid/media/MediaPlayer;

.field public q:Z

.field public r:Landroid/media/AudioTrack;

.field public final s:Ljava/util/concurrent/ExecutorService;

.field public t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/i3;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0092

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/j3;->q:Z

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lha/j3;->s:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lha/j3;->y:I

    .line 22
    .line 23
    iput v0, p0, Lha/j3;->z:I

    .line 24
    .line 25
    iput-object p2, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 26
    .line 27
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lha/j3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lha/j3;->F:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object p3, p0, Lha/j3;->g:Lha/i3;

    .line 42
    .line 43
    return-void
.end method

.method public static a(Lha/j3;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lha/j3;->h:Lx9/w3;

    .line 4
    .line 5
    const-string v2, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_b

    .line 13
    .line 14
    :cond_0
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "\u505c\u6b62"

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    const/16 v5, 0x17

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    const-string v7, "\u8bd5\u542c\u64ad\u653e"

    .line 36
    .line 37
    const/16 v8, 0x64

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget v0, v1, Lha/j3;->y:I

    .line 48
    .line 49
    if-ltz v0, :cond_2

    .line 50
    .line 51
    iget v2, v1, Lha/j3;->z:I

    .line 52
    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    if-lt v0, v8, :cond_1

    .line 56
    .line 57
    sget-object v7, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 58
    .line 59
    sub-int/2addr v0, v8

    .line 60
    invoke-virtual {v7, v0, v2}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v7, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 65
    .line 66
    invoke-virtual {v7, v0, v2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput v6, v1, Lha/j3;->y:I

    .line 70
    .line 71
    iput v6, v1, Lha/j3;->z:I

    .line 72
    .line 73
    :cond_2
    iput-boolean v4, v1, Lha/j3;->q:Z

    .line 74
    .line 75
    iget-object v0, v1, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    :try_start_0
    invoke-virtual {v0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    :catch_0
    iput-object v3, v1, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 83
    .line 84
    :cond_3
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    :catch_1
    :try_start_2
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    :catch_2
    iput-object v3, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    iput-object v3, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    :goto_1
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    if-lt v2, v5, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 117
    .line 118
    .line 119
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    .line 123
    .line 124
    :catch_3
    :try_start_4
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    .line 128
    .line 129
    :catch_4
    iput-object v3, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    iput-object v3, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 134
    .line 135
    throw v0

    .line 136
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lha/j3;->c()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_b

    .line 140
    .line 141
    :cond_7
    iget-object v0, v1, Lha/j3;->h:Lx9/w3;

    .line 142
    .line 143
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 144
    .line 145
    if-nez v0, :cond_8

    .line 146
    .line 147
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_b

    .line 151
    .line 152
    :cond_8
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 153
    .line 154
    const-string v2, "\u505c\u6b62\u8bd5\u542c"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v1, Lha/j3;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 160
    .line 161
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 162
    .line 163
    if-eq v0, v6, :cond_b

    .line 164
    .line 165
    const/16 v2, 0x32

    .line 166
    .line 167
    if-le v0, v2, :cond_9

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 171
    .line 172
    const/16 v10, 0x1a

    .line 173
    .line 174
    if-lt v2, v10, :cond_a

    .line 175
    .line 176
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    .line 177
    .line 178
    invoke-direct {v2, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 182
    .line 183
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 184
    .line 185
    .line 186
    const/16 v10, 0xc

    .line 187
    .line 188
    invoke-virtual {v0, v10}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 197
    .line 198
    .line 199
    new-instance v0, Lha/c3;

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    invoke-direct {v0, v1, v10}, Lha/c3;-><init>(Lha/j3;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v0, v1, Lha/j3;->H:Landroid/media/AudioFocusRequest;

    .line 213
    .line 214
    iget-object v2, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 215
    .line 216
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eq v0, v4, :cond_b

    .line 221
    .line 222
    iput-object v3, v1, Lha/j3;->H:Landroid/media/AudioFocusRequest;

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_a
    new-instance v2, Lha/c3;

    .line 226
    .line 227
    const/4 v10, 0x1

    .line 228
    invoke-direct {v2, v1, v10}, Lha/c3;-><init>(Lha/j3;I)V

    .line 229
    .line 230
    .line 231
    iput-object v2, v1, Lha/j3;->I:Lha/c3;

    .line 232
    .line 233
    iget-object v10, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 234
    .line 235
    const/4 v11, 0x5

    .line 236
    invoke-virtual {v10, v2, v11, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eq v0, v4, :cond_b

    .line 241
    .line 242
    iput-object v3, v1, Lha/j3;->I:Lha/c3;

    .line 243
    .line 244
    :cond_b
    :goto_3
    iget-object v0, v1, Lha/j3;->h:Lx9/w3;

    .line 245
    .line 246
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, ".pcm"

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    const-string v2, "\u62a5\u9519\uff1a"

    .line 259
    .line 260
    const-string v10, "\u8b66\u544a\uff1a\u7cfb\u7edf\u4e0d\u652f\u6301\u6b64\u901a\u9053"

    .line 261
    .line 262
    const/16 v11, 0x15

    .line 263
    .line 264
    const/4 v12, 0x2

    .line 265
    if-eqz v0, :cond_13

    .line 266
    .line 267
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 268
    .line 269
    if-nez v0, :cond_d

    .line 270
    .line 271
    const v15, 0xac44

    .line 272
    .line 273
    .line 274
    const/4 v0, 0x4

    .line 275
    invoke-static {v15, v0, v12}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 276
    .line 277
    .line 278
    move-result v19

    .line 279
    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 280
    .line 281
    if-lt v3, v11, :cond_c

    .line 282
    .line 283
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 284
    .line 285
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 286
    .line 287
    .line 288
    iget-object v11, v1, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 289
    .line 290
    iget v11, v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 291
    .line 292
    invoke-virtual {v3, v11}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3, v12}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 301
    .line 302
    .line 303
    move-result-object v17

    .line 304
    new-instance v3, Landroid/media/AudioFormat$Builder;

    .line 305
    .line 306
    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v12}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v3, v15}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 322
    .line 323
    .line 324
    move-result-object v18

    .line 325
    new-instance v0, Landroid/media/AudioTrack;

    .line 326
    .line 327
    const/16 v20, 0x1

    .line 328
    .line 329
    const/16 v21, 0x0

    .line 330
    .line 331
    move-object/from16 v16, v0

    .line 332
    .line 333
    invoke-direct/range {v16 .. v21}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 334
    .line 335
    .line 336
    iput-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 337
    .line 338
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    invoke-virtual {v0, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 343
    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_c
    new-instance v0, Landroid/media/AudioTrack;

    .line 347
    .line 348
    iget-object v3, v1, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 349
    .line 350
    iget v14, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 351
    .line 352
    const/16 v16, 0x4

    .line 353
    .line 354
    const/16 v17, 0x2

    .line 355
    .line 356
    const/4 v3, 0x1

    .line 357
    move-object v13, v0

    .line 358
    move/from16 v18, v19

    .line 359
    .line 360
    move/from16 v19, v3

    .line 361
    .line 362
    invoke-direct/range {v13 .. v19}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 363
    .line 364
    .line 365
    iput-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :catch_5
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 372
    .line 373
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Lha/j3;->c()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_b

    .line 380
    .line 381
    :cond_d
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 382
    .line 383
    if-lt v0, v5, :cond_f

    .line 384
    .line 385
    iget-object v0, v1, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 386
    .line 387
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 388
    .line 389
    if-eq v0, v6, :cond_f

    .line 390
    .line 391
    iget-object v0, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 392
    .line 393
    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    array-length v3, v0

    .line 398
    const/4 v5, 0x0

    .line 399
    :goto_5
    if-ge v5, v3, :cond_f

    .line 400
    .line 401
    aget-object v6, v0, v5

    .line 402
    .line 403
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    iget-object v11, v1, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 408
    .line 409
    iget v11, v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 410
    .line 411
    if-ne v10, v11, :cond_e

    .line 412
    .line 413
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 414
    .line 415
    invoke-virtual {v0, v6}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 420
    .line 421
    goto :goto_5

    .line 422
    :cond_f
    :goto_6
    :try_start_6
    iget-object v0, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 423
    .line 424
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    .line 425
    .line 426
    .line 427
    iget-object v0, v1, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 428
    .line 429
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 430
    .line 431
    if-ltz v0, :cond_11

    .line 432
    .line 433
    iput v0, v1, Lha/j3;->y:I

    .line 434
    .line 435
    if-lt v0, v8, :cond_10

    .line 436
    .line 437
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 438
    .line 439
    sub-int/2addr v0, v8

    .line 440
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    iput v0, v1, Lha/j3;->z:I

    .line 445
    .line 446
    iget-object v0, v1, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 447
    .line 448
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 449
    .line 450
    sub-int/2addr v0, v8

    .line 451
    iget-object v3, v1, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 452
    .line 453
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    invoke-virtual {v2, v0, v3}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 458
    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_10
    iget-object v2, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 462
    .line 463
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    iput v0, v1, Lha/j3;->z:I

    .line 468
    .line 469
    iget-object v0, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 470
    .line 471
    iget-object v2, v1, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 472
    .line 473
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 474
    .line 475
    iget-object v3, v1, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 476
    .line 477
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    invoke-virtual {v0, v2, v3, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 482
    .line 483
    .line 484
    :cond_11
    :goto_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 485
    .line 486
    const/16 v2, 0x13

    .line 487
    .line 488
    if-lt v0, v2, :cond_12

    .line 489
    .line 490
    iget-object v0, v1, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 491
    .line 492
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-lez v0, :cond_12

    .line 497
    .line 498
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    .line 499
    .line 500
    iget-object v2, v1, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 501
    .line 502
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    invoke-direct {v0, v2}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 507
    .line 508
    .line 509
    iput-object v0, v1, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 510
    .line 511
    iget-object v2, v1, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 512
    .line 513
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    mul-int/lit8 v2, v2, 0x64

    .line 518
    .line 519
    invoke-virtual {v0, v2}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 520
    .line 521
    .line 522
    iget-object v0, v1, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 523
    .line 524
    invoke-virtual {v0, v4}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 525
    .line 526
    .line 527
    :cond_12
    iput-boolean v9, v1, Lha/j3;->q:Z

    .line 528
    .line 529
    new-instance v0, Lha/b3;

    .line 530
    .line 531
    const/4 v2, 0x1

    .line 532
    invoke-direct {v0, v1, v2}, Lha/b3;-><init>(Lha/j3;I)V

    .line 533
    .line 534
    .line 535
    iget-object v1, v1, Lha/j3;->s:Ljava/util/concurrent/ExecutorService;

    .line 536
    .line 537
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 538
    .line 539
    .line 540
    goto/16 :goto_b

    .line 541
    .line 542
    :catch_6
    move-exception v0

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 563
    .line 564
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {p0 .. p0}, Lha/j3;->c()V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_b

    .line 571
    .line 572
    :cond_13
    new-instance v0, Landroid/media/MediaPlayer;

    .line 573
    .line 574
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 575
    .line 576
    .line 577
    iput-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 578
    .line 579
    :try_start_7
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 580
    .line 581
    iget-object v4, v4, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 582
    .line 583
    new-instance v5, Ljava/io/File;

    .line 584
    .line 585
    iget-object v8, v1, Lha/j3;->h:Lx9/w3;

    .line 586
    .line 587
    iget-object v8, v8, Lx9/w3;->b:Ljava/lang/String;

    .line 588
    .line 589
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 597
    .line 598
    .line 599
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 600
    .line 601
    if-eqz v0, :cond_18

    .line 602
    .line 603
    :try_start_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 604
    .line 605
    if-lt v2, v11, :cond_15

    .line 606
    .line 607
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 608
    .line 609
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 610
    .line 611
    .line 612
    iget-object v4, v1, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 613
    .line 614
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 615
    .line 616
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v12}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 620
    .line 621
    .line 622
    const/16 v4, 0x1d

    .line 623
    .line 624
    if-lt v2, v4, :cond_14

    .line 625
    .line 626
    invoke-static {v0}, Lh4/e0;->n(Landroid/media/AudioAttributes$Builder;)V

    .line 627
    .line 628
    .line 629
    :cond_14
    iget-object v4, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 630
    .line 631
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 636
    .line 637
    .line 638
    goto :goto_8

    .line 639
    :cond_15
    iget-object v4, v1, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 640
    .line 641
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 642
    .line 643
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 644
    .line 645
    .line 646
    :goto_8
    const/16 v0, 0x1c

    .line 647
    .line 648
    if-lt v2, v0, :cond_17

    .line 649
    .line 650
    iget-object v0, v1, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 651
    .line 652
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 653
    .line 654
    if-eq v0, v6, :cond_17

    .line 655
    .line 656
    iget-object v0, v1, Lha/j3;->A:Landroid/media/AudioManager;

    .line 657
    .line 658
    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    array-length v2, v0

    .line 663
    :goto_9
    if-ge v9, v2, :cond_17

    .line 664
    .line 665
    aget-object v3, v0, v9

    .line 666
    .line 667
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    iget-object v5, v1, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 672
    .line 673
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 674
    .line 675
    if-ne v4, v5, :cond_16

    .line 676
    .line 677
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 678
    .line 679
    invoke-static {v0, v3}, Landroidx/emoji2/text/b;->w(Landroid/media/MediaPlayer;Landroid/media/AudioDeviceInfo;)V

    .line 680
    .line 681
    .line 682
    goto :goto_a

    .line 683
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 684
    .line 685
    goto :goto_9

    .line 686
    :cond_17
    :goto_a
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 687
    .line 688
    new-instance v2, Lha/e3;

    .line 689
    .line 690
    const/4 v3, 0x0

    .line 691
    invoke-direct {v2, v1, v3}, Lha/e3;-><init>(Lha/a4;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 695
    .line 696
    .line 697
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 698
    .line 699
    new-instance v2, Lha/f3;

    .line 700
    .line 701
    invoke-direct {v2, v1, v3}, Lha/f3;-><init>(Lha/a4;I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 705
    .line 706
    .line 707
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 708
    .line 709
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 710
    .line 711
    .line 712
    goto :goto_b

    .line 713
    :catch_7
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 714
    .line 715
    .line 716
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 717
    .line 718
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 719
    .line 720
    .line 721
    iput-object v3, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 722
    .line 723
    invoke-virtual/range {p0 .. p0}, Lha/j3;->c()V

    .line 724
    .line 725
    .line 726
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 727
    .line 728
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    .line 730
    .line 731
    goto :goto_b

    .line 732
    :catch_8
    move-exception v0

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 750
    .line 751
    .line 752
    iget-object v0, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 753
    .line 754
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 755
    .line 756
    .line 757
    iput-object v3, v1, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 758
    .line 759
    invoke-virtual/range {p0 .. p0}, Lha/j3;->c()V

    .line 760
    .line 761
    .line 762
    iget-object v0, v1, Lha/j3;->l:Landroid/widget/TextView;

    .line 763
    .line 764
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    .line 766
    .line 767
    :cond_18
    :goto_b
    return-void
.end method

.method public static b(Lha/j3;Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 2
    .line 3
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x64

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    iput v0, p0, Lha/j3;->y:I

    .line 11
    .line 12
    if-lt v0, v2, :cond_0

    .line 13
    .line 14
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 15
    .line 16
    sub-int/2addr v0, v2

    .line 17
    invoke-virtual {v3, v0}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lha/j3;->z:I

    .line 22
    .line 23
    iget v0, p0, Lha/j3;->y:I

    .line 24
    .line 25
    sub-int/2addr v0, v2

    .line 26
    iget-object v4, p0, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3, v0, v4}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v3, p0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lha/j3;->z:I

    .line 43
    .line 44
    iget-object v0, p0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 45
    .line 46
    iget-object v3, p0, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 47
    .line 48
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 49
    .line 50
    iget-object v4, p0, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v3, 0x13

    .line 62
    .line 63
    if-lt v0, v3, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    .line 74
    .line 75
    iget-object v3, p0, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {v0, v3}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 85
    .line 86
    iget-object v3, p0, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    mul-int/lit8 v3, v3, 0x64

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    invoke-virtual {v0, v3}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 101
    .line 102
    .line 103
    :cond_2
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
    iget p1, p0, Lha/j3;->y:I

    .line 130
    .line 131
    if-ltz p1, :cond_4

    .line 132
    .line 133
    iget p1, p0, Lha/j3;->z:I

    .line 134
    .line 135
    if-ltz p1, :cond_4

    .line 136
    .line 137
    iget v0, p0, Lha/j3;->y:I

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
    iget-object v2, p0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 149
    .line 150
    invoke-virtual {v2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 151
    .line 152
    .line 153
    :goto_1
    const/4 p1, -0x1

    .line 154
    iput p1, p0, Lha/j3;->y:I

    .line 155
    .line 156
    iput p1, p0, Lha/j3;->z:I

    .line 157
    .line 158
    :cond_4
    iget-object p1, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

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
    iput-object v0, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 167
    .line 168
    :cond_5
    iget-object p1, p0, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 174
    .line 175
    invoke-virtual {p0}, Lha/j3;->c()V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lha/j3;->l:Landroid/widget/TextView;

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
    iget-object v1, p0, Lha/j3;->H:Landroid/media/AudioFocusRequest;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0, v1}, Leg/a;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lha/j3;->H:Landroid/media/AudioFocusRequest;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lha/j3;->I:Lha/c3;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lha/j3;->I:Lha/c3;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/j3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lha/j3;->z:I

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget v2, p0, Lha/j3;->y:I

    .line 12
    .line 13
    if-ltz v2, :cond_1

    .line 14
    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    if-lt v2, v3, :cond_0

    .line 18
    .line 19
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    invoke-virtual {v4, v2, v0}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v3, p0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v3, v2, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    nop

    .line 46
    :cond_2
    :goto_1
    iget-object v0, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    :try_start_1
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 55
    .line 56
    :cond_3
    iput-boolean v1, p0, Lha/j3;->q:Z

    .line 57
    .line 58
    iget-object v0, p0, Lha/j3;->s:Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v2, 0x17

    .line 70
    .line 71
    if-lt v1, v2, :cond_4

    .line 72
    .line 73
    invoke-static {v0}, Ld2/c;->p(Landroid/media/AudioTrack;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 79
    .line 80
    .line 81
    :catch_2
    :try_start_3
    iget-object v0, p0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 84
    .line 85
    .line 86
    :catch_3
    :try_start_4
    iget-object v0, p0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 89
    .line 90
    .line 91
    :catch_4
    :cond_5
    invoke-virtual {p0}, Lha/j3;->c()V

    .line 92
    .line 93
    .line 94
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/16 v2, 0x64

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 12
    .line 13
    const-string v6, "audio"

    .line 14
    .line 15
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    check-cast v6, Landroid/media/AudioManager;

    .line 20
    .line 21
    iput-object v6, p0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v8, 0x15

    .line 31
    .line 32
    const-string v9, "\u901a\u9053"

    .line 33
    .line 34
    if-lt v7, v8, :cond_0

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    :goto_0
    const/16 v10, 0x65

    .line 38
    .line 39
    if-ge v7, v10, :cond_1

    .line 40
    .line 41
    :try_start_0
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    .line 42
    .line 43
    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    new-instance v10, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 50
    .line 51
    invoke-static {v7, v9}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-direct {v10, v11, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :catch_0
    add-int/2addr v7, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v7, 0x0

    .line 64
    :goto_1
    const/16 v10, 0x10

    .line 65
    .line 66
    if-ge v7, v10, :cond_1

    .line 67
    .line 68
    new-instance v10, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 69
    .line 70
    invoke-static {v7, v9}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-direct {v10, v11, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    add-int/2addr v7, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    if-lt v7, v8, :cond_2

    .line 85
    .line 86
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 87
    .line 88
    const-string v10, "\u901a\u90531"

    .line 89
    .line 90
    invoke-direct {v9, v10, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    iput-object v9, p0, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 97
    .line 98
    const-string v10, "\u901a\u90533"

    .line 99
    .line 100
    invoke-direct {v9, v10, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    iput-object v9, p0, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 104
    .line 105
    :goto_2
    const v9, 0x7f0b05f9

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object v10, p0, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 115
    .line 116
    iget-object v10, v10, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    const v10, 0x7f0b05f8

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    new-instance v11, Lha/x2;

    .line 129
    .line 130
    invoke-direct {v11, p0, v6, v9, v3}, Lha/x2;-><init>(Lha/j3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance v6, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 142
    .line 143
    const-string v10, "\u65e0"

    .line 144
    .line 145
    const/4 v11, -0x1

    .line 146
    invoke-direct {v9, v10, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 153
    .line 154
    const-string v10, "\u64ad\u653e\u65f6\u964d\u4f4e\u5176\u5b83\u97f3\u91cf"

    .line 155
    .line 156
    invoke-direct {v9, v10, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 163
    .line 164
    const-string v10, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u9891"

    .line 165
    .line 166
    invoke-direct {v9, v10, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    iput-object v9, p0, Lha/j3;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 170
    .line 171
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    if-lt v7, v8, :cond_4

    .line 175
    .line 176
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 177
    .line 178
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 179
    .line 180
    iget-boolean v8, v8, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 181
    .line 182
    if-nez v8, :cond_3

    .line 183
    .line 184
    const-class v8, Lcom/yunpan/appmanage/service/StartService;

    .line 185
    .line 186
    invoke-static {p1, v8}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_4

    .line 191
    .line 192
    :cond_3
    const-string p1, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u4e50app\u97f3\u9891(\u667a)"

    .line 193
    .line 194
    const/16 v8, 0xc8

    .line 195
    .line 196
    invoke-static {p1, v8, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    const p1, 0x7f0b0619

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Landroid/widget/TextView;

    .line 207
    .line 208
    iget-object v8, p0, Lha/j3;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 209
    .line 210
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    new-instance v9, Lha/x2;

    .line 223
    .line 224
    invoke-direct {v9, p0, v6, p1, v4}, Lha/x2;-><init>(Lha/j3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    new-instance p1, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 236
    .line 237
    const-string v8, "\u4e0d\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 238
    .line 239
    invoke-direct {v6, v8, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    iput-object v6, p0, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 243
    .line 244
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 248
    .line 249
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u8bdd\u97f3\u91cf)"

    .line 250
    .line 251
    invoke-direct {v6, v8, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 258
    .line 259
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u7cfb\u7edf\u97f3\u91cf)"

    .line 260
    .line 261
    invoke-direct {v6, v8, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 268
    .line 269
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u94c3\u58f0\u97f3\u91cf)"

    .line 270
    .line 271
    invoke-direct {v6, v8, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 278
    .line 279
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u5a92\u4f53\u97f3\u91cf)"

    .line 280
    .line 281
    invoke-direct {v6, v8, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 288
    .line 289
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u95f9\u949f\u97f3\u91cf)"

    .line 290
    .line 291
    invoke-direct {v6, v8, v0}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 298
    .line 299
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u77e5\u97f3\u91cf)"

    .line 300
    .line 301
    const/4 v9, 0x5

    .line 302
    invoke-direct {v6, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 309
    .line 310
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(MF\u97f3\u91cf)"

    .line 311
    .line 312
    const/16 v9, 0x8

    .line 313
    .line 314
    invoke-direct {v6, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const/16 v6, 0x1a

    .line 321
    .line 322
    if-lt v7, v6, :cond_5

    .line 323
    .line 324
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(ACC\u97f3\u91cf)"

    .line 325
    .line 326
    const/16 v9, 0xa

    .line 327
    .line 328
    invoke-static {v8, v9, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 329
    .line 330
    .line 331
    :cond_5
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 332
    .line 333
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(6)"

    .line 334
    .line 335
    const/4 v10, 0x6

    .line 336
    invoke-direct {v8, v9, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 343
    .line 344
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(7)"

    .line 345
    .line 346
    const/4 v10, 0x7

    .line 347
    invoke-direct {v8, v9, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 354
    .line 355
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(9)"

    .line 356
    .line 357
    const/16 v10, 0x9

    .line 358
    .line 359
    invoke-direct {v8, v9, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 366
    .line 367
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(11)"

    .line 368
    .line 369
    const/16 v10, 0xb

    .line 370
    .line 371
    invoke-direct {v8, v9, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    if-lt v7, v6, :cond_7

    .line 378
    .line 379
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 380
    .line 381
    iget-object v6, v6, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 382
    .line 383
    if-eqz v6, :cond_7

    .line 384
    .line 385
    const/4 v6, 0x0

    .line 386
    :goto_3
    const/16 v7, 0x20

    .line 387
    .line 388
    if-ge v6, v7, :cond_7

    .line 389
    .line 390
    :try_start_1
    sget-object v7, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 391
    .line 392
    add-int/lit8 v8, v6, -0x64

    .line 393
    .line 394
    invoke-virtual {v7, v8}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-lez v7, :cond_6

    .line 399
    .line 400
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 401
    .line 402
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(Car\u901a\u90530)"

    .line 403
    .line 404
    add-int/lit8 v9, v6, 0x64

    .line 405
    .line 406
    invoke-direct {v7, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    .line 411
    .line 412
    :cond_6
    add-int/2addr v6, v5

    .line 413
    goto :goto_3

    .line 414
    :catch_1
    :cond_7
    const v6, 0x7f0b05fc

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    check-cast v6, Landroid/widget/TextView;

    .line 422
    .line 423
    iget-object v7, p0, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 424
    .line 425
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    const v7, 0x7f0b05fb

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    new-instance v8, Lha/x2;

    .line 438
    .line 439
    invoke-direct {v8, p0, p1, v6, v5}, Lha/x2;-><init>(Lha/j3;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 446
    .line 447
    const-string v6, "\u9ed8\u8ba4"

    .line 448
    .line 449
    invoke-direct {p1, v6, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    iput-object p1, p0, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 453
    .line 454
    iget-object v6, p0, Lha/j3;->F:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 460
    .line 461
    const/16 v7, 0x17

    .line 462
    .line 463
    if-lt p1, v7, :cond_8

    .line 464
    .line 465
    :try_start_2
    iget-object p1, p0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 466
    .line 467
    invoke-static {p1}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    array-length v7, p1

    .line 472
    const/4 v8, 0x0

    .line 473
    :goto_4
    if-ge v8, v7, :cond_8

    .line 474
    .line 475
    aget-object v9, p1, v8

    .line 476
    .line 477
    new-instance v10, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 478
    .line 479
    new-instance v11, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-static {v9}, Ld2/c;->j(Landroid/media/AudioDeviceInfo;)Ljava/lang/CharSequence;

    .line 485
    .line 486
    .line 487
    move-result-object v12

    .line 488
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v12, "("

    .line 492
    .line 493
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-static {v9}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v12, ")"

    .line 504
    .line 505
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    invoke-static {v9}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 513
    .line 514
    .line 515
    move-result v9

    .line 516
    invoke-direct {v10, v11, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    .line 521
    .line 522
    add-int/2addr v8, v5

    .line 523
    goto :goto_4

    .line 524
    :catch_2
    :cond_8
    const p1, 0x7f0b0571

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 532
    .line 533
    iput-object p1, p0, Lha/j3;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 534
    .line 535
    const p1, 0x7f0b0572

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    check-cast p1, Landroid/widget/TextView;

    .line 543
    .line 544
    iget-object v6, p0, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 545
    .line 546
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    .line 550
    .line 551
    iget-object v6, p0, Lha/j3;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 552
    .line 553
    new-instance v7, Lc6/c;

    .line 554
    .line 555
    invoke-direct {v7, p0, v0, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    .line 560
    .line 561
    const p1, 0x7f0b03e3

    .line 562
    .line 563
    .line 564
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    check-cast p1, Landroid/widget/TextView;

    .line 569
    .line 570
    iput-object p1, p0, Lha/j3;->k:Landroid/widget/TextView;

    .line 571
    .line 572
    new-instance v0, Lha/d3;

    .line 573
    .line 574
    invoke-direct {v0, p0, v4}, Lha/d3;-><init>(Lha/j3;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    .line 579
    .line 580
    const p1, 0x7f0b0591

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    check-cast p1, Landroid/widget/TextView;

    .line 588
    .line 589
    iput-object p1, p0, Lha/j3;->i:Landroid/widget/TextView;

    .line 590
    .line 591
    const p1, 0x7f0b03b4

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    check-cast p1, Landroid/widget/TextView;

    .line 599
    .line 600
    iput-object p1, p0, Lha/j3;->j:Landroid/widget/TextView;

    .line 601
    .line 602
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 603
    .line 604
    .line 605
    iget-object p1, p0, Lha/j3;->j:Landroid/widget/TextView;

    .line 606
    .line 607
    new-instance v0, Lha/d3;

    .line 608
    .line 609
    invoke-direct {v0, p0, v5}, Lha/d3;-><init>(Lha/j3;I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    .line 614
    .line 615
    const p1, 0x7f0b060f

    .line 616
    .line 617
    .line 618
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    check-cast p1, Landroid/widget/TextView;

    .line 623
    .line 624
    iput-object p1, p0, Lha/j3;->B:Landroid/widget/TextView;

    .line 625
    .line 626
    const p1, 0x7f0b0560

    .line 627
    .line 628
    .line 629
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 634
    .line 635
    iput-object p1, p0, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 636
    .line 637
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 638
    .line 639
    .line 640
    iget-object p1, p0, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 641
    .line 642
    const/16 v0, 0x50

    .line 643
    .line 644
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 645
    .line 646
    .line 647
    iget-object p1, p0, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 648
    .line 649
    new-instance v2, Lha/g3;

    .line 650
    .line 651
    invoke-direct {v2, p0, v4}, Lha/g3;-><init>(Lha/j3;I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 655
    .line 656
    .line 657
    const p1, 0x7f0b0490

    .line 658
    .line 659
    .line 660
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 661
    .line 662
    .line 663
    move-result-object p1

    .line 664
    check-cast p1, Landroid/widget/TextView;

    .line 665
    .line 666
    iput-object p1, p0, Lha/j3;->C:Landroid/widget/TextView;

    .line 667
    .line 668
    const p1, 0x7f0b0561

    .line 669
    .line 670
    .line 671
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 676
    .line 677
    iput-object p1, p0, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 678
    .line 679
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 680
    .line 681
    .line 682
    iget-object p1, p0, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 683
    .line 684
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 685
    .line 686
    .line 687
    iget-object p1, p0, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 688
    .line 689
    new-instance v0, Lha/g3;

    .line 690
    .line 691
    invoke-direct {v0, p0, v5}, Lha/g3;-><init>(Lha/j3;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 695
    .line 696
    .line 697
    const p1, 0x7f0b0359

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    check-cast p1, Landroid/widget/TextView;

    .line 705
    .line 706
    iput-object p1, p0, Lha/j3;->l:Landroid/widget/TextView;

    .line 707
    .line 708
    new-instance v0, Lha/d3;

    .line 709
    .line 710
    invoke-direct {v0, p0, v3}, Lha/d3;-><init>(Lha/j3;I)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    .line 715
    .line 716
    const p1, 0x7f0b03f3

    .line 717
    .line 718
    .line 719
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    check-cast p1, Landroid/widget/TextView;

    .line 724
    .line 725
    new-instance v0, Lha/d3;

    .line 726
    .line 727
    invoke-direct {v0, p0, v1}, Lha/d3;-><init>(Lha/j3;I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    .line 732
    .line 733
    return-void
.end method
