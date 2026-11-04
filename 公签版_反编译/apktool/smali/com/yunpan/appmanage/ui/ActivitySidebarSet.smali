.class public Lcom/yunpan/appmanage/ui/ActivitySidebarSet;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic V0:I


# instance fields
.field public C:Lz7/s;

.field public D:Landroid/view/View;

.field public E:Landroid/view/View;

.field public F:Landroid/view/View;

.field public G:Landroid/widget/ImageView;

.field public H:Landroid/widget/ImageView;

.field public I:Landroid/widget/ImageView;

.field public K:Landroid/widget/ImageView;

.field public L:Landroid/widget/ImageView;

.field public M:Z

.field public M0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public N:Z

.field public N0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public O:Z

.field public O0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public P:Z

.field public P0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public R:Z

.field public R0:I

.field public S:Landroid/widget/TextView;

.field public final S0:Ljava/util/ArrayList;

.field public T:Landroid/widget/TextView;

.field public T0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final U0:Ljava/util/HashSet;

.field public V:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public Z:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public h0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public t0:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->U0:Ljava/util/HashSet;

    .line 20
    .line 21
    return-void
.end method

.method public static y(ILandroid/view/View;FZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Li0/e;

    .line 6
    .line 7
    iput p0, v0, Li0/e;->i:I

    .line 8
    .line 9
    iput p0, v0, Li0/e;->l:I

    .line 10
    .line 11
    iput p0, v0, Li0/e;->t:I

    .line 12
    .line 13
    iput p0, v0, Li0/e;->v:I

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    cmpl-float p0, p2, p0

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    iput p2, v0, Li0/e;->F:F

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p2, v0, Li0/e;->E:F

    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0053

    return v0
.end method

.method public final u()V
    .locals 10

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lua/q6;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, p0, v2}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0b03f3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lua/q6;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-direct {v1, p0, v2}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 34
    .line 35
    const-string v1, "1"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string v1, "2"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string v1, "3"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 55
    .line 56
    div-int/lit8 v1, v1, 0x14

    .line 57
    .line 58
    invoke-static {p0}, Lq4/a;->x(Landroid/content/ContextWrapper;)Lz7/s;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 63
    .line 64
    const-string v3, "leftOn"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M:Z

    .line 75
    .line 76
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 77
    .line 78
    const-string v3, "rightOn"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N:Z

    .line 89
    .line 90
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 91
    .line 92
    const-string v3, "bottomOn"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O:Z

    .line 103
    .line 104
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 105
    .line 106
    const-string v3, "showView"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P:Z

    .line 117
    .line 118
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 119
    .line 120
    iget-object v2, v2, Lz7/s;->a:Lb8/n;

    .line 121
    .line 122
    const-string v3, "upTrigger"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_0

    .line 129
    .line 130
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R:Z

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    const/4 v2, 0x0

    .line 144
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R:Z

    .line 145
    .line 146
    :goto_0
    const v2, 0x7f0b04e6

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 154
    .line 155
    const v2, 0x7f0b0551

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 163
    .line 164
    const v2, 0x7f0b032d

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 180
    .line 181
    const-string v4, "leftSize"

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    .line 193
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 199
    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 205
    .line 206
    const-string v5, "rightSize"

    .line 207
    .line 208
    invoke-virtual {v3, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    .line 218
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 230
    .line 231
    const-string v6, "bottomSize"

    .line 232
    .line 233
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    .line 243
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    const v2, 0x7f0b04e8

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroid/widget/ImageView;

    .line 256
    .line 257
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->G:Landroid/widget/ImageView;

    .line 258
    .line 259
    iget-boolean v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M:Z

    .line 260
    .line 261
    const v7, 0x7f0802a2

    .line 262
    .line 263
    .line 264
    const v8, 0x7f0802a3

    .line 265
    .line 266
    .line 267
    if-eqz v3, :cond_1

    .line 268
    .line 269
    const v3, 0x7f0802a3

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_1
    const v3, 0x7f0802a2

    .line 274
    .line 275
    .line 276
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    .line 278
    .line 279
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->G:Landroid/widget/ImageView;

    .line 280
    .line 281
    new-instance v3, Lua/q6;

    .line 282
    .line 283
    const/4 v9, 0x5

    .line 284
    invoke-direct {v3, p0, v9}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    const v2, 0x7f0b0553

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Landroid/widget/ImageView;

    .line 298
    .line 299
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->H:Landroid/widget/ImageView;

    .line 300
    .line 301
    iget-boolean v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N:Z

    .line 302
    .line 303
    if-eqz v3, :cond_2

    .line 304
    .line 305
    const v3, 0x7f0802a3

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_2
    const v3, 0x7f0802a2

    .line 310
    .line 311
    .line 312
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    .line 314
    .line 315
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->H:Landroid/widget/ImageView;

    .line 316
    .line 317
    new-instance v3, Lua/q6;

    .line 318
    .line 319
    const/4 v9, 0x6

    .line 320
    invoke-direct {v3, p0, v9}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    const v2, 0x7f0b032f

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Landroid/widget/ImageView;

    .line 334
    .line 335
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->I:Landroid/widget/ImageView;

    .line 336
    .line 337
    iget-boolean v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O:Z

    .line 338
    .line 339
    if-eqz v3, :cond_3

    .line 340
    .line 341
    const v3, 0x7f0802a3

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_3
    const v3, 0x7f0802a2

    .line 346
    .line 347
    .line 348
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    .line 350
    .line 351
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->I:Landroid/widget/ImageView;

    .line 352
    .line 353
    new-instance v3, Lua/q6;

    .line 354
    .line 355
    const/4 v9, 0x7

    .line 356
    invoke-direct {v3, p0, v9}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    .line 361
    .line 362
    const v2, 0x7f0b0525

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Landroid/widget/ImageView;

    .line 370
    .line 371
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->K:Landroid/widget/ImageView;

    .line 372
    .line 373
    iget-boolean v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P:Z

    .line 374
    .line 375
    if-eqz v3, :cond_4

    .line 376
    .line 377
    const v3, 0x7f0802a3

    .line 378
    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_4
    const v3, 0x7f0802a2

    .line 382
    .line 383
    .line 384
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    .line 386
    .line 387
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->K:Landroid/widget/ImageView;

    .line 388
    .line 389
    new-instance v3, Lua/q6;

    .line 390
    .line 391
    const/16 v9, 0x8

    .line 392
    .line 393
    invoke-direct {v3, p0, v9}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    .line 398
    .line 399
    const v2, 0x7f0b0526

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    check-cast v2, Landroid/widget/ImageView;

    .line 407
    .line 408
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->L:Landroid/widget/ImageView;

    .line 409
    .line 410
    iget-boolean v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R:Z

    .line 411
    .line 412
    if-eqz v3, :cond_5

    .line 413
    .line 414
    const v7, 0x7f0802a3

    .line 415
    .line 416
    .line 417
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    .line 419
    .line 420
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->L:Landroid/widget/ImageView;

    .line 421
    .line 422
    new-instance v3, Lua/q6;

    .line 423
    .line 424
    const/16 v7, 0x9

    .line 425
    .line 426
    invoke-direct {v3, p0, v7}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    .line 431
    .line 432
    const v2, 0x7f0b04ea

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    check-cast v2, Landroid/widget/TextView;

    .line 440
    .line 441
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S:Landroid/widget/TextView;

    .line 442
    .line 443
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 444
    .line 445
    const-string v7, "leftSplit"

    .line 446
    .line 447
    invoke-virtual {v3, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S:Landroid/widget/TextView;

    .line 463
    .line 464
    new-instance v3, Lua/q6;

    .line 465
    .line 466
    const/4 v7, 0x0

    .line 467
    invoke-direct {v3, p0, v7}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    .line 472
    .line 473
    const v2, 0x7f0b04e9

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 481
    .line 482
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Y:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 483
    .line 484
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 485
    .line 486
    .line 487
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Y:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 488
    .line 489
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 490
    .line 491
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 500
    .line 501
    .line 502
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 503
    .line 504
    const/16 v3, 0x1a

    .line 505
    .line 506
    if-lt v2, v3, :cond_6

    .line 507
    .line 508
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Y:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 509
    .line 510
    invoke-static {v4}, Ln5/a;->s(Landroidx/appcompat/widget/AppCompatSeekBar;)V

    .line 511
    .line 512
    .line 513
    :cond_6
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Y:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 514
    .line 515
    new-instance v7, Lua/s6;

    .line 516
    .line 517
    const/4 v8, 0x0

    .line 518
    invoke-direct {v7, p0, v8}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 522
    .line 523
    .line 524
    const v4, 0x7f0b04eb

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    check-cast v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 532
    .line 533
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 534
    .line 535
    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 536
    .line 537
    div-int/lit8 v7, v7, 0x6

    .line 538
    .line 539
    mul-int/lit8 v7, v7, 0x5

    .line 540
    .line 541
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 542
    .line 543
    .line 544
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 545
    .line 546
    iget-object v4, v4, Lz7/s;->a:Lb8/n;

    .line 547
    .line 548
    const-string v7, "leftTop"

    .line 549
    .line 550
    invoke-virtual {v4, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    const/16 v8, 0x1e

    .line 555
    .line 556
    if-eqz v4, :cond_7

    .line 557
    .line 558
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 559
    .line 560
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 561
    .line 562
    invoke-virtual {v9, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 571
    .line 572
    .line 573
    goto :goto_5

    .line 574
    :cond_7
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 575
    .line 576
    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 577
    .line 578
    .line 579
    :goto_5
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 580
    .line 581
    new-instance v7, Lua/s6;

    .line 582
    .line 583
    const/4 v9, 0x1

    .line 584
    invoke-direct {v7, p0, v9}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 588
    .line 589
    .line 590
    const v4, 0x7f0b04e7

    .line 591
    .line 592
    .line 593
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    check-cast v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 598
    .line 599
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 600
    .line 601
    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 602
    .line 603
    div-int/lit8 v7, v7, 0x6

    .line 604
    .line 605
    mul-int/lit8 v7, v7, 0x5

    .line 606
    .line 607
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 608
    .line 609
    .line 610
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 611
    .line 612
    iget-object v4, v4, Lz7/s;->a:Lb8/n;

    .line 613
    .line 614
    const-string v7, "leftBottom"

    .line 615
    .line 616
    invoke-virtual {v4, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    if-eqz v4, :cond_8

    .line 621
    .line 622
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 623
    .line 624
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 625
    .line 626
    invoke-virtual {v9, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 631
    .line 632
    .line 633
    move-result v7

    .line 634
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 635
    .line 636
    .line 637
    goto :goto_6

    .line 638
    :cond_8
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 639
    .line 640
    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 641
    .line 642
    .line 643
    :goto_6
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 644
    .line 645
    new-instance v7, Lua/s6;

    .line 646
    .line 647
    const/4 v9, 0x2

    .line 648
    invoke-direct {v7, p0, v9}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 652
    .line 653
    .line 654
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 655
    .line 656
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 661
    .line 662
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 663
    .line 664
    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    .line 665
    .line 666
    .line 667
    move-result v7

    .line 668
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 669
    .line 670
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 671
    .line 672
    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 677
    .line 678
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 679
    .line 680
    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    .line 682
    .line 683
    const v4, 0x7f0b0555

    .line 684
    .line 685
    .line 686
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    check-cast v4, Landroid/widget/TextView;

    .line 691
    .line 692
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T:Landroid/widget/TextView;

    .line 693
    .line 694
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 695
    .line 696
    const-string v9, "rightSplit"

    .line 697
    .line 698
    invoke-virtual {v7, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v7

    .line 710
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    .line 712
    .line 713
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T:Landroid/widget/TextView;

    .line 714
    .line 715
    new-instance v7, Lua/q6;

    .line 716
    .line 717
    const/4 v9, 0x1

    .line 718
    invoke-direct {v7, p0, v9}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    .line 723
    .line 724
    const v4, 0x7f0b0554

    .line 725
    .line 726
    .line 727
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    check-cast v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 732
    .line 733
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Z:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 734
    .line 735
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 736
    .line 737
    .line 738
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Z:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 739
    .line 740
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 741
    .line 742
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 751
    .line 752
    .line 753
    if-lt v2, v3, :cond_9

    .line 754
    .line 755
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Z:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 756
    .line 757
    invoke-static {v4}, Ln5/a;->s(Landroidx/appcompat/widget/AppCompatSeekBar;)V

    .line 758
    .line 759
    .line 760
    :cond_9
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Z:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 761
    .line 762
    new-instance v5, Lua/s6;

    .line 763
    .line 764
    const/4 v7, 0x3

    .line 765
    invoke-direct {v5, p0, v7}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 769
    .line 770
    .line 771
    const v4, 0x7f0b0557

    .line 772
    .line 773
    .line 774
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    check-cast v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 779
    .line 780
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 781
    .line 782
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 783
    .line 784
    div-int/lit8 v5, v5, 0x6

    .line 785
    .line 786
    mul-int/lit8 v5, v5, 0x5

    .line 787
    .line 788
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 789
    .line 790
    .line 791
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 792
    .line 793
    iget-object v4, v4, Lz7/s;->a:Lb8/n;

    .line 794
    .line 795
    const-string v5, "rightTop"

    .line 796
    .line 797
    invoke-virtual {v4, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    if-eqz v4, :cond_a

    .line 802
    .line 803
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 804
    .line 805
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 806
    .line 807
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 812
    .line 813
    .line 814
    move-result v5

    .line 815
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 816
    .line 817
    .line 818
    goto :goto_7

    .line 819
    :cond_a
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 820
    .line 821
    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 822
    .line 823
    .line 824
    :goto_7
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 825
    .line 826
    new-instance v5, Lua/s6;

    .line 827
    .line 828
    const/4 v7, 0x4

    .line 829
    invoke-direct {v5, p0, v7}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 833
    .line 834
    .line 835
    const v4, 0x7f0b0552

    .line 836
    .line 837
    .line 838
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    check-cast v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 843
    .line 844
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 845
    .line 846
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 847
    .line 848
    div-int/lit8 v5, v5, 0x6

    .line 849
    .line 850
    mul-int/lit8 v5, v5, 0x5

    .line 851
    .line 852
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 853
    .line 854
    .line 855
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 856
    .line 857
    iget-object v4, v4, Lz7/s;->a:Lb8/n;

    .line 858
    .line 859
    const-string v5, "rightBottom"

    .line 860
    .line 861
    invoke-virtual {v4, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v4

    .line 865
    if-eqz v4, :cond_b

    .line 866
    .line 867
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 868
    .line 869
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 870
    .line 871
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 872
    .line 873
    .line 874
    move-result-object v5

    .line 875
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 876
    .line 877
    .line 878
    move-result v5

    .line 879
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 880
    .line 881
    .line 882
    goto :goto_8

    .line 883
    :cond_b
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 884
    .line 885
    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 886
    .line 887
    .line 888
    :goto_8
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 889
    .line 890
    new-instance v5, Lua/s6;

    .line 891
    .line 892
    const/4 v7, 0x5

    .line 893
    invoke-direct {v5, p0, v7}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 897
    .line 898
    .line 899
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 900
    .line 901
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 906
    .line 907
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 908
    .line 909
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    .line 910
    .line 911
    .line 912
    move-result v5

    .line 913
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 914
    .line 915
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 916
    .line 917
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    .line 918
    .line 919
    .line 920
    move-result v5

    .line 921
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 922
    .line 923
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 924
    .line 925
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    .line 927
    .line 928
    const v4, 0x7f0b0332

    .line 929
    .line 930
    .line 931
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    check-cast v4, Landroid/widget/TextView;

    .line 936
    .line 937
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V:Landroid/widget/TextView;

    .line 938
    .line 939
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 940
    .line 941
    const-string v7, "bottomSplit"

    .line 942
    .line 943
    invoke-virtual {v5, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 948
    .line 949
    .line 950
    move-result v5

    .line 951
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v5

    .line 955
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    .line 957
    .line 958
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V:Landroid/widget/TextView;

    .line 959
    .line 960
    new-instance v5, Lua/q6;

    .line 961
    .line 962
    const/4 v7, 0x3

    .line 963
    invoke-direct {v5, p0, v7}, Lua/q6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    .line 968
    .line 969
    const v4, 0x7f0b0331

    .line 970
    .line 971
    .line 972
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    check-cast v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 977
    .line 978
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->h0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 979
    .line 980
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 981
    .line 982
    .line 983
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->h0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 984
    .line 985
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 986
    .line 987
    invoke-virtual {v4, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 992
    .line 993
    .line 994
    move-result v4

    .line 995
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 996
    .line 997
    .line 998
    if-lt v2, v3, :cond_c

    .line 999
    .line 1000
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->h0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1001
    .line 1002
    invoke-static {v1}, Ln5/a;->s(Landroidx/appcompat/widget/AppCompatSeekBar;)V

    .line 1003
    .line 1004
    .line 1005
    :cond_c
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->h0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1006
    .line 1007
    new-instance v2, Lua/s6;

    .line 1008
    .line 1009
    const/4 v3, 0x6

    .line 1010
    invoke-direct {v2, p0, v3}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1014
    .line 1015
    .line 1016
    const v1, 0x7f0b032e

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1024
    .line 1025
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1026
    .line 1027
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 1028
    .line 1029
    div-int/lit8 v2, v2, 0x6

    .line 1030
    .line 1031
    mul-int/lit8 v2, v2, 0x5

    .line 1032
    .line 1033
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1034
    .line 1035
    .line 1036
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 1037
    .line 1038
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 1039
    .line 1040
    const-string v2, "bottomLeft"

    .line 1041
    .line 1042
    invoke-virtual {v1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v1

    .line 1046
    if-eqz v1, :cond_d

    .line 1047
    .line 1048
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1049
    .line 1050
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 1051
    .line 1052
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1061
    .line 1062
    .line 1063
    goto :goto_9

    .line 1064
    :cond_d
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1065
    .line 1066
    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1067
    .line 1068
    .line 1069
    :goto_9
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1070
    .line 1071
    new-instance v2, Lua/s6;

    .line 1072
    .line 1073
    const/4 v3, 0x7

    .line 1074
    invoke-direct {v2, p0, v3}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1078
    .line 1079
    .line 1080
    const v1, 0x7f0b0330

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1088
    .line 1089
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1090
    .line 1091
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1092
    .line 1093
    div-int/lit8 v0, v0, 0x6

    .line 1094
    .line 1095
    mul-int/lit8 v0, v0, 0x5

    .line 1096
    .line 1097
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1098
    .line 1099
    .line 1100
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 1101
    .line 1102
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 1103
    .line 1104
    const-string v1, "bottomRight"

    .line 1105
    .line 1106
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    if-eqz v0, :cond_e

    .line 1111
    .line 1112
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1113
    .line 1114
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 1115
    .line 1116
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_a

    .line 1128
    :cond_e
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1129
    .line 1130
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1131
    .line 1132
    .line 1133
    :goto_a
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1134
    .line 1135
    new-instance v1, Lua/s6;

    .line 1136
    .line 1137
    const/16 v2, 0x8

    .line 1138
    .line 1139
    invoke-direct {v1, p0, v2}, Lua/s6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1143
    .line 1144
    .line 1145
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 1146
    .line 1147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1152
    .line 1153
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1154
    .line 1155
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 1156
    .line 1157
    .line 1158
    move-result v1

    .line 1159
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1160
    .line 1161
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 1162
    .line 1163
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1168
    .line 1169
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 1170
    .line 1171
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->z()V

    .line 1175
    .line 1176
    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    .line 1178
    .line 1179
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    const-string v1, "\u65e0\u52a8\u753b(\u7701\u5185\u5b58)"

    .line 1183
    .line 1184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .line 1186
    .line 1187
    const-string v1, "\u8fb9\u7f18\u591a\u5f69\u5149\u6548"

    .line 1188
    .line 1189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 1193
    .line 1194
    const-string v2, "effect"

    .line 1195
    .line 1196
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1201
    .line 1202
    .line 1203
    move-result v1

    .line 1204
    iput v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R0:I

    .line 1205
    .line 1206
    const v1, 0x7f0b05bf

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    check-cast v1, Landroid/widget/TextView;

    .line 1214
    .line 1215
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->X:Landroid/widget/TextView;

    .line 1216
    .line 1217
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 1218
    .line 1219
    const-string v3, "effectName"

    .line 1220
    .line 1221
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    .line 1231
    .line 1232
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->X:Landroid/widget/TextView;

    .line 1233
    .line 1234
    new-instance v2, Lua/i5;

    .line 1235
    .line 1236
    const/4 v3, 0x2

    .line 1237
    invoke-direct {v2, p0, v0, v3}, Lua/i5;-><init>(Lda/g;Ljava/lang/Object;I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    .line 1242
    .line 1243
    return-void
.end method

.method public final x(Z)Landroid/view/View;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f06004b

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Ln0/g;->c(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f070107

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-instance v2, Li0/e;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v4, v1

    .line 35
    :goto_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_1
    invoke-direct {v2, v4, v1}, Li0/e;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->U0:Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public final z()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f0b0558

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->U0:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/view/View;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x1

    .line 68
    const v2, 0x3f2a7efa    # 0.666f

    .line 69
    .line 70
    .line 71
    const v3, 0x3eaa7efa    # 0.333f

    .line 72
    .line 73
    .line 74
    const/4 v4, 0x3

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x2

    .line 77
    const v7, 0x7f0b04e6

    .line 78
    .line 79
    .line 80
    if-ne v0, v6, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v7, v0, v5, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-ne v0, v4, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v7, v0, v3, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v7, v0, v2, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    const v7, 0x7f0b0551

    .line 125
    .line 126
    .line 127
    if-ne v0, v6, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v7, v0, v5, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    if-ne v0, v4, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v7, v0, v3, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v7, v0, v2, v1}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const v1, 0x7f0b032d

    .line 172
    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    if-ne v0, v6, :cond_7

    .line 176
    .line 177
    invoke-virtual {p0, v7}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v1, v0, v5, v7}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    if-ne v0, v4, :cond_8

    .line 186
    .line 187
    invoke-virtual {p0, v7}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v1, v0, v3, v7}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v7}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->x(Z)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v1, v0, v2, v7}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->y(ILandroid/view/View;FZ)V

    .line 199
    .line 200
    .line 201
    :cond_8
    :goto_3
    return-void
.end method
