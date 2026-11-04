.class public final synthetic Lha/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lma/g;
.implements Lcom/hjq/permissions/OnPermissionCallback;
.implements Lv8/c;
.implements Ly9/a;
.implements Lu1/f;
.implements Lt7/d;
.implements Lte/p;
.implements Lq7/a0;
.implements Lqh/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lha/jd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Constructor;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-class v1, Ll2/o;

    .line 3
    .line 4
    iget v2, p0, Lha/jd;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v2, "androidx.media3.decoder.midi.MidiExtractor"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    const-string v3, "androidx.media3.decoder.flac.FlacLibrary"

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "isAvailable"

    .line 33
    .line 34
    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x1

    .line 59
    new-array v1, v1, [Ljava/lang/Class;

    .line 60
    .line 61
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    aput-object v2, v1, v3

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_0
    return-object v0

    .line 71
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    const/4 v2, 0x3

    .line 2
    const/4 v3, 0x2

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    move-object/from16 v6, p0

    .line 6
    .line 7
    iget v7, v6, Lha/jd;->a:I

    .line 8
    .line 9
    sparse-switch v7, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v0, p1

    .line 13
    .line 14
    check-cast v0, Lt1/b;

    .line 15
    .line 16
    iget v0, v0, Lt1/b;->r:I

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :sswitch_0
    move-object/from16 v0, p1

    .line 24
    .line 25
    check-cast v0, Lr1/q;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lr1/q;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ": "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lr1/q;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :sswitch_1
    move-object/from16 v0, p1

    .line 53
    .line 54
    check-cast v0, Li3/a;

    .line 55
    .line 56
    iget-wide v0, v0, Li3/a;->b:J

    .line 57
    .line 58
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmp-long v4, v0, v2

    .line 64
    .line 65
    if-nez v4, :cond_0

    .line 66
    .line 67
    const-wide/16 v0, 0x0

    .line 68
    .line 69
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :sswitch_2
    move-object/from16 v7, p1

    .line 75
    .line 76
    check-cast v7, Lt1/b;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v8, Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v9, v7, Lt1/b;->a:Ljava/lang/CharSequence;

    .line 87
    .line 88
    if-eqz v9, :cond_5

    .line 89
    .line 90
    sget-object v10, Lt1/b;->s:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    instance-of v10, v9, Landroid/text/Spanned;

    .line 96
    .line 97
    if-eqz v10, :cond_5

    .line 98
    .line 99
    check-cast v9, Landroid/text/Spanned;

    .line 100
    .line 101
    sget-object v10, Lt1/d;->a:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v10, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    const-class v12, Lt1/g;

    .line 113
    .line 114
    invoke-interface {v9, v4, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    check-cast v11, [Lt1/g;

    .line 119
    .line 120
    array-length v12, v11

    .line 121
    const/4 v13, 0x0

    .line 122
    :goto_0
    if-ge v13, v12, :cond_1

    .line 123
    .line 124
    aget-object v14, v11, v13

    .line 125
    .line 126
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    new-instance v15, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lt1/g;->c:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, v14, Lt1/g;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Lt1/g;->d:Ljava/lang/String;

    .line 142
    .line 143
    iget v1, v14, Lt1/g;->b:I

    .line 144
    .line 145
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    invoke-static {v9, v14, v5, v15}, Lt1/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    add-int/2addr v13, v5

    .line 156
    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    const-class v1, Lt1/h;

    .line 162
    .line 163
    invoke-interface {v9, v4, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, [Lt1/h;

    .line 168
    .line 169
    array-length v1, v0

    .line 170
    const/4 v11, 0x0

    .line 171
    :goto_1
    if-ge v11, v1, :cond_2

    .line 172
    .line 173
    aget-object v12, v0, v11

    .line 174
    .line 175
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v13, Landroid/os/Bundle;

    .line 179
    .line 180
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 181
    .line 182
    .line 183
    sget-object v14, Lt1/h;->d:Ljava/lang/String;

    .line 184
    .line 185
    iget v15, v12, Lt1/h;->a:I

    .line 186
    .line 187
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    sget-object v14, Lt1/h;->e:Ljava/lang/String;

    .line 191
    .line 192
    iget v15, v12, Lt1/h;->b:I

    .line 193
    .line 194
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    sget-object v14, Lt1/h;->f:Ljava/lang/String;

    .line 198
    .line 199
    iget v15, v12, Lt1/h;->c:I

    .line 200
    .line 201
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-static {v9, v12, v3, v13}, Lt1/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    add-int/2addr v11, v5

    .line 212
    goto :goto_1

    .line 213
    :cond_2
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const-class v1, Lt1/e;

    .line 218
    .line 219
    invoke-interface {v9, v4, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, [Lt1/e;

    .line 224
    .line 225
    array-length v1, v0

    .line 226
    const/4 v3, 0x0

    .line 227
    :goto_2
    if-ge v3, v1, :cond_3

    .line 228
    .line 229
    aget-object v11, v0, v3

    .line 230
    .line 231
    const/4 v12, 0x0

    .line 232
    invoke-static {v9, v11, v2, v12}, Lt1/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    add-int/2addr v3, v5

    .line 240
    goto :goto_2

    .line 241
    :cond_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    const-class v1, Lt1/i;

    .line 246
    .line 247
    invoke-interface {v9, v4, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, [Lt1/i;

    .line 252
    .line 253
    array-length v1, v0

    .line 254
    const/4 v2, 0x0

    .line 255
    :goto_3
    if-ge v2, v1, :cond_4

    .line 256
    .line 257
    aget-object v3, v0, v2

    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    new-instance v11, Landroid/os/Bundle;

    .line 263
    .line 264
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 265
    .line 266
    .line 267
    sget-object v12, Lt1/i;->b:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v13, v3, Lt1/i;->a:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const/4 v12, 0x4

    .line 275
    invoke-static {v9, v3, v12, v11}, Lt1/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    add-int/2addr v2, v5

    .line 283
    goto :goto_3

    .line 284
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_5

    .line 289
    .line 290
    sget-object v0, Lt1/b;->t:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 293
    .line 294
    .line 295
    :cond_5
    sget-object v0, Lt1/b;->u:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v1, v7, Lt1/b;->b:Landroid/text/Layout$Alignment;

    .line 298
    .line 299
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 300
    .line 301
    .line 302
    sget-object v0, Lt1/b;->v:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v1, v7, Lt1/b;->c:Landroid/text/Layout$Alignment;

    .line 305
    .line 306
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Lt1/b;->y:Ljava/lang/String;

    .line 310
    .line 311
    iget v1, v7, Lt1/b;->e:F

    .line 312
    .line 313
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 314
    .line 315
    .line 316
    sget-object v0, Lt1/b;->z:Ljava/lang/String;

    .line 317
    .line 318
    iget v1, v7, Lt1/b;->f:I

    .line 319
    .line 320
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    .line 322
    .line 323
    sget-object v0, Lt1/b;->A:Ljava/lang/String;

    .line 324
    .line 325
    iget v1, v7, Lt1/b;->g:I

    .line 326
    .line 327
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    sget-object v0, Lt1/b;->B:Ljava/lang/String;

    .line 331
    .line 332
    iget v1, v7, Lt1/b;->h:F

    .line 333
    .line 334
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lt1/b;->C:Ljava/lang/String;

    .line 338
    .line 339
    iget v1, v7, Lt1/b;->i:I

    .line 340
    .line 341
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    sget-object v0, Lt1/b;->D:Ljava/lang/String;

    .line 345
    .line 346
    iget v1, v7, Lt1/b;->n:I

    .line 347
    .line 348
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    sget-object v0, Lt1/b;->E:Ljava/lang/String;

    .line 352
    .line 353
    iget v1, v7, Lt1/b;->o:F

    .line 354
    .line 355
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 356
    .line 357
    .line 358
    sget-object v0, Lt1/b;->F:Ljava/lang/String;

    .line 359
    .line 360
    iget v1, v7, Lt1/b;->j:F

    .line 361
    .line 362
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 363
    .line 364
    .line 365
    sget-object v0, Lt1/b;->G:Ljava/lang/String;

    .line 366
    .line 367
    iget v1, v7, Lt1/b;->k:F

    .line 368
    .line 369
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 370
    .line 371
    .line 372
    sget-object v0, Lt1/b;->I:Ljava/lang/String;

    .line 373
    .line 374
    iget-boolean v1, v7, Lt1/b;->l:Z

    .line 375
    .line 376
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    .line 378
    .line 379
    sget-object v0, Lt1/b;->H:Ljava/lang/String;

    .line 380
    .line 381
    iget v1, v7, Lt1/b;->m:I

    .line 382
    .line 383
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    .line 385
    .line 386
    sget-object v0, Lt1/b;->J:Ljava/lang/String;

    .line 387
    .line 388
    iget v1, v7, Lt1/b;->p:I

    .line 389
    .line 390
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    sget-object v0, Lt1/b;->K:Ljava/lang/String;

    .line 394
    .line 395
    iget v1, v7, Lt1/b;->q:F

    .line 396
    .line 397
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Lt1/b;->L:Ljava/lang/String;

    .line 401
    .line 402
    iget v1, v7, Lt1/b;->r:I

    .line 403
    .line 404
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    iget-object v0, v7, Lt1/b;->d:Landroid/graphics/Bitmap;

    .line 408
    .line 409
    if-eqz v0, :cond_6

    .line 410
    .line 411
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 412
    .line 413
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 414
    .line 415
    .line 416
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 417
    .line 418
    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    invoke-static {v0}, La9/o;->t(Z)V

    .line 423
    .line 424
    .line 425
    sget-object v0, Lt1/b;->x:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 432
    .line 433
    .line 434
    :cond_6
    return-object v8

    .line 435
    :sswitch_3
    const/4 v12, 0x0

    .line 436
    move-object/from16 v0, p1

    .line 437
    .line 438
    check-cast v0, Landroid/os/Bundle;

    .line 439
    .line 440
    sget-object v1, Lt1/b;->s:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    if-eqz v1, :cond_b

    .line 447
    .line 448
    sget-object v7, Lt1/b;->t:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    if-eqz v7, :cond_c

    .line 455
    .line 456
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-eqz v8, :cond_c

    .line 469
    .line 470
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    check-cast v8, Landroid/os/Bundle;

    .line 475
    .line 476
    sget-object v9, Lt1/d;->a:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    sget-object v10, Lt1/d;->b:Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    sget-object v11, Lt1/d;->c:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    sget-object v13, Lt1/d;->d:Ljava/lang/String;

    .line 495
    .line 496
    const/4 v14, -0x1

    .line 497
    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    sget-object v14, Lt1/d;->e:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    if-eq v13, v5, :cond_a

    .line 508
    .line 509
    if-eq v13, v3, :cond_9

    .line 510
    .line 511
    if-eq v13, v2, :cond_8

    .line 512
    .line 513
    const/4 v14, 0x4

    .line 514
    if-eq v13, v14, :cond_7

    .line 515
    .line 516
    goto :goto_5

    .line 517
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    new-instance v13, Lt1/i;

    .line 521
    .line 522
    sget-object v15, Lt1/i;->b:Ljava/lang/String;

    .line 523
    .line 524
    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    invoke-direct {v13, v8}, Lt1/i;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v1, v13, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 535
    .line 536
    .line 537
    goto :goto_5

    .line 538
    :cond_8
    const/4 v14, 0x4

    .line 539
    new-instance v8, Lt1/e;

    .line 540
    .line 541
    invoke-direct {v8}, Lt1/e;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-interface {v1, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_9
    const/4 v14, 0x4

    .line 549
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    new-instance v13, Lt1/h;

    .line 553
    .line 554
    sget-object v15, Lt1/h;->d:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-result v15

    .line 560
    sget-object v2, Lt1/h;->e:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    sget-object v3, Lt1/h;->f:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    invoke-direct {v13, v15, v2, v3}, Lt1/h;-><init>(III)V

    .line 573
    .line 574
    .line 575
    invoke-interface {v1, v13, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 576
    .line 577
    .line 578
    goto :goto_5

    .line 579
    :cond_a
    const/4 v14, 0x4

    .line 580
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    new-instance v2, Lt1/g;

    .line 584
    .line 585
    sget-object v3, Lt1/g;->c:Ljava/lang/String;

    .line 586
    .line 587
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    sget-object v13, Lt1/g;->d:Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    invoke-direct {v2, v3, v8}, Lt1/g;-><init>(Ljava/lang/String;I)V

    .line 601
    .line 602
    .line 603
    invoke-interface {v1, v2, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 604
    .line 605
    .line 606
    :goto_5
    const/4 v2, 0x3

    .line 607
    const/4 v3, 0x2

    .line 608
    goto/16 :goto_4

    .line 609
    .line 610
    :cond_b
    move-object v1, v12

    .line 611
    :cond_c
    sget-object v2, Lt1/b;->u:Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    check-cast v2, Landroid/text/Layout$Alignment;

    .line 618
    .line 619
    if-eqz v2, :cond_d

    .line 620
    .line 621
    move-object v15, v2

    .line 622
    goto :goto_6

    .line 623
    :cond_d
    move-object v15, v12

    .line 624
    :goto_6
    sget-object v2, Lt1/b;->v:Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    check-cast v2, Landroid/text/Layout$Alignment;

    .line 631
    .line 632
    if-eqz v2, :cond_e

    .line 633
    .line 634
    move-object/from16 v16, v2

    .line 635
    .line 636
    goto :goto_7

    .line 637
    :cond_e
    move-object/from16 v16, v12

    .line 638
    .line 639
    :goto_7
    sget-object v2, Lt1/b;->w:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    check-cast v2, Landroid/graphics/Bitmap;

    .line 646
    .line 647
    if-eqz v2, :cond_f

    .line 648
    .line 649
    move-object/from16 v17, v2

    .line 650
    .line 651
    :goto_8
    move-object v14, v12

    .line 652
    goto :goto_9

    .line 653
    :cond_f
    sget-object v2, Lt1/b;->x:Ljava/lang/String;

    .line 654
    .line 655
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    if-eqz v2, :cond_10

    .line 660
    .line 661
    array-length v1, v2

    .line 662
    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    move-object/from16 v17, v1

    .line 667
    .line 668
    goto :goto_8

    .line 669
    :cond_10
    move-object v14, v1

    .line 670
    move-object/from16 v17, v12

    .line 671
    .line 672
    :goto_9
    sget-object v1, Lt1/b;->y:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    const v3, -0x800001

    .line 679
    .line 680
    .line 681
    const/high16 v7, -0x80000000

    .line 682
    .line 683
    if-eqz v2, :cond_11

    .line 684
    .line 685
    sget-object v2, Lt1/b;->z:Ljava/lang/String;

    .line 686
    .line 687
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    if-eqz v8, :cond_11

    .line 692
    .line 693
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    move/from16 v18, v1

    .line 702
    .line 703
    move/from16 v19, v2

    .line 704
    .line 705
    goto :goto_a

    .line 706
    :cond_11
    const v18, -0x800001

    .line 707
    .line 708
    .line 709
    const/high16 v19, -0x80000000

    .line 710
    .line 711
    :goto_a
    sget-object v1, Lt1/b;->A:Ljava/lang/String;

    .line 712
    .line 713
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    if-eqz v2, :cond_12

    .line 718
    .line 719
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    move/from16 v20, v1

    .line 724
    .line 725
    goto :goto_b

    .line 726
    :cond_12
    const/high16 v20, -0x80000000

    .line 727
    .line 728
    :goto_b
    sget-object v1, Lt1/b;->B:Ljava/lang/String;

    .line 729
    .line 730
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    if-eqz v2, :cond_13

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    move/from16 v21, v1

    .line 741
    .line 742
    goto :goto_c

    .line 743
    :cond_13
    const v21, -0x800001

    .line 744
    .line 745
    .line 746
    :goto_c
    sget-object v1, Lt1/b;->C:Ljava/lang/String;

    .line 747
    .line 748
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    if-eqz v2, :cond_14

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    move/from16 v22, v1

    .line 759
    .line 760
    goto :goto_d

    .line 761
    :cond_14
    const/high16 v22, -0x80000000

    .line 762
    .line 763
    :goto_d
    sget-object v1, Lt1/b;->E:Ljava/lang/String;

    .line 764
    .line 765
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    if-eqz v2, :cond_15

    .line 770
    .line 771
    sget-object v2, Lt1/b;->D:Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 774
    .line 775
    .line 776
    move-result v8

    .line 777
    if-eqz v8, :cond_15

    .line 778
    .line 779
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 784
    .line 785
    .line 786
    move-result v2

    .line 787
    move/from16 v24, v1

    .line 788
    .line 789
    move/from16 v23, v2

    .line 790
    .line 791
    goto :goto_e

    .line 792
    :cond_15
    const/high16 v23, -0x80000000

    .line 793
    .line 794
    const v24, -0x800001

    .line 795
    .line 796
    .line 797
    :goto_e
    sget-object v1, Lt1/b;->F:Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 800
    .line 801
    .line 802
    move-result v2

    .line 803
    if-eqz v2, :cond_16

    .line 804
    .line 805
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    move/from16 v25, v1

    .line 810
    .line 811
    goto :goto_f

    .line 812
    :cond_16
    const v25, -0x800001

    .line 813
    .line 814
    .line 815
    :goto_f
    sget-object v1, Lt1/b;->G:Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    if-eqz v2, :cond_17

    .line 822
    .line 823
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    move/from16 v26, v1

    .line 828
    .line 829
    goto :goto_10

    .line 830
    :cond_17
    const v26, -0x800001

    .line 831
    .line 832
    .line 833
    :goto_10
    sget-object v1, Lt1/b;->H:Ljava/lang/String;

    .line 834
    .line 835
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    if-eqz v2, :cond_18

    .line 840
    .line 841
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    move/from16 v28, v1

    .line 846
    .line 847
    goto :goto_11

    .line 848
    :cond_18
    const/high16 v1, -0x1000000

    .line 849
    .line 850
    const/4 v5, 0x0

    .line 851
    const/high16 v28, -0x1000000

    .line 852
    .line 853
    :goto_11
    sget-object v1, Lt1/b;->I:Ljava/lang/String;

    .line 854
    .line 855
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    if-nez v1, :cond_19

    .line 860
    .line 861
    const/16 v27, 0x0

    .line 862
    .line 863
    goto :goto_12

    .line 864
    :cond_19
    move/from16 v27, v5

    .line 865
    .line 866
    :goto_12
    sget-object v1, Lt1/b;->J:Ljava/lang/String;

    .line 867
    .line 868
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    if-eqz v2, :cond_1a

    .line 873
    .line 874
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    move/from16 v29, v1

    .line 879
    .line 880
    goto :goto_13

    .line 881
    :cond_1a
    const/high16 v29, -0x80000000

    .line 882
    .line 883
    :goto_13
    sget-object v1, Lt1/b;->K:Ljava/lang/String;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    if-eqz v2, :cond_1b

    .line 890
    .line 891
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    move/from16 v30, v1

    .line 896
    .line 897
    goto :goto_14

    .line 898
    :cond_1b
    const/4 v1, 0x0

    .line 899
    const/16 v30, 0x0

    .line 900
    .line 901
    :goto_14
    sget-object v1, Lt1/b;->L:Ljava/lang/String;

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    if-eqz v2, :cond_1c

    .line 908
    .line 909
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    move/from16 v31, v4

    .line 914
    .line 915
    goto :goto_15

    .line 916
    :cond_1c
    const/16 v31, 0x0

    .line 917
    .line 918
    :goto_15
    new-instance v0, Lt1/b;

    .line 919
    .line 920
    move-object v13, v0

    .line 921
    invoke-direct/range {v13 .. v31}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 922
    .line 923
    .line 924
    return-object v0

    .line 925
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lha/jd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :pswitch_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    :pswitch_1
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 p2, 0x0

    .line 42
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 43
    .line 44
    .line 45
    :goto_2
    return-void

    .line 46
    :pswitch_2
    if-eqz p2, :cond_3

    .line 47
    .line 48
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/4 p2, 0x0

    .line 56
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 57
    .line 58
    .line 59
    :goto_3
    return-void

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d([B)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lha/jd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :pswitch_0
    const/4 v0, 0x2

    .line 13
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lv8/a;Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lha/jd;->a:I

    .line 2
    .line 3
    check-cast p2, Landroid/widget/TextView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lv8/a;->g()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lv8/a;->b()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    new-instance p2, Lfg/b;

    .line 17
    .line 18
    new-instance v0, Lha/if;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, p1, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-direct {p2, v0, p1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lha/jd;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 7
    .line 8
    check-cast p2, Lmb/b;

    .line 9
    .line 10
    const-string v0, "editor"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "pos"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "getText(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p2, v0, v1}, Lsb/h;->c(Lmb/b;Lmb/g;Z)Lmb/o;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p2, p2, Lmb/o;->b:Lmb/b;

    .line 35
    .line 36
    const-string v0, "getEnd(...)"

    .line 37
    .line 38
    invoke-static {p2, v0}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget v0, p2, Lmb/b;->b:I

    .line 50
    .line 51
    iget p2, p2, Lmb/b;->c:I

    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Lmb/a;->A(II)Lmb/b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :sswitch_0
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 59
    .line 60
    check-cast p2, Lmb/b;

    .line 61
    .line 62
    const-string v0, "editor"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "pos"

    .line 68
    .line 69
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "getText(...)"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-static {p2, v0, v1}, Lsb/h;->c(Lmb/b;Lmb/g;Z)Lmb/o;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iget-object p2, p2, Lmb/o;->a:Lmb/b;

    .line 87
    .line 88
    const-string v0, "getStart(...)"

    .line 89
    .line 90
    invoke-static {p2, v0}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget v0, p2, Lmb/b;->b:I

    .line 102
    .line 103
    iget p2, p2, Lmb/b;->c:I

    .line 104
    .line 105
    invoke-virtual {p1, v0, p2}, Lmb/a;->A(II)Lmb/b;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    :sswitch_1
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 111
    .line 112
    check-cast p2, Lmb/b;

    .line 113
    .line 114
    const-string v0, "editor"

    .line 115
    .line 116
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "pos"

    .line 120
    .line 121
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 125
    .line 126
    iget v1, p2, Lmb/b;->b:I

    .line 127
    .line 128
    iget p2, p2, Lmb/b;->c:I

    .line 129
    .line 130
    invoke-interface {v0, v1, p2}, Lwb/d;->o(II)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lmb/g;->n()Lmb/a;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const/16 p2, 0x20

    .line 143
    .line 144
    shr-long v2, v0, p2

    .line 145
    .line 146
    long-to-int p2, v2

    .line 147
    const-wide v2, 0xffffffffL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    and-long/2addr v0, v2

    .line 153
    long-to-int v1, v0

    .line 154
    invoke-virtual {p1, p2, v1}, Lmb/a;->A(II)Lmb/b;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1

    .line 159
    :sswitch_2
    new-instance v0, Llb/a;

    .line 160
    .line 161
    check-cast p1, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    check-cast p2, Ljava/lang/Long;

    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 170
    .line 171
    .line 172
    move-result-wide v1

    .line 173
    invoke-direct {v0, p1, v1, v2}, Llb/a;-><init>(IJ)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u3010\u5728\u4e0a\u5c42\u663e\u793a\u3011\u60ac\u6d6e\u7a97\u6743\u9650"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 6
    .line 7
    iget-boolean v0, p2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    if-eq v1, p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 28
    .line 29
    iput-boolean v0, v2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x2

    .line 38
    if-eq p3, v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    if-ne p3, v0, :cond_6

    .line 42
    .line 43
    :cond_3
    const-string v0, "com.tcl.MultiScreenInteraction_TV"

    .line 44
    .line 45
    invoke-static {v0}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    const-string p1, "\u60a8\u7cfb\u7edf\u4e0d\u5b58\u5728\u6b64app\uff0c\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 52
    .line 53
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 58
    .line 59
    if-eqz v1, :cond_8

    .line 60
    .line 61
    iget v1, v0, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 62
    .line 63
    const/16 v2, 0x3e8

    .line 64
    .line 65
    if-eq v1, v2, :cond_5

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    iget-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 69
    .line 70
    if-nez v1, :cond_7

    .line 71
    .line 72
    iget-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 73
    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    iget-boolean v0, v0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 83
    .line 84
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 85
    .line 86
    iput p3, p2, Lcom/yunpan/appmanage/util/w;->T:I

    .line 87
    .line 88
    :try_start_0
    iget-object v0, p2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 89
    .line 90
    const-string v1, "Tcl_install_mode"

    .line 91
    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    invoke-virtual {p2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_7
    :goto_1
    const-string p1, "\u60a8\u662f\u4e0d\u662f\u7981\u7528\u4e86\u591a\u5c4f\u4e92\u52a8\uff1f"

    .line 107
    .line 108
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_8
    :goto_2
    const-string p1, "\u60a8\u7684\u591a\u5c4f\u4e92\u52a8app\u4e0d\u662f\u7cfb\u7edfapp"

    .line 113
    .line 114
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    return-void
.end method
