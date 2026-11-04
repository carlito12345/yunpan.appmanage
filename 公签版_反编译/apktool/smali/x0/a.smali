.class public final Lx0/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Lx0/c;


# direct methods
.method public constructor <init>(Lx0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx0/a;->a:Lx0/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lx0/c;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx0/c;->b(Landroid/view/View;)Lw/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lw/i;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lx0/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-instance v3, Ly0/n;

    .line 7
    .line 8
    invoke-direct {v3, v1}, Ly0/n;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9
    .line 10
    .line 11
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const-class v5, Ljava/lang/Boolean;

    .line 16
    .line 17
    const/16 v6, 0x13

    .line 18
    .line 19
    const/16 v7, 0x1c

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-lt v4, v7, :cond_0

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lx0/u0;->d(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-lt v4, v6, :cond_1

    .line 34
    .line 35
    const v4, 0x7f0b02df

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v4, v8

    .line 50
    :goto_0
    check-cast v4, Ljava/lang/Boolean;

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v4, 0x0

    .line 64
    :goto_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    if-lt v10, v7, :cond_3

    .line 67
    .line 68
    invoke-static {v1, v4}, Lo5/g;->z(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v3, v2, v4}, Ly0/n;->i(IZ)V

    .line 73
    .line 74
    .line 75
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    if-lt v4, v7, :cond_4

    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lx0/u0;->c(Landroid/view/View;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    if-lt v4, v6, :cond_5

    .line 89
    .line 90
    const v4, 0x7f0b02da

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v4, v8

    .line 105
    :goto_3
    check-cast v4, Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    const/4 v4, 0x1

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    const/4 v4, 0x0

    .line 118
    :goto_4
    if-lt v10, v7, :cond_7

    .line 119
    .line 120
    invoke-static {v1, v4}, Lo5/g;->s(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_7
    const/4 v5, 0x2

    .line 125
    invoke-virtual {v3, v5, v4}, Ly0/n;->i(IZ)V

    .line 126
    .line 127
    .line 128
    :goto_5
    invoke-static/range {p1 .. p1}, Lx0/b1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-lt v10, v7, :cond_8

    .line 133
    .line 134
    invoke-static {v1, v4}, Lo5/g;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    if-lt v10, v6, :cond_9

    .line 139
    .line 140
    invoke-static/range {p2 .. p2}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 145
    .line 146
    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_6
    const/16 v4, 0x1e

    .line 150
    .line 151
    if-lt v10, v4, :cond_a

    .line 152
    .line 153
    invoke-static/range {p1 .. p1}, Lx0/w0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    goto :goto_7

    .line 158
    :cond_a
    if-lt v10, v6, :cond_b

    .line 159
    .line 160
    const v5, 0x7f0b02e0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    const-class v7, Ljava/lang/CharSequence;

    .line 168
    .line 169
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_b

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_b
    move-object v5, v8

    .line 177
    :goto_7
    check-cast v5, Ljava/lang/CharSequence;

    .line 178
    .line 179
    if-lt v10, v4, :cond_d

    .line 180
    .line 181
    invoke-static {v1, v5}, Ly0/h;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :cond_c
    :goto_8
    move-object/from16 v4, p0

    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_d
    if-lt v10, v6, :cond_c

    .line 188
    .line 189
    invoke-static/range {p2 .. p2}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 194
    .line 195
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    goto :goto_8

    .line 199
    :goto_9
    iget-object v5, v4, Lx0/a;->a:Lx0/c;

    .line 200
    .line 201
    invoke-virtual {v5, v0, v3}, Lx0/c;->d(Landroid/view/View;Ly0/n;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    if-lt v10, v6, :cond_16

    .line 209
    .line 210
    const/16 v7, 0x1a

    .line 211
    .line 212
    if-ge v10, v7, :cond_16

    .line 213
    .line 214
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 215
    .line 216
    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 217
    .line 218
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 219
    .line 220
    const-string v13, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 221
    .line 222
    if-lt v10, v6, :cond_e

    .line 223
    .line 224
    invoke-static/range {p2 .. p2}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static/range {p2 .. p2}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static/range {p2 .. p2}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static/range {p2 .. p2}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_e
    const v1, 0x7f0b02d9

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Landroid/util/SparseArray;

    .line 260
    .line 261
    if-eqz v6, :cond_11

    .line 262
    .line 263
    new-instance v10, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    const/4 v14, 0x0

    .line 269
    :goto_a
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 270
    .line 271
    .line 272
    move-result v15

    .line 273
    if-ge v14, v15, :cond_10

    .line 274
    .line 275
    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v15

    .line 279
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 280
    .line 281
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v15

    .line 285
    if-nez v15, :cond_f

    .line 286
    .line 287
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    :cond_f
    add-int/2addr v14, v2

    .line 295
    goto :goto_a

    .line 296
    :cond_10
    const/4 v14, 0x0

    .line 297
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    if-ge v14, v15, :cond_11

    .line 302
    .line 303
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    check-cast v15, Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v15

    .line 313
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 314
    .line 315
    .line 316
    add-int/2addr v14, v2

    .line 317
    goto :goto_b

    .line 318
    :cond_11
    instance-of v6, v5, Landroid/text/Spanned;

    .line 319
    .line 320
    if-eqz v6, :cond_12

    .line 321
    .line 322
    move-object v6, v5

    .line 323
    check-cast v6, Landroid/text/Spanned;

    .line 324
    .line 325
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    const-class v10, Landroid/text/style/ClickableSpan;

    .line 330
    .line 331
    invoke-interface {v6, v9, v8, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    move-object v8, v6

    .line 336
    check-cast v8, [Landroid/text/style/ClickableSpan;

    .line 337
    .line 338
    :cond_12
    if-eqz v8, :cond_16

    .line 339
    .line 340
    array-length v6, v8

    .line 341
    if-lez v6, :cond_16

    .line 342
    .line 343
    invoke-virtual {v3}, Ly0/n;->g()Landroid/os/Bundle;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 348
    .line 349
    const v14, 0x7f0b001a

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v10, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    check-cast v6, Landroid/util/SparseArray;

    .line 360
    .line 361
    if-nez v6, :cond_13

    .line 362
    .line 363
    new-instance v6, Landroid/util/SparseArray;

    .line 364
    .line 365
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_13
    const/4 v1, 0x0

    .line 372
    :goto_c
    array-length v10, v8

    .line 373
    if-ge v1, v10, :cond_16

    .line 374
    .line 375
    aget-object v10, v8, v1

    .line 376
    .line 377
    const/4 v14, 0x0

    .line 378
    :goto_d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 379
    .line 380
    .line 381
    move-result v15

    .line 382
    if-ge v14, v15, :cond_15

    .line 383
    .line 384
    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v15

    .line 388
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 389
    .line 390
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v15

    .line 394
    check-cast v15, Landroid/text/style/ClickableSpan;

    .line 395
    .line 396
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v15

    .line 400
    if-eqz v15, :cond_14

    .line 401
    .line 402
    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 403
    .line 404
    .line 405
    move-result v10

    .line 406
    goto :goto_e

    .line 407
    :cond_14
    add-int/2addr v14, v2

    .line 408
    goto :goto_d

    .line 409
    :cond_15
    sget v10, Ly0/n;->c:I

    .line 410
    .line 411
    add-int/lit8 v14, v10, 0x1

    .line 412
    .line 413
    sput v14, Ly0/n;->c:I

    .line 414
    .line 415
    :goto_e
    new-instance v14, Ljava/lang/ref/WeakReference;

    .line 416
    .line 417
    aget-object v15, v8, v1

    .line 418
    .line 419
    invoke-direct {v14, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    aget-object v14, v8, v1

    .line 426
    .line 427
    move-object v15, v5

    .line 428
    check-cast v15, Landroid/text/Spanned;

    .line 429
    .line 430
    invoke-virtual {v3, v13}, Ly0/n;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 435
    .line 436
    .line 437
    move-result v16

    .line 438
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3, v12}, Ly0/n;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v11}, Ly0/n;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3, v7}, Ly0/n;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    const/4 v2, 0x1

    .line 487
    add-int/2addr v1, v2

    .line 488
    const/4 v9, 0x0

    .line 489
    goto :goto_c

    .line 490
    :cond_16
    const v1, 0x7f0b02d8

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Ljava/util/List;

    .line 498
    .line 499
    if-nez v0, :cond_17

    .line 500
    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    :cond_17
    const/4 v9, 0x0

    .line 506
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-ge v9, v1, :cond_18

    .line 511
    .line 512
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Ly0/f;

    .line 517
    .line 518
    invoke-virtual {v3, v1}, Ly0/n;->b(Ly0/f;)V

    .line 519
    .line 520
    .line 521
    const/4 v1, 0x1

    .line 522
    add-int/2addr v9, v1

    .line 523
    goto :goto_f

    .line 524
    :cond_18
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lx0/c;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lx0/c;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lx0/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lx0/c;->h(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/a;->a:Lx0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lx0/c;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
