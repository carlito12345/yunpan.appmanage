.class public final Lha/j0;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lx9/w0;

.field public final i:Lha/g0;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ILha/g0;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0081

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lha/j0;->i:Lha/g0;

    .line 8
    .line 9
    iput p3, p0, Lha/j0;->j:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b03f3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0b04f1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/j0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lx9/w0;

    .line 42
    .line 43
    invoke-direct {p1}, Lx9/w0;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 47
    .line 48
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 49
    .line 50
    iget v3, p0, Lha/j0;->j:I

    .line 51
    .line 52
    const/high16 v4, 0x10000000

    .line 53
    .line 54
    and-int/2addr v3, v4

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v3, 0x0

    .line 60
    :goto_0
    const-string v5, "FLAG_ACTIVITY_NEW_TASK"

    .line 61
    .line 62
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 69
    .line 70
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 71
    .line 72
    iget v3, p0, Lha/j0;->j:I

    .line 73
    .line 74
    const v4, 0x8000

    .line 75
    .line 76
    .line 77
    and-int/2addr v3, v4

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v3, 0x0

    .line 83
    :goto_1
    const-string v5, "FLAG_ACTIVITY_CLEAR_TASK"

    .line 84
    .line 85
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 92
    .line 93
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 94
    .line 95
    iget v3, p0, Lha/j0;->j:I

    .line 96
    .line 97
    const/high16 v4, 0x4000000

    .line 98
    .line 99
    and-int/2addr v3, v4

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    const/4 v3, 0x0

    .line 105
    :goto_2
    const-string v5, "FLAG_ACTIVITY_CLEAR_TOP"

    .line 106
    .line 107
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 114
    .line 115
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 116
    .line 117
    iget v3, p0, Lha/j0;->j:I

    .line 118
    .line 119
    const/high16 v4, 0x20000000

    .line 120
    .line 121
    and-int/2addr v3, v4

    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    const/4 v3, 0x0

    .line 127
    :goto_3
    const-string v5, "FLAG_ACTIVITY_SINGLE_TOP"

    .line 128
    .line 129
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 136
    .line 137
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 138
    .line 139
    iget v3, p0, Lha/j0;->j:I

    .line 140
    .line 141
    const/high16 v4, 0x8000000

    .line 142
    .line 143
    and-int/2addr v3, v4

    .line 144
    if-eqz v3, :cond_4

    .line 145
    .line 146
    const/4 v3, 0x1

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    const/4 v3, 0x0

    .line 149
    :goto_4
    const-string v5, "FLAG_ACTIVITY_MULTIPLE_TASK"

    .line 150
    .line 151
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 158
    .line 159
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 160
    .line 161
    iget v3, p0, Lha/j0;->j:I

    .line 162
    .line 163
    const/high16 v4, 0x40000000    # 2.0f

    .line 164
    .line 165
    and-int/2addr v3, v4

    .line 166
    if-eqz v3, :cond_5

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    const/4 v3, 0x0

    .line 171
    :goto_5
    const-string v5, "FLAG_ACTIVITY_NO_HISTORY"

    .line 172
    .line 173
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 180
    .line 181
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 182
    .line 183
    iget v3, p0, Lha/j0;->j:I

    .line 184
    .line 185
    const/high16 v4, 0x20000

    .line 186
    .line 187
    and-int/2addr v3, v4

    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    const/4 v3, 0x1

    .line 191
    goto :goto_6

    .line 192
    :cond_6
    const/4 v3, 0x0

    .line 193
    :goto_6
    const-string v5, "FLAG_ACTIVITY_REORDER_TO_FRONT"

    .line 194
    .line 195
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 202
    .line 203
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 204
    .line 205
    iget v3, p0, Lha/j0;->j:I

    .line 206
    .line 207
    const/high16 v4, 0x10000

    .line 208
    .line 209
    and-int/2addr v3, v4

    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    goto :goto_7

    .line 214
    :cond_7
    const/4 v3, 0x0

    .line 215
    :goto_7
    const-string v5, "FLAG_ACTIVITY_NO_ANIMATION"

    .line 216
    .line 217
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 224
    .line 225
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 226
    .line 227
    iget v3, p0, Lha/j0;->j:I

    .line 228
    .line 229
    const/high16 v4, 0x80000

    .line 230
    .line 231
    and-int/2addr v3, v4

    .line 232
    if-eqz v3, :cond_8

    .line 233
    .line 234
    const/4 v3, 0x1

    .line 235
    goto :goto_8

    .line 236
    :cond_8
    const/4 v3, 0x0

    .line 237
    :goto_8
    const-string v5, "FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET"

    .line 238
    .line 239
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 246
    .line 247
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 248
    .line 249
    iget v3, p0, Lha/j0;->j:I

    .line 250
    .line 251
    const/high16 v5, 0x200000

    .line 252
    .line 253
    and-int/2addr v3, v5

    .line 254
    if-eqz v3, :cond_9

    .line 255
    .line 256
    const/4 v3, 0x1

    .line 257
    goto :goto_9

    .line 258
    :cond_9
    const/4 v3, 0x0

    .line 259
    :goto_9
    const-string v6, "FLAG_ACTIVITY_RESET_TASK_IF_NEEDED"

    .line 260
    .line 261
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 268
    .line 269
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 270
    .line 271
    iget v3, p0, Lha/j0;->j:I

    .line 272
    .line 273
    const/high16 v5, 0x2000000

    .line 274
    .line 275
    and-int/2addr v3, v5

    .line 276
    if-eqz v3, :cond_a

    .line 277
    .line 278
    const/4 v3, 0x1

    .line 279
    goto :goto_a

    .line 280
    :cond_a
    const/4 v3, 0x0

    .line 281
    :goto_a
    const-string v6, "FLAG_ACTIVITY_FORWARD_RESULT"

    .line 282
    .line 283
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 290
    .line 291
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 292
    .line 293
    iget v3, p0, Lha/j0;->j:I

    .line 294
    .line 295
    const/high16 v5, 0x1000000

    .line 296
    .line 297
    and-int/2addr v3, v5

    .line 298
    if-eqz v3, :cond_b

    .line 299
    .line 300
    const/4 v3, 0x1

    .line 301
    goto :goto_b

    .line 302
    :cond_b
    const/4 v3, 0x0

    .line 303
    :goto_b
    const-string v6, "FLAG_ACTIVITY_PREVIOUS_IS_TOP"

    .line 304
    .line 305
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 312
    .line 313
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 314
    .line 315
    iget v3, p0, Lha/j0;->j:I

    .line 316
    .line 317
    const/high16 v5, 0x800000

    .line 318
    .line 319
    and-int/2addr v3, v5

    .line 320
    if-eqz v3, :cond_c

    .line 321
    .line 322
    const/4 v3, 0x1

    .line 323
    goto :goto_c

    .line 324
    :cond_c
    const/4 v3, 0x0

    .line 325
    :goto_c
    const-string v6, "FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS"

    .line 326
    .line 327
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 334
    .line 335
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 336
    .line 337
    iget v3, p0, Lha/j0;->j:I

    .line 338
    .line 339
    const/high16 v5, 0x400000

    .line 340
    .line 341
    and-int/2addr v3, v5

    .line 342
    if-eqz v3, :cond_d

    .line 343
    .line 344
    const/4 v3, 0x1

    .line 345
    goto :goto_d

    .line 346
    :cond_d
    const/4 v3, 0x0

    .line 347
    :goto_d
    const-string v6, "FLAG_ACTIVITY_BROUGHT_TO_FRONT"

    .line 348
    .line 349
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 356
    .line 357
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 358
    .line 359
    iget v3, p0, Lha/j0;->j:I

    .line 360
    .line 361
    const/16 v5, 0x4000

    .line 362
    .line 363
    and-int/2addr v3, v5

    .line 364
    if-eqz v3, :cond_e

    .line 365
    .line 366
    const/4 v3, 0x1

    .line 367
    goto :goto_e

    .line 368
    :cond_e
    const/4 v3, 0x0

    .line 369
    :goto_e
    const-string v6, "FLAG_ACTIVITY_TASK_ON_HOME"

    .line 370
    .line 371
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 378
    .line 379
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 380
    .line 381
    iget v3, p0, Lha/j0;->j:I

    .line 382
    .line 383
    const/high16 v5, 0x100000

    .line 384
    .line 385
    and-int/2addr v3, v5

    .line 386
    if-eqz v3, :cond_f

    .line 387
    .line 388
    const/4 v3, 0x1

    .line 389
    goto :goto_f

    .line 390
    :cond_f
    const/4 v3, 0x0

    .line 391
    :goto_f
    const-string v6, "FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY"

    .line 392
    .line 393
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 400
    .line 401
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 402
    .line 403
    iget v3, p0, Lha/j0;->j:I

    .line 404
    .line 405
    const/16 v5, 0x8

    .line 406
    .line 407
    and-int/2addr v3, v5

    .line 408
    if-eqz v3, :cond_10

    .line 409
    .line 410
    const/4 v3, 0x1

    .line 411
    goto :goto_10

    .line 412
    :cond_10
    const/4 v3, 0x0

    .line 413
    :goto_10
    const-string v6, "FLAG_DEBUG_LOG_RESOLUTION"

    .line 414
    .line 415
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 422
    .line 423
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 424
    .line 425
    iget v3, p0, Lha/j0;->j:I

    .line 426
    .line 427
    const/high16 v5, 0x40000

    .line 428
    .line 429
    and-int/2addr v3, v5

    .line 430
    if-eqz v3, :cond_11

    .line 431
    .line 432
    const/4 v3, 0x1

    .line 433
    goto :goto_11

    .line 434
    :cond_11
    const/4 v3, 0x0

    .line 435
    :goto_11
    const-string v6, "FLAG_ACTIVITY_NO_USER_ACTION"

    .line 436
    .line 437
    invoke-direct {v0, v6, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 444
    .line 445
    const/16 v0, 0x15

    .line 446
    .line 447
    if-lt p1, v0, :cond_14

    .line 448
    .line 449
    iget-object v0, p0, Lha/j0;->h:Lx9/w0;

    .line 450
    .line 451
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 452
    .line 453
    iget v5, p0, Lha/j0;->j:I

    .line 454
    .line 455
    and-int/2addr v5, v4

    .line 456
    if-eqz v5, :cond_12

    .line 457
    .line 458
    const/4 v5, 0x1

    .line 459
    goto :goto_12

    .line 460
    :cond_12
    const/4 v5, 0x0

    .line 461
    :goto_12
    const-string v6, "FLAG_ACTIVITY_NEW_DOCUMENT"

    .line 462
    .line 463
    invoke-direct {v3, v6, v4, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, p0, Lha/j0;->h:Lx9/w0;

    .line 470
    .line 471
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 472
    .line 473
    iget v4, p0, Lha/j0;->j:I

    .line 474
    .line 475
    const/16 v5, 0x2000

    .line 476
    .line 477
    and-int/2addr v4, v5

    .line 478
    if-eqz v4, :cond_13

    .line 479
    .line 480
    const/4 v4, 0x1

    .line 481
    goto :goto_13

    .line 482
    :cond_13
    const/4 v4, 0x0

    .line 483
    :goto_13
    const-string v6, "FLAG_ACTIVITY_RETAIN_IN_RECENTS"

    .line 484
    .line 485
    invoke-direct {v3, v6, v5, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    :cond_14
    const/16 v0, 0x18

    .line 492
    .line 493
    if-lt p1, v0, :cond_16

    .line 494
    .line 495
    iget-object v0, p0, Lha/j0;->h:Lx9/w0;

    .line 496
    .line 497
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 498
    .line 499
    iget v4, p0, Lha/j0;->j:I

    .line 500
    .line 501
    const/16 v5, 0x1000

    .line 502
    .line 503
    and-int/2addr v4, v5

    .line 504
    if-eqz v4, :cond_15

    .line 505
    .line 506
    const/4 v4, 0x1

    .line 507
    goto :goto_14

    .line 508
    :cond_15
    const/4 v4, 0x0

    .line 509
    :goto_14
    const-string v6, "FLAG_ACTIVITY_LAUNCH_ADJACENT"

    .line 510
    .line 511
    invoke-direct {v3, v6, v5, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    :cond_16
    const/16 v0, 0x1d

    .line 518
    .line 519
    if-lt p1, v0, :cond_18

    .line 520
    .line 521
    iget-object v0, p0, Lha/j0;->h:Lx9/w0;

    .line 522
    .line 523
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 524
    .line 525
    iget v4, p0, Lha/j0;->j:I

    .line 526
    .line 527
    const/16 v5, 0x800

    .line 528
    .line 529
    and-int/2addr v4, v5

    .line 530
    if-eqz v4, :cond_17

    .line 531
    .line 532
    const/4 v4, 0x1

    .line 533
    goto :goto_15

    .line 534
    :cond_17
    const/4 v4, 0x0

    .line 535
    :goto_15
    const-string v6, "FLAG_ACTIVITY_MATCH_EXTERNAL"

    .line 536
    .line 537
    invoke-direct {v3, v6, v5, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    :cond_18
    const/16 v0, 0x1e

    .line 544
    .line 545
    if-lt p1, v0, :cond_1b

    .line 546
    .line 547
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 548
    .line 549
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 550
    .line 551
    iget v3, p0, Lha/j0;->j:I

    .line 552
    .line 553
    const/16 v4, 0x200

    .line 554
    .line 555
    and-int/2addr v3, v4

    .line 556
    if-eqz v3, :cond_19

    .line 557
    .line 558
    const/4 v3, 0x1

    .line 559
    goto :goto_16

    .line 560
    :cond_19
    const/4 v3, 0x0

    .line 561
    :goto_16
    const-string v5, "FLAG_ACTIVITY_REQUIRE_DEFAULT"

    .line 562
    .line 563
    invoke-direct {v0, v5, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 570
    .line 571
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 572
    .line 573
    iget v3, p0, Lha/j0;->j:I

    .line 574
    .line 575
    const/16 v4, 0x400

    .line 576
    .line 577
    and-int/2addr v3, v4

    .line 578
    if-eqz v3, :cond_1a

    .line 579
    .line 580
    goto :goto_17

    .line 581
    :cond_1a
    const/4 v1, 0x0

    .line 582
    :goto_17
    const-string v2, "FLAG_ACTIVITY_REQUIRE_NON_BROWSER"

    .line 583
    .line 584
    invoke-direct {v0, v2, v4, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    :cond_1b
    iget-object p1, p0, Lha/j0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 591
    .line 592
    iget-object v0, p0, Lha/j0;->h:Lx9/w0;

    .line 593
    .line 594
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 595
    .line 596
    .line 597
    iget-object p1, p0, Lha/j0;->h:Lx9/w0;

    .line 598
    .line 599
    new-instance v0, La1/d;

    .line 600
    .line 601
    const/4 v1, 0x7

    .line 602
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 606
    .line 607
    return-void
.end method
