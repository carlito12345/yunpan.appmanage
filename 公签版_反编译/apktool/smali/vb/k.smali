.class public final Lvb/k;
.super Lub/b;
.source "SourceFile"


# instance fields
.field public final A:Ldb/p;

.field public B:Lmb/b;

.field public C:J

.field public D:J

.field public E:Z

.field public F:Z

.field public final G:Z

.field public final p:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public q:Z

.field public r:J

.field public s:I

.field public t:Lvb/j;

.field public v:Ldg/a;

.field public w:Ljava/lang/ref/WeakReference;

.field public x:I

.field public final y:Lvb/a;

.field public final z:La2/w0;


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lub/b;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lvb/k;->q:Z

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lvb/k;->x:I

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    iput-wide v2, p0, Lvb/k;->C:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    iput-wide v2, p0, Lvb/k;->D:J

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lvb/k;->E:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lvb/k;->F:Z

    .line 23
    .line 24
    iput-boolean v2, p0, Lvb/k;->G:Z

    .line 25
    .line 26
    iput-object p1, p0, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 27
    .line 28
    new-instance v3, Lvb/a;

    .line 29
    .line 30
    invoke-direct {v3}, Lvb/a;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, p0, Lvb/k;->y:Lvb/a;

    .line 34
    .line 35
    new-instance v4, La2/w0;

    .line 36
    .line 37
    const/16 v5, 0x10

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v4, v5, v6}, La2/w0;-><init>(IZ)V

    .line 41
    .line 42
    .line 43
    iput-object v4, p0, Lvb/k;->z:La2/w0;

    .line 44
    .line 45
    iput-object p0, v4, La2/w0;->e:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-instance v6, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object v6, v4, La2/w0;->d:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance v7, Landroid/widget/ListView;

    .line 59
    .line 60
    invoke-direct {v7, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v7, v4, La2/w0;->b:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance v7, Landroid/widget/ProgressBar;

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    const v9, 0x1010078

    .line 69
    .line 70
    .line 71
    invoke-direct {v7, v5, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    .line 73
    .line 74
    iput-object v7, v4, La2/w0;->c:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    .line 78
    .line 79
    iget-object v7, v4, La2/w0;->d:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v7, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 84
    .line 85
    .line 86
    iget-object v7, v4, La2/w0;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v7, Landroid/widget/ListView;

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 91
    .line 92
    .line 93
    iget-object v7, v4, La2/w0;->c:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v7, Landroid/widget/ProgressBar;

    .line 96
    .line 97
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    const/high16 v11, 0x41a00000    # 20.0f

    .line 108
    .line 109
    invoke-static {v2, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    float-to-int v10, v10

    .line 114
    invoke-direct {v9, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    iget-object v7, v4, La2/w0;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v7, Landroid/widget/ListView;

    .line 123
    .line 124
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .line 126
    invoke-direct {v9, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v4, La2/w0;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Landroid/widget/ProgressBar;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v4, La2/w0;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Landroid/widget/ProgressBar;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    const/high16 v9, -0x3f000000    # -8.0f

    .line 158
    .line 159
    invoke-static {v2, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    float-to-int v7, v7

    .line 164
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 165
    .line 166
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v2, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    float-to-int v7, v7

    .line 179
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 180
    .line 181
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    const/high16 v9, 0x40800000    # 4.0f

    .line 190
    .line 191
    invoke-static {v2, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    float-to-int v7, v7

    .line 196
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 197
    .line 198
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-static {v2, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    float-to-int v7, v7

    .line 211
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 212
    .line 213
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 214
    .line 215
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    const/high16 v9, 0x41000000    # 8.0f

    .line 227
    .line 228
    invoke-static {v2, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v4, La2/w0;->d:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v1, Landroid/widget/LinearLayout;

    .line 241
    .line 242
    new-instance v2, Lvb/d;

    .line 243
    .line 244
    invoke-direct {v2}, Lvb/d;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v2}, Lua/t7;->s(Landroid/widget/LinearLayout;Lvb/d;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Lua/t7;->r(Landroid/widget/LinearLayout;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v4, La2/w0;->b:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v1, Landroid/widget/ListView;

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v4, La2/w0;->c:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v1, Landroid/widget/ProgressBar;

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v4, La2/w0;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Landroid/widget/ListView;

    .line 270
    .line 271
    new-instance v1, Lvb/c;

    .line 272
    .line 273
    invoke-direct {v1, v4, v5}, Lvb/c;-><init>(La2/w0;Landroid/content/Context;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 280
    .line 281
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lvb/k;->d()V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lvb/k;->z:La2/w0;

    .line 288
    .line 289
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v0, Landroid/widget/ListView;

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 294
    .line 295
    .line 296
    new-instance v0, Ldb/p;

    .line 297
    .line 298
    iget-object p1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 299
    .line 300
    invoke-direct {v0, p1}, Ldb/p;-><init>(Ldb/p;)V

    .line 301
    .line 302
    .line 303
    iput-object v0, p0, Lvb/k;->A:Ldb/p;

    .line 304
    .line 305
    new-instance p1, Lvb/i;

    .line 306
    .line 307
    const/4 v1, 0x0

    .line 308
    invoke-direct {p1, p0, v1}, Lvb/i;-><init>(Lvb/k;I)V

    .line 309
    .line 310
    .line 311
    const-class v1, Ldb/c;

    .line 312
    .line 313
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 314
    .line 315
    .line 316
    new-instance p1, Lvb/i;

    .line 317
    .line 318
    const/4 v1, 0x1

    .line 319
    invoke-direct {p1, p0, v1}, Lvb/i;-><init>(Lvb/k;I)V

    .line 320
    .line 321
    .line 322
    const-class v1, Ldb/d;

    .line 323
    .line 324
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 325
    .line 326
    .line 327
    new-instance p1, Lvb/i;

    .line 328
    .line 329
    const/4 v1, 0x2

    .line 330
    invoke-direct {p1, p0, v1}, Lvb/i;-><init>(Lvb/k;I)V

    .line 331
    .line 332
    .line 333
    const-class v1, Ldb/w;

    .line 334
    .line 335
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 336
    .line 337
    .line 338
    new-instance p1, Lvb/i;

    .line 339
    .line 340
    const/4 v1, 0x3

    .line 341
    invoke-direct {p1, p0, v1}, Lvb/i;-><init>(Lvb/k;I)V

    .line 342
    .line 343
    .line 344
    const-class v1, Ldb/i;

    .line 345
    .line 346
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 347
    .line 348
    .line 349
    new-instance p1, Lvb/i;

    .line 350
    .line 351
    const/4 v1, 0x4

    .line 352
    invoke-direct {p1, p0, v1}, Lvb/i;-><init>(Lvb/k;I)V

    .line 353
    .line 354
    .line 355
    const-class v1, Ldb/x;

    .line 356
    .line 357
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 358
    .line 359
    .line 360
    new-instance p1, Lvb/i;

    .line 361
    .line 362
    const/4 v1, 0x5

    .line 363
    invoke-direct {p1, p0, v1}, Lvb/i;-><init>(Lvb/k;I)V

    .line 364
    .line 365
    .line 366
    const-class v1, Ldb/l;

    .line 367
    .line 368
    invoke-virtual {v0, v1, p1}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 369
    .line 370
    .line 371
    new-instance p1, Lua/t6;

    .line 372
    .line 373
    const/4 v0, 0x7

    .line 374
    invoke-direct {p1, v0}, Lua/t6;-><init>(I)V

    .line 375
    .line 376
    .line 377
    const-class v0, Ldb/h;

    .line 378
    .line 379
    invoke-virtual {p0, v0, p1}, Lvb/k;->j(Ljava/lang/Class;Lte/l;)V

    .line 380
    .line 381
    .line 382
    const-class p1, Ldb/b;

    .line 383
    .line 384
    invoke-virtual {p0, p1, v8}, Lvb/k;->j(Ljava/lang/Class;Lte/l;)V

    .line 385
    .line 386
    .line 387
    const-class p1, Ldb/j;

    .line 388
    .line 389
    invoke-virtual {p0, p1, v8}, Lvb/k;->j(Ljava/lang/Class;Lte/l;)V

    .line 390
    .line 391
    .line 392
    new-instance p1, Lua/t6;

    .line 393
    .line 394
    const/16 v0, 0x8

    .line 395
    .line 396
    invoke-direct {p1, v0}, Lua/t6;-><init>(I)V

    .line 397
    .line 398
    .line 399
    const-class v0, Ldb/g;

    .line 400
    .line 401
    invoke-virtual {p0, v0, p1}, Lvb/k;->j(Ljava/lang/Class;Lte/l;)V

    .line 402
    .line 403
    .line 404
    new-instance p1, Lua/t6;

    .line 405
    .line 406
    const/16 v0, 0x9

    .line 407
    .line 408
    invoke-direct {p1, v0}, Lua/t6;-><init>(I)V

    .line 409
    .line 410
    .line 411
    const-class v0, Ldb/y;

    .line 412
    .line 413
    invoke-virtual {p0, v0, p1}, Lvb/k;->j(Ljava/lang/Class;Lte/l;)V

    .line 414
    .line 415
    .line 416
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lvb/k;->z:La2/w0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, La2/w0;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lvb/k;

    .line 20
    .line 21
    iget-object v3, v3, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x1

    .line 36
    const/high16 v5, 0x41000000    # 8.0f

    .line 37
    .line 38
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, La2/w0;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lvb/k;

    .line 48
    .line 49
    iget-object v3, v3, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/high16 v5, 0x3f800000    # 1.0f

    .line 64
    .line 65
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    float-to-int v3, v3

    .line 70
    iget-object v4, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 71
    .line 72
    const/16 v5, 0x14

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    const/16 v3, 0x13

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, La2/w0;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v1, La2/w0;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    .line 103
    new-instance v1, Lvb/d;

    .line 104
    .line 105
    invoke-direct {v1}, Lvb/d;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Lua/t7;->s(Landroid/widget/LinearLayout;Lvb/d;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lua/t7;->r(Landroid/widget/LinearLayout;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvb/k;->t:Lvb/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lvb/j;->d:Z

    .line 13
    .line 14
    iget-object v2, v0, Lvb/j;->a:Lgb/b;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lvb/j;->b:Ldg/a;

    .line 23
    .line 24
    iput-boolean v1, v2, Ldg/a;->a:Z

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    iput-wide v1, v0, Lvb/j;->c:J

    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lvb/k;->t:Lvb/j;

    .line 32
    .line 33
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lub/b;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lvb/k;->e()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lvb/k;->D:J

    .line 12
    .line 13
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvb/k;->z:La2/w0;

    .line 2
    .line 3
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/ListView;

    .line 6
    .line 7
    iget v1, p0, Lvb/k;->x:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    add-int/2addr v1, v2

    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lt v1, v3, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget v1, p0, Lvb/k;->x:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    iput v1, p0, Lvb/k;->x:I

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lvb/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lvb/k;->x:I

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lvb/k;->z:La2/w0;

    .line 42
    .line 43
    iget-object v3, p0, Lvb/k;->y:Lvb/a;

    .line 44
    .line 45
    iget-object v3, v3, Lvb/a;->a:Lvb/k;

    .line 46
    .line 47
    iget-object v3, v3, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/high16 v4, 0x42340000    # 45.0f

    .line 62
    .line 63
    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    float-to-int v2, v2

    .line 68
    iget-object v3, v1, La2/w0;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Landroid/widget/ListView;

    .line 71
    .line 72
    new-instance v4, Lcom/yunpan/appmanage/carsdk/a;

    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    invoke-direct {v4, v1, v0, v2, v5}, Lcom/yunpan/appmanage/carsdk/a;-><init>(Ljava/lang/Object;III)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lvb/k;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lvb/k;->E:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lmb/g;->m()Lmb/j;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 32
    .line 33
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iget-wide v3, p0, Lvb/k;->r:J

    .line 44
    .line 45
    sub-long/2addr v1, v3

    .line 46
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-wide v3, v3, Ltb/e;->k:J

    .line 51
    .line 52
    cmp-long v5, v1, v3

    .line 53
    .line 54
    if-gez v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lvb/k;->f()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lvb/k;->r:J

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lvb/k;->e()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    iput-wide v1, p0, Lvb/k;->r:J

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lvb/k;->x:I

    .line 77
    .line 78
    new-instance v1, Ldg/a;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Lvb/g;

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-direct {v3, p0, v4}, Lvb/g;-><init>(Lvb/k;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEditorLanguage()Lgb/b;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v3}, Ldg/a;-><init>(Landroid/os/Handler;Lvb/g;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lvb/k;->v:Ldg/a;

    .line 101
    .line 102
    new-instance v1, Lvb/j;

    .line 103
    .line 104
    iget-wide v2, p0, Lvb/k;->r:J

    .line 105
    .line 106
    iget-object v4, p0, Lvb/k;->v:Ldg/a;

    .line 107
    .line 108
    invoke-direct {v1, p0, v2, v3, v4}, Lvb/j;-><init>(Lvb/k;JLdg/a;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lvb/k;->t:Lvb/j;

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lvb/k;->F:Z

    .line 115
    .line 116
    new-instance v1, Lvb/g;

    .line 117
    .line 118
    const/4 v2, 0x2

    .line 119
    invoke-direct {v1, p0, v2}, Lvb/g;-><init>(Lvb/k;I)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v2, 0x32

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lvb/k;->t:Lvb/j;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    invoke-virtual {p0}, Lvb/k;->f()V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    return-void
.end method

.method public final i(I)Z
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lvb/k;->z:La2/w0;

    .line 7
    .line 8
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lvb/a;

    .line 17
    .line 18
    iget-object v0, v0, Lvb/a;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_4

    .line 25
    .line 26
    iget-object p1, p0, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lvb/k;->t:Lvb/j;

    .line 33
    .line 34
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x1

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput-boolean v3, p0, Lvb/k;->q:Z

    .line 45
    .line 46
    iget v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 47
    .line 48
    add-int/2addr v0, v3

    .line 49
    iput v0, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lmb/g;->b()Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lmb/g;->k()Z

    .line 72
    .line 73
    .line 74
    iget v2, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 75
    .line 76
    sub-int/2addr v2, v3

    .line 77
    iput v2, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 78
    .line 79
    if-gez v2, :cond_2

    .line 80
    .line 81
    iput v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 82
    .line 83
    :cond_2
    iput-boolean v1, p0, Lvb/k;->q:Z

    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lvb/k;->f()V

    .line 87
    .line 88
    .line 89
    return v3

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public final j(Ljava/lang/Class;Lte/l;)V
    .locals 1

    .line 1
    new-instance v0, Lvb/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lvb/h;-><init>(Lvb/k;Lte/l;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lvb/k;->A:Ldb/p;

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->o0()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/high16 v5, 0x41a00000    # 20.0f

    .line 18
    .line 19
    mul-float v5, v5, v2

    .line 20
    .line 21
    add-float/2addr v5, v4

    .line 22
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v3, v3, Lmb/j;->d:Lmb/b;

    .line 31
    .line 32
    iget v7, v3, Lmb/b;->b:I

    .line 33
    .line 34
    iget v3, v3, Lmb/b;->c:I

    .line 35
    .line 36
    check-cast v6, Lwb/c;

    .line 37
    .line 38
    invoke-virtual {v6, v7, v3}, Lwb/c;->s(II)[F

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v6, 0x0

    .line 43
    aget v3, v3, v6

    .line 44
    .line 45
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    int-to-float v7, v7

    .line 50
    sub-float/2addr v3, v7

    .line 51
    int-to-float v4, v4

    .line 52
    const/high16 v7, 0x40000000    # 2.0f

    .line 53
    .line 54
    div-float v8, v4, v7

    .line 55
    .line 56
    add-float/2addr v8, v3

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    int-to-float v3, v3

    .line 62
    sub-float/2addr v3, v8

    .line 63
    const/high16 v9, 0x43480000    # 200.0f

    .line 64
    .line 65
    mul-float v9, v9, v2

    .line 66
    .line 67
    cmpl-float v10, v3, v9

    .line 68
    .line 69
    if-lez v10, :cond_0

    .line 70
    .line 71
    move v3, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const/high16 v9, 0x42c80000    # 100.0f

    .line 74
    .line 75
    mul-float v9, v9, v2

    .line 76
    .line 77
    cmpg-float v10, v3, v9

    .line 78
    .line 79
    if-gez v10, :cond_2

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    :goto_0
    cmpg-float v11, v3, v9

    .line 85
    .line 86
    if-gez v11, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    int-to-float v11, v11

    .line 93
    add-float/2addr v11, v10

    .line 94
    add-float/2addr v11, v4

    .line 95
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    int-to-float v12, v12

    .line 100
    cmpg-float v11, v11, v12

    .line 101
    .line 102
    if-gtz v11, :cond_1

    .line 103
    .line 104
    add-float/2addr v3, v4

    .line 105
    sub-float/2addr v8, v4

    .line 106
    add-float/2addr v10, v4

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScroller()Ltb/m;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    float-to-int v15, v10

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    invoke-virtual/range {v11 .. v16}, Ltb/m;->b(IIIII)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    int-to-float v4, v4

    .line 132
    const/high16 v9, 0x43fa0000    # 500.0f

    .line 133
    .line 134
    mul-float v9, v9, v2

    .line 135
    .line 136
    cmpg-float v4, v4, v9

    .line 137
    .line 138
    if-gez v4, :cond_3

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    mul-int/lit8 v2, v2, 0x7

    .line 145
    .line 146
    div-int/lit8 v2, v2, 0x8

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    int-to-float v4, v4

    .line 153
    const/high16 v5, 0x41000000    # 8.0f

    .line 154
    .line 155
    div-float/2addr v4, v5

    .line 156
    div-float v5, v4, v7

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    const/high16 v4, 0x43960000    # 300.0f

    .line 160
    .line 161
    mul-float v2, v2, v4

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    int-to-float v4, v4

    .line 168
    div-float/2addr v4, v7

    .line 169
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    float-to-int v2, v2

    .line 174
    :goto_2
    iget v4, v0, Lub/b;->n:I

    .line 175
    .line 176
    float-to-int v3, v3

    .line 177
    iput v3, v0, Lvb/k;->s:I

    .line 178
    .line 179
    float-to-int v3, v5

    .line 180
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    add-int/2addr v5, v3

    .line 185
    float-to-int v3, v8

    .line 186
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    add-int/2addr v1, v3

    .line 191
    iput v5, v0, Lub/b;->k:I

    .line 192
    .line 193
    iput v1, v0, Lub/b;->l:I

    .line 194
    .line 195
    iget-object v1, v0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 196
    .line 197
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iput v3, v0, Lub/b;->j:I

    .line 202
    .line 203
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iput v1, v0, Lub/b;->i:I

    .line 208
    .line 209
    invoke-virtual {v0, v6}, Lub/b;->a(Z)V

    .line 210
    .line 211
    .line 212
    iput v2, v0, Lub/b;->m:I

    .line 213
    .line 214
    iput v4, v0, Lub/b;->n:I

    .line 215
    .line 216
    invoke-virtual {v0, v6}, Lub/b;->a(Z)V

    .line 217
    .line 218
    .line 219
    return-void
.end method
