.class public final synthetic Lha/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;
.implements Lha/ea;
.implements Lfa/w;
.implements Lha/zc;
.implements Lha/ia;
.implements Lec/d;
.implements Lu1/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILr1/l0;Lr1/l0;)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    iput v0, p0, Lha/v1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lha/v1;->b:I

    iput-object p2, p0, Lha/v1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lha/v1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lha/v1;->a:I

    iput-object p1, p0, Lha/v1;->c:Ljava/lang/Object;

    iput p2, p0, Lha/v1;->b:I

    iput-object p3, p0, Lha/v1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    iput p4, p0, Lha/v1;->a:I

    iput-object p1, p0, Lha/v1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lha/v1;->d:Ljava/lang/Object;

    iput p3, p0, Lha/v1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lr1/k0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/v1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr1/l0;

    .line 9
    .line 10
    iget-object v1, p0, Lha/v1;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lr1/l0;

    .line 13
    .line 14
    iget v2, p0, Lha/v1;->b:I

    .line 15
    .line 16
    invoke-interface {p1, v2, v0, v1}, Lr1/k0;->B(ILr1/l0;Lr1/l0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public b(I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "\' --ei appCentered "

    .line 9
    .line 10
    const-string v5, "am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName \'"

    .line 11
    .line 12
    const-string v6, ""

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x2

    .line 16
    iget v9, v0, Lha/v1;->b:I

    .line 17
    .line 18
    iget-object v10, v0, Lha/v1;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v11, v0, Lha/v1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v12, 0x1

    .line 23
    iget v13, v0, Lha/v1;->a:I

    .line 24
    .line 25
    packed-switch v13, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    :pswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityRotation;->F:I

    .line 29
    .line 30
    check-cast v11, Lcom/yunpan/appmanage/ui/ActivityRotation;

    .line 31
    .line 32
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast v10, Lcom/yunpan/appmanage/bean/RotationBean;

    .line 36
    .line 37
    const-string v2, "|"

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget v1, v10, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    iput v7, v10, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 46
    .line 47
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 48
    .line 49
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 53
    .line 54
    iget-object v3, v1, Lwa/u;->N:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ge v4, v8, :cond_0

    .line 82
    .line 83
    move-object v3, v6

    .line 84
    :cond_0
    invoke-virtual {v1, v3}, Lwa/u;->e(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v1, Lwa/u;->O:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-ge v3, v8, :cond_1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move-object v6, v2

    .line 118
    :goto_0
    invoke-virtual {v1, v6}, Lwa/u;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_2
    if-ne v1, v12, :cond_4

    .line 124
    .line 125
    iget v1, v10, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 126
    .line 127
    if-eq v1, v12, :cond_5

    .line 128
    .line 129
    iput v12, v10, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 130
    .line 131
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 132
    .line 133
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 134
    .line 135
    .line 136
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 137
    .line 138
    iget-object v3, v1, Lwa/u;->N:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v5, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v4, v5, v2, v3}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_3

    .line 152
    .line 153
    invoke-static {v3, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v4, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v1, v3}, Lwa/u;->e(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-object v3, v1, Lwa/u;->O:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v5, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lwa/u;->f(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    if-ne v1, v8, :cond_5

    .line 200
    .line 201
    iget v1, v10, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 202
    .line 203
    if-eq v1, v8, :cond_5

    .line 204
    .line 205
    iput v8, v10, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 206
    .line 207
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 208
    .line 209
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 210
    .line 211
    .line 212
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 213
    .line 214
    iget-object v3, v1, Lwa/u;->N:Ljava/lang/String;

    .line 215
    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v5, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v3}, Lwa/u;->e(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v3, v1, Lwa/u;->O:Ljava/lang/String;

    .line 241
    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v5, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v4, v5, v2, v3}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-nez v4, :cond_5

    .line 254
    .line 255
    invoke-static {v3, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iget-object v4, v10, Lcom/yunpan/appmanage/bean/RotationBean;->pack:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Lwa/u;->f(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_5
    :goto_1
    return-void

    .line 275
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->F:I

    .line 276
    .line 277
    check-cast v11, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 278
    .line 279
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    check-cast v10, Lua/p2;

    .line 283
    .line 284
    iget-boolean v2, v10, Lua/p2;->c:Z

    .line 285
    .line 286
    xor-int/2addr v2, v12

    .line 287
    iput-boolean v2, v10, Lua/p2;->c:Z

    .line 288
    .line 289
    iget-object v2, v11, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->D:Lx9/m2;

    .line 290
    .line 291
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 292
    .line 293
    .line 294
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 295
    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v5, v10, Lua/p2;->b:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    if-nez v1, :cond_6

    .line 310
    .line 311
    const/4 v7, 0x2

    .line 312
    :cond_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v2, v1, v3}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_2
    sget v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->E:I

    .line 324
    .line 325
    check-cast v11, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;

    .line 326
    .line 327
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    check-cast v10, Lua/p2;

    .line 331
    .line 332
    iget-boolean v2, v10, Lua/p2;->c:Z

    .line 333
    .line 334
    xor-int/2addr v2, v12

    .line 335
    iput-boolean v2, v10, Lua/p2;->c:Z

    .line 336
    .line 337
    iget-object v2, v11, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->D:Lx9/m2;

    .line 338
    .line 339
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 340
    .line 341
    .line 342
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 343
    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v5, v10, Lua/p2;->b:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    if-nez v1, :cond_7

    .line 358
    .line 359
    const/4 v7, 0x2

    .line 360
    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v2, v1, v3}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :pswitch_3
    sget v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->N:I

    .line 372
    .line 373
    move-object v15, v11

    .line 374
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    .line 375
    .line 376
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    check-cast v10, Lc6/g;

    .line 380
    .line 381
    if-nez v1, :cond_8

    .line 382
    .line 383
    invoke-virtual {v10, v9}, Lc6/g;->C(I)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 387
    .line 388
    invoke-virtual {v1, v9}, Lz7/o;->n(I)V

    .line 389
    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_8
    if-ne v1, v12, :cond_a

    .line 393
    .line 394
    new-instance v1, Ljava/util/HashSet;

    .line 395
    .line 396
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 397
    .line 398
    .line 399
    :goto_2
    iget-object v3, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->E:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-ge v7, v4, :cond_9

    .line 406
    .line 407
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 412
    .line 413
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    add-int/2addr v7, v12

    .line 419
    goto :goto_2

    .line 420
    :cond_9
    const-string v3, "com.hozonauto.netahome.mini"

    .line 421
    .line 422
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    new-instance v3, Lha/ma;

    .line 426
    .line 427
    new-instance v4, Lha/o;

    .line 428
    .line 429
    invoke-direct {v4, v9, v2, v15}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    invoke-direct {v3, v15, v15, v1, v4}, Lha/ma;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Lha/la;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 436
    .line 437
    .line 438
    goto :goto_3

    .line 439
    :cond_a
    if-ne v1, v8, :cond_b

    .line 440
    .line 441
    new-instance v1, Lha/z6;

    .line 442
    .line 443
    invoke-virtual {v10, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 448
    .line 449
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 450
    .line 451
    new-instance v3, Landroidx/room/s;

    .line 452
    .line 453
    const/16 v4, 0x10

    .line 454
    .line 455
    invoke-direct {v3, v15, v10, v9, v4}, Landroidx/room/s;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 456
    .line 457
    .line 458
    const-string v19, "\u786e\u5b9a"

    .line 459
    .line 460
    const-string v20, "\u53d6\u6d88"

    .line 461
    .line 462
    const-string v16, "\u66f4\u6539\u540d\u79f0"

    .line 463
    .line 464
    const-string v18, "\u8bf7\u8f93\u5165\u65b0\u540d\u79f0"

    .line 465
    .line 466
    move-object v13, v1

    .line 467
    move-object v14, v15

    .line 468
    move-object/from16 v17, v2

    .line 469
    .line 470
    move-object/from16 v21, v3

    .line 471
    .line 472
    invoke-direct/range {v13 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 476
    .line 477
    .line 478
    :cond_b
    :goto_3
    return-void

    .line 479
    :pswitch_4
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 480
    .line 481
    move-object v15, v11

    .line 482
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 483
    .line 484
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    check-cast v10, Lc6/g;

    .line 488
    .line 489
    if-nez v1, :cond_c

    .line 490
    .line 491
    invoke-virtual {v10, v9}, Lc6/g;->C(I)V

    .line 492
    .line 493
    .line 494
    iget-object v1, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 495
    .line 496
    invoke-virtual {v1, v9}, Lz7/o;->n(I)V

    .line 497
    .line 498
    .line 499
    goto :goto_5

    .line 500
    :cond_c
    if-ne v1, v12, :cond_e

    .line 501
    .line 502
    new-instance v1, Ljava/util/HashSet;

    .line 503
    .line 504
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 505
    .line 506
    .line 507
    :goto_4
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->G:Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-ge v7, v3, :cond_d

    .line 514
    .line 515
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 520
    .line 521
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    add-int/2addr v7, v12

    .line 527
    goto :goto_4

    .line 528
    :cond_d
    new-instance v2, Lha/ma;

    .line 529
    .line 530
    iget-object v3, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->R:Ljava/util/ArrayList;

    .line 531
    .line 532
    new-instance v4, Lua/j4;

    .line 533
    .line 534
    invoke-direct {v4, v15, v9, v8}, Lua/j4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;II)V

    .line 535
    .line 536
    .line 537
    move-object v13, v2

    .line 538
    move-object v14, v15

    .line 539
    move-object/from16 v16, v1

    .line 540
    .line 541
    move-object/from16 v17, v3

    .line 542
    .line 543
    move-object/from16 v18, v4

    .line 544
    .line 545
    invoke-direct/range {v13 .. v18}, Lha/ma;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/ArrayList;Lha/la;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 549
    .line 550
    .line 551
    goto :goto_5

    .line 552
    :cond_e
    if-ne v1, v8, :cond_f

    .line 553
    .line 554
    new-instance v1, Lha/z6;

    .line 555
    .line 556
    invoke-virtual {v10, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 561
    .line 562
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 563
    .line 564
    new-instance v3, Landroidx/room/s;

    .line 565
    .line 566
    const/16 v4, 0xf

    .line 567
    .line 568
    invoke-direct {v3, v15, v10, v9, v4}, Landroidx/room/s;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 569
    .line 570
    .line 571
    const-string v19, "\u786e\u5b9a"

    .line 572
    .line 573
    const-string v20, "\u53d6\u6d88"

    .line 574
    .line 575
    const-string v16, "\u66f4\u6539\u540d\u79f0"

    .line 576
    .line 577
    const-string v18, "\u8bf7\u8f93\u5165\u65b0\u540d\u79f0"

    .line 578
    .line 579
    move-object v13, v1

    .line 580
    move-object v14, v15

    .line 581
    move-object/from16 v17, v2

    .line 582
    .line 583
    move-object/from16 v21, v3

    .line 584
    .line 585
    invoke-direct/range {v13 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 589
    .line 590
    .line 591
    :cond_f
    :goto_5
    return-void

    .line 592
    :pswitch_5
    sget v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 593
    .line 594
    move-object v15, v11

    .line 595
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 596
    .line 597
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    check-cast v10, Lc6/g;

    .line 601
    .line 602
    if-nez v1, :cond_10

    .line 603
    .line 604
    invoke-virtual {v10, v9}, Lc6/g;->C(I)V

    .line 605
    .line 606
    .line 607
    iget-object v1, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 608
    .line 609
    invoke-virtual {v1, v9}, Lz7/o;->n(I)V

    .line 610
    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_10
    if-ne v1, v12, :cond_12

    .line 614
    .line 615
    new-instance v1, Ljava/util/HashSet;

    .line 616
    .line 617
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 618
    .line 619
    .line 620
    const/4 v2, 0x0

    .line 621
    :goto_6
    iget-object v3, v15, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->G:Ljava/util/ArrayList;

    .line 622
    .line 623
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-ge v2, v4, :cond_11

    .line 628
    .line 629
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 634
    .line 635
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    add-int/2addr v2, v12

    .line 641
    goto :goto_6

    .line 642
    :cond_11
    new-instance v2, Lha/ma;

    .line 643
    .line 644
    new-instance v3, Lua/b4;

    .line 645
    .line 646
    invoke-direct {v3, v15, v9, v7}, Lua/b4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;II)V

    .line 647
    .line 648
    .line 649
    invoke-direct {v2, v15, v15, v1, v3}, Lha/ma;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Lha/la;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 653
    .line 654
    .line 655
    goto :goto_7

    .line 656
    :cond_12
    if-ne v1, v8, :cond_13

    .line 657
    .line 658
    new-instance v1, Lha/z6;

    .line 659
    .line 660
    invoke-virtual {v10, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 665
    .line 666
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 667
    .line 668
    new-instance v4, Landroidx/room/s;

    .line 669
    .line 670
    invoke-direct {v4, v15, v10, v9, v2}, Landroidx/room/s;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 671
    .line 672
    .line 673
    const-string v19, "\u786e\u5b9a"

    .line 674
    .line 675
    const-string v20, "\u53d6\u6d88"

    .line 676
    .line 677
    const-string v16, "\u66f4\u6539\u540d\u79f0"

    .line 678
    .line 679
    const-string v18, "\u8bf7\u8f93\u5165\u65b0\u540d\u79f0"

    .line 680
    .line 681
    move-object v13, v1

    .line 682
    move-object v14, v15

    .line 683
    move-object/from16 v17, v3

    .line 684
    .line 685
    move-object/from16 v21, v4

    .line 686
    .line 687
    invoke-direct/range {v13 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 691
    .line 692
    .line 693
    :cond_13
    :goto_7
    return-void

    .line 694
    :pswitch_6
    sget v2, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->F:I

    .line 695
    .line 696
    check-cast v11, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 697
    .line 698
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    new-instance v2, Lha/p8;

    .line 702
    .line 703
    check-cast v10, Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-direct {v2, v11, v9, v1, v10}, Lha/p8;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;IILjava/util/ArrayList;)V

    .line 706
    .line 707
    .line 708
    new-instance v1, Lmc/c;

    .line 709
    .line 710
    invoke-direct {v1, v7, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 714
    .line 715
    invoke-virtual {v1, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    new-instance v2, Lha/l2;

    .line 728
    .line 729
    const/16 v3, 0x1c

    .line 730
    .line 731
    invoke-direct {v2, v3}, Lha/l2;-><init>(I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 735
    .line 736
    .line 737
    return-void

    .line 738
    :pswitch_7
    sget v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->E:I

    .line 739
    .line 740
    check-cast v11, Lcom/yunpan/appmanage/ui/ActivityAutoClick;

    .line 741
    .line 742
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 746
    .line 747
    check-cast v10, Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    check-cast v3, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 754
    .line 755
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    :try_start_0
    iput-object v3, v2, Lwa/u;->Z:Ljava/lang/String;

    .line 761
    .line 762
    iget-object v4, v2, Lwa/u;->b:Lz7/s;

    .line 763
    .line 764
    const-string v5, "AutoClick_DESKTOP_SELECT_NAME"

    .line 765
    .line 766
    invoke-virtual {v4, v5, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .line 768
    .line 769
    :catch_0
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 770
    .line 771
    .line 772
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 773
    .line 774
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    check-cast v1, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 779
    .line 780
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    :try_start_1
    iput-object v1, v2, Lwa/u;->a0:Ljava/lang/String;

    .line 786
    .line 787
    iget-object v3, v2, Lwa/u;->b:Lz7/s;

    .line 788
    .line 789
    const-string v4, "AutoClick_DESKTOP_SELECT_NAME2"

    .line 790
    .line 791
    invoke-virtual {v3, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    .line 793
    .line 794
    :catch_1
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 795
    .line 796
    .line 797
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 798
    .line 799
    iget-boolean v2, v1, Lwa/u;->Y:Z

    .line 800
    .line 801
    xor-int/2addr v2, v12

    .line 802
    :try_start_2
    iput-boolean v2, v1, Lwa/u;->Y:Z

    .line 803
    .line 804
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 805
    .line 806
    const-string v4, "AutoClick_DESKTOP_SELECT"

    .line 807
    .line 808
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 813
    .line 814
    .line 815
    :catch_2
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 816
    .line 817
    .line 818
    iget-object v2, v11, Lda/g;->A:Lda/g;

    .line 819
    .line 820
    invoke-static {v2}, Lta/m;->e(Landroid/content/Context;)V

    .line 821
    .line 822
    .line 823
    iget-object v2, v11, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 824
    .line 825
    invoke-virtual {v2, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    check-cast v2, Lx9/l3;

    .line 830
    .line 831
    iget-boolean v1, v1, Lwa/u;->Y:Z

    .line 832
    .line 833
    if-eqz v1, :cond_14

    .line 834
    .line 835
    const v1, 0x7f080234

    .line 836
    .line 837
    .line 838
    goto :goto_8

    .line 839
    :cond_14
    const v1, 0x7f080237

    .line 840
    .line 841
    .line 842
    :goto_8
    iput v1, v2, Lx9/l3;->a:I

    .line 843
    .line 844
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 845
    .line 846
    invoke-virtual {v1, v9, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    return-void

    .line 850
    :pswitch_8
    check-cast v10, Landroid/content/ClipboardManager;

    .line 851
    .line 852
    check-cast v11, Lha/ba;

    .line 853
    .line 854
    if-nez v1, :cond_15

    .line 855
    .line 856
    iget-object v1, v11, Lha/ba;->i:Lx9/t0;

    .line 857
    .line 858
    invoke-virtual {v1, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    check-cast v1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 863
    .line 864
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/LogcatBean;->log:Ljava/lang/String;

    .line 865
    .line 866
    goto :goto_9

    .line 867
    :cond_15
    if-ne v1, v12, :cond_16

    .line 868
    .line 869
    iget-object v1, v11, Lha/ba;->i:Lx9/t0;

    .line 870
    .line 871
    invoke-virtual {v1, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    check-cast v1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 876
    .line 877
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/LogcatBean;->tag:Ljava/lang/String;

    .line 878
    .line 879
    goto :goto_9

    .line 880
    :cond_16
    if-ne v1, v8, :cond_17

    .line 881
    .line 882
    iget-object v1, v11, Lha/ba;->i:Lx9/t0;

    .line 883
    .line 884
    invoke-virtual {v1, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    check-cast v1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 889
    .line 890
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/LogcatBean;->msg:Ljava/lang/String;

    .line 891
    .line 892
    goto :goto_9

    .line 893
    :cond_17
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    .line 895
    .line 896
    :goto_9
    :try_start_3
    const-string v1, "label"

    .line 897
    .line 898
    invoke-static {v1, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-virtual {v10, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 903
    .line 904
    .line 905
    const-string v1, "\u5df2\u590d\u5236"

    .line 906
    .line 907
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 908
    .line 909
    .line 910
    goto :goto_a

    .line 911
    :catch_3
    const-string v1, "\u590d\u5236\u5931\u8d25\uff0c\u53ef\u80fd\u6ca1\u6709\u526a\u5207\u677f\u6743\u9650"

    .line 912
    .line 913
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    :goto_a
    return-void

    .line 917
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lha/v1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/v1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/ya;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lha/v1;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 18
    .line 19
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 20
    .line 21
    xor-int/lit8 v1, p2, 0x1

    .line 22
    .line 23
    iput-boolean v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    const-string p2, "\u5df2\u5141\u8bb8"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p2, "\u5df2\u53d6\u6d88"

    .line 31
    .line 32
    :goto_0
    iput-object p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, v0, Lha/ya;->d:Lha/za;

    .line 35
    .line 36
    iget-object p1, p1, Lha/za;->l:Lx9/x3;

    .line 37
    .line 38
    iget p2, p0, Lha/v1;->b:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p2, 0x0

    .line 45
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lha/v1;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lha/ya;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lha/v1;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 61
    .line 62
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 63
    .line 64
    xor-int/lit8 v1, p2, 0x1

    .line 65
    .line 66
    iput-boolean v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 67
    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    const-string p2, "\u5df2\u5141\u8bb8"

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const-string p2, "\u5df2\u62d2\u7edd"

    .line 74
    .line 75
    :goto_2
    iput-object p2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, v0, Lha/ya;->d:Lha/za;

    .line 78
    .line 79
    iget-object p1, p1, Lha/za;->l:Lx9/x3;

    .line 80
    .line 81
    iget p2, p0, Lha/v1;->b:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    const/4 p2, 0x0

    .line 88
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 89
    .line 90
    .line 91
    :goto_3
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lha/v1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lx9/x0;

    .line 6
    .line 7
    iget-boolean v0, p1, Lx9/x0;->b:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p1, Lx9/x0;->b:Z

    .line 12
    .line 13
    iget-object v0, p0, Lha/v1;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lx9/y0;

    .line 16
    .line 17
    iget v1, p0, Lha/v1;->b:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/v1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/w1;

    .line 4
    .line 5
    iget v1, p0, Lha/v1;->b:I

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lha/v1;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lz7/s;

    .line 15
    .line 16
    const-string v2, "name"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    iget-object v5, v0, Lha/w1;->s:Lx9/s2;

    .line 28
    .line 29
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-ge v4, v5, :cond_2

    .line 34
    .line 35
    if-ne v4, v1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v5, v0, Lha/w1;->s:Lx9/s2;

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lz7/s;

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    const-string p1, "\u5173\u952e\u5b57\u5df2\u5b58\u5728\uff0c\u8bf7\u52ff\u91cd\u590d\u6dfb\u52a0"

    .line 61
    .line 62
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, v0, Lha/w1;->s:Lx9/s2;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object p1, v0, Lha/w1;->s:Lx9/s2;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lc6/g;->C(I)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-wide/16 v3, 0x7d0

    .line 6
    .line 7
    const-string v5, " "

    .line 8
    .line 9
    iget v7, v1, Lha/v1;->b:I

    .line 10
    .line 11
    iget-object v8, v1, Lha/v1;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v9, v1, Lha/v1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iget v10, v1, Lha/v1;->a:I

    .line 16
    .line 17
    packed-switch v10, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v9, Landroidx/room/s;

    .line 21
    .line 22
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast v8, Lc6/g;

    .line 26
    .line 27
    invoke-virtual {v8, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    check-cast v10, Lcom/yunpan/appmanage/db/AppBean;

    .line 32
    .line 33
    iget-object v10, v10, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v8, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Lcom/yunpan/appmanage/db/AppBean;

    .line 40
    .line 41
    iget-object v8, v8, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v9, v9, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 46
    .line 47
    iget-object v9, v9, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->I:Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/4 v6, 0x1

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_2

    .line 59
    .line 60
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    check-cast v11, Ljava/lang/String;

    .line 65
    .line 66
    new-instance v12, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v13, ","

    .line 69
    .line 70
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-nez v12, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    sget-object v12, Lfa/b0;->a:La2/w0;

    .line 91
    .line 92
    new-instance v13, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v14, "pm uninstall --user "

    .line 95
    .line 96
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v4, v13}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    invoke-virtual {v12}, Lfa/a0;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-nez v13, :cond_0

    .line 124
    .line 125
    const-string v6, "\u7528\u6237"

    .line 126
    .line 127
    const-string v13, "\u5378\u8f7d\u5931\u8d25\uff1a"

    .line 128
    .line 129
    invoke-static {v6, v11, v13}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v12}, Lfa/a0;->a()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    if-eqz v6, :cond_3

    .line 150
    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_0
    sget v10, Lcom/yunpan/appmanage/ui/ActivityUsers;->G:I

    .line 163
    .line 164
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityUsers;

    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const-string v10, "UserInfo{"

    .line 170
    .line 171
    const-string v11, "\u5207\u6362\u6210\u529f\uff1a"

    .line 172
    .line 173
    const-string v12, "am switch-user "

    .line 174
    .line 175
    const-string v13, "\u5220\u9664\u6210\u529f\uff1a"

    .line 176
    .line 177
    const-string v14, "pm remove-user "

    .line 178
    .line 179
    const-string v15, "pm create-user \'"

    .line 180
    .line 181
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\uff1a"

    .line 182
    .line 183
    const-string v6, ":"

    .line 184
    .line 185
    if-nez v7, :cond_9

    .line 186
    .line 187
    :try_start_0
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 188
    .line 189
    const-string v7, "am get-current-user"

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {v3, v4, v7}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget v4, v3, Lfa/a0;->a:I

    .line 199
    .line 200
    if-nez v4, :cond_8

    .line 201
    .line 202
    const-string v0, ""

    .line 203
    .line 204
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_7

    .line 215
    .line 216
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_5

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_4

    .line 238
    .line 239
    const-string v5, "/"

    .line 240
    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-nez v5, :cond_4

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    const/4 v7, 0x3

    .line 252
    if-le v5, v7, :cond_6

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    const/16 v7, 0x64

    .line 264
    .line 265
    if-ge v5, v7, :cond_4

    .line 266
    .line 267
    move-object v0, v4

    .line 268
    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    goto/16 :goto_7

    .line 271
    .line 272
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v4, "\u5f53\u524d\u7528\u6237ID\uff1a"

    .line 278
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v0, "\n\n\u65b9\u6cd5\u4e8c\uff1a"

    .line 286
    .line 287
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-static {}, Lif/a;->T()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_6

    .line 305
    .line 306
    :cond_8
    new-instance v4, Ljava/lang/Exception;

    .line 307
    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_9
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityUsers;->F:Ljava/util/HashSet;

    .line 329
    .line 330
    iget-object v9, v9, Lcom/yunpan/appmanage/ui/ActivityUsers;->E:Ljava/util/HashMap;

    .line 331
    .line 332
    const/4 v3, 0x1

    .line 333
    if-ne v7, v3, :cond_11

    .line 334
    .line 335
    :try_start_1
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 339
    .line 340
    .line 341
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 342
    .line 343
    const-string v4, "pm list users"

    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    const-wide/16 v7, 0x7d0

    .line 349
    .line 350
    invoke-static {v7, v8, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 355
    .line 356
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-eqz v4, :cond_c

    .line 365
    .line 366
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-nez v5, :cond_b

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_b
    const/4 v5, 0x0

    .line 380
    invoke-static {v4, v10, v6, v5}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-static {v4, v6, v6, v5}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const-string v7, "running"

    .line 392
    .line 393
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-eqz v7, :cond_a

    .line 398
    .line 399
    invoke-static {v4, v10, v6, v5}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_c
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_e

    .line 412
    .line 413
    new-instance v0, Ljava/lang/Exception;

    .line 414
    .line 415
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {}, La2/w0;->N()Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_d

    .line 425
    .line 426
    const-string v3, "\u672a\u627e\u5230\u7528\u6237"

    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_d
    const-string v3, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 430
    .line 431
    :goto_4
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v0

    .line 435
    :cond_e
    new-instance v3, Ljava/lang/StringBuffer;

    .line 436
    .line 437
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-eqz v5, :cond_10

    .line 453
    .line 454
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    check-cast v7, Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    if-eqz v5, :cond_f

    .line 480
    .line 481
    const-string v5, "(\u8fd0\u884c\u4e2d)"

    .line 482
    .line 483
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    .line 485
    .line 486
    :cond_f
    const-string v5, "\n"

    .line 487
    .line 488
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    .line 490
    .line 491
    goto :goto_5

    .line 492
    :cond_10
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    .line 498
    .line 499
    goto/16 :goto_6

    .line 500
    .line 501
    :cond_11
    check-cast v8, Ljava/lang/String;

    .line 502
    .line 503
    const/4 v3, 0x2

    .line 504
    const-string v4, "\u5931\u8d25\uff1a"

    .line 505
    .line 506
    if-ne v7, v3, :cond_14

    .line 507
    .line 508
    :try_start_2
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 509
    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v6, "\'"

    .line 519
    .line 520
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    const-wide/16 v6, 0x7d0

    .line 531
    .line 532
    invoke-static {v6, v7, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    iget v3, v0, Lfa/a0;->a:I

    .line 537
    .line 538
    if-nez v3, :cond_13

    .line 539
    .line 540
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 541
    .line 542
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_18

    .line 551
    .line 552
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    check-cast v3, Ljava/lang/String;

    .line 557
    .line 558
    const-string v4, "created user id"

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    if-eqz v4, :cond_12

    .line 565
    .line 566
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    const/4 v4, 0x1

    .line 571
    add-int/2addr v0, v4

    .line 572
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-virtual {v9, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    const-string v4, "\u521b\u5efa\u6210\u529f\uff1a"

    .line 589
    .line 590
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v4, "("

    .line 597
    .line 598
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v0, ")"

    .line 609
    .line 610
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_6

    .line 621
    .line 622
    :cond_13
    new-instance v3, Ljava/lang/Exception;

    .line 623
    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v3

    .line 644
    :cond_14
    const/4 v3, 0x3

    .line 645
    if-ne v7, v3, :cond_16

    .line 646
    .line 647
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 648
    .line 649
    new-instance v5, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    const-wide/16 v6, 0x7d0

    .line 665
    .line 666
    invoke-static {v6, v7, v5}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    iget v5, v3, Lfa/a0;->a:I

    .line 671
    .line 672
    if-nez v5, :cond_15

    .line 673
    .line 674
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    goto :goto_6

    .line 696
    :cond_15
    new-instance v0, Ljava/lang/Exception;

    .line 697
    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v0

    .line 718
    :cond_16
    const/4 v0, 0x4

    .line 719
    if-ne v7, v0, :cond_18

    .line 720
    .line 721
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 722
    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    const-wide/16 v5, 0x7d0

    .line 739
    .line 740
    invoke-static {v5, v6, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    iget v3, v0, Lfa/a0;->a:I

    .line 745
    .line 746
    if-nez v3, :cond_17

    .line 747
    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    goto :goto_6

    .line 764
    :cond_17
    new-instance v3, Ljava/lang/Exception;

    .line 765
    .line 766
    new-instance v5, Ljava/lang/StringBuilder;

    .line 767
    .line 768
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    throw v3

    .line 786
    :cond_18
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 787
    .line 788
    .line 789
    goto :goto_8

    .line 790
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 802
    .line 803
    .line 804
    :goto_8
    return-void

    .line 805
    :pswitch_1
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 806
    .line 807
    check-cast v8, Ljava/lang/String;

    .line 808
    .line 809
    invoke-static {v9, v8, v7, v2}, Lcom/yunpan/appmanage/ui/ActivityStudy;->x(Lcom/yunpan/appmanage/ui/ActivityStudy;Ljava/lang/String;ILmc/b;)V

    .line 810
    .line 811
    .line 812
    return-void

    .line 813
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
