.class public final Lg7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:I

.field public static m:Z

.field public static n:Ljava/lang/reflect/Constructor;

.field public static o:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;

.field public final c:I

.field public d:I

.field public e:Landroid/text/Layout$Alignment;

.field public f:I

.field public g:F

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    sput v0, Lg7/h;->l:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg7/h;->a:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Lg7/h;->b:Landroid/text/TextPaint;

    .line 7
    .line 8
    iput p3, p0, Lg7/h;->c:I

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lg7/h;->d:I

    .line 15
    .line 16
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    iput-object p1, p0, Lg7/h;->e:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    const p1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lg7/h;->f:I

    .line 24
    .line 25
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput p1, p0, Lg7/h;->g:F

    .line 28
    .line 29
    sget p1, Lg7/h;->l:I

    .line 30
    .line 31
    iput p1, p0, Lg7/h;->h:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lg7/h;->i:Z

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lg7/h;->k:Landroid/text/TextUtils$TruncateAt;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Landroid/text/StaticLayout;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v7, 0x6

    .line 4
    const/4 v8, 0x5

    .line 5
    const/4 v9, 0x4

    .line 6
    const/4 v10, 0x3

    .line 7
    const/4 v11, 0x2

    .line 8
    const/16 v12, 0xd

    .line 9
    .line 10
    const/4 v13, 0x1

    .line 11
    const/4 v14, 0x0

    .line 12
    iget-object v15, v1, Lg7/h;->a:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-nez v15, :cond_0

    .line 15
    .line 16
    const-string v15, ""

    .line 17
    .line 18
    iput-object v15, v1, Lg7/h;->a:Ljava/lang/CharSequence;

    .line 19
    .line 20
    :cond_0
    iget v15, v1, Lg7/h;->c:I

    .line 21
    .line 22
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v15

    .line 26
    iget-object v0, v1, Lg7/h;->a:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget v2, v1, Lg7/h;->f:I

    .line 29
    .line 30
    iget-object v3, v1, Lg7/h;->b:Landroid/text/TextPaint;

    .line 31
    .line 32
    if-ne v2, v13, :cond_1

    .line 33
    .line 34
    int-to-float v2, v15

    .line 35
    iget-object v4, v1, Lg7/h;->k:Landroid/text/TextUtils$TruncateAt;

    .line 36
    .line 37
    invoke-static {v0, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget v4, v1, Lg7/h;->d:I

    .line 46
    .line 47
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput v2, v1, Lg7/h;->d:I

    .line 52
    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/high16 v16, 0x3f800000    # 1.0f

    .line 56
    .line 57
    const/16 v5, 0x17

    .line 58
    .line 59
    if-lt v4, v5, :cond_7

    .line 60
    .line 61
    iget-boolean v4, v1, Lg7/h;->j:Z

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    iget v4, v1, Lg7/h;->f:I

    .line 66
    .line 67
    if-ne v4, v13, :cond_2

    .line 68
    .line 69
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 70
    .line 71
    iput-object v4, v1, Lg7/h;->e:Landroid/text/Layout$Alignment;

    .line 72
    .line 73
    :cond_2
    invoke-static {v0, v2, v3, v15}, Ld2/c;->g(Ljava/lang/CharSequence;ILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, v1, Lg7/h;->e:Landroid/text/Layout$Alignment;

    .line 78
    .line 79
    invoke-static {v0, v2}, Ld2/c;->y(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v2, v1, Lg7/h;->i:Z

    .line 83
    .line 84
    invoke-static {v0, v2}, Ld2/c;->A(Landroid/text/StaticLayout$Builder;Z)V

    .line 85
    .line 86
    .line 87
    iget-boolean v2, v1, Lg7/h;->j:Z

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-static {}, Lb1/o;->C()Landroid/text/TextDirectionHeuristic;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Lb1/o;->z()Landroid/text/TextDirectionHeuristic;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :goto_0
    invoke-static {v0, v2}, Lr8/a;->n(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v1, Lg7/h;->k:Landroid/text/TextUtils$TruncateAt;

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-static {v0, v2}, Ld2/c;->z(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget v2, v1, Lg7/h;->f:I

    .line 111
    .line 112
    invoke-static {v0, v2}, Ld2/c;->x(Landroid/text/StaticLayout$Builder;I)V

    .line 113
    .line 114
    .line 115
    iget v2, v1, Lg7/h;->g:F

    .line 116
    .line 117
    cmpl-float v3, v2, v16

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    invoke-static {v0, v2}, Ld2/c;->w(Landroid/text/StaticLayout$Builder;F)V

    .line 122
    .line 123
    .line 124
    :cond_5
    iget v2, v1, Lg7/h;->f:I

    .line 125
    .line 126
    if-le v2, v13, :cond_6

    .line 127
    .line 128
    iget v2, v1, Lg7/h;->h:I

    .line 129
    .line 130
    invoke-static {v0, v2}, Ld2/c;->D(Landroid/text/StaticLayout$Builder;I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-static {v0}, Ld2/c;->h(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0

    .line 138
    :cond_7
    sget-boolean v2, Lg7/h;->m:Z

    .line 139
    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_8
    :try_start_0
    iget-boolean v2, v1, Lg7/h;->j:Z

    .line 145
    .line 146
    if-eqz v2, :cond_9

    .line 147
    .line 148
    if-lt v4, v5, :cond_9

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    goto :goto_1

    .line 152
    :cond_9
    const/4 v2, 0x0

    .line 153
    :goto_1
    const/16 v5, 0x12

    .line 154
    .line 155
    if-lt v4, v5, :cond_b

    .line 156
    .line 157
    invoke-static {}, Lb1/o;->i()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    invoke-static {}, Lb1/o;->C()Landroid/text/TextDirectionHeuristic;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    goto/16 :goto_6

    .line 170
    .line 171
    :cond_a
    invoke-static {}, Lb1/o;->z()Landroid/text/TextDirectionHeuristic;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :goto_2
    sput-object v2, Lg7/h;->o:Ljava/lang/Object;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_b
    const-class v2, Lg7/h;

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-boolean v4, v1, Lg7/h;->j:Z

    .line 185
    .line 186
    if-eqz v4, :cond_c

    .line 187
    .line 188
    const-string v4, "RTL"

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_c
    const-string v4, "LTR"

    .line 192
    .line 193
    :goto_3
    const-string v5, "android.text.TextDirectionHeuristic"

    .line 194
    .line 195
    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v6, "android.text.TextDirectionHeuristics"

    .line 200
    .line 201
    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    sput-object v2, Lg7/h;->o:Ljava/lang/Object;

    .line 214
    .line 215
    move-object v4, v5

    .line 216
    :goto_4
    new-array v2, v12, [Ljava/lang/Class;

    .line 217
    .line 218
    const-class v5, Ljava/lang/CharSequence;

    .line 219
    .line 220
    aput-object v5, v2, v14

    .line 221
    .line 222
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 223
    .line 224
    aput-object v5, v2, v13

    .line 225
    .line 226
    aput-object v5, v2, v11

    .line 227
    .line 228
    const-class v6, Landroid/text/TextPaint;

    .line 229
    .line 230
    aput-object v6, v2, v10

    .line 231
    .line 232
    aput-object v5, v2, v9

    .line 233
    .line 234
    const-class v6, Landroid/text/Layout$Alignment;

    .line 235
    .line 236
    aput-object v6, v2, v8

    .line 237
    .line 238
    aput-object v4, v2, v7

    .line 239
    .line 240
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 241
    .line 242
    const/4 v6, 0x7

    .line 243
    aput-object v4, v2, v6

    .line 244
    .line 245
    const/16 v6, 0x8

    .line 246
    .line 247
    aput-object v4, v2, v6

    .line 248
    .line 249
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 250
    .line 251
    const/16 v6, 0x9

    .line 252
    .line 253
    aput-object v4, v2, v6

    .line 254
    .line 255
    const-class v4, Landroid/text/TextUtils$TruncateAt;

    .line 256
    .line 257
    const/16 v6, 0xa

    .line 258
    .line 259
    aput-object v4, v2, v6

    .line 260
    .line 261
    const/16 v4, 0xb

    .line 262
    .line 263
    aput-object v5, v2, v4

    .line 264
    .line 265
    const/16 v4, 0xc

    .line 266
    .line 267
    aput-object v5, v2, v4

    .line 268
    .line 269
    const-class v4, Landroid/text/StaticLayout;

    .line 270
    .line 271
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    sput-object v2, Lg7/h;->n:Ljava/lang/reflect/Constructor;

    .line 276
    .line 277
    invoke-virtual {v2, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 278
    .line 279
    .line 280
    sput-boolean v13, Lg7/h;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .line 282
    :goto_5
    :try_start_1
    sget-object v2, Lg7/h;->n:Ljava/lang/reflect/Constructor;

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget v5, v1, Lg7/h;->d:I

    .line 292
    .line 293
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    iget-object v7, v1, Lg7/h;->e:Landroid/text/Layout$Alignment;

    .line 302
    .line 303
    sget-object v17, Lg7/h;->o:Ljava/lang/Object;

    .line 304
    .line 305
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 309
    .line 310
    .line 311
    move-result-object v16

    .line 312
    const/16 v18, 0x0

    .line 313
    .line 314
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    .line 316
    .line 317
    move-result-object v18

    .line 318
    iget-boolean v8, v1, Lg7/h;->i:Z

    .line 319
    .line 320
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v15

    .line 328
    iget v9, v1, Lg7/h;->f:I

    .line 329
    .line 330
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    new-array v12, v12, [Ljava/lang/Object;

    .line 335
    .line 336
    aput-object v0, v12, v14

    .line 337
    .line 338
    aput-object v4, v12, v13

    .line 339
    .line 340
    aput-object v5, v12, v11

    .line 341
    .line 342
    aput-object v3, v12, v10

    .line 343
    .line 344
    const/4 v0, 0x4

    .line 345
    aput-object v6, v12, v0

    .line 346
    .line 347
    const/4 v0, 0x5

    .line 348
    aput-object v7, v12, v0

    .line 349
    .line 350
    const/4 v0, 0x6

    .line 351
    aput-object v17, v12, v0

    .line 352
    .line 353
    const/4 v0, 0x7

    .line 354
    aput-object v16, v12, v0

    .line 355
    .line 356
    const/16 v0, 0x8

    .line 357
    .line 358
    aput-object v18, v12, v0

    .line 359
    .line 360
    const/16 v0, 0x9

    .line 361
    .line 362
    aput-object v8, v12, v0

    .line 363
    .line 364
    const/4 v0, 0x0

    .line 365
    const/16 v3, 0xa

    .line 366
    .line 367
    aput-object v0, v12, v3

    .line 368
    .line 369
    const/16 v0, 0xb

    .line 370
    .line 371
    aput-object v15, v12, v0

    .line 372
    .line 373
    const/16 v0, 0xc

    .line 374
    .line 375
    aput-object v9, v12, v0

    .line 376
    .line 377
    invoke-virtual {v2, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .line 383
    return-object v0

    .line 384
    :catch_1
    move-exception v0

    .line 385
    new-instance v2, Lg7/g;

    .line 386
    .line 387
    invoke-direct {v2, v0}, Lg7/g;-><init>(Ljava/lang/Exception;)V

    .line 388
    .line 389
    .line 390
    throw v2

    .line 391
    :goto_6
    new-instance v2, Lg7/g;

    .line 392
    .line 393
    invoke-direct {v2, v0}, Lg7/g;-><init>(Ljava/lang/Exception;)V

    .line 394
    .line 395
    .line 396
    throw v2
.end method
