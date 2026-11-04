.class public final Lv3/t;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final y1:[F


# instance fields
.field public final A:Landroid/widget/TextView;

.field public final B:Landroid/widget/TextView;

.field public final C:Landroid/widget/ImageView;

.field public final D:Landroid/widget/ImageView;

.field public final E:Landroid/widget/ImageView;

.field public final F:Landroid/widget/ImageView;

.field public final G:Landroid/widget/ImageView;

.field public final H:Landroid/widget/ImageView;

.field public final I:Landroid/view/View;

.field public final K:Landroid/view/View;

.field public final L:Landroid/view/View;

.field public final M:Landroid/widget/TextView;

.field public final M0:Landroid/graphics/drawable/Drawable;

.field public final N:Landroid/widget/TextView;

.field public final N0:Landroid/graphics/drawable/Drawable;

.field public final O:Lv3/l0;

.field public final O0:Landroid/graphics/drawable/Drawable;

.field public final P:Ljava/lang/StringBuilder;

.field public final P0:Ljava/lang/String;

.field public final Q0:Ljava/lang/String;

.field public final R:Ljava/util/Formatter;

.field public final R0:Ljava/lang/String;

.field public final S:Lr1/o0;

.field public final S0:Landroid/graphics/drawable/Drawable;

.field public final T:Lr1/p0;

.field public final T0:Landroid/graphics/drawable/Drawable;

.field public final U0:F

.field public final V:Lua/g8;

.field public final V0:F

.field public final W0:Ljava/lang/String;

.field public final X0:Ljava/lang/String;

.field public final Y0:Landroid/graphics/drawable/Drawable;

.field public final Z0:Landroid/graphics/drawable/Drawable;

.field public final a:Lv3/y;

.field public final a1:Ljava/lang/String;

.field public final b:Landroid/content/res/Resources;

.field public final b1:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public final c1:Landroid/graphics/drawable/Drawable;

.field public final d:Lv3/h;

.field public final d1:Landroid/graphics/drawable/Drawable;

.field public final e:Ljava/lang/Class;

.field public final e1:Ljava/lang/String;

.field public final f:Ljava/lang/reflect/Method;

.field public final f1:Ljava/lang/String;

.field public final g:Ljava/lang/reflect/Method;

.field public g1:Lr1/m0;

.field public final h:Ljava/lang/Class;

.field public final h0:Landroid/graphics/drawable/Drawable;

.field public h1:Lv3/i;

.field public final i:Ljava/lang/reflect/Method;

.field public i1:Z

.field public final j:Ljava/lang/reflect/Method;

.field public j1:Z

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public k1:Z

.field public final l:Landroidx/recyclerview/widget/RecyclerView;

.field public l1:Z

.field public final m:Lv3/n;

.field public m1:Z

.field public final n:Lv3/k;

.field public n1:Z

.field public o1:I

.field public final p:Lv3/p;

.field public p1:Z

.field public final q:Lv3/g;

.field public q1:I

.field public final r:Ll5/x;

.field public r1:I

.field public final s:Landroid/widget/PopupWindow;

.field public s1:[J

.field public final t:I

.field public final t0:Landroid/graphics/drawable/Drawable;

.field public t1:[Z

.field public final u1:[J

.field public final v:Landroid/widget/ImageView;

.field public final v1:[Z

.field public final w:Landroid/widget/ImageView;

.field public w1:J

.field public final x:Landroid/widget/ImageView;

.field public x1:Z

.field public final y:Landroid/view/View;

.field public final z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.ui"

    .line 2
    .line 3
    invoke-static {v0}, Lr1/z;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v0, Lv3/t;->y1:[F

    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v9, 0x2

    .line 6
    const/4 v1, 0x6

    .line 7
    const-string v2, "isScrubbingModeEnabled"

    .line 8
    .line 9
    const-string v3, "setScrubbingModeEnabled"

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/4 v11, 0x0

    .line 13
    invoke-direct {v0, v8, v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    .line 15
    .line 16
    const/4 v12, 0x1

    .line 17
    iput-boolean v12, v0, Lv3/t;->l1:Z

    .line 18
    .line 19
    const/16 v4, 0x1388

    .line 20
    .line 21
    iput v4, v0, Lv3/t;->o1:I

    .line 22
    .line 23
    iput v11, v0, Lv3/t;->r1:I

    .line 24
    .line 25
    const/16 v4, 0xc8

    .line 26
    .line 27
    iput v4, v0, Lv3/t;->q1:I

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const v5, 0x7f0e010d

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const/high16 v4, 0x40000

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lv3/h;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Lv3/h;-><init>(Lv3/t;)V

    .line 47
    .line 48
    .line 49
    iput-object v4, v0, Lv3/t;->d:Lv3/h;

    .line 50
    .line 51
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v4, v0, Lv3/t;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    new-instance v4, Lr1/o0;

    .line 59
    .line 60
    invoke-direct {v4}, Lr1/o0;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v4, v0, Lv3/t;->S:Lr1/o0;

    .line 64
    .line 65
    new-instance v4, Lr1/p0;

    .line 66
    .line 67
    invoke-direct {v4}, Lr1/p0;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v4, v0, Lv3/t;->T:Lr1/p0;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v4, v0, Lv3/t;->P:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    new-instance v5, Ljava/util/Formatter;

    .line 80
    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-direct {v5, v4, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 86
    .line 87
    .line 88
    iput-object v5, v0, Lv3/t;->R:Ljava/util/Formatter;

    .line 89
    .line 90
    new-array v4, v11, [J

    .line 91
    .line 92
    iput-object v4, v0, Lv3/t;->s1:[J

    .line 93
    .line 94
    new-array v4, v11, [Z

    .line 95
    .line 96
    iput-object v4, v0, Lv3/t;->t1:[Z

    .line 97
    .line 98
    new-array v4, v11, [J

    .line 99
    .line 100
    iput-object v4, v0, Lv3/t;->u1:[J

    .line 101
    .line 102
    new-array v4, v11, [Z

    .line 103
    .line 104
    iput-object v4, v0, Lv3/t;->v1:[Z

    .line 105
    .line 106
    new-instance v4, Lua/g8;

    .line 107
    .line 108
    const/4 v5, 0x3

    .line 109
    invoke-direct {v4, v5, v0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iput-object v4, v0, Lv3/t;->V:Lua/g8;

    .line 113
    .line 114
    :try_start_0
    const-class v4, Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .line 116
    :try_start_1
    new-array v5, v12, [Ljava/lang/Class;

    .line 117
    .line 118
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 119
    .line 120
    aput-object v6, v5, v11

    .line 121
    .line 122
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    .line 124
    .line 125
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :try_start_2
    invoke-virtual {v4, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 127
    .line 128
    .line 129
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-object v5, v10

    .line 132
    goto :goto_0

    .line 133
    :catch_1
    move-object v4, v10

    .line 134
    move-object v5, v4

    .line 135
    :catch_2
    :goto_0
    move-object v6, v10

    .line 136
    :goto_1
    iput-object v4, v0, Lv3/t;->e:Ljava/lang/Class;

    .line 137
    .line 138
    iput-object v5, v0, Lv3/t;->f:Ljava/lang/reflect/Method;

    .line 139
    .line 140
    iput-object v6, v0, Lv3/t;->g:Ljava/lang/reflect/Method;

    .line 141
    .line 142
    :try_start_3
    const-string v4, "androidx.media3.transformer.CompositionPlayer"

    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5

    .line 148
    :try_start_4
    new-array v5, v12, [Ljava/lang/Class;

    .line 149
    .line 150
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 151
    .line 152
    aput-object v6, v5, v11

    .line 153
    .line 154
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 155
    .line 156
    .line 157
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    .line 158
    :try_start_5
    invoke-virtual {v4, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 159
    .line 160
    .line 161
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    goto :goto_3

    .line 163
    :catch_3
    nop

    .line 164
    goto :goto_2

    .line 165
    :catch_4
    nop

    .line 166
    move-object v3, v10

    .line 167
    goto :goto_2

    .line 168
    :catch_5
    nop

    .line 169
    move-object v3, v10

    .line 170
    move-object v4, v3

    .line 171
    :goto_2
    move-object v2, v10

    .line 172
    :goto_3
    iput-object v4, v0, Lv3/t;->h:Ljava/lang/Class;

    .line 173
    .line 174
    iput-object v3, v0, Lv3/t;->i:Ljava/lang/reflect/Method;

    .line 175
    .line 176
    iput-object v2, v0, Lv3/t;->j:Ljava/lang/reflect/Method;

    .line 177
    .line 178
    const v2, 0x7f0b0117

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Landroid/widget/TextView;

    .line 186
    .line 187
    iput-object v2, v0, Lv3/t;->M:Landroid/widget/TextView;

    .line 188
    .line 189
    const v2, 0x7f0b012c

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Landroid/widget/TextView;

    .line 197
    .line 198
    iput-object v2, v0, Lv3/t;->N:Landroid/widget/TextView;

    .line 199
    .line 200
    const v2, 0x7f0b0138

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    move-object v13, v2

    .line 208
    check-cast v13, Landroid/widget/ImageView;

    .line 209
    .line 210
    iput-object v13, v0, Lv3/t;->F:Landroid/widget/ImageView;

    .line 211
    .line 212
    if-eqz v13, :cond_0

    .line 213
    .line 214
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 215
    .line 216
    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    :cond_0
    const v2, 0x7f0b011d

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Landroid/widget/ImageView;

    .line 227
    .line 228
    iput-object v2, v0, Lv3/t;->G:Landroid/widget/ImageView;

    .line 229
    .line 230
    new-instance v3, Lua/z6;

    .line 231
    .line 232
    invoke-direct {v3, v1, v0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const/16 v4, 0x8

    .line 236
    .line 237
    if-nez v2, :cond_1

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    :goto_4
    const v2, 0x7f0b0123

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Landroid/widget/ImageView;

    .line 254
    .line 255
    iput-object v2, v0, Lv3/t;->H:Landroid/widget/ImageView;

    .line 256
    .line 257
    new-instance v3, Lua/z6;

    .line 258
    .line 259
    invoke-direct {v3, v1, v0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    if-nez v2, :cond_2

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    :goto_5
    const v1, 0x7f0b0133

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    iput-object v1, v0, Lv3/t;->I:Landroid/view/View;

    .line 279
    .line 280
    if-eqz v1, :cond_3

    .line 281
    .line 282
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    :cond_3
    const v1, 0x7f0b012b

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iput-object v1, v0, Lv3/t;->K:Landroid/view/View;

    .line 295
    .line 296
    if-eqz v1, :cond_4

    .line 297
    .line 298
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .line 302
    .line 303
    :cond_4
    const v1, 0x7f0b010d

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iput-object v1, v0, Lv3/t;->L:Landroid/view/View;

    .line 311
    .line 312
    if-eqz v1, :cond_5

    .line 313
    .line 314
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    :cond_5
    const v1, 0x7f0b012e

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Lv3/l0;

    .line 327
    .line 328
    const v3, 0x7f0b012f

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    if-eqz v2, :cond_6

    .line 336
    .line 337
    iput-object v2, v0, Lv3/t;->O:Lv3/l0;

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_6
    if-eqz v3, :cond_7

    .line 341
    .line 342
    new-instance v2, Lv3/e;

    .line 343
    .line 344
    invoke-direct {v2, v8}, Lv3/e;-><init>(Landroid/content/ContextWrapper;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Landroid/view/ViewGroup;

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 371
    .line 372
    .line 373
    iput-object v2, v0, Lv3/t;->O:Lv3/l0;

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_7
    iput-object v10, v0, Lv3/t;->O:Lv3/l0;

    .line 377
    .line 378
    :goto_6
    iget-object v1, v0, Lv3/t;->O:Lv3/l0;

    .line 379
    .line 380
    if-eqz v1, :cond_8

    .line 381
    .line 382
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 383
    .line 384
    check-cast v1, Lv3/e;

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    iget-object v1, v1, Lv3/e;->z:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    :cond_8
    invoke-static {v10}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iput-object v1, v0, Lv3/t;->c:Landroid/os/Handler;

    .line 399
    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v14

    .line 404
    iput-object v14, v0, Lv3/t;->b:Landroid/content/res/Resources;

    .line 405
    .line 406
    const v1, 0x7f0b012a

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Landroid/widget/ImageView;

    .line 414
    .line 415
    iput-object v1, v0, Lv3/t;->x:Landroid/widget/ImageView;

    .line 416
    .line 417
    if-eqz v1, :cond_9

    .line 418
    .line 419
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    :cond_9
    const v1, 0x7f0b012d

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    move-object v15, v1

    .line 432
    check-cast v15, Landroid/widget/ImageView;

    .line 433
    .line 434
    iput-object v15, v0, Lv3/t;->v:Landroid/widget/ImageView;

    .line 435
    .line 436
    if-eqz v15, :cond_a

    .line 437
    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    const v2, 0x7f080118

    .line 443
    .line 444
    .line 445
    invoke-static {v14, v2, v1}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    .line 451
    .line 452
    iget-object v1, v0, Lv3/t;->d:Lv3/h;

    .line 453
    .line 454
    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    :cond_a
    const v1, 0x7f0b0124

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    move-object v7, v1

    .line 465
    check-cast v7, Landroid/widget/ImageView;

    .line 466
    .line 467
    iput-object v7, v0, Lv3/t;->w:Landroid/widget/ImageView;

    .line 468
    .line 469
    if-eqz v7, :cond_b

    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    const v2, 0x7f080113

    .line 476
    .line 477
    .line 478
    invoke-static {v14, v2, v1}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    .line 484
    .line 485
    iget-object v1, v0, Lv3/t;->d:Lv3/h;

    .line 486
    .line 487
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    .line 489
    .line 490
    :cond_b
    sget-object v1, Lo0/o;->a:Ljava/lang/ThreadLocal;

    .line 491
    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-eqz v1, :cond_c

    .line 497
    .line 498
    move-object/from16 v17, v7

    .line 499
    .line 500
    move-object v1, v10

    .line 501
    goto :goto_7

    .line 502
    :cond_c
    new-instance v3, Landroid/util/TypedValue;

    .line 503
    .line 504
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 505
    .line 506
    .line 507
    const/4 v6, 0x0

    .line 508
    const/16 v16, 0x0

    .line 509
    .line 510
    const/high16 v2, 0x7f090000

    .line 511
    .line 512
    const/4 v4, 0x0

    .line 513
    const/4 v5, 0x0

    .line 514
    move-object/from16 v1, p1

    .line 515
    .line 516
    move-object/from16 v17, v7

    .line 517
    .line 518
    move/from16 v7, v16

    .line 519
    .line 520
    invoke-static/range {v1 .. v7}, Lo0/o;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILo0/b;ZZ)Landroid/graphics/Typeface;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    :goto_7
    const v2, 0x7f0b0131

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Landroid/widget/ImageView;

    .line 532
    .line 533
    const v3, 0x7f0b0132

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    check-cast v3, Landroid/widget/TextView;

    .line 541
    .line 542
    if-eqz v2, :cond_d

    .line 543
    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    const v4, 0x7f080121

    .line 549
    .line 550
    .line 551
    invoke-static {v14, v4, v3}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    .line 557
    .line 558
    iput-object v2, v0, Lv3/t;->z:Landroid/view/View;

    .line 559
    .line 560
    iput-object v10, v0, Lv3/t;->B:Landroid/widget/TextView;

    .line 561
    .line 562
    goto :goto_8

    .line 563
    :cond_d
    if-eqz v3, :cond_e

    .line 564
    .line 565
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 566
    .line 567
    .line 568
    iput-object v3, v0, Lv3/t;->B:Landroid/widget/TextView;

    .line 569
    .line 570
    iput-object v3, v0, Lv3/t;->z:Landroid/view/View;

    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_e
    iput-object v10, v0, Lv3/t;->B:Landroid/widget/TextView;

    .line 574
    .line 575
    iput-object v10, v0, Lv3/t;->z:Landroid/view/View;

    .line 576
    .line 577
    :goto_8
    iget-object v2, v0, Lv3/t;->z:Landroid/view/View;

    .line 578
    .line 579
    if-eqz v2, :cond_f

    .line 580
    .line 581
    iget-object v3, v0, Lv3/t;->d:Lv3/h;

    .line 582
    .line 583
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    .line 585
    .line 586
    :cond_f
    const v2, 0x7f0b011b

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    check-cast v2, Landroid/widget/ImageView;

    .line 594
    .line 595
    const v3, 0x7f0b011c

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    check-cast v3, Landroid/widget/TextView;

    .line 603
    .line 604
    if-eqz v2, :cond_10

    .line 605
    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    const v3, 0x7f080120

    .line 611
    .line 612
    .line 613
    invoke-static {v14, v3, v1}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    .line 619
    .line 620
    iput-object v2, v0, Lv3/t;->y:Landroid/view/View;

    .line 621
    .line 622
    iput-object v10, v0, Lv3/t;->A:Landroid/widget/TextView;

    .line 623
    .line 624
    goto :goto_9

    .line 625
    :cond_10
    if-eqz v3, :cond_11

    .line 626
    .line 627
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 628
    .line 629
    .line 630
    iput-object v3, v0, Lv3/t;->A:Landroid/widget/TextView;

    .line 631
    .line 632
    iput-object v3, v0, Lv3/t;->y:Landroid/view/View;

    .line 633
    .line 634
    goto :goto_9

    .line 635
    :cond_11
    iput-object v10, v0, Lv3/t;->A:Landroid/widget/TextView;

    .line 636
    .line 637
    iput-object v10, v0, Lv3/t;->y:Landroid/view/View;

    .line 638
    .line 639
    :goto_9
    iget-object v1, v0, Lv3/t;->y:Landroid/view/View;

    .line 640
    .line 641
    if-eqz v1, :cond_12

    .line 642
    .line 643
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    .line 647
    .line 648
    :cond_12
    const v1, 0x7f0b0130

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    check-cast v1, Landroid/widget/ImageView;

    .line 656
    .line 657
    iput-object v1, v0, Lv3/t;->C:Landroid/widget/ImageView;

    .line 658
    .line 659
    if-eqz v1, :cond_13

    .line 660
    .line 661
    iget-object v2, v0, Lv3/t;->d:Lv3/h;

    .line 662
    .line 663
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    .line 665
    .line 666
    :cond_13
    const v2, 0x7f0b0135

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    check-cast v2, Landroid/widget/ImageView;

    .line 674
    .line 675
    iput-object v2, v0, Lv3/t;->D:Landroid/widget/ImageView;

    .line 676
    .line 677
    if-eqz v2, :cond_14

    .line 678
    .line 679
    iget-object v3, v0, Lv3/t;->d:Lv3/h;

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    .line 683
    .line 684
    :cond_14
    const v3, 0x7f0c000a

    .line 685
    .line 686
    .line 687
    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    int-to-float v3, v3

    .line 692
    const/high16 v4, 0x42c80000    # 100.0f

    .line 693
    .line 694
    div-float/2addr v3, v4

    .line 695
    iput v3, v0, Lv3/t;->U0:F

    .line 696
    .line 697
    const v3, 0x7f0c0009

    .line 698
    .line 699
    .line 700
    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    int-to-float v3, v3

    .line 705
    div-float/2addr v3, v4

    .line 706
    iput v3, v0, Lv3/t;->V0:F

    .line 707
    .line 708
    const v3, 0x7f0b013e

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    check-cast v3, Landroid/widget/ImageView;

    .line 716
    .line 717
    iput-object v3, v0, Lv3/t;->E:Landroid/widget/ImageView;

    .line 718
    .line 719
    if-eqz v3, :cond_15

    .line 720
    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    const v5, 0x7f080125

    .line 726
    .line 727
    .line 728
    invoke-static {v14, v5, v4}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0, v3, v11}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 736
    .line 737
    .line 738
    :cond_15
    new-instance v4, Lv3/y;

    .line 739
    .line 740
    invoke-direct {v4, v0}, Lv3/y;-><init>(Lv3/t;)V

    .line 741
    .line 742
    .line 743
    iput-object v4, v0, Lv3/t;->a:Lv3/y;

    .line 744
    .line 745
    iput-boolean v12, v4, Lv3/y;->D:Z

    .line 746
    .line 747
    const v5, 0x7f130060

    .line 748
    .line 749
    .line 750
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 755
    .line 756
    .line 757
    move-result-object v6

    .line 758
    const v7, 0x7f080122

    .line 759
    .line 760
    .line 761
    invoke-static {v14, v7, v6}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 762
    .line 763
    .line 764
    move-result-object v6

    .line 765
    const v7, 0x7f130081

    .line 766
    .line 767
    .line 768
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v7

    .line 772
    new-array v10, v9, [Ljava/lang/String;

    .line 773
    .line 774
    aput-object v5, v10, v11

    .line 775
    .line 776
    aput-object v7, v10, v12

    .line 777
    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    const v7, 0x7f08010e

    .line 783
    .line 784
    .line 785
    invoke-static {v14, v7, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    .line 790
    .line 791
    aput-object v6, v7, v11

    .line 792
    .line 793
    aput-object v5, v7, v12

    .line 794
    .line 795
    new-instance v5, Lv3/n;

    .line 796
    .line 797
    invoke-direct {v5, v0, v10, v7}, Lv3/n;-><init>(Lv3/t;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 798
    .line 799
    .line 800
    iput-object v5, v0, Lv3/t;->m:Lv3/n;

    .line 801
    .line 802
    const v6, 0x7f070249

    .line 803
    .line 804
    .line 805
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 806
    .line 807
    .line 808
    move-result v6

    .line 809
    iput v6, v0, Lv3/t;->t:I

    .line 810
    .line 811
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    const v7, 0x7f0e010f

    .line 816
    .line 817
    .line 818
    const/4 v9, 0x0

    .line 819
    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 820
    .line 821
    .line 822
    move-result-object v6

    .line 823
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 824
    .line 825
    iput-object v6, v0, Lv3/t;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 826
    .line 827
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 828
    .line 829
    .line 830
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 831
    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 833
    .line 834
    .line 835
    invoke-direct {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 839
    .line 840
    .line 841
    new-instance v5, Landroid/widget/PopupWindow;

    .line 842
    .line 843
    const/4 v7, -0x2

    .line 844
    invoke-direct {v5, v6, v7, v7, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 845
    .line 846
    .line 847
    iput-object v5, v0, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 848
    .line 849
    iget-object v6, v0, Lv3/t;->d:Lv3/h;

    .line 850
    .line 851
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 852
    .line 853
    .line 854
    iput-boolean v12, v0, Lv3/t;->x1:Z

    .line 855
    .line 856
    new-instance v5, Ll5/x;

    .line 857
    .line 858
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 859
    .line 860
    .line 861
    move-result-object v6

    .line 862
    invoke-direct {v5, v6}, Ll5/x;-><init>(Landroid/content/res/Resources;)V

    .line 863
    .line 864
    .line 865
    iput-object v5, v0, Lv3/t;->r:Ll5/x;

    .line 866
    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 868
    .line 869
    .line 870
    move-result-object v5

    .line 871
    const v6, 0x7f080124

    .line 872
    .line 873
    .line 874
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    iput-object v5, v0, Lv3/t;->Y0:Landroid/graphics/drawable/Drawable;

    .line 879
    .line 880
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 881
    .line 882
    .line 883
    move-result-object v5

    .line 884
    const v6, 0x7f080123

    .line 885
    .line 886
    .line 887
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 888
    .line 889
    .line 890
    move-result-object v5

    .line 891
    iput-object v5, v0, Lv3/t;->Z0:Landroid/graphics/drawable/Drawable;

    .line 892
    .line 893
    const v5, 0x7f130055

    .line 894
    .line 895
    .line 896
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v5

    .line 900
    iput-object v5, v0, Lv3/t;->a1:Ljava/lang/String;

    .line 901
    .line 902
    const v5, 0x7f130054

    .line 903
    .line 904
    .line 905
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    iput-object v5, v0, Lv3/t;->b1:Ljava/lang/String;

    .line 910
    .line 911
    new-instance v5, Lv3/p;

    .line 912
    .line 913
    invoke-direct {v5, v0}, Lv3/p;-><init>(Lv3/t;)V

    .line 914
    .line 915
    .line 916
    iput-object v5, v0, Lv3/t;->p:Lv3/p;

    .line 917
    .line 918
    new-instance v5, Lv3/g;

    .line 919
    .line 920
    invoke-direct {v5, v0}, Lv3/g;-><init>(Lv3/t;)V

    .line 921
    .line 922
    .line 923
    iput-object v5, v0, Lv3/t;->q:Lv3/g;

    .line 924
    .line 925
    new-instance v5, Lv3/k;

    .line 926
    .line 927
    const/high16 v6, 0x7f030000

    .line 928
    .line 929
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v6

    .line 933
    sget-object v7, Lv3/t;->y1:[F

    .line 934
    .line 935
    invoke-direct {v5, v0, v6, v7}, Lv3/k;-><init>(Lv3/t;[Ljava/lang/String;[F)V

    .line 936
    .line 937
    .line 938
    iput-object v5, v0, Lv3/t;->n:Lv3/k;

    .line 939
    .line 940
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 941
    .line 942
    .line 943
    move-result-object v5

    .line 944
    const v6, 0x7f080117

    .line 945
    .line 946
    .line 947
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    iput-object v5, v0, Lv3/t;->h0:Landroid/graphics/drawable/Drawable;

    .line 952
    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    const v6, 0x7f080116

    .line 958
    .line 959
    .line 960
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 961
    .line 962
    .line 963
    move-result-object v5

    .line 964
    iput-object v5, v0, Lv3/t;->t0:Landroid/graphics/drawable/Drawable;

    .line 965
    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    const v6, 0x7f080112

    .line 971
    .line 972
    .line 973
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 974
    .line 975
    .line 976
    move-result-object v5

    .line 977
    iput-object v5, v0, Lv3/t;->c1:Landroid/graphics/drawable/Drawable;

    .line 978
    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 980
    .line 981
    .line 982
    move-result-object v5

    .line 983
    const v6, 0x7f080111

    .line 984
    .line 985
    .line 986
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 987
    .line 988
    .line 989
    move-result-object v5

    .line 990
    iput-object v5, v0, Lv3/t;->d1:Landroid/graphics/drawable/Drawable;

    .line 991
    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    const v6, 0x7f08011a

    .line 997
    .line 998
    .line 999
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v5

    .line 1003
    iput-object v5, v0, Lv3/t;->M0:Landroid/graphics/drawable/Drawable;

    .line 1004
    .line 1005
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    const v6, 0x7f08011b

    .line 1010
    .line 1011
    .line 1012
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v5

    .line 1016
    iput-object v5, v0, Lv3/t;->N0:Landroid/graphics/drawable/Drawable;

    .line 1017
    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v5

    .line 1022
    const v6, 0x7f080119

    .line 1023
    .line 1024
    .line 1025
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v5

    .line 1029
    iput-object v5, v0, Lv3/t;->O0:Landroid/graphics/drawable/Drawable;

    .line 1030
    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v5

    .line 1035
    const v6, 0x7f08011f

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    iput-object v5, v0, Lv3/t;->S0:Landroid/graphics/drawable/Drawable;

    .line 1043
    .line 1044
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v5

    .line 1048
    const v6, 0x7f08011e

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v14, v6, v5}, Ltb/b;->g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v5

    .line 1055
    iput-object v5, v0, Lv3/t;->T0:Landroid/graphics/drawable/Drawable;

    .line 1056
    .line 1057
    const v5, 0x7f130059

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v5

    .line 1064
    iput-object v5, v0, Lv3/t;->e1:Ljava/lang/String;

    .line 1065
    .line 1066
    const v5, 0x7f130058

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v5

    .line 1073
    iput-object v5, v0, Lv3/t;->f1:Ljava/lang/String;

    .line 1074
    .line 1075
    const v5, 0x7f130063

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v5

    .line 1082
    iput-object v5, v0, Lv3/t;->P0:Ljava/lang/String;

    .line 1083
    .line 1084
    const v5, 0x7f130064

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v5

    .line 1091
    iput-object v5, v0, Lv3/t;->Q0:Ljava/lang/String;

    .line 1092
    .line 1093
    const v5, 0x7f130062

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v5

    .line 1100
    iput-object v5, v0, Lv3/t;->R0:Ljava/lang/String;

    .line 1101
    .line 1102
    const v5, 0x7f13006a

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v5

    .line 1109
    iput-object v5, v0, Lv3/t;->W0:Ljava/lang/String;

    .line 1110
    .line 1111
    const v5, 0x7f130069

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v5

    .line 1118
    iput-object v5, v0, Lv3/t;->X0:Ljava/lang/String;

    .line 1119
    .line 1120
    const v5, 0x7f0b010f

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v5

    .line 1127
    check-cast v5, Landroid/view/ViewGroup;

    .line 1128
    .line 1129
    invoke-virtual {v4, v5, v12}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1130
    .line 1131
    .line 1132
    iget-object v5, v0, Lv3/t;->y:Landroid/view/View;

    .line 1133
    .line 1134
    invoke-virtual {v4, v5, v12}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1135
    .line 1136
    .line 1137
    iget-object v5, v0, Lv3/t;->z:Landroid/view/View;

    .line 1138
    .line 1139
    invoke-virtual {v4, v5, v12}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v4, v15, v12}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1143
    .line 1144
    .line 1145
    move-object/from16 v5, v17

    .line 1146
    .line 1147
    invoke-virtual {v4, v5, v12}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v4, v2, v11}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v4, v13, v11}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v4, v3, v11}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1157
    .line 1158
    .line 1159
    iget v2, v0, Lv3/t;->r1:I

    .line 1160
    .line 1161
    if-eqz v2, :cond_16

    .line 1162
    .line 1163
    const/4 v11, 0x1

    .line 1164
    :cond_16
    invoke-virtual {v4, v1, v11}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 1165
    .line 1166
    .line 1167
    new-instance v1, Lub/a;

    .line 1168
    .line 1169
    invoke-direct {v1, v12, v0}, Lub/a;-><init>(ILjava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1173
    .line 1174
    .line 1175
    return-void
.end method

.method public static a(Lv3/t;Lr1/m0;J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lv3/t;->m1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, La/b;

    .line 7
    .line 8
    const/16 v0, 0x11

    .line 9
    .line 10
    invoke-virtual {p1, v0}, La/b;->i(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    invoke-virtual {p1, v0}, La/b;->i(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Ly1/x;

    .line 26
    .line 27
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lr1/q0;->o()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    iget-object v6, p0, Lv3/t;->T:Lr1/p0;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v6, v4, v5}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-wide v4, v4, Lr1/p0;->l:J

    .line 45
    .line 46
    invoke-static {v4, v5}, Lu1/f0;->R(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    cmp-long v6, p2, v4

    .line 51
    .line 52
    if-gez v6, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 56
    .line 57
    if-ne v3, v6, :cond_1

    .line 58
    .line 59
    move-wide p2, v4

    .line 60
    :goto_1
    invoke-virtual {p1, v3, p2, p3, v1}, La/b;->p(IJZ)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    sub-long/2addr p2, v4

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, La/b;

    .line 69
    .line 70
    const/4 v0, 0x5

    .line 71
    invoke-virtual {p1, v0}, La/b;->i(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    move-object v0, p1

    .line 78
    check-cast v0, Ly1/x;

    .line 79
    .line 80
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p1, v0, p2, p3, v1}, La/b;->p(IJZ)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lv3/t;->s()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static synthetic b(Lv3/t;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv3/t;->setPlaybackSpeed(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lr1/m0;Lr1/p0;)Z
    .locals 9

    .line 1
    check-cast p0, La/b;

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    invoke-virtual {p0, v0}, La/b;->i(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    check-cast p0, Ly1/x;

    .line 14
    .line 15
    invoke-virtual {p0}, Ly1/x;->E()Lr1/q0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lr1/q0;->o()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-le v0, v2, :cond_4

    .line 25
    .line 26
    const/16 v3, 0x64

    .line 27
    .line 28
    if-le v0, v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v0, :cond_3

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    invoke-virtual {p0, v3, p1, v4, v5}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-wide v4, v4, Lr1/p0;->l:J

    .line 41
    .line 42
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v8, v4, v6

    .line 48
    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    return v1

    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v2

    .line 56
    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 10

    .line 1
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    check-cast v0, La/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, La/b;->i(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Ly1/x;

    .line 20
    .line 21
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, Ly1/x;->f1:Ly1/v0;

    .line 25
    .line 26
    iget-object v0, v0, Ly1/v0;->o:Lr1/h0;

    .line 27
    .line 28
    new-instance v2, Lr1/h0;

    .line 29
    .line 30
    iget v0, v0, Lr1/h0;->b:F

    .line 31
    .line 32
    invoke-direct {v2, p1, v0}, Lr1/h0;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 36
    .line 37
    .line 38
    iget-object p1, v1, Ly1/x;->f1:Ly1/v0;

    .line 39
    .line 40
    iget-object p1, p1, Ly1/v0;->o:Lr1/h0;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lr1/h0;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, v1, Ly1/x;->f1:Ly1/v0;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ly1/v0;->g(Lr1/h0;)Ly1/v0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget v0, v1, Ly1/x;->M:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    iput v0, v1, Ly1/x;->M:I

    .line 60
    .line 61
    iget-object v0, v1, Ly1/x;->l:Ly1/f0;

    .line 62
    .line 63
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 64
    .line 65
    const/4 v3, 0x4

    .line 66
    invoke-virtual {v0, v3, v2}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lu1/a0;->b()V

    .line 71
    .line 72
    .line 73
    const/4 v8, -0x1

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x5

    .line 78
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    move-object v2, p1

    .line 84
    invoke-virtual/range {v1 .. v9}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lv3/t;->g1:Lr1/m0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    const/16 v3, 0x58

    .line 11
    .line 12
    const/16 v4, 0x57

    .line 13
    .line 14
    const/16 v5, 0x7f

    .line 15
    .line 16
    const/16 v6, 0x7e

    .line 17
    .line 18
    const/16 v7, 0x4f

    .line 19
    .line 20
    const/16 v8, 0x55

    .line 21
    .line 22
    const/16 v9, 0x59

    .line 23
    .line 24
    const/16 v10, 0x5a

    .line 25
    .line 26
    if-eq v0, v10, :cond_0

    .line 27
    .line 28
    if-eq v0, v9, :cond_0

    .line 29
    .line 30
    if-eq v0, v8, :cond_0

    .line 31
    .line 32
    if-eq v0, v7, :cond_0

    .line 33
    .line 34
    if-eq v0, v6, :cond_0

    .line 35
    .line 36
    if-eq v0, v5, :cond_0

    .line 37
    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    if-ne v0, v3, :cond_a

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    const/4 v12, 0x1

    .line 47
    if-nez v11, :cond_9

    .line 48
    .line 49
    if-ne v0, v10, :cond_1

    .line 50
    .line 51
    move-object p1, v1

    .line 52
    check-cast p1, Ly1/x;

    .line 53
    .line 54
    invoke-virtual {p1}, Ly1/x;->J()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v0, 0x4

    .line 59
    if-eq p1, v0, :cond_9

    .line 60
    .line 61
    check-cast v1, La/b;

    .line 62
    .line 63
    const/16 p1, 0xc

    .line 64
    .line 65
    invoke-virtual {v1, p1}, La/b;->i(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_9

    .line 70
    .line 71
    move-object v0, v1

    .line 72
    check-cast v0, Ly1/x;

    .line 73
    .line 74
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 75
    .line 76
    .line 77
    iget-wide v2, v0, Ly1/x;->c1:J

    .line 78
    .line 79
    invoke-virtual {v1, p1, v2, v3}, La/b;->r(IJ)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_1
    if-ne v0, v9, :cond_2

    .line 85
    .line 86
    move-object v9, v1

    .line 87
    check-cast v9, La/b;

    .line 88
    .line 89
    const/16 v10, 0xb

    .line 90
    .line 91
    invoke-virtual {v9, v10}, La/b;->i(I)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_2

    .line 96
    .line 97
    move-object p1, v9

    .line 98
    check-cast p1, Ly1/x;

    .line 99
    .line 100
    invoke-virtual {p1}, Ly1/x;->h0()V

    .line 101
    .line 102
    .line 103
    iget-wide v0, p1, Ly1/x;->b1:J

    .line 104
    .line 105
    neg-long v0, v0

    .line 106
    invoke-virtual {v9, v10, v0, v1}, La/b;->r(IJ)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_9

    .line 115
    .line 116
    if-eq v0, v7, :cond_7

    .line 117
    .line 118
    if-eq v0, v8, :cond_7

    .line 119
    .line 120
    if-eq v0, v4, :cond_6

    .line 121
    .line 122
    if-eq v0, v3, :cond_5

    .line 123
    .line 124
    if-eq v0, v6, :cond_4

    .line 125
    .line 126
    if-eq v0, v5, :cond_3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    sget-object p1, Lu1/f0;->a:Ljava/lang/String;

    .line 130
    .line 131
    check-cast v1, La/b;

    .line 132
    .line 133
    invoke-virtual {v1, v12}, La/b;->i(I)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    check-cast v1, Ly1/x;

    .line 140
    .line 141
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v12, v2}, Ly1/x;->e0(IZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    invoke-static {v1}, Lu1/f0;->y(Lr1/m0;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    check-cast v1, La/b;

    .line 153
    .line 154
    const/4 p1, 0x7

    .line 155
    invoke-virtual {v1, p1}, La/b;->i(I)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    invoke-virtual {v1}, La/b;->s()V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    check-cast v1, La/b;

    .line 166
    .line 167
    const/16 p1, 0x9

    .line 168
    .line 169
    invoke-virtual {v1, p1}, La/b;->i(I)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    invoke-virtual {v1}, La/b;->q()V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_7
    iget-boolean p1, p0, Lv3/t;->l1:Z

    .line 180
    .line 181
    invoke-static {v1, p1}, Lu1/f0;->O(Lr1/m0;Z)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    invoke-static {v1}, Lu1/f0;->y(Lr1/m0;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_8
    check-cast v1, La/b;

    .line 192
    .line 193
    invoke-virtual {v1, v12}, La/b;->i(I)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_9

    .line 198
    .line 199
    check-cast v1, Ly1/x;

    .line 200
    .line 201
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v12, v2}, Ly1/x;->e0(IZ)V

    .line 205
    .line 206
    .line 207
    :cond_9
    :goto_0
    return v12

    .line 208
    :cond_a
    return v2
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lv3/t;->d(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public final e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/t;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lv3/t;->u()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lv3/t;->x1:Z

    .line 11
    .line 12
    iget-object p1, p0, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lv3/t;->x1:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    iget v1, p0, Lv3/t;->t:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    neg-int v2, v2

    .line 37
    sub-int/2addr v2, v1

    .line 38
    invoke-virtual {p1, p2, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final f(Lr1/x0;I)Lu7/y0;
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "initialCapacity"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lu7/q;->c(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v1, p1, Lr1/x0;->a:Lu7/g0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v3, v5, :cond_5

    .line 19
    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lr1/w0;

    .line 25
    .line 26
    iget-object v6, v5, Lr1/w0;->b:Lr1/r0;

    .line 27
    .line 28
    iget v6, v6, Lr1/r0;->c:I

    .line 29
    .line 30
    if-eq v6, p2, :cond_0

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 34
    :goto_1
    iget v7, v5, Lr1/w0;->a:I

    .line 35
    .line 36
    if-ge v6, v7, :cond_4

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Lr1/w0;->b(I)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    iget-object v7, v5, Lr1/w0;->b:Lr1/r0;

    .line 46
    .line 47
    iget-object v7, v7, Lr1/r0;->d:[Lr1/p;

    .line 48
    .line 49
    aget-object v7, v7, v6

    .line 50
    .line 51
    iget v8, v7, Lr1/p;->e:I

    .line 52
    .line 53
    and-int/lit8 v8, v8, 0x2

    .line 54
    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget-object v8, p0, Lv3/t;->r:Ll5/x;

    .line 59
    .line 60
    invoke-virtual {v8, v7}, Ll5/x;->d(Lr1/p;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-instance v8, Lv3/q;

    .line 65
    .line 66
    invoke-direct {v8, p1, v3, v6, v7}, Lv3/q;-><init>(Lr1/x0;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    array-length v7, v0

    .line 70
    add-int/lit8 v9, v4, 0x1

    .line 71
    .line 72
    invoke-static {v7, v9}, Lu7/a0;->f(II)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    array-length v10, v0

    .line 77
    if-gt v7, v10, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_2
    aput-object v8, v0, v4

    .line 85
    .line 86
    move v4, v9

    .line 87
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-static {v4, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget v1, v0, Lv3/y;->A:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v1, v2, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lv3/y;->f()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, v0, Lv3/y;->D:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lv3/y;->i(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v1, v0, Lv3/y;->A:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Lv3/y;->n:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, v0, Lv3/y;->o:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method public getPlayer()Lr1/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/t;->r1:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->D:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lv3/y;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->F:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lv3/y;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lv3/t;->o1:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->E:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lv3/y;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final h(Lr1/m0;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lv3/t;->h:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final i(Lr1/m0;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lv3/t;->e:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget v1, v0, Lv3/y;->A:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lv3/y;->a:Lv3/t;

    .line 8
    .line 9
    invoke-virtual {v0}, Lv3/t;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final k(Lr1/m0;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lv3/t;->i(Lr1/m0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lv3/t;->g:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lv3/t;->h(Lr1/m0;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lv3/t;->j:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    :cond_1
    const/4 p1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_1
    return p1

    .line 63
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

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
    return v0
.end method

.method public final m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv3/t;->q()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv3/t;->p()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lv3/t;->t()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lv3/t;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lv3/t;->x()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lv3/t;->r()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lv3/t;->w()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final n(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget p2, p0, Lv3/t;->U0:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget p2, p0, Lv3/t;->V0:F

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lv3/t;->i1:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lv3/t;->i1:Z

    .line 7
    .line 8
    iget-object v0, p0, Lv3/t;->f1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lv3/t;->d1:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object v2, p0, Lv3/t;->e1:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lv3/t;->c1:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v4, p0, Lv3/t;->G:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v4, p0, Lv3/t;->H:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object p1, p0, Lv3/t;->h1:Lv3/i;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    check-cast p1, Lv3/a0;

    .line 61
    .line 62
    iget-object p1, p1, Lv3/a0;->c:Lv3/e0;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    :cond_5
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 5
    .line 6
    iget-object v1, v0, Lv3/y;->y:Lub/a;

    .line 7
    .line 8
    iget-object v2, v0, Lv3/y;->a:Lv3/t;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lv3/t;->j1:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lv3/t;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lv3/y;->g()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lv3/t;->m()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 5
    .line 6
    iget-object v1, v0, Lv3/y;->y:Lub/a;

    .line 7
    .line 8
    iget-object v2, v0, Lv3/y;->a:Lv3/t;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lv3/t;->j1:Z

    .line 15
    .line 16
    iget-object v1, p0, Lv3/t;->V:Lua/g8;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lv3/y;->f()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lv3/t;->a:Lv3/y;

    .line 5
    .line 6
    iget-object p1, p1, Lv3/y;->b:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sub-int/2addr p4, p2

    .line 11
    sub-int/2addr p5, p3

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lv3/t;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_9

    .line 8
    .line 9
    iget-boolean v2, p0, Lv3/t;->j1:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lv3/t;->g1:Lr1/m0;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget-boolean v3, p0, Lv3/t;->k1:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lv3/t;->T:Lr1/p0;

    .line 24
    .line 25
    invoke-static {v2, v3}, Lv3/t;->c(Lr1/m0;Lr1/p0;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    move-object v4, v2

    .line 34
    check-cast v4, La/b;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, La/b;->i(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v3, 0x5

    .line 42
    move-object v4, v2

    .line 43
    check-cast v4, La/b;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, La/b;->i(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_0
    check-cast v2, La/b;

    .line 50
    .line 51
    const/4 v4, 0x7

    .line 52
    invoke-virtual {v2, v4}, La/b;->i(I)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/16 v5, 0xb

    .line 57
    .line 58
    invoke-virtual {v2, v5}, La/b;->i(I)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/16 v6, 0xc

    .line 63
    .line 64
    invoke-virtual {v2, v6}, La/b;->i(I)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    const/16 v7, 0x9

    .line 69
    .line 70
    invoke-virtual {v2, v7}, La/b;->i(I)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    :goto_1
    iget-object v7, p0, Lv3/t;->b:Landroid/content/res/Resources;

    .line 81
    .line 82
    iget-object v8, p0, Lv3/t;->z:Landroid/view/View;

    .line 83
    .line 84
    const-wide/16 v9, 0x3e8

    .line 85
    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    iget-object v11, p0, Lv3/t;->g1:Lr1/m0;

    .line 89
    .line 90
    if-eqz v11, :cond_3

    .line 91
    .line 92
    check-cast v11, Ly1/x;

    .line 93
    .line 94
    invoke-virtual {v11}, Ly1/x;->h0()V

    .line 95
    .line 96
    .line 97
    iget-wide v11, v11, Ly1/x;->b1:J

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-wide/16 v11, 0x1388

    .line 101
    .line 102
    :goto_2
    div-long/2addr v11, v9

    .line 103
    long-to-int v12, v11

    .line 104
    iget-object v11, p0, Lv3/t;->B:Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz v11, :cond_4

    .line 107
    .line 108
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    if-eqz v8, :cond_5

    .line 116
    .line 117
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    new-array v13, v0, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v11, v13, v1

    .line 124
    .line 125
    const v11, 0x7f110001

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-virtual {v8, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v11, p0, Lv3/t;->y:Landroid/view/View;

    .line 136
    .line 137
    if-eqz v6, :cond_8

    .line 138
    .line 139
    iget-object v12, p0, Lv3/t;->g1:Lr1/m0;

    .line 140
    .line 141
    if-eqz v12, :cond_6

    .line 142
    .line 143
    check-cast v12, Ly1/x;

    .line 144
    .line 145
    invoke-virtual {v12}, Ly1/x;->h0()V

    .line 146
    .line 147
    .line 148
    iget-wide v12, v12, Ly1/x;->c1:J

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    const-wide/16 v12, 0x3a98

    .line 152
    .line 153
    :goto_3
    div-long/2addr v12, v9

    .line 154
    long-to-int v9, v12

    .line 155
    iget-object v10, p0, Lv3/t;->A:Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v10, :cond_7

    .line 158
    .line 159
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    if-eqz v11, :cond_8

    .line 167
    .line 168
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object v10, v0, v1

    .line 175
    .line 176
    const/high16 v1, 0x7f110000

    .line 177
    .line 178
    invoke-virtual {v7, v1, v9, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v11, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    :cond_8
    iget-object v0, p0, Lv3/t;->v:Landroid/widget/ImageView;

    .line 186
    .line 187
    invoke-virtual {p0, v0, v4}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v8, v5}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v11, v6}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lv3/t;->w:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {p0, v0, v2}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lv3/t;->O:Lv3/l0;

    .line 202
    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    check-cast v0, Lv3/e;

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Lv3/e;->setEnabled(Z)V

    .line 208
    .line 209
    .line 210
    :cond_9
    :goto_4
    return-void
.end method

.method public final q()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lv3/t;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iget-boolean v0, p0, Lv3/t;->j1:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lv3/t;->x:Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_b

    .line 16
    .line 17
    iget-object v1, p0, Lv3/t;->g1:Lr1/m0;

    .line 18
    .line 19
    iget-boolean v2, p0, Lv3/t;->l1:Z

    .line 20
    .line 21
    invoke-static {v1, v2}, Lu1/f0;->O(Lr1/m0;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lv3/t;->h0:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Lv3/t;->t0:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const v1, 0x7f13005f

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const v1, 0x7f13005e

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lv3/t;->b:Landroid/content/res/Resources;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lv3/t;->g1:Lr1/m0;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_7

    .line 59
    :cond_3
    move-object v3, v1

    .line 60
    check-cast v3, Ly1/x;

    .line 61
    .line 62
    invoke-virtual {v3}, Ly1/x;->J()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    check-cast v1, La/b;

    .line 67
    .line 68
    const/16 v4, 0x10

    .line 69
    .line 70
    invoke-virtual {v1, v4}, La/b;->i(I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x1

    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    move-object v4, v1

    .line 78
    check-cast v4, Ly1/x;

    .line 79
    .line 80
    invoke-virtual {v4}, Ly1/x;->E()Lr1/q0;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_4

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {v4}, Ly1/x;->A()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const-wide/16 v7, 0x0

    .line 97
    .line 98
    iget-object v9, v1, La/b;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v9, Lr1/p0;

    .line 101
    .line 102
    invoke-virtual {v6, v4, v9, v7, v8}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v4, v4, Lr1/p0;->c:Lr1/y;

    .line 107
    .line 108
    :goto_2
    if-eqz v4, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    const/4 v4, 0x0

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    :goto_3
    const/4 v4, 0x1

    .line 114
    :goto_4
    invoke-virtual {v1, v5}, La/b;->i(I)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-ne v3, v5, :cond_7

    .line 119
    .line 120
    const/4 v7, 0x2

    .line 121
    invoke-virtual {v1, v7}, La/b;->i(I)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_7

    .line 126
    .line 127
    const/4 v7, 0x1

    .line 128
    goto :goto_5

    .line 129
    :cond_7
    const/4 v7, 0x0

    .line 130
    :goto_5
    const/4 v8, 0x4

    .line 131
    if-ne v3, v8, :cond_8

    .line 132
    .line 133
    invoke-virtual {v1, v8}, La/b;->i(I)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    goto :goto_6

    .line 141
    :cond_8
    const/4 v1, 0x0

    .line 142
    :goto_6
    if-eqz v4, :cond_a

    .line 143
    .line 144
    if-nez v6, :cond_9

    .line 145
    .line 146
    if-nez v7, :cond_9

    .line 147
    .line 148
    if-eqz v1, :cond_a

    .line 149
    .line 150
    :cond_9
    const/4 v2, 0x1

    .line 151
    :cond_a
    :goto_7
    invoke-virtual {p0, v0, v2}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 152
    .line 153
    .line 154
    :cond_b
    :goto_8
    return-void
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast v0, Ly1/x;

    .line 7
    .line 8
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Ly1/x;->f1:Ly1/v0;

    .line 12
    .line 13
    iget-object v0, v0, Ly1/v0;->o:Lr1/h0;

    .line 14
    .line 15
    iget v0, v0, Lr1/h0;->a:F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    iget-object v5, p0, Lv3/t;->n:Lv3/k;

    .line 24
    .line 25
    iget-object v6, v5, Lv3/k;->e:[F

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    if-ge v3, v7, :cond_2

    .line 29
    .line 30
    aget v5, v6, v3

    .line 31
    .line 32
    sub-float v5, v0, v5

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    cmpg-float v6, v5, v2

    .line 39
    .line 40
    if-gez v6, :cond_1

    .line 41
    .line 42
    move v4, v3

    .line 43
    move v2, v5

    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iput v4, v5, Lv3/k;->f:I

    .line 48
    .line 49
    iget-object v0, v5, Lv3/k;->d:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object v0, v0, v4

    .line 52
    .line 53
    iget-object v2, p0, Lv3/t;->m:Lv3/n;

    .line 54
    .line 55
    iget-object v3, v2, Lv3/n;->e:[Ljava/lang/String;

    .line 56
    .line 57
    aput-object v0, v3, v1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {v2, v0}, Lv3/n;->p(I)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lv3/n;->p(I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    :cond_3
    const/4 v1, 0x1

    .line 73
    :cond_4
    iget-object v0, p0, Lv3/t;->I:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final s()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lv3/t;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Lv3/t;->j1:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, La/b;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, La/b;->i(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-wide v1, p0, Lv3/t;->w1:J

    .line 29
    .line 30
    move-object v3, v0

    .line 31
    check-cast v3, Ly1/x;

    .line 32
    .line 33
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 34
    .line 35
    .line 36
    iget-object v4, v3, Ly1/x;->f1:Ly1/v0;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ly1/x;->x(Ly1/v0;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    add-long/2addr v4, v1

    .line 43
    iget-wide v1, p0, Lv3/t;->w1:J

    .line 44
    .line 45
    invoke-virtual {v3}, Ly1/x;->w()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    add-long/2addr v6, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    move-wide v6, v4

    .line 54
    :goto_0
    iget-object v1, p0, Lv3/t;->N:Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-boolean v2, p0, Lv3/t;->n1:Z

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lv3/t;->P:Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget-object v3, p0, Lv3/t;->R:Ljava/util/Formatter;

    .line 65
    .line 66
    invoke-static {v2, v3, v4, v5}, Lu1/f0;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v1, p0, Lv3/t;->O:Lv3/l0;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    move-object v2, v1

    .line 78
    check-cast v2, Lv3/e;

    .line 79
    .line 80
    invoke-virtual {v2, v4, v5}, Lv3/e;->setPosition(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lv3/t;->k(Lr1/m0;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    move-wide v6, v4

    .line 90
    :cond_3
    invoke-virtual {v2, v6, v7}, Lv3/e;->setBufferedPosition(J)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v2, p0, Lv3/t;->V:Lua/g8;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v6, v0

    .line 104
    check-cast v6, Ly1/x;

    .line 105
    .line 106
    invoke-virtual {v6}, Ly1/x;->J()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    :goto_1
    const-wide/16 v7, 0x3e8

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    move-object v9, v0

    .line 115
    check-cast v9, La/b;

    .line 116
    .line 117
    invoke-virtual {v9}, La/b;->n()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_8

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    check-cast v1, Lv3/e;

    .line 126
    .line 127
    invoke-virtual {v1}, Lv3/e;->getPreferredUpdateDelay()J

    .line 128
    .line 129
    .line 130
    move-result-wide v9

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    move-wide v9, v7

    .line 133
    :goto_2
    rem-long/2addr v4, v7

    .line 134
    sub-long v4, v7, v4

    .line 135
    .line 136
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    check-cast v0, Ly1/x;

    .line 141
    .line 142
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Ly1/x;->f1:Ly1/v0;

    .line 146
    .line 147
    iget-object v0, v0, Ly1/v0;->o:Lr1/h0;

    .line 148
    .line 149
    iget v0, v0, Lr1/h0;->a:F

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    cmpl-float v1, v0, v1

    .line 153
    .line 154
    if-lez v1, :cond_7

    .line 155
    .line 156
    long-to-float v1, v3

    .line 157
    div-float/2addr v1, v0

    .line 158
    float-to-long v7, v1

    .line 159
    :cond_7
    move-wide v9, v7

    .line 160
    iget v0, p0, Lv3/t;->q1:I

    .line 161
    .line 162
    int-to-long v11, v0

    .line 163
    const-wide/16 v13, 0x3e8

    .line 164
    .line 165
    invoke-static/range {v9 .. v14}, Lu1/f0;->h(JJJ)J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    const/4 v0, 0x4

    .line 174
    if-eq v6, v0, :cond_9

    .line 175
    .line 176
    if-eq v6, v3, :cond_9

    .line 177
    .line 178
    invoke-virtual {p0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    .line 180
    .line 181
    :cond_9
    :goto_3
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iput-boolean p1, v0, Lv3/y;->D:Z

    .line 4
    .line 5
    return-void
.end method

.method public setMediaRouteButtonViewProvider(Lr1/c1;)V
    .locals 6

    .line 1
    const v0, 0x7f0b0121

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-interface {p1}, Lr1/c1;->getView()Ly7/c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v2, Lv3/f;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, p0, v0, v1, v3}, Lv3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lv3/t;->c:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance v1, La2/y0;

    .line 42
    .line 43
    invoke-direct {v1, v3, v0}, La2/y0;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ly7/b;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v0, p1, v3, v2}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Lc0/g;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v2, p1, Lc0/g;->b:Lc0/c;

    .line 58
    .line 59
    sget-object v3, Lc0/c;->d:Lc0/c;

    .line 60
    .line 61
    if-eq v2, v3, :cond_3

    .line 62
    .line 63
    new-instance v4, Lc0/c;

    .line 64
    .line 65
    invoke-direct {v4, v0, v1}, Lc0/c;-><init>(Ly7/b;La2/y0;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iput-object v2, v4, Lc0/c;->c:Lc0/c;

    .line 69
    .line 70
    sget-object v5, Lc0/g;->f:Lcom/bumptech/glide/c;

    .line 71
    .line 72
    invoke-virtual {v5, p1, v2, v4}, Lcom/bumptech/glide/c;->f(Lc0/g;Lc0/c;Lc0/c;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v2, p1, Lc0/g;->b:Lc0/c;

    .line 80
    .line 81
    if-ne v2, v3, :cond_1

    .line 82
    .line 83
    :cond_3
    invoke-static {v0, v1}, Lc0/g;->c(Ly7/b;La2/y0;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v0, "The media route button placeholder has no parent view."

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string v0, "The media route button placeholder is missing."

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    throw p1

    .line 104
    :goto_2
    goto :goto_1
.end method

.method public setOnFullScreenModeChangedListener(Lv3/i;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lv3/t;->h1:Lv3/i;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/16 v3, 0x8

    .line 11
    .line 12
    iget-object v4, p0, Lv3/t;->G:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-eqz p1, :cond_3

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_3
    const/4 v1, 0x0

    .line 30
    :goto_2
    iget-object p1, p0, Lv3/t;->H:Landroid/widget/ImageView;

    .line 31
    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_4
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_3
    return-void
.end method

.method public setPlayer(Lr1/m0;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Ly1/x;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v0, v0, Ly1/x;->v:Landroid/os/Looper;

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 v2, 0x1

    .line 33
    :cond_2
    invoke-static {v2}, La9/o;->k(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 37
    .line 38
    if-ne v0, p1, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, p0, Lv3/t;->d:Lv3/h;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    check-cast v0, Ly1/x;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ly1/x;->U(Lr1/k0;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    iput-object p1, p0, Lv3/t;->g1:Lr1/m0;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    check-cast p1, Ly1/x;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Ly1/x;->m:Lu1/m;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-virtual {p0}, Lv3/t;->m()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setProgressUpdateListener(Lv3/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    iput p1, p0, Lv3/t;->r1:I

    .line 2
    .line 3
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    check-cast v0, La/b;

    .line 12
    .line 13
    invoke-virtual {v0, v3}, La/b;->i(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 20
    .line 21
    check-cast v0, Ly1/x;

    .line 22
    .line 23
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 24
    .line 25
    .line 26
    iget v0, v0, Ly1/x;->K:I

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 33
    .line 34
    check-cast v0, Ly1/x;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ly1/x;->Z(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x2

    .line 41
    if-ne p1, v2, :cond_1

    .line 42
    .line 43
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 46
    .line 47
    check-cast v0, Ly1/x;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ly1/x;->Z(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-ne p1, v3, :cond_2

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lv3/t;->g1:Lr1/m0;

    .line 58
    .line 59
    check-cast v0, Ly1/x;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ly1/x;->Z(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    :cond_3
    iget-object p1, p0, Lv3/t;->a:Lv3/y;

    .line 68
    .line 69
    iget-object v0, p0, Lv3/t;->C:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lv3/t;->t()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->y:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv3/t;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lv3/t;->k1:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lv3/t;->w()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->w:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv3/t;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv3/t;->l1:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lv3/t;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->v:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv3/t;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->z:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv3/t;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->D:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lv3/t;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->F:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv3/t;->o1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lv3/t;->j()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lv3/t;->a:Lv3/y;

    .line 10
    .line 11
    invoke-virtual {p1}, Lv3/y;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/t;->a:Lv3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->E:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lv3/y;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lu1/f0;->g(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lv3/t;->q1:I

    .line 10
    .line 11
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv3/t;->p1:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/t;->E:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0, p1}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lv3/t;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-boolean v0, p0, Lv3/t;->j1:Z

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v0, p0, Lv3/t;->C:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v1, p0, Lv3/t;->r1:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0, v2}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lv3/t;->g1:Lr1/m0;

    .line 26
    .line 27
    iget-object v3, p0, Lv3/t;->P0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p0, Lv3/t;->M0:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    const/16 v5, 0xf

    .line 34
    .line 35
    move-object v6, v1

    .line 36
    check-cast v6, La/b;

    .line 37
    .line 38
    invoke-virtual {v6, v5}, La/b;->i(I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0, v0, v2}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    check-cast v1, Ly1/x;

    .line 50
    .line 51
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 52
    .line 53
    .line 54
    iget v1, v1, Ly1/x;->K:I

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    if-eq v1, v2, :cond_4

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-eq v1, v2, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lv3/t;->O0:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lv3/t;->R0:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-object v1, p0, Lv3/t;->N0:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lv3/t;->Q0:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :cond_6
    :goto_1
    invoke-virtual {p0, v0, v2}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_2
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lv3/t;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v2, p0, Lv3/t;->t:I

    .line 12
    .line 13
    mul-int/lit8 v3, v2, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v3, p0, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    mul-int/lit8 v2, v2, 0x2

    .line 34
    .line 35
    sub-int/2addr v0, v2

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lv3/t;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lv3/t;->j1:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lv3/t;->D:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lv3/t;->g1:Lr1/m0;

    .line 17
    .line 18
    iget-object v2, p0, Lv3/t;->a:Lv3/y;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lv3/y;->b(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0, v3}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v2, p0, Lv3/t;->X0:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lv3/t;->T0:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    const/16 v5, 0xe

    .line 38
    .line 39
    move-object v6, v1

    .line 40
    check-cast v6, La/b;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, La/b;->i(I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x1

    .line 50
    invoke-virtual {p0, v0, v3}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    check-cast v1, Ly1/x;

    .line 54
    .line 55
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 56
    .line 57
    .line 58
    iget-boolean v3, v1, Ly1/x;->L:Z

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget-object v4, p0, Lv3/t;->S0:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, v1, Ly1/x;->L:Z

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, Lv3/t;->W0:Ljava/lang/String;

    .line 75
    .line 76
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v3}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lv3/t;->g1:Lr1/m0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Lv3/t;->k1:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    iget-object v5, v0, Lv3/t;->T:Lr1/p0;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v1, v5}, Lv3/t;->c(Lr1/m0;Lr1/p0;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    iput-boolean v2, v0, Lv3/t;->m1:Z

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    iput-wide v6, v0, Lv3/t;->w1:J

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, La/b;

    .line 33
    .line 34
    const/16 v8, 0x11

    .line 35
    .line 36
    invoke-virtual {v2, v8}, La/b;->i(I)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_2

    .line 41
    .line 42
    move-object v8, v1

    .line 43
    check-cast v8, Ly1/x;

    .line 44
    .line 45
    invoke-virtual {v8}, Ly1/x;->E()Lr1/q0;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v8, Lr1/q0;->a:Lr1/n0;

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v8}, Lr1/q0;->p()Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    if-nez v9, :cond_11

    .line 62
    .line 63
    check-cast v1, Ly1/x;

    .line 64
    .line 65
    invoke-virtual {v1}, Ly1/x;->A()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-boolean v2, v0, Lv3/t;->m1:Z

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v9, v1

    .line 76
    :goto_2
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8}, Lr1/q0;->o()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    sub-int/2addr v2, v4

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v2, v1

    .line 85
    :goto_3
    move-wide v12, v6

    .line 86
    const/4 v14, 0x0

    .line 87
    :goto_4
    if-gt v9, v2, :cond_10

    .line 88
    .line 89
    if-ne v9, v1, :cond_5

    .line 90
    .line 91
    invoke-static {v12, v13}, Lu1/f0;->R(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    iput-wide v6, v0, Lv3/t;->w1:J

    .line 96
    .line 97
    :cond_5
    invoke-virtual {v8, v9, v5}, Lr1/q0;->n(ILr1/p0;)V

    .line 98
    .line 99
    .line 100
    iget-wide v6, v5, Lr1/p0;->l:J

    .line 101
    .line 102
    cmp-long v16, v6, v10

    .line 103
    .line 104
    if-nez v16, :cond_6

    .line 105
    .line 106
    iget-boolean v1, v0, Lv3/t;->m1:Z

    .line 107
    .line 108
    xor-int/2addr v1, v4

    .line 109
    invoke-static {v1}, La9/o;->t(Z)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_c

    .line 113
    .line 114
    :cond_6
    iget v6, v5, Lr1/p0;->m:I

    .line 115
    .line 116
    :goto_5
    iget v7, v5, Lr1/p0;->n:I

    .line 117
    .line 118
    if-gt v6, v7, :cond_f

    .line 119
    .line 120
    iget-object v7, v0, Lv3/t;->S:Lr1/o0;

    .line 121
    .line 122
    invoke-virtual {v8, v6, v7, v3}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 123
    .line 124
    .line 125
    iget-object v15, v7, Lr1/o0;->g:Lr1/c;

    .line 126
    .line 127
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    :goto_6
    iget v10, v15, Lr1/c;->a:I

    .line 131
    .line 132
    if-ge v3, v10, :cond_e

    .line 133
    .line 134
    invoke-virtual {v7, v3}, Lr1/o0;->d(I)J

    .line 135
    .line 136
    .line 137
    iget-wide v10, v7, Lr1/o0;->e:J

    .line 138
    .line 139
    const-wide/16 v16, 0x0

    .line 140
    .line 141
    cmp-long v18, v10, v16

    .line 142
    .line 143
    if-ltz v18, :cond_d

    .line 144
    .line 145
    iget-object v4, v0, Lv3/t;->s1:[J

    .line 146
    .line 147
    move/from16 v19, v1

    .line 148
    .line 149
    array-length v1, v4

    .line 150
    if-ne v14, v1, :cond_8

    .line 151
    .line 152
    array-length v1, v4

    .line 153
    if-nez v1, :cond_7

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_7

    .line 157
    :cond_7
    array-length v1, v4

    .line 158
    mul-int/lit8 v1, v1, 0x2

    .line 159
    .line 160
    :goto_7
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iput-object v4, v0, Lv3/t;->s1:[J

    .line 165
    .line 166
    iget-object v4, v0, Lv3/t;->t1:[Z

    .line 167
    .line 168
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v0, Lv3/t;->t1:[Z

    .line 173
    .line 174
    :cond_8
    iget-object v1, v0, Lv3/t;->s1:[J

    .line 175
    .line 176
    add-long/2addr v10, v12

    .line 177
    invoke-static {v10, v11}, Lu1/f0;->R(J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v10

    .line 181
    aput-wide v10, v1, v14

    .line 182
    .line 183
    iget-object v1, v0, Lv3/t;->t1:[Z

    .line 184
    .line 185
    iget-object v4, v7, Lr1/o0;->g:Lr1/c;

    .line 186
    .line 187
    invoke-virtual {v4, v3}, Lr1/c;->a(I)Lr1/a;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    iget v10, v4, Lr1/a;->a:I

    .line 192
    .line 193
    const/4 v11, -0x1

    .line 194
    if-ne v10, v11, :cond_a

    .line 195
    .line 196
    move/from16 v20, v2

    .line 197
    .line 198
    :cond_9
    const/4 v4, 0x1

    .line 199
    :goto_8
    const/16 v18, 0x1

    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_a
    const/4 v11, 0x0

    .line 203
    :goto_9
    if-ge v11, v10, :cond_c

    .line 204
    .line 205
    move/from16 v20, v2

    .line 206
    .line 207
    iget-object v2, v4, Lr1/a;->e:[I

    .line 208
    .line 209
    aget v2, v2, v11

    .line 210
    .line 211
    if-eqz v2, :cond_9

    .line 212
    .line 213
    move-object/from16 v21, v4

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    if-ne v2, v4, :cond_b

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 220
    .line 221
    move/from16 v2, v20

    .line 222
    .line 223
    move-object/from16 v4, v21

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_c
    move/from16 v20, v2

    .line 227
    .line 228
    const/4 v4, 0x1

    .line 229
    const/16 v18, 0x0

    .line 230
    .line 231
    :goto_a
    xor-int/lit8 v2, v18, 0x1

    .line 232
    .line 233
    aput-boolean v2, v1, v14

    .line 234
    .line 235
    add-int/lit8 v14, v14, 0x1

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_d
    move/from16 v19, v1

    .line 239
    .line 240
    move/from16 v20, v2

    .line 241
    .line 242
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 243
    .line 244
    move/from16 v1, v19

    .line 245
    .line 246
    move/from16 v2, v20

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_e
    move/from16 v19, v1

    .line 250
    .line 251
    move/from16 v20, v2

    .line 252
    .line 253
    const-wide/16 v16, 0x0

    .line 254
    .line 255
    add-int/lit8 v6, v6, 0x1

    .line 256
    .line 257
    const/4 v3, 0x0

    .line 258
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    goto/16 :goto_5

    .line 264
    .line 265
    :cond_f
    move/from16 v19, v1

    .line 266
    .line 267
    move/from16 v20, v2

    .line 268
    .line 269
    const-wide/16 v16, 0x0

    .line 270
    .line 271
    iget-wide v1, v5, Lr1/p0;->l:J

    .line 272
    .line 273
    add-long/2addr v12, v1

    .line 274
    add-int/lit8 v9, v9, 0x1

    .line 275
    .line 276
    move-wide/from16 v6, v16

    .line 277
    .line 278
    move/from16 v1, v19

    .line 279
    .line 280
    move/from16 v2, v20

    .line 281
    .line 282
    const/4 v3, 0x0

    .line 283
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    goto/16 :goto_4

    .line 289
    .line 290
    :cond_10
    :goto_c
    move-wide v6, v12

    .line 291
    goto :goto_e

    .line 292
    :cond_11
    move-wide/from16 v16, v6

    .line 293
    .line 294
    const/16 v1, 0x10

    .line 295
    .line 296
    invoke-virtual {v2, v1}, La/b;->i(I)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_12

    .line 301
    .line 302
    invoke-virtual {v2}, La/b;->g()J

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    cmp-long v3, v1, v5

    .line 312
    .line 313
    if-eqz v3, :cond_12

    .line 314
    .line 315
    invoke-static {v1, v2}, Lu1/f0;->G(J)J

    .line 316
    .line 317
    .line 318
    move-result-wide v6

    .line 319
    :goto_d
    const/4 v14, 0x0

    .line 320
    goto :goto_e

    .line 321
    :cond_12
    move-wide/from16 v6, v16

    .line 322
    .line 323
    goto :goto_d

    .line 324
    :goto_e
    invoke-static {v6, v7}, Lu1/f0;->R(J)J

    .line 325
    .line 326
    .line 327
    move-result-wide v1

    .line 328
    iget-object v3, v0, Lv3/t;->M:Landroid/widget/TextView;

    .line 329
    .line 330
    if-eqz v3, :cond_13

    .line 331
    .line 332
    iget-object v5, v0, Lv3/t;->P:Ljava/lang/StringBuilder;

    .line 333
    .line 334
    iget-object v6, v0, Lv3/t;->R:Ljava/util/Formatter;

    .line 335
    .line 336
    invoke-static {v5, v6, v1, v2}, Lu1/f0;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :cond_13
    iget-object v3, v0, Lv3/t;->O:Lv3/l0;

    .line 344
    .line 345
    if-eqz v3, :cond_17

    .line 346
    .line 347
    check-cast v3, Lv3/e;

    .line 348
    .line 349
    invoke-virtual {v3, v1, v2}, Lv3/e;->setDuration(J)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lv3/t;->u1:[J

    .line 353
    .line 354
    array-length v2, v1

    .line 355
    add-int v5, v14, v2

    .line 356
    .line 357
    iget-object v6, v0, Lv3/t;->s1:[J

    .line 358
    .line 359
    array-length v7, v6

    .line 360
    if-le v5, v7, :cond_14

    .line 361
    .line 362
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    iput-object v6, v0, Lv3/t;->s1:[J

    .line 367
    .line 368
    iget-object v6, v0, Lv3/t;->t1:[Z

    .line 369
    .line 370
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    iput-object v6, v0, Lv3/t;->t1:[Z

    .line 375
    .line 376
    :cond_14
    iget-object v6, v0, Lv3/t;->s1:[J

    .line 377
    .line 378
    const/4 v7, 0x0

    .line 379
    invoke-static {v1, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lv3/t;->v1:[Z

    .line 383
    .line 384
    iget-object v6, v0, Lv3/t;->t1:[Z

    .line 385
    .line 386
    invoke-static {v1, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lv3/t;->s1:[J

    .line 390
    .line 391
    iget-object v2, v0, Lv3/t;->t1:[Z

    .line 392
    .line 393
    if-eqz v5, :cond_16

    .line 394
    .line 395
    if-eqz v1, :cond_15

    .line 396
    .line 397
    if-eqz v2, :cond_15

    .line 398
    .line 399
    goto :goto_f

    .line 400
    :cond_15
    const/4 v4, 0x0

    .line 401
    :cond_16
    :goto_f
    invoke-static {v4}, La9/o;->k(Z)V

    .line 402
    .line 403
    .line 404
    iput v5, v3, Lv3/e;->P:I

    .line 405
    .line 406
    iput-object v1, v3, Lv3/e;->R:[J

    .line 407
    .line 408
    iput-object v2, v3, Lv3/e;->S:[Z

    .line 409
    .line 410
    invoke-virtual {v3}, Lv3/e;->e()V

    .line 411
    .line 412
    .line 413
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lv3/t;->s()V

    .line 414
    .line 415
    .line 416
    return-void
.end method

.method public final x()V
    .locals 11

    .line 1
    iget-object v0, p0, Lv3/t;->p:Lv3/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lv3/r;->d:Ljava/util/List;

    .line 11
    .line 12
    iget-object v1, p0, Lv3/t;->q:Lv3/g;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, v1, Lv3/r;->d:Ljava/util/List;

    .line 22
    .line 23
    iget-object v2, p0, Lv3/t;->g1:Lr1/m0;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    iget-object v5, p0, Lv3/t;->F:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v2, :cond_6

    .line 30
    .line 31
    const/16 v6, 0x1e

    .line 32
    .line 33
    check-cast v2, La/b;

    .line 34
    .line 35
    invoke-virtual {v2, v6}, La/b;->i(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    iget-object v2, p0, Lv3/t;->g1:Lr1/m0;

    .line 42
    .line 43
    const/16 v6, 0x1d

    .line 44
    .line 45
    check-cast v2, La/b;

    .line 46
    .line 47
    invoke-virtual {v2, v6}, La/b;->i(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    iget-object v2, p0, Lv3/t;->g1:Lr1/m0;

    .line 56
    .line 57
    check-cast v2, Ly1/x;

    .line 58
    .line 59
    invoke-virtual {v2}, Ly1/x;->F()Lr1/x0;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0, v2, v4}, Lv3/t;->f(Lr1/x0;I)Lu7/y0;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iput-object v6, v1, Lv3/r;->d:Ljava/util/List;

    .line 68
    .line 69
    iget-object v7, v1, Lv3/g;->f:Lv3/t;

    .line 70
    .line 71
    iget-object v8, v7, Lv3/t;->g1:Lr1/m0;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast v8, Ly1/x;

    .line 77
    .line 78
    invoke-virtual {v8}, Ly1/x;->M()Lr1/v0;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    iget-object v10, v7, Lv3/t;->m:Lv3/n;

    .line 87
    .line 88
    if-eqz v9, :cond_1

    .line 89
    .line 90
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v6, 0x7f130080

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v6, v10, Lv3/n;->e:[Ljava/lang/String;

    .line 102
    .line 103
    aput-object v1, v6, v4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v1, v8}, Lv3/g;->s(Lr1/v0;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const v6, 0x7f13007f

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v6, v10, Lv3/n;->e:[Ljava/lang/String;

    .line 124
    .line 125
    aput-object v1, v6, v4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 129
    :goto_0
    iget v7, v6, Lu7/y0;->d:I

    .line 130
    .line 131
    if-ge v1, v7, :cond_4

    .line 132
    .line 133
    invoke-virtual {v6, v1}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Lv3/q;

    .line 138
    .line 139
    iget-object v8, v7, Lv3/q;->a:Lr1/w0;

    .line 140
    .line 141
    iget-object v8, v8, Lr1/w0;->e:[Z

    .line 142
    .line 143
    iget v9, v7, Lv3/q;->b:I

    .line 144
    .line 145
    aget-boolean v8, v8, v9

    .line 146
    .line 147
    if-eqz v8, :cond_3

    .line 148
    .line 149
    iget-object v1, v10, Lv3/n;->e:[Ljava/lang/String;

    .line 150
    .line 151
    iget-object v6, v7, Lv3/q;->c:Ljava/lang/String;

    .line 152
    .line 153
    aput-object v6, v1, v4

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_4
    :goto_1
    iget-object v1, p0, Lv3/t;->a:Lv3/y;

    .line 160
    .line 161
    invoke-virtual {v1, v5}, Lv3/y;->b(Landroid/view/View;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    const/4 v1, 0x3

    .line 168
    invoke-virtual {p0, v2, v1}, Lv3/t;->f(Lr1/x0;I)Lu7/y0;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lv3/p;->s(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    sget-object v1, Lu7/y0;->e:Lu7/y0;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lv3/p;->s(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lv3/r;->b()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-lez v0, :cond_7

    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    goto :goto_3

    .line 189
    :cond_7
    const/4 v0, 0x0

    .line 190
    :goto_3
    invoke-virtual {p0, v5, v0}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lv3/t;->m:Lv3/n;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Lv3/n;->p(I)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_8

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Lv3/n;->p(I)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    :cond_8
    const/4 v3, 0x1

    .line 208
    :cond_9
    iget-object v0, p0, Lv3/t;->I:Landroid/view/View;

    .line 209
    .line 210
    invoke-virtual {p0, v0, v3}, Lv3/t;->n(Landroid/view/View;Z)V

    .line 211
    .line 212
    .line 213
    return-void
.end method
