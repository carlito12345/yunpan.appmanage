.class public final synthetic Lha/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ge;


# direct methods
.method public synthetic constructor <init>(Lha/ge;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/de;->a:I

    iput-object p1, p0, Lha/de;->b:Lha/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lha/de;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/de;->b:Lha/ge;

    .line 7
    .line 8
    iget-object v0, p1, Lha/ge;->j:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string p1, "\u8bf7\u8f93\u5165\u64ad\u653e\u5185\u5bb9"

    .line 29
    .line 30
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lz7/s;

    .line 36
    .line 37
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x1a0

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "gnType"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "TTS\u64ad\u62a5\uff1a"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p1, Lha/ge;->j:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "name"

    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p1, Lha/ge;->s:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "int1"

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p1, Lha/ge;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 100
    .line 101
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "volumeType"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p1, Lha/ge;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 113
    .line 114
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "tdType"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p1, Lha/ge;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 126
    .line 127
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "focusType"

    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p1, Lha/ge;->j:Landroid/widget/EditText;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "tts"

    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p1, Lha/ge;->C:Ljava/util/List;

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 165
    .line 166
    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, "ttsEngine"

    .line 169
    .line 170
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, p1, Lha/ge;->n:Landroid/widget/TextView;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v2, "ttsVoice"

    .line 184
    .line 185
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p1, Lha/ge;->q:Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v2, "ttsLocale"

    .line 199
    .line 200
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p1, Lha/ge;->r:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v2, "ttsSpeechRate"

    .line 214
    .line 215
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, p1, Lha/ge;->g:Lha/f8;

    .line 219
    .line 220
    if-eqz v1, :cond_1

    .line 221
    .line 222
    iget v2, v1, Lha/f8;->a:I

    .line 223
    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string v3, "keyType"

    .line 229
    .line 230
    invoke-virtual {v0, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v1, Lha/f8;->b:Lea/e;

    .line 234
    .line 235
    invoke-interface {v1, v0}, Lea/e;->k(Lz7/s;)V

    .line 236
    .line 237
    .line 238
    :cond_1
    invoke-virtual {p1}, Lha/ge;->dismiss()V

    .line 239
    .line 240
    .line 241
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object p1, p0, Lha/de;->b:Lha/ge;

    .line 243
    .line 244
    invoke-static {p1}, Lha/ge;->a(Lha/ge;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_1
    iget-object p1, p0, Lha/de;->b:Lha/ge;

    .line 249
    .line 250
    iget-object v0, p1, Lha/ge;->F:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_2

    .line 257
    .line 258
    const-string p1, "\u6b64TTS\u5f15\u64ce\u6ca1\u6709\u53ef\u7528\u7684\u8bed\u8a00"

    .line 259
    .line 260
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    iget-object v0, p1, Lha/ge;->F:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_3

    .line 280
    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Ljava/util/Locale;

    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_3
    new-instance v6, Lha/fa;

    .line 296
    .line 297
    new-instance v5, Lha/zd;

    .line 298
    .line 299
    const/4 v0, 0x0

    .line 300
    invoke-direct {v5, p1, v0}, Lha/zd;-><init>(Lha/ge;I)V

    .line 301
    .line 302
    .line 303
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 304
    .line 305
    const/4 v3, 0x0

    .line 306
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 307
    .line 308
    move-object v0, v6

    .line 309
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 313
    .line 314
    .line 315
    :goto_2
    return-void

    .line 316
    :pswitch_2
    iget-object p1, p0, Lha/de;->b:Lha/ge;

    .line 317
    .line 318
    iget-object v0, p1, Lha/ge;->D:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_4

    .line 325
    .line 326
    const-string p1, "\u6b64TTS\u5f15\u64ce\u6ca1\u6709\u53ef\u7528\u7684\u58f0\u97f3"

    .line 327
    .line 328
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    iget-object v0, p1, Lha/ge;->D:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_5

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v1}, Lg7/d;->n(Ljava/lang/Object;)Landroid/speech/tts/Voice;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v1}, Lg7/d;->o(Landroid/speech/tts/Voice;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_5
    new-instance v6, Lha/fa;

    .line 366
    .line 367
    new-instance v5, Lha/zd;

    .line 368
    .line 369
    const/4 v0, 0x1

    .line 370
    invoke-direct {v5, p1, v0}, Lha/zd;-><init>(Lha/ge;I)V

    .line 371
    .line 372
    .line 373
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 374
    .line 375
    const/4 v3, 0x0

    .line 376
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 377
    .line 378
    move-object v0, v6

    .line 379
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 383
    .line 384
    .line 385
    :goto_4
    return-void

    .line 386
    :pswitch_3
    iget-object p1, p0, Lha/de;->b:Lha/ge;

    .line 387
    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    new-instance v4, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    iget-object v0, p1, Lha/ge;->C:Ljava/util/List;

    .line 397
    .line 398
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_6

    .line 407
    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 413
    .line 414
    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_6
    new-instance v6, Lha/fa;

    .line 421
    .line 422
    new-instance v5, Lha/zd;

    .line 423
    .line 424
    const/4 v0, 0x2

    .line 425
    invoke-direct {v5, p1, v0}, Lha/zd;-><init>(Lha/ge;I)V

    .line 426
    .line 427
    .line 428
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 429
    .line 430
    const/4 v3, 0x0

    .line 431
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 432
    .line 433
    move-object v0, v6

    .line 434
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
