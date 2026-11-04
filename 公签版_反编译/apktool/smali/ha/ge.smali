.class public final Lha/ge;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public A:Landroid/media/AudioManager;

.field public B:Landroid/speech/tts/TextToSpeech;

.field public C:Ljava/util/List;

.field public D:Ljava/util/ArrayList;

.field public E:I

.field public F:Ljava/util/ArrayList;

.field public G:I

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public K:Landroid/media/AudioFocusRequest;

.field public L:Lha/be;

.field public g:Lha/f8;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/EditText;

.field public k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public l:Landroid/widget/TextView;

.field public m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public n:Landroid/widget/TextView;

.field public p:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public q:Landroid/widget/TextView;

.field public r:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public s:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public t:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/f8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00fe

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lha/ge;->y:I

    .line 9
    .line 10
    iput p1, p0, Lha/ge;->z:I

    .line 11
    .line 12
    iput p1, p0, Lha/ge;->E:I

    .line 13
    .line 14
    iput p1, p0, Lha/ge;->G:I

    .line 15
    .line 16
    iput-object p3, p0, Lha/ge;->g:Lha/f8;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Lha/ge;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "\u5f53\u524dtts\u5f15\u64ce\u4e0d\u53ef\u7528"

    .line 6
    .line 7
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lha/ge;->i:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "\u505c\u6b62"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lha/ge;->b()V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lha/ge;->i:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v0, "\u8bd5\u542c\u64ad\u653e"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lha/ge;->j:Landroid/widget/EditText;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    const-string p0, "\u8bf7\u8f93\u5165\u8981\u64ad\u653e\u7684\u6587\u672c"

    .line 72
    .line 73
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_3
    iget-object v1, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 79
    .line 80
    iget-object v2, p0, Lha/ge;->r:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    int-to-float v2, v2

    .line 87
    const/high16 v3, 0x42480000    # 50.0f

    .line 88
    .line 89
    div-float/2addr v2, v3

    .line 90
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lha/ge;->E:I

    .line 94
    .line 95
    const/4 v2, -0x1

    .line 96
    if-eq v1, v2, :cond_4

    .line 97
    .line 98
    iget-object v3, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 99
    .line 100
    iget-object v4, p0, Lha/ge;->D:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/speech/tts/Voice;

    .line 107
    .line 108
    invoke-virtual {v3, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ne v1, v2, :cond_4

    .line 113
    .line 114
    const-string p0, "\u8bbe\u7f6e\u5f15\u64ce\u58f0\u97f3\u5931\u8d25"

    .line 115
    .line 116
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_4
    iget v1, p0, Lha/ge;->G:I

    .line 122
    .line 123
    if-eq v1, v2, :cond_6

    .line 124
    .line 125
    iget-object v3, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 126
    .line 127
    iget-object v4, p0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/util/Locale;

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eq v1, v2, :cond_5

    .line 140
    .line 141
    const/4 v3, -0x2

    .line 142
    if-ne v1, v3, :cond_6

    .line 143
    .line 144
    :cond_5
    const-string p0, "\u5f15\u64ce\u4e0d\u652f\u6301\u6b64\u8bed\u8a00"

    .line 145
    .line 146
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_6
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 152
    .line 153
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v3, p0, Lha/ge;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 157
    .line 158
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const/4 v3, 0x1

    .line 165
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-object v4, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 174
    .line 175
    invoke-virtual {v4, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lha/ge;->i:Landroid/widget/TextView;

    .line 179
    .line 180
    const-string v4, "\u505c\u6b62\u8bd5\u542c"

    .line 181
    .line 182
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lha/ge;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 186
    .line 187
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 188
    .line 189
    const/4 v4, 0x0

    .line 190
    if-eq v1, v2, :cond_9

    .line 191
    .line 192
    const/16 v5, 0x32

    .line 193
    .line 194
    if-le v1, v5, :cond_7

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 198
    .line 199
    const/16 v6, 0x1a

    .line 200
    .line 201
    if-lt v5, v6, :cond_8

    .line 202
    .line 203
    new-instance v5, Landroid/media/AudioFocusRequest$Builder;

    .line 204
    .line 205
    invoke-direct {v5, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 209
    .line 210
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 211
    .line 212
    .line 213
    const/16 v6, 0xc

    .line 214
    .line 215
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v5, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 224
    .line 225
    .line 226
    new-instance v1, Lha/be;

    .line 227
    .line 228
    const/4 v6, 0x0

    .line 229
    invoke-direct {v1, p0, v6}, Lha/be;-><init>(Lha/ge;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iput-object v1, p0, Lha/ge;->K:Landroid/media/AudioFocusRequest;

    .line 240
    .line 241
    iget-object v5, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 242
    .line 243
    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eq v1, v3, :cond_9

    .line 248
    .line 249
    iput-object v4, p0, Lha/ge;->K:Landroid/media/AudioFocusRequest;

    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_8
    new-instance v5, Lha/be;

    .line 253
    .line 254
    const/4 v6, 0x1

    .line 255
    invoke-direct {v5, p0, v6}, Lha/be;-><init>(Lha/ge;I)V

    .line 256
    .line 257
    .line 258
    iput-object v5, p0, Lha/ge;->L:Lha/be;

    .line 259
    .line 260
    iget-object v6, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 261
    .line 262
    const/4 v7, 0x5

    .line 263
    invoke-virtual {v6, v5, v7, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eq v1, v3, :cond_9

    .line 268
    .line 269
    iput-object v4, p0, Lha/ge;->L:Lha/be;

    .line 270
    .line 271
    :cond_9
    :goto_0
    iget-object v1, p0, Lha/ge;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 272
    .line 273
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 274
    .line 275
    const/4 v3, 0x0

    .line 276
    if-ltz v1, :cond_b

    .line 277
    .line 278
    iput v1, p0, Lha/ge;->y:I

    .line 279
    .line 280
    const/16 v5, 0x64

    .line 281
    .line 282
    if-lt v1, v5, :cond_a

    .line 283
    .line 284
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 285
    .line 286
    sub-int/2addr v1, v5

    .line 287
    invoke-virtual {v6, v1}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    iput v1, p0, Lha/ge;->z:I

    .line 292
    .line 293
    iget-object v1, p0, Lha/ge;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 294
    .line 295
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 296
    .line 297
    sub-int/2addr v1, v5

    .line 298
    iget-object v5, p0, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 299
    .line 300
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    invoke-virtual {v6, v1, v5}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_a
    iget-object v5, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 309
    .line 310
    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    iput v1, p0, Lha/ge;->z:I

    .line 315
    .line 316
    iget-object v1, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 317
    .line 318
    iget-object v5, p0, Lha/ge;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 319
    .line 320
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 321
    .line 322
    iget-object v6, p0, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 323
    .line 324
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-virtual {v1, v5, v6, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 329
    .line 330
    .line 331
    :cond_b
    :goto_1
    iget-object v1, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 332
    .line 333
    new-instance v5, Lha/fe;

    .line 334
    .line 335
    const/4 v6, 0x0

    .line 336
    invoke-direct {v5, v6, p0}, Lha/fe;-><init>(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v5}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 340
    .line 341
    .line 342
    iget-object v1, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 343
    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v6, "tts_"

    .line 347
    .line 348
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-ne v0, v2, :cond_c

    .line 367
    .line 368
    const-string v0, "\u64ad\u653e\u5931\u8d25"

    .line 369
    .line 370
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Lha/ge;->d()V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :catch_0
    const-string p0, "\u8b66\u544a\uff1a\u7cfb\u7edf\u4e0d\u652f\u6301\u6b64\u901a\u9053"

    .line 378
    .line 379
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lha/ge;->K:Landroid/media/AudioFocusRequest;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 13
    .line 14
    invoke-static {v1, v0}, Leg/a;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lha/ge;->K:Landroid/media/AudioFocusRequest;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lha/ge;->L:Lha/be;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lha/ge;->L:Lha/be;

    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lha/ge;->D:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_2
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lha/ge;->E:I

    .line 27
    .line 28
    iput v0, p0, Lha/ge;->G:I

    .line 29
    .line 30
    iget-object v0, p0, Lha/ge;->n:Landroid/widget/TextView;

    .line 31
    .line 32
    const-string v1, "\u65e0"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lha/ge;->q:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lha/ge;->l:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v1, p0, Lha/ge;->C:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 51
    .line 52
    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 58
    .line 59
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 60
    .line 61
    new-instance v2, Lha/yd;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lha/yd;-><init>(Lha/ge;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lha/ge;->C:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 73
    .line 74
    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string p1, "\u6b64TTS\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25\uff0c\u4e0d\u53ef\u7528"

    .line 83
    .line 84
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget v0, p0, Lha/ge;->y:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lha/ge;->z:I

    .line 6
    .line 7
    if-ltz v1, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 14
    .line 15
    sub-int/2addr v0, v2

    .line 16
    invoke-virtual {v3, v0, v1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lha/ge;->y:I

    .line 28
    .line 29
    iput v0, p0, Lha/ge;->z:I

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lha/ge;->b()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lha/ge;->i:Landroid/widget/TextView;

    .line 35
    .line 36
    new-instance v1, Lha/xd;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, p0, v2}, Lha/xd;-><init>(Lha/ge;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lha/ge;->y:I

    .line 22
    .line 23
    if-ltz v0, :cond_3

    .line 24
    .line 25
    iget v1, p0, Lha/ge;->z:I

    .line 26
    .line 27
    if-ltz v1, :cond_3

    .line 28
    .line 29
    const/16 v2, 0x64

    .line 30
    .line 31
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 34
    .line 35
    sub-int/2addr v0, v2

    .line 36
    invoke-virtual {v3, v0, v1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lha/ge;->y:I

    .line 48
    .line 49
    iput v0, p0, Lha/ge;->z:I

    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0}, Lha/ge;->b()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 56
    .line 57
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/16 v4, 0x64

    .line 7
    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    iget-object v8, v0, Lha/a4;->b:Landroid/content/Context;

    .line 15
    .line 16
    const-string v9, "audio"

    .line 17
    .line 18
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    check-cast v9, Landroid/media/AudioManager;

    .line 23
    .line 24
    iput-object v9, v0, Lha/ge;->A:Landroid/media/AudioManager;

    .line 25
    .line 26
    new-instance v9, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    :goto_0
    const/16 v11, 0x1f

    .line 33
    .line 34
    if-ge v10, v11, :cond_0

    .line 35
    .line 36
    :try_start_0
    new-instance v11, Landroid/media/AudioAttributes$Builder;

    .line 37
    .line 38
    invoke-direct {v11}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v10}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 45
    .line 46
    const-string v12, "\u901a\u9053"

    .line 47
    .line 48
    invoke-static {v10, v12}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    invoke-direct {v11, v12, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :catch_0
    add-int/2addr v10, v7

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v11, 0x15

    .line 63
    .line 64
    if-lt v10, v11, :cond_1

    .line 65
    .line 66
    new-instance v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 67
    .line 68
    const-string v13, "\u901a\u90531"

    .line 69
    .line 70
    invoke-direct {v12, v13, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    iput-object v12, v0, Lha/ge;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 77
    .line 78
    const-string v13, "\u901a\u90533"

    .line 79
    .line 80
    invoke-direct {v12, v13, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iput-object v12, v0, Lha/ge;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 84
    .line 85
    :goto_1
    const v12, 0x7f0b05f9

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    check-cast v12, Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v13, v0, Lha/ge;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 95
    .line 96
    iget-object v13, v13, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    const v13, 0x7f0b05f8

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    new-instance v14, Lha/ae;

    .line 109
    .line 110
    invoke-direct {v14, v0, v9, v12, v6}, Lha/ae;-><init>(Lha/ge;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    new-instance v9, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 122
    .line 123
    const-string v13, "\u65e0"

    .line 124
    .line 125
    const/4 v14, -0x1

    .line 126
    invoke-direct {v12, v13, v14}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 133
    .line 134
    const-string v13, "\u64ad\u653e\u65f6\u964d\u4f4e\u5176\u5b83\u97f3\u91cf"

    .line 135
    .line 136
    invoke-direct {v12, v13, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 143
    .line 144
    const-string v13, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u9891"

    .line 145
    .line 146
    invoke-direct {v12, v13, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    iput-object v12, v0, Lha/ge;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 150
    .line 151
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    const/16 v12, 0xc8

    .line 155
    .line 156
    if-lt v10, v11, :cond_3

    .line 157
    .line 158
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 159
    .line 160
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 161
    .line 162
    iget-boolean v11, v11, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 163
    .line 164
    if-nez v11, :cond_2

    .line 165
    .line 166
    const-class v11, Lcom/yunpan/appmanage/service/StartService;

    .line 167
    .line 168
    invoke-static {v8, v11}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-eqz v11, :cond_3

    .line 173
    .line 174
    :cond_2
    const-string v11, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u4e50app\u97f3\u9891(\u667a)"

    .line 175
    .line 176
    invoke-static {v11, v12, v9}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    const v11, 0x7f0b0619

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    check-cast v11, Landroid/widget/TextView;

    .line 187
    .line 188
    iget-object v13, v0, Lha/ge;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 189
    .line 190
    iget-object v13, v13, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    const v13, 0x7f0b0618

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    new-instance v15, Lha/ae;

    .line 203
    .line 204
    invoke-direct {v15, v0, v9, v11, v5}, Lha/ae;-><init>(Lha/ge;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    new-instance v9, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 216
    .line 217
    const-string v13, "\u4e0d\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 218
    .line 219
    invoke-direct {v11, v13, v14}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    iput-object v11, v0, Lha/ge;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 223
    .line 224
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 228
    .line 229
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u8bdd\u97f3\u91cf)"

    .line 230
    .line 231
    invoke-direct {v11, v13, v6}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 238
    .line 239
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u7cfb\u7edf\u97f3\u91cf)"

    .line 240
    .line 241
    invoke-direct {v11, v13, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 248
    .line 249
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u94c3\u58f0\u97f3\u91cf)"

    .line 250
    .line 251
    invoke-direct {v11, v13, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 258
    .line 259
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u5a92\u4f53\u97f3\u91cf)"

    .line 260
    .line 261
    invoke-direct {v11, v13, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 268
    .line 269
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u95f9\u949f\u97f3\u91cf)"

    .line 270
    .line 271
    invoke-direct {v11, v13, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 278
    .line 279
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u77e5\u97f3\u91cf)"

    .line 280
    .line 281
    const/4 v14, 0x5

    .line 282
    invoke-direct {v11, v13, v14}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 289
    .line 290
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(MF\u97f3\u91cf)"

    .line 291
    .line 292
    const/16 v14, 0x8

    .line 293
    .line 294
    invoke-direct {v11, v13, v14}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    const/16 v11, 0x1a

    .line 301
    .line 302
    if-lt v10, v11, :cond_4

    .line 303
    .line 304
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(ACC\u97f3\u91cf)"

    .line 305
    .line 306
    const/16 v15, 0xa

    .line 307
    .line 308
    invoke-static {v13, v15, v9}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 309
    .line 310
    .line 311
    :cond_4
    new-instance v13, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 312
    .line 313
    const-string v15, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(6)"

    .line 314
    .line 315
    invoke-direct {v13, v15, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    new-instance v13, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 322
    .line 323
    const-string v15, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(7)"

    .line 324
    .line 325
    const/4 v2, 0x7

    .line 326
    invoke-direct {v13, v15, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 333
    .line 334
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(9)"

    .line 335
    .line 336
    const/16 v15, 0x9

    .line 337
    .line 338
    invoke-direct {v2, v13, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 345
    .line 346
    const-string v13, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(11)"

    .line 347
    .line 348
    const/16 v15, 0xb

    .line 349
    .line 350
    invoke-direct {v2, v13, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    if-lt v10, v11, :cond_6

    .line 357
    .line 358
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 359
    .line 360
    iget-object v2, v2, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 361
    .line 362
    if-eqz v2, :cond_6

    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    :goto_2
    const/16 v10, 0x20

    .line 366
    .line 367
    if-ge v2, v10, :cond_6

    .line 368
    .line 369
    :try_start_1
    sget-object v10, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 370
    .line 371
    add-int/lit8 v11, v2, -0x64

    .line 372
    .line 373
    invoke-virtual {v10, v11}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    if-lez v10, :cond_5

    .line 378
    .line 379
    new-instance v10, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 380
    .line 381
    const-string v11, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(Car\u901a\u90530)"

    .line 382
    .line 383
    add-int/lit8 v13, v2, 0x64

    .line 384
    .line 385
    invoke-direct {v10, v11, v13}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    .line 390
    .line 391
    :cond_5
    add-int/2addr v2, v7

    .line 392
    goto :goto_2

    .line 393
    :catch_1
    :cond_6
    const v2, 0x7f0b05fc

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    check-cast v2, Landroid/widget/TextView;

    .line 401
    .line 402
    iget-object v10, v0, Lha/ge;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 403
    .line 404
    iget-object v10, v10, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    const v10, 0x7f0b05fb

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    new-instance v11, Lha/ae;

    .line 417
    .line 418
    invoke-direct {v11, v0, v9, v2, v7}, Lha/ae;-><init>(Lha/ge;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    const v2, 0x7f0b0566

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 432
    .line 433
    iput-object v2, v0, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 434
    .line 435
    const/16 v9, 0x50

    .line 436
    .line 437
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 438
    .line 439
    .line 440
    iget-object v2, v0, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 441
    .line 442
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 443
    .line 444
    .line 445
    iget-object v2, v0, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 446
    .line 447
    new-instance v4, Lha/ee;

    .line 448
    .line 449
    invoke-direct {v4, v0, v6}, Lha/ee;-><init>(Lha/ge;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 453
    .line 454
    .line 455
    const v2, 0x7f0b060f

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Landroid/widget/TextView;

    .line 463
    .line 464
    iput-object v2, v0, Lha/ge;->H:Landroid/widget/TextView;

    .line 465
    .line 466
    iget-object v4, v0, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 467
    .line 468
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    const v2, 0x7f0b0564

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 487
    .line 488
    iput-object v2, v0, Lha/ge;->r:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 489
    .line 490
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 491
    .line 492
    .line 493
    iget-object v2, v0, Lha/ge;->r:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 494
    .line 495
    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 496
    .line 497
    .line 498
    const v2, 0x7f0b0561

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 506
    .line 507
    iput-object v2, v0, Lha/ge;->t:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 508
    .line 509
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 510
    .line 511
    .line 512
    iget-object v2, v0, Lha/ge;->t:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 513
    .line 514
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 515
    .line 516
    .line 517
    const v2, 0x7f0b0490

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    check-cast v2, Landroid/widget/TextView;

    .line 525
    .line 526
    iput-object v2, v0, Lha/ge;->I:Landroid/widget/TextView;

    .line 527
    .line 528
    iget-object v2, v0, Lha/ge;->t:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 529
    .line 530
    new-instance v4, Lha/ee;

    .line 531
    .line 532
    invoke-direct {v4, v0, v7}, Lha/ee;-><init>(Lha/ge;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 536
    .line 537
    .line 538
    const v2, 0x7f0b044e

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    check-cast v2, Landroid/widget/EditText;

    .line 546
    .line 547
    iput-object v2, v0, Lha/ge;->j:Landroid/widget/EditText;

    .line 548
    .line 549
    new-instance v4, Lha/c0;

    .line 550
    .line 551
    invoke-direct {v4, v0, v1}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 555
    .line 556
    .line 557
    const v1, 0x7f0b046b

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 565
    .line 566
    iput-object v1, v0, Lha/ge;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 567
    .line 568
    const v1, 0x7f0b046c

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    check-cast v1, Landroid/widget/TextView;

    .line 576
    .line 577
    iput-object v1, v0, Lha/ge;->l:Landroid/widget/TextView;

    .line 578
    .line 579
    iget-object v1, v0, Lha/ge;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 580
    .line 581
    new-instance v2, Lha/de;

    .line 582
    .line 583
    invoke-direct {v2, v0, v6}, Lha/de;-><init>(Lha/ge;I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    .line 588
    .line 589
    const v1, 0x7f0b060d

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 597
    .line 598
    iput-object v1, v0, Lha/ge;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 599
    .line 600
    const v1, 0x7f0b060e

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    check-cast v1, Landroid/widget/TextView;

    .line 608
    .line 609
    iput-object v1, v0, Lha/ge;->n:Landroid/widget/TextView;

    .line 610
    .line 611
    iget-object v1, v0, Lha/ge;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 612
    .line 613
    new-instance v2, Lha/de;

    .line 614
    .line 615
    invoke-direct {v2, v0, v7}, Lha/de;-><init>(Lha/ge;I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    .line 620
    .line 621
    const v1, 0x7f0b051a

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 629
    .line 630
    iput-object v1, v0, Lha/ge;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 631
    .line 632
    const v1, 0x7f0b051b

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    check-cast v1, Landroid/widget/TextView;

    .line 640
    .line 641
    iput-object v1, v0, Lha/ge;->q:Landroid/widget/TextView;

    .line 642
    .line 643
    iget-object v1, v0, Lha/ge;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 644
    .line 645
    new-instance v2, Lha/de;

    .line 646
    .line 647
    invoke-direct {v2, v0, v5}, Lha/de;-><init>(Lha/ge;I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    .line 652
    .line 653
    const v1, 0x7f0b0359

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    check-cast v1, Landroid/widget/TextView;

    .line 661
    .line 662
    iput-object v1, v0, Lha/ge;->i:Landroid/widget/TextView;

    .line 663
    .line 664
    new-instance v2, Lha/de;

    .line 665
    .line 666
    invoke-direct {v2, v0, v3}, Lha/de;-><init>(Lha/ge;I)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    .line 671
    .line 672
    const v1, 0x7f0b03f3

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    check-cast v1, Landroid/widget/TextView;

    .line 680
    .line 681
    iput-object v1, v0, Lha/ge;->h:Landroid/widget/TextView;

    .line 682
    .line 683
    iget-object v2, v0, Lha/ge;->g:Lha/f8;

    .line 684
    .line 685
    if-nez v2, :cond_7

    .line 686
    .line 687
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 688
    .line 689
    .line 690
    :cond_7
    iget-object v1, v0, Lha/ge;->h:Landroid/widget/TextView;

    .line 691
    .line 692
    new-instance v2, Lha/de;

    .line 693
    .line 694
    const/4 v3, 0x4

    .line 695
    invoke-direct {v2, v0, v3}, Lha/de;-><init>(Lha/ge;I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    .line 700
    .line 701
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    .line 702
    .line 703
    const/4 v2, 0x0

    .line 704
    invoke-direct {v1, v8, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getEngines()Ljava/util/List;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    iput-object v3, v0, Lha/ge;->C:Ljava/util/List;

    .line 712
    .line 713
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    if-eqz v4, :cond_8

    .line 722
    .line 723
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    check-cast v4, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 728
    .line 729
    iget-object v5, v0, Lha/ge;->l:Landroid/widget/TextView;

    .line 730
    .line 731
    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    .line 735
    .line 736
    goto :goto_3

    .line 737
    :cond_8
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 738
    .line 739
    .line 740
    iget-object v1, v0, Lha/ge;->C:Ljava/util/List;

    .line 741
    .line 742
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    if-eqz v1, :cond_9

    .line 747
    .line 748
    const-string v1, "\u6ca1\u6709\u53ef\u7528\u7684TTS\u5f15\u64ce"

    .line 749
    .line 750
    invoke-static {v1, v6}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 751
    .line 752
    .line 753
    iput-object v2, v0, Lha/ge;->g:Lha/f8;

    .line 754
    .line 755
    iget-object v1, v0, Lha/ge;->i:Landroid/widget/TextView;

    .line 756
    .line 757
    new-instance v2, Lha/xd;

    .line 758
    .line 759
    invoke-direct {v2, v0, v6}, Lha/xd;-><init>(Lha/ge;I)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :cond_9
    invoke-virtual {v0, v6}, Lha/ge;->c(I)V

    .line 767
    .line 768
    .line 769
    return-void
.end method
