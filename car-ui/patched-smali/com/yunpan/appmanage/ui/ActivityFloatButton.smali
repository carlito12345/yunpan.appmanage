.class public Lcom/yunpan/appmanage/ui/ActivityFloatButton;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic N:I


# instance fields
.field public C:Lz7/s;

.field public D:I

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final F:Lx9/m0;

.field public G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final H:Lx9/u0;

.field public I:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final K:Lx9/t2;

.field public L:I

.field public M:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 6
    .line 7
    new-instance v1, Lx9/m0;

    .line 8
    .line 9
    invoke-direct {v1}, Lx9/m0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->F:Lx9/m0;

    .line 13
    .line 14
    new-instance v1, Lx9/u0;

    .line 15
    .line 16
    invoke-direct {v1}, Lx9/u0;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->H:Lx9/u0;

    .line 20
    .line 21
    new-instance v1, Lx9/t2;

    .line 22
    .line 23
    invoke-direct {v1}, Lx9/t2;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 27
    .line 28
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->L:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lda/g;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p0}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->z()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0034

    return v0
.end method

.method public final u()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 8
    .line 9
    const/16 v2, 0xc8

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v7, "bootStartTime"

    .line 27
    .line 28
    const-string v8, "antiBurnScreen"

    .line 29
    .line 30
    const-string v9, "auto_trans"

    .line 31
    .line 32
    const-string v10, "auto_hide"

    .line 33
    .line 34
    const-string v11, "trans"

    .line 35
    .line 36
    const-string v12, "size"

    .line 37
    .line 38
    const-string v13, "isOpen"

    .line 39
    .line 40
    const-string v14, "ico"

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    new-instance v1, Lz7/s;

    .line 45
    .line 46
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    const/4 v4, 0x7

    .line 53
    if-ge v1, v4, :cond_0

    .line 54
    .line 55
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    new-instance v6, Lz7/o;

    .line 62
    .line 63
    invoke-direct {v6}, Lz7/o;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v15, v6}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 73
    .line 74
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v1, v13, v6}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 80
    .line 81
    invoke-virtual {v1, v14, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 85
    .line 86
    invoke-virtual {v1, v12, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 90
    .line 91
    invoke-virtual {v1, v11, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 95
    .line 96
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v1, v10, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 102
    .line 103
    invoke-virtual {v1, v9, v6}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 107
    .line 108
    invoke-virtual {v1, v8, v6}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 112
    .line 113
    invoke-virtual {v1, v7, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    :goto_1
    if-ge v1, v4, :cond_2

    .line 118
    .line 119
    if-nez v1, :cond_1

    .line 120
    .line 121
    new-instance v2, Lz7/o;

    .line 122
    .line 123
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v3, Lz7/s;

    .line 127
    .line 128
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v5, -0x1

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v6, "keyType"

    .line 137
    .line 138
    invoke-virtual {v3, v6, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 139
    .line 140
    .line 141
    const/4 v5, 0x6

    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const-string v5, "gnType"

    .line 147
    .line 148
    invoke-virtual {v3, v5, v6}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 149
    .line 150
    .line 151
    const-string v5, "name"

    .line 152
    .line 153
    const-string v6, "\u8fd4\u56de\u952e"

    .line 154
    .line 155
    invoke-virtual {v3, v5, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lz7/o;->k(Lz7/p;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v3, v5, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_1
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    new-instance v5, Lz7/o;

    .line 178
    .line 179
    invoke-direct {v5}, Lz7/o;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 183
    .line 184
    .line 185
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 189
    .line 190
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 191
    .line 192
    invoke-static {v1, v2}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 197
    .line 198
    invoke-virtual {v1, v14}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_4

    .line 203
    .line 204
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 205
    .line 206
    invoke-virtual {v1, v14, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 210
    .line 211
    invoke-virtual {v1, v12, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 215
    .line 216
    invoke-virtual {v1, v11, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 220
    .line 221
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {v1, v10, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 227
    .line 228
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-virtual {v1, v9, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 234
    .line 235
    invoke-virtual {v1, v8, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 239
    .line 240
    invoke-virtual {v1, v7, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 244
    .line 245
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 246
    .line 247
    invoke-static {v1, v2}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    :goto_3
    const v1, 0x7f0b0569

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroid/widget/ImageView;

    .line 258
    .line 259
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 260
    .line 261
    invoke-virtual {v2, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_5

    .line 270
    .line 271
    const v2, 0x7f080234

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_5
    const v2, 0x7f080237

    .line 276
    .line 277
    .line 278
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    .line 280
    .line 281
    const v2, 0x7f0b0568

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    new-instance v3, Lc6/c;

    .line 289
    .line 290
    const/16 v4, 0x1c

    .line 291
    .line 292
    invoke-direct {v3, v0, v4, v1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    const v1, 0x7f0b04b5

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Landroid/widget/ImageView;

    .line 306
    .line 307
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->z()V

    .line 310
    .line 311
    .line 312
    const v1, 0x7f0b0500

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 320
    .line 321
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 322
    .line 323
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 324
    .line 325
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 326
    .line 327
    const/4 v4, 0x0

    .line 328
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->F:Lx9/m0;

    .line 335
    .line 336
    const-string v2, "\u8fd4\u56de"

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    const-string v2, "\u8bbe\u7f6e"

    .line 342
    .line 343
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    const-string v2, "\u6dfb\u52a0\u6620\u5c04"

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 352
    .line 353
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 354
    .line 355
    .line 356
    new-instance v2, Lua/w1;

    .line 357
    .line 358
    const/4 v3, 0x0

    .line 359
    invoke-direct {v2, v0, v3}, Lua/w1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 360
    .line 361
    .line 362
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 363
    .line 364
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 365
    .line 366
    const-string v2, "\u5355\u51fb"

    .line 367
    .line 368
    const/4 v3, 0x0

    .line 369
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->H:Lx9/u0;

    .line 373
    .line 374
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 378
    .line 379
    const-string v3, "\u53cc\u51fb"

    .line 380
    .line 381
    const/4 v4, 0x1

    .line 382
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 389
    .line 390
    const-string v3, "\u957f\u6309"

    .line 391
    .line 392
    const/4 v4, 0x2

    .line 393
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 400
    .line 401
    const-string v3, "\u4e0a\u6ed1"

    .line 402
    .line 403
    const/4 v4, 0x3

    .line 404
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 411
    .line 412
    const-string v3, "\u4e0b\u6ed1"

    .line 413
    .line 414
    const/4 v5, 0x4

    .line 415
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 422
    .line 423
    const-string v3, "\u5de6\u6ed1"

    .line 424
    .line 425
    const/4 v5, 0x5

    .line 426
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 433
    .line 434
    const-string v3, "\u53f3\u6ed1"

    .line 435
    .line 436
    const/4 v5, 0x6

    .line 437
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    const v1, 0x7f0b0505

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 451
    .line 452
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 453
    .line 454
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 455
    .line 456
    iget-object v5, v0, Lda/g;->A:Lda/g;

    .line 457
    .line 458
    const/4 v6, 0x1

    .line 459
    const/4 v7, 0x0

    .line 460
    invoke-direct {v3, v5, v6, v7}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 464
    .line 465
    .line 466
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 467
    .line 468
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 469
    .line 470
    .line 471
    new-instance v1, Lua/w1;

    .line 472
    .line 473
    const/4 v3, 0x1

    .line 474
    invoke-direct {v1, v0, v3}, Lua/w1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 475
    .line 476
    .line 477
    iput-object v1, v2, Lc6/g;->e:Lc6/e;

    .line 478
    .line 479
    const v1, 0x7f0b0506

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 487
    .line 488
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->I:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 489
    .line 490
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 491
    .line 492
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 493
    .line 494
    const/4 v5, 0x1

    .line 495
    const/4 v6, 0x0

    .line 496
    invoke-direct {v2, v3, v5, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 500
    .line 501
    .line 502
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->I:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 503
    .line 504
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 507
    .line 508
    .line 509
    new-instance v1, Ld6/a;

    .line 510
    .line 511
    invoke-direct {v1}, Ld6/a;-><init>()V

    .line 512
    .line 513
    .line 514
    iput v4, v1, Ld6/a;->h:I

    .line 515
    .line 516
    iput-boolean v6, v1, Ld6/a;->g:Z

    .line 517
    .line 518
    new-instance v3, Lua/y1;

    .line 519
    .line 520
    invoke-direct {v3, v0}, Lua/y1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;)V

    .line 521
    .line 522
    .line 523
    iput-object v3, v1, Ld6/a;->i:Le6/b;

    .line 524
    .line 525
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->I:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 526
    .line 527
    invoke-virtual {v1, v3}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v2}, Ld6/a;->g(Le6/a;)V

    .line 531
    .line 532
    .line 533
    new-instance v1, Lua/w1;

    .line 534
    .line 535
    const/4 v3, 0x2

    .line 536
    invoke-direct {v1, v0, v3}, Lua/w1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 537
    .line 538
    .line 539
    iput-object v1, v2, Lc6/g;->e:Lc6/e;

    .line 540
    .line 541
    const/4 v1, 0x0

    .line 542
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->y(I)V

    .line 543
    .line 544
    .line 545
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 546
    .line 547
    new-instance v2, Lua/w1;

    .line 548
    .line 549
    const/4 v3, 0x3

    .line 550
    invoke-direct {v2, v0, v3}, Lua/w1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 554
    .line 555
    .line 556
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 557
    .line 558
    new-instance v2, Lua/w1;

    .line 559
    .line 560
    const/4 v3, 0x4

    .line 561
    invoke-direct {v2, v0, v3}, Lua/w1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 565
    .line 566
    .line 567
    return-void
.end method

.method public final x(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 19
    .line 20
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lz7/o;->n(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lda/g;->A:Lda/g;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final y(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->H:Lx9/u0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lx9/u0;->F(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lz7/p;->f()Lz7/o;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lz7/o;->l(I)Lz7/p;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 2
    .line 3
    const-string v1, "isOpen"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 23
    .line 24
    const-string v1, "ico"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, -0x1

    .line 35
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/carui/PetIcons;->apply(Landroid/widget/ImageView;I)Z
    move-result v1
    if-eqz v1, :carui_static_icon
    return-void
    :carui_static_icon
    const/4 v1, -0x1
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "/FloatButtonIco"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v1, 0x1

    .line 71
    const v2, 0x7f080128

    .line 72
    .line 73
    .line 74
    if-ne v0, v1, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x2

    .line 83
    if-ne v0, v1, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 86
    .line 87
    const v1, 0x7f080129

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x3

    .line 95
    if-ne v0, v1, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 98
    .line 99
    const v1, 0x7f08012a

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/4 v1, 0x4

    .line 107
    if-ne v0, v1, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 110
    .line 111
    const v1, 0x7f08012b

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/4 v1, 0x5

    .line 119
    if-ne v0, v1, :cond_6

    .line 120
    .line 121
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 122
    .line 123
    const v1, 0x7f0802bd

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->M:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-void
.end method
