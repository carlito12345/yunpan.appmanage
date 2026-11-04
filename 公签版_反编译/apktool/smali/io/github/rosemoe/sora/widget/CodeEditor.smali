.class public Lio/github/rosemoe/sora/widget/CodeEditor;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lmb/i;
.implements Lfb/a;


# instance fields
.field public A:F

.field public A1:Lcc/e;

.field public B:F

.field public B1:Ltb/d;

.field public C:F

.field public final C1:Ltb/e;

.field public D:F

.field public D1:Landroid/os/Bundle;

.field public E:Z

.field public final E1:Lyb/b;

.field public F:Z

.field public final F1:Ltb/l;

.field public G:Z

.field public G1:Z

.field public H:Z

.field public H1:F

.field public I:Z

.field public I1:F

.field public J1:Z

.field public K:Z

.field public K1:Z

.field public L:Z

.field public L1:Lmb/m;

.field public M:Z

.field public M0:Z

.field public final M1:Lac/b;

.field public volatile N:Z

.field public N0:Z

.field public final N1:Ljava/util/HashMap;

.field public O:Z

.field public O0:Z

.field public P:I

.field public P0:Z

.field public Q0:Z

.field public R:I

.field public R0:Z

.field public S:I

.field public S0:Z

.field public T:Z

.field public T0:Z

.field public U0:Z

.field public V:Z

.field public V0:Z

.field public W0:Z

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public final a:Lkf/d;

.field public a1:Z

.field public b:Ls4/a;

.field public final b1:Lcc/d;

.field public final c:Lvb/s;

.field public final c1:Lcc/d;

.field public final d:Lvb/p;

.field public final d1:Lcc/d;

.field public final e:Ljava/util/ArrayList;

.field public final e1:Landroid/content/ClipboardManager;

.field public final f:Ll5/y;

.field public final f1:Landroid/view/inputmethod/InputMethodManager;

.field public g:Lmb/b;

.field public g1:Lmb/j;

.field public final h:Ltb/f;

.field public h0:Z

.field public h1:Lmb/g;

.field public final i:Ldb/p;

.field public final i1:Landroid/graphics/Matrix;

.field public j:Lwb/c;

.field public j1:Lzb/a;

.field public k:I

.field public k1:Lcc/c;

.field public l:I

.field public l1:Ljava/lang/String;

.field public m:I

.field public m1:Lgb/b;

.field public n:I

.field public n1:Lcc/b;

.field public o1:J

.field public p:I

.field public final p1:Lvb/k;

.field public final q:F

.field public final q1:Ltb/u;

.field public r:F

.field public r1:Landroid/graphics/Paint$Align;

.field public s:F

.field public final s1:Landroid/view/GestureDetector;

.field public t:F

.field public t0:Z

.field public final t1:Landroid/view/ScaleGestureDetector;

.field public final u1:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public v:F

.field public final v1:Landroid/widget/EdgeEffect;

.field public w:F

.field public final w1:Landroid/widget/EdgeEffect;

.field public x:F

.field public x1:Landroid/view/inputmethod/ExtractedTextRequest;

.field public final y:F

.field public final y1:Ltb/r;

.field public z:F

.field public z1:Lcc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CodeEditor"

    .line 2
    .line 3
    invoke-static {v0}, Lsb/d;->a(Ljava/lang/String;)Lsb/d;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    const v0, 0x7f04010b

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lkf/d;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lkf/d;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a:Lkf/d;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m:I

    .line 24
    .line 25
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A:F

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B:F

    .line 31
    .line 32
    const/high16 v3, 0x3f000000    # 0.5f

    .line 33
    .line 34
    iput v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->D:F

    .line 35
    .line 36
    sget-object v3, Lcc/b;->a:Lcc/b;

    .line 37
    .line 38
    iput-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->n1:Lcc/b;

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    iput-wide v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->o1:J

    .line 43
    .line 44
    new-instance v3, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N1:Ljava/util/HashMap;

    .line 50
    .line 51
    new-instance v3, Ldb/p;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v3, v4}, Ldb/p;-><init>(Ldb/p;)V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    iput-boolean v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 61
    .line 62
    new-instance v5, Lyb/b;

    .line 63
    .line 64
    invoke-direct {v5, p0}, Lyb/b;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 65
    .line 66
    .line 67
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 68
    .line 69
    new-instance v5, Ltb/l;

    .line 70
    .line 71
    invoke-direct {v5, p0}, Ltb/l;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 75
    .line 76
    new-instance v5, Ll5/y;

    .line 77
    .line 78
    invoke-direct {v5, p0}, Ll5/y;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 79
    .line 80
    .line 81
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v7, 0x1a

    .line 90
    .line 91
    if-lt v6, v7, :cond_0

    .line 92
    .line 93
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5}, Ln5/a;->a(Landroid/view/ViewConfiguration;)F

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    goto :goto_2

    .line 102
    :cond_0
    const v6, 0x101004d

    .line 103
    .line 104
    .line 105
    const/high16 v8, 0x42000000    # 32.0f

    .line 106
    .line 107
    :try_start_0
    filled-new-array {v6}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 112
    .line 113
    .line 114
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    invoke-virtual {v5, v1, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 116
    .line 117
    .line 118
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    .line 121
    .line 122
    move v5, v6

    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    move-object v4, v5

    .line 126
    goto :goto_0

    .line 127
    :catch_0
    nop

    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    goto :goto_0

    .line 131
    :catch_1
    nop

    .line 132
    move-object v5, v4

    .line 133
    goto :goto_1

    .line 134
    :goto_0
    if-eqz v4, :cond_1

    .line 135
    .line 136
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    .line 138
    .line 139
    :cond_1
    throw p1

    .line 140
    :goto_1
    if-eqz v5, :cond_2

    .line 141
    .line 142
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    .line 144
    .line 145
    :cond_2
    const/high16 v5, 0x42000000    # 32.0f

    .line 146
    .line 147
    :goto_2
    iput v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->y:F

    .line 148
    .line 149
    sget-object v5, Lmb/m;->d:Lmb/m;

    .line 150
    .line 151
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->L1:Lmb/m;

    .line 152
    .line 153
    sget-object v5, Ldc/a;->a:Ldc/a;

    .line 154
    .line 155
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k1:Lcc/c;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    sget-object v6, Lcb/a;->a:Landroid/util/SparseIntArray;

    .line 162
    .line 163
    const v8, 0x7f130163

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->get(I)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_3

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    move v8, v6

    .line 174
    :goto_3
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l1:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v5, Ltb/e;

    .line 181
    .line 182
    invoke-direct {v5}, Ltb/e;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 186
    .line 187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const/high16 v6, 0x41200000    # 10.0f

    .line 196
    .line 197
    invoke-static {v3, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    div-float/2addr v5, v6

    .line 202
    iput v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q:F

    .line 203
    .line 204
    iput v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r:F

    .line 205
    .line 206
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 207
    .line 208
    mul-float v6, v6, v5

    .line 209
    .line 210
    iput v6, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v:F

    .line 211
    .line 212
    iput v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x:F

    .line 213
    .line 214
    const/high16 v6, 0x40000000    # 2.0f

    .line 215
    .line 216
    mul-float v5, v5, v6

    .line 217
    .line 218
    iput v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t:F

    .line 219
    .line 220
    iput v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->s:F

    .line 221
    .line 222
    new-instance v5, Landroid/graphics/Matrix;

    .line 223
    .line 224
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .line 226
    .line 227
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i1:Landroid/graphics/Matrix;

    .line 228
    .line 229
    new-instance v5, Ldc/b;

    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-direct {v5, v6}, Ldc/b;-><init>(Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A1:Lcc/e;

    .line 239
    .line 240
    new-instance v5, Ltb/r;

    .line 241
    .line 242
    invoke-direct {v5, p0}, Ltb/r;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 243
    .line 244
    .line 245
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->y1:Ltb/r;

    .line 246
    .line 247
    new-instance v5, Ldc/c;

    .line 248
    .line 249
    invoke-direct {v5, p0}, Ldc/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 250
    .line 251
    .line 252
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 253
    .line 254
    const/16 v5, 0x1f4

    .line 255
    .line 256
    invoke-virtual {p0, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setCursorBlinkPeriod(I)V

    .line 257
    .line 258
    .line 259
    new-instance v5, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 260
    .line 261
    invoke-direct {v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 262
    .line 263
    .line 264
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->u1:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 265
    .line 266
    const/high16 v5, 0x41900000    # 18.0f

    .line 267
    .line 268
    invoke-virtual {p0, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTextSize(F)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    const/high16 v6, 0x41a80000    # 21.0f

    .line 280
    .line 281
    invoke-static {v2, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    invoke-virtual {p0, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLineInfoTextSize(F)V

    .line 286
    .line 287
    .line 288
    sget-object v5, Lzb/a;->c:Lzb/a;

    .line 289
    .line 290
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j1:Lzb/a;

    .line 291
    .line 292
    invoke-virtual {v5, p0}, Lzb/a;->a(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 293
    .line 294
    .line 295
    new-instance v5, Ltb/u;

    .line 296
    .line 297
    invoke-direct {v5, p0}, Ltb/u;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 298
    .line 299
    .line 300
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 301
    .line 302
    new-instance v5, Landroid/view/GestureDetector;

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    iget-object v8, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 309
    .line 310
    invoke-direct {v5, v6, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 311
    .line 312
    .line 313
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->s1:Landroid/view/GestureDetector;

    .line 314
    .line 315
    iget-object v6, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 316
    .line 317
    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 318
    .line 319
    .line 320
    new-instance v5, Landroid/view/ScaleGestureDetector;

    .line 321
    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    iget-object v8, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 327
    .line 328
    invoke-direct {v5, v6, v8}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 329
    .line 330
    .line 331
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t1:Landroid/view/ScaleGestureDetector;

    .line 332
    .line 333
    new-instance v5, Lcc/d;

    .line 334
    .line 335
    invoke-direct {v5}, Lcc/d;-><init>()V

    .line 336
    .line 337
    .line 338
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->d1:Lcc/d;

    .line 339
    .line 340
    new-instance v5, Lcc/d;

    .line 341
    .line 342
    invoke-direct {v5}, Lcc/d;-><init>()V

    .line 343
    .line 344
    .line 345
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b1:Lcc/d;

    .line 346
    .line 347
    new-instance v5, Lcc/d;

    .line 348
    .line 349
    invoke-direct {v5}, Lcc/d;-><init>()V

    .line 350
    .line 351
    .line 352
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->c1:Lcc/d;

    .line 353
    .line 354
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 355
    .line 356
    iput-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r1:Landroid/graphics/Paint$Align;

    .line 357
    .line 358
    iput-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E:Z

    .line 359
    .line 360
    iput-boolean v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h0:Z

    .line 361
    .line 362
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w:F

    .line 363
    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    const-string v5, "input_method"

    .line 369
    .line 370
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 375
    .line 376
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    const-string v5, "clipboard"

    .line 383
    .line 384
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Landroid/content/ClipboardManager;

    .line 389
    .line 390
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 391
    .line 392
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setUndoEnabled(Z)V

    .line 393
    .line 394
    .line 395
    const/4 p1, -0x1

    .line 396
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 397
    .line 398
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setScalable(Z)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 405
    .line 406
    .line 407
    new-instance p1, Ltb/f;

    .line 408
    .line 409
    invoke-direct {p1, p0}, Ltb/f;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 410
    .line 411
    .line 412
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 413
    .line 414
    new-instance p1, Lvb/k;

    .line 415
    .line 416
    invoke-direct {p1, p0}, Lvb/k;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 417
    .line 418
    .line 419
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->p1:Lvb/k;

    .line 420
    .line 421
    new-instance p1, Landroid/widget/EdgeEffect;

    .line 422
    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-direct {p1, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 431
    .line 432
    new-instance p1, Landroid/widget/EdgeEffect;

    .line 433
    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    invoke-direct {p1, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 439
    .line 440
    .line 441
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 442
    .line 443
    new-instance p1, Lvb/s;

    .line 444
    .line 445
    invoke-direct {p1, p0}, Lvb/s;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 446
    .line 447
    .line 448
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->c:Lvb/s;

    .line 449
    .line 450
    new-instance p1, Lvb/p;

    .line 451
    .line 452
    invoke-direct {p1, p0}, Lvb/p;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 453
    .line 454
    .line 455
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->d:Lvb/p;

    .line 456
    .line 457
    new-instance p1, Lua/i1;

    .line 458
    .line 459
    invoke-direct {p1, p0}, Lua/i1;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setEditorLanguage(Lgb/b;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 466
    .line 467
    .line 468
    const/4 p1, 0x4

    .line 469
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTabWidth(I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightCurrentLine(Z)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setVerticalScrollBarEnabled(Z)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightCurrentBlock(Z)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setDisplayLnPanel(Z)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHorizontalScrollBarEnabled(Z)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setFirstLineNumberAlwaysVisible(Z)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setCursorAnimationEnabled(Z)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setEditable(Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLineNumberEnabled(Z)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHardwareAcceleratedDrawAllowed(Z)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setInterceptParentHorizontalScrollIfNeeded(Z)V

    .line 503
    .line 504
    .line 505
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 506
    .line 507
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTypefaceText(Landroid/graphics/Typeface;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setSoftKeyboardEnabled(Z)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->setDisableSoftKbdIfHardKbdAvailable(Z)V

    .line 514
    .line 515
    .line 516
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 517
    .line 518
    if-lt v4, v7, :cond_4

    .line 519
    .line 520
    invoke-static {p0}, Ln5/a;->v(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 521
    .line 522
    .line 523
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    instance-of v4, v4, Landroid/view/ContextThemeWrapper;

    .line 528
    .line 529
    if-eqz v4, :cond_5

    .line 530
    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    check-cast v4, Landroid/view/ContextThemeWrapper;

    .line 536
    .line 537
    new-instance v5, Landroid/util/TypedValue;

    .line 538
    .line 539
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    const v6, 0x1010433

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v6, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 550
    .line 551
    .line 552
    iget v4, v5, Landroid/util/TypedValue;->data:I

    .line 553
    .line 554
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setEdgeEffectColor(I)V

    .line 555
    .line 556
    .line 557
    :cond_5
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t1:Landroid/view/ScaleGestureDetector;

    .line 558
    .line 559
    invoke-virtual {v4, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 560
    .line 561
    .line 562
    new-instance v4, Lac/b;

    .line 563
    .line 564
    invoke-direct {v4, p0}, Lac/b;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 565
    .line 566
    .line 567
    iput-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M1:Lac/b;

    .line 568
    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    sget-object v5, Lcb/b;->a:[I

    .line 574
    .line 575
    invoke-virtual {v4, p2, v5, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    const/16 v0, 0xf

    .line 580
    .line 581
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHorizontalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    .line 587
    .line 588
    const/16 v4, 0x11

    .line 589
    .line 590
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHorizontalScrollbarTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    .line 596
    .line 597
    const/16 v4, 0x10

    .line 598
    .line 599
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    .line 605
    .line 606
    const/16 v4, 0x12

    .line 607
    .line 608
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setVerticalScrollbarTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    .line 614
    .line 615
    const/16 v4, 0xb

    .line 616
    .line 617
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    invoke-virtual {p0, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLnPanelPositionMode(I)V

    .line 622
    .line 623
    .line 624
    const/16 v4, 0xa

    .line 625
    .line 626
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLnPanelPosition(I)V

    .line 631
    .line 632
    .line 633
    const/4 v0, 0x3

    .line 634
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerWidth()F

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->setDividerWidth(F)V

    .line 643
    .line 644
    .line 645
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->s:F

    .line 646
    .line 647
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    iget v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t:F

    .line 652
    .line 653
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    invoke-virtual {p0, v0, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->f0(FF)V

    .line 658
    .line 659
    .line 660
    const/16 v0, 0xc

    .line 661
    .line 662
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->setPinLineNumber(Z)V

    .line 667
    .line 668
    .line 669
    const/4 v0, 0x5

    .line 670
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightCurrentBlock(Z)V

    .line 675
    .line 676
    .line 677
    const/4 v0, 0x6

    .line 678
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightCurrentLine(Z)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 686
    .line 687
    .line 688
    move-result p1

    .line 689
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightBracketPair(Z)V

    .line 690
    .line 691
    .line 692
    const/16 p1, 0x8

    .line 693
    .line 694
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 695
    .line 696
    .line 697
    move-result p1

    .line 698
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLigatureEnabled(Z)V

    .line 699
    .line 700
    .line 701
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 702
    .line 703
    const/16 v0, 0x9

    .line 704
    .line 705
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLineNumberEnabled(Z)V

    .line 710
    .line 711
    .line 712
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->p1:Lvb/k;

    .line 713
    .line 714
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    iput-boolean v0, p1, Lvb/k;->E:Z

    .line 719
    .line 720
    iget-object v2, p1, Lvb/k;->A:Ldb/p;

    .line 721
    .line 722
    invoke-virtual {v2, v0}, Ldb/p;->d(Z)V

    .line 723
    .line 724
    .line 725
    if-nez v0, :cond_6

    .line 726
    .line 727
    invoke-virtual {p1}, Lvb/k;->e()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p1}, Lvb/k;->f()V

    .line 731
    .line 732
    .line 733
    :cond_6
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 734
    .line 735
    const/16 v0, 0x13

    .line 736
    .line 737
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    iput-boolean v0, p1, Ltb/e;->d:Z

    .line 742
    .line 743
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 744
    .line 745
    const/16 v0, 0xd

    .line 746
    .line 747
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 748
    .line 749
    .line 750
    move-result p1

    .line 751
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setRenderFunctionCharacters(Z)V

    .line 752
    .line 753
    .line 754
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F:Z

    .line 755
    .line 756
    const/16 v0, 0xe

    .line 757
    .line 758
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 759
    .line 760
    .line 761
    move-result p1

    .line 762
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setScalable(Z)V

    .line 763
    .line 764
    .line 765
    const/16 p1, 0x16

    .line 766
    .line 767
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextSizePx()F

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 772
    .line 773
    .line 774
    move-result p1

    .line 775
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTextSizePx(F)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorBlink()Ltb/d;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    iget p1, p1, Ltb/d;->e:I

    .line 783
    .line 784
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 785
    .line 786
    .line 787
    move-result p1

    .line 788
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setCursorBlinkPeriod(I)V

    .line 789
    .line 790
    .line 791
    const/16 p1, 0x14

    .line 792
    .line 793
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 798
    .line 799
    .line 800
    move-result p1

    .line 801
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTabWidth(I)V

    .line 802
    .line 803
    .line 804
    const/16 p1, 0x18

    .line 805
    .line 806
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 807
    .line 808
    .line 809
    move-result p1

    .line 810
    if-eqz p1, :cond_8

    .line 811
    .line 812
    if-le p1, v3, :cond_7

    .line 813
    .line 814
    const/4 v1, 0x1

    .line 815
    :cond_7
    invoke-virtual {p0, v3, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->k0(ZZ)V

    .line 816
    .line 817
    .line 818
    :cond_8
    const/16 p1, 0x15

    .line 819
    .line 820
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object p1

    .line 824
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 828
    .line 829
    .line 830
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 4
    .line 5
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 12
    .line 13
    iget-object v3, v1, Lmb/j;->c:Lmb/b;

    .line 14
    .line 15
    iget v4, v3, Lmb/b;->b:I

    .line 16
    .line 17
    iget v3, v3, Lmb/b;->c:I

    .line 18
    .line 19
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 20
    .line 21
    iget v5, v1, Lmb/b;->b:I

    .line 22
    .line 23
    iget v1, v1, Lmb/b;->c:I

    .line 24
    .line 25
    invoke-virtual {v2, v4, v3, v5, v1}, Lmb/g;->h(IIII)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_26

    .line 29
    .line 30
    :cond_0
    iget-object v2, v1, Lmb/j;->c:Lmb/b;

    .line 31
    .line 32
    iget v3, v2, Lmb/b;->c:I

    .line 33
    .line 34
    iget v2, v2, Lmb/b;->b:I

    .line 35
    .line 36
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 37
    .line 38
    iget-boolean v5, v4, Ltb/e;->b:Z

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x1

    .line 42
    const/16 v8, 0x9

    .line 43
    .line 44
    const/16 v9, 0x20

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    iget v4, v4, Ltb/e;->c:I

    .line 49
    .line 50
    if-eq v4, v7, :cond_9

    .line 51
    .line 52
    if-lez v3, :cond_9

    .line 53
    .line 54
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 55
    .line 56
    add-int/lit8 v5, v3, -0x1

    .line 57
    .line 58
    invoke-virtual {v4, v2, v5}, Lmb/g;->c(II)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v9, :cond_9

    .line 63
    .line 64
    :cond_1
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 65
    .line 66
    iget-object v5, v1, Lmb/j;->c:Lmb/b;

    .line 67
    .line 68
    iget v5, v5, Lmb/b;->b:I

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lmb/g;->o(I)Lmb/h;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    add-int/lit8 v5, v3, -0x1

    .line 75
    .line 76
    move v10, v5

    .line 77
    :goto_0
    if-ltz v10, :cond_3

    .line 78
    .line 79
    invoke-virtual {v4, v10}, Lmb/h;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eq v11, v9, :cond_2

    .line 84
    .line 85
    if-eq v11, v8, :cond_2

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object v10, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 92
    .line 93
    invoke-virtual {v10, v2}, Lmb/g;->o(I)Lmb/h;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    iget v10, v10, Lmb/h;->c:I

    .line 98
    .line 99
    move v11, v3

    .line 100
    :goto_1
    if-ge v11, v10, :cond_5

    .line 101
    .line 102
    invoke-virtual {v4, v11}, Lmb/h;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eq v12, v9, :cond_4

    .line 107
    .line 108
    if-eq v12, v8, :cond_4

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const/4 v4, 0x1

    .line 116
    :goto_2
    iget-object v11, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 117
    .line 118
    iget-boolean v12, v11, Ltb/e;->b:Z

    .line 119
    .line 120
    if-eqz v12, :cond_7

    .line 121
    .line 122
    if-eqz v4, :cond_7

    .line 123
    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 127
    .line 128
    invoke-virtual {v1, v2, v6, v2, v3}, Lmb/g;->h(IIII)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 133
    .line 134
    add-int/lit8 v3, v2, -0x1

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Lmb/g;->o(I)Lmb/h;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    iget v4, v4, Lmb/h;->c:I

    .line 141
    .line 142
    invoke-virtual {v1, v3, v4, v2, v10}, Lmb/g;->h(IIII)V

    .line 143
    .line 144
    .line 145
    :goto_3
    return-void

    .line 146
    :cond_7
    iget v4, v11, Ltb/e;->c:I

    .line 147
    .line 148
    if-eq v4, v7, :cond_9

    .line 149
    .line 150
    if-lez v3, :cond_9

    .line 151
    .line 152
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 153
    .line 154
    invoke-virtual {v4, v2, v5}, Lmb/g;->c(II)C

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-ne v4, v9, :cond_9

    .line 159
    .line 160
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 161
    .line 162
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 163
    .line 164
    iget v4, v4, Ltb/e;->c:I

    .line 165
    .line 166
    const/4 v5, -0x1

    .line 167
    if-ne v4, v5, :cond_8

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    :cond_8
    sub-int v4, v3, v4

    .line 174
    .line 175
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v1, v2, v4, v2, v3}, Lmb/g;->h(IIII)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_9
    :goto_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/16 v4, 0x18

    .line 186
    .line 187
    if-lt v2, v4, :cond_34

    .line 188
    .line 189
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 190
    .line 191
    iget-object v4, v1, Lmb/j;->c:Lmb/b;

    .line 192
    .line 193
    iget v4, v4, Lmb/b;->b:I

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Lmb/g;->o(I)Lmb/h;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-gt v3, v7, :cond_a

    .line 200
    .line 201
    const/4 v3, 0x0

    .line 202
    goto/16 :goto_25

    .line 203
    .line 204
    :cond_a
    move v4, v3

    .line 205
    const/4 v5, 0x0

    .line 206
    const/4 v9, 0x0

    .line 207
    const/4 v10, 0x0

    .line 208
    :goto_5
    invoke-static {v2, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    sub-int/2addr v4, v12

    .line 217
    const v8, 0x1f93c

    .line 218
    .line 219
    .line 220
    const v6, 0x1f91d

    .line 221
    .line 222
    .line 223
    const v12, 0x1f1ff

    .line 224
    .line 225
    .line 226
    const v13, 0x1f1e6

    .line 227
    .line 228
    .line 229
    const/16 v16, 0x2

    .line 230
    .line 231
    sget-object v17, Lpb/a;->b:Lpb/a;

    .line 232
    .line 233
    sget-object v18, Lpb/a;->c:Lpb/a;

    .line 234
    .line 235
    const/16 v14, 0x1c

    .line 236
    .line 237
    const/16 v19, 0x4

    .line 238
    .line 239
    const/16 v20, 0x7

    .line 240
    .line 241
    const/16 v15, 0xd

    .line 242
    .line 243
    packed-switch v5, :pswitch_data_0

    .line 244
    .line 245
    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string v2, "state "

    .line 249
    .line 250
    const-string v3, " is unknown"

    .line 251
    .line 252
    invoke-static {v2, v5, v3}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v1

    .line 260
    :pswitch_0
    const v6, 0xe0020

    .line 261
    .line 262
    .line 263
    if-gt v6, v11, :cond_b

    .line 264
    .line 265
    const v6, 0xe007e

    .line 266
    .line 267
    .line 268
    if-gt v11, v6, :cond_b

    .line 269
    .line 270
    add-int/lit8 v9, v9, 0x2

    .line 271
    .line 272
    goto/16 :goto_23

    .line 273
    .line 274
    :cond_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 275
    .line 276
    if-lt v5, v14, :cond_c

    .line 277
    .line 278
    move-object/from16 v5, v18

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_c
    move-object/from16 v5, v17

    .line 282
    .line 283
    :goto_6
    invoke-interface {v5, v11}, Lpb/b;->a(I)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_e

    .line 288
    .line 289
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    :goto_7
    add-int/2addr v9, v5

    .line 294
    :cond_d
    :goto_8
    const/16 v5, 0xd

    .line 295
    .line 296
    goto/16 :goto_23

    .line 297
    .line 298
    :cond_e
    const/16 v5, 0xd

    .line 299
    .line 300
    const/4 v9, 0x2

    .line 301
    goto/16 :goto_23

    .line 302
    .line 303
    :pswitch_1
    if-gt v13, v11, :cond_d

    .line 304
    .line 305
    if-gt v11, v12, :cond_d

    .line 306
    .line 307
    add-int/lit8 v9, v9, -0x2

    .line 308
    .line 309
    const/16 v5, 0xa

    .line 310
    .line 311
    goto/16 :goto_23

    .line 312
    .line 313
    :pswitch_2
    if-gt v13, v11, :cond_d

    .line 314
    .line 315
    if-gt v11, v12, :cond_d

    .line 316
    .line 317
    add-int/lit8 v9, v9, 0x2

    .line 318
    .line 319
    const/16 v5, 0xb

    .line 320
    .line 321
    goto/16 :goto_23

    .line 322
    .line 323
    :pswitch_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 324
    .line 325
    if-lt v5, v14, :cond_f

    .line 326
    .line 327
    move-object/from16 v5, v18

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_f
    move-object/from16 v5, v17

    .line 331
    .line 332
    :goto_9
    invoke-interface {v5, v11}, Lpb/b;->a(I)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eqz v5, :cond_d

    .line 337
    .line 338
    add-int/lit8 v10, v10, 0x1

    .line 339
    .line 340
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    add-int/2addr v5, v10

    .line 345
    add-int/2addr v9, v5

    .line 346
    const/4 v5, 0x7

    .line 347
    const/4 v10, 0x0

    .line 348
    goto/16 :goto_23

    .line 349
    .line 350
    :pswitch_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 351
    .line 352
    if-lt v5, v14, :cond_10

    .line 353
    .line 354
    move-object/from16 v6, v18

    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_10
    move-object/from16 v6, v17

    .line 358
    .line 359
    :goto_a
    invoke-interface {v6, v11}, Lpb/b;->a(I)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_12

    .line 364
    .line 365
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    add-int/2addr v6, v7

    .line 370
    add-int/2addr v9, v6

    .line 371
    if-lt v5, v14, :cond_11

    .line 372
    .line 373
    move-object/from16 v5, v18

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_11
    move-object/from16 v5, v17

    .line 377
    .line 378
    :goto_b
    invoke-interface {v5, v11}, Lpb/b;->d(I)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_15

    .line 383
    .line 384
    goto/16 :goto_21

    .line 385
    .line 386
    :cond_12
    if-lt v5, v14, :cond_13

    .line 387
    .line 388
    move-object/from16 v5, v18

    .line 389
    .line 390
    goto :goto_c

    .line 391
    :cond_13
    move-object/from16 v5, v17

    .line 392
    .line 393
    :goto_c
    invoke-interface {v5, v11}, Lpb/b;->b(I)Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-eqz v5, :cond_d

    .line 398
    .line 399
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 400
    .line 401
    .line 402
    move-result v10

    .line 403
    const/16 v5, 0x9

    .line 404
    .line 405
    goto/16 :goto_23

    .line 406
    .line 407
    :pswitch_5
    const/16 v5, 0x200d

    .line 408
    .line 409
    if-ne v11, v5, :cond_d

    .line 410
    .line 411
    const/16 v5, 0x8

    .line 412
    .line 413
    goto/16 :goto_23

    .line 414
    .line 415
    :pswitch_6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 416
    .line 417
    if-lt v5, v14, :cond_14

    .line 418
    .line 419
    move-object/from16 v6, v18

    .line 420
    .line 421
    goto :goto_d

    .line 422
    :cond_14
    move-object/from16 v6, v17

    .line 423
    .line 424
    :goto_d
    invoke-interface {v6, v11}, Lpb/b;->a(I)Z

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    if-eqz v6, :cond_16

    .line 429
    .line 430
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    :goto_e
    add-int/2addr v9, v5

    .line 435
    :cond_15
    :goto_f
    const/4 v5, 0x7

    .line 436
    goto/16 :goto_23

    .line 437
    .line 438
    :cond_16
    if-lt v5, v14, :cond_17

    .line 439
    .line 440
    move-object/from16 v5, v18

    .line 441
    .line 442
    goto :goto_10

    .line 443
    :cond_17
    move-object/from16 v5, v17

    .line 444
    .line 445
    :goto_10
    invoke-interface {v5, v11}, Lpb/b;->b(I)Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-nez v5, :cond_d

    .line 450
    .line 451
    invoke-static {v11}, Ljg/w;->a(I)I

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-nez v5, :cond_d

    .line 456
    .line 457
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    goto/16 :goto_7

    .line 462
    .line 463
    :pswitch_7
    if-eq v11, v6, :cond_1a

    .line 464
    .line 465
    if-ne v11, v8, :cond_18

    .line 466
    .line 467
    goto :goto_12

    .line 468
    :cond_18
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 469
    .line 470
    if-lt v5, v14, :cond_19

    .line 471
    .line 472
    move-object/from16 v5, v18

    .line 473
    .line 474
    goto :goto_11

    .line 475
    :cond_19
    move-object/from16 v5, v17

    .line 476
    .line 477
    :goto_11
    invoke-interface {v5, v11}, Lpb/b;->c(I)Z

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    goto :goto_13

    .line 482
    :cond_1a
    :goto_12
    const/4 v5, 0x1

    .line 483
    :goto_13
    if-eqz v5, :cond_d

    .line 484
    .line 485
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    :goto_14
    add-int/2addr v5, v10

    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :pswitch_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 493
    .line 494
    if-lt v5, v14, :cond_1b

    .line 495
    .line 496
    move-object/from16 v12, v18

    .line 497
    .line 498
    goto :goto_15

    .line 499
    :cond_1b
    move-object/from16 v12, v17

    .line 500
    .line 501
    :goto_15
    invoke-interface {v12, v11}, Lpb/b;->b(I)Z

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    if-eqz v12, :cond_1c

    .line 506
    .line 507
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    const/4 v5, 0x5

    .line 512
    goto/16 :goto_23

    .line 513
    .line 514
    :cond_1c
    if-eq v11, v6, :cond_1f

    .line 515
    .line 516
    if-ne v11, v8, :cond_1d

    .line 517
    .line 518
    goto :goto_17

    .line 519
    :cond_1d
    if-lt v5, v14, :cond_1e

    .line 520
    .line 521
    move-object/from16 v5, v18

    .line 522
    .line 523
    goto :goto_16

    .line 524
    :cond_1e
    move-object/from16 v5, v17

    .line 525
    .line 526
    :goto_16
    invoke-interface {v5, v11}, Lpb/b;->c(I)Z

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    goto :goto_18

    .line 531
    :cond_1f
    :goto_17
    const/4 v5, 0x1

    .line 532
    :goto_18
    if-eqz v5, :cond_d

    .line 533
    .line 534
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    goto :goto_e

    .line 539
    :pswitch_9
    const/16 v5, 0x30

    .line 540
    .line 541
    if-gt v5, v11, :cond_20

    .line 542
    .line 543
    const/16 v5, 0x39

    .line 544
    .line 545
    if-le v11, v5, :cond_22

    .line 546
    .line 547
    :cond_20
    const/16 v5, 0x23

    .line 548
    .line 549
    if-eq v11, v5, :cond_22

    .line 550
    .line 551
    const/16 v5, 0x2a

    .line 552
    .line 553
    if-ne v11, v5, :cond_21

    .line 554
    .line 555
    goto :goto_19

    .line 556
    :cond_21
    const/4 v5, 0x0

    .line 557
    goto :goto_1a

    .line 558
    :cond_22
    :goto_19
    const/4 v5, 0x1

    .line 559
    :goto_1a
    if-eqz v5, :cond_d

    .line 560
    .line 561
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 562
    .line 563
    .line 564
    move-result v5

    .line 565
    goto :goto_14

    .line 566
    :pswitch_a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 567
    .line 568
    if-lt v5, v14, :cond_23

    .line 569
    .line 570
    move-object/from16 v5, v18

    .line 571
    .line 572
    goto :goto_1b

    .line 573
    :cond_23
    move-object/from16 v5, v17

    .line 574
    .line 575
    :goto_1b
    invoke-interface {v5, v11}, Lpb/b;->b(I)Z

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    if-eqz v5, :cond_24

    .line 580
    .line 581
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    const/4 v5, 0x3

    .line 586
    goto/16 :goto_23

    .line 587
    .line 588
    :cond_24
    const/16 v5, 0x30

    .line 589
    .line 590
    if-gt v5, v11, :cond_25

    .line 591
    .line 592
    const/16 v5, 0x39

    .line 593
    .line 594
    if-le v11, v5, :cond_27

    .line 595
    .line 596
    :cond_25
    const/16 v5, 0x23

    .line 597
    .line 598
    if-eq v11, v5, :cond_27

    .line 599
    .line 600
    const/16 v5, 0x2a

    .line 601
    .line 602
    if-ne v11, v5, :cond_26

    .line 603
    .line 604
    goto :goto_1c

    .line 605
    :cond_26
    const/4 v5, 0x0

    .line 606
    goto :goto_1d

    .line 607
    :cond_27
    :goto_1c
    const/4 v5, 0x1

    .line 608
    :goto_1d
    if-eqz v5, :cond_d

    .line 609
    .line 610
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    goto/16 :goto_7

    .line 615
    .line 616
    :pswitch_b
    if-ne v11, v15, :cond_d

    .line 617
    .line 618
    add-int/lit8 v9, v9, 0x1

    .line 619
    .line 620
    goto/16 :goto_8

    .line 621
    .line 622
    :pswitch_c
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 623
    .line 624
    .line 625
    move-result v9

    .line 626
    const/16 v5, 0xa

    .line 627
    .line 628
    if-ne v11, v5, :cond_28

    .line 629
    .line 630
    const/4 v5, 0x1

    .line 631
    goto :goto_23

    .line 632
    :cond_28
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 633
    .line 634
    if-lt v6, v14, :cond_29

    .line 635
    .line 636
    move-object/from16 v8, v18

    .line 637
    .line 638
    goto :goto_1e

    .line 639
    :cond_29
    move-object/from16 v8, v17

    .line 640
    .line 641
    :goto_1e
    invoke-interface {v8, v11}, Lpb/b;->b(I)Z

    .line 642
    .line 643
    .line 644
    move-result v8

    .line 645
    if-eqz v8, :cond_2a

    .line 646
    .line 647
    const/4 v5, 0x6

    .line 648
    goto :goto_23

    .line 649
    :cond_2a
    if-gt v13, v11, :cond_2b

    .line 650
    .line 651
    if-gt v11, v12, :cond_2b

    .line 652
    .line 653
    const/4 v8, 0x1

    .line 654
    goto :goto_1f

    .line 655
    :cond_2b
    const/4 v8, 0x0

    .line 656
    :goto_1f
    if-eqz v8, :cond_2c

    .line 657
    .line 658
    goto :goto_23

    .line 659
    :cond_2c
    if-lt v6, v14, :cond_2d

    .line 660
    .line 661
    move-object/from16 v5, v18

    .line 662
    .line 663
    goto :goto_20

    .line 664
    :cond_2d
    move-object/from16 v5, v17

    .line 665
    .line 666
    :goto_20
    invoke-interface {v5, v11}, Lpb/b;->d(I)Z

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    if-eqz v5, :cond_2e

    .line 671
    .line 672
    :goto_21
    const/4 v5, 0x4

    .line 673
    goto :goto_23

    .line 674
    :cond_2e
    const/16 v5, 0x20e3

    .line 675
    .line 676
    if-ne v11, v5, :cond_2f

    .line 677
    .line 678
    const/4 v5, 0x2

    .line 679
    goto :goto_23

    .line 680
    :cond_2f
    if-lt v6, v14, :cond_30

    .line 681
    .line 682
    move-object/from16 v5, v18

    .line 683
    .line 684
    goto :goto_22

    .line 685
    :cond_30
    move-object/from16 v5, v17

    .line 686
    .line 687
    :goto_22
    invoke-interface {v5, v11}, Lpb/b;->a(I)Z

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    if-eqz v5, :cond_31

    .line 692
    .line 693
    goto/16 :goto_f

    .line 694
    .line 695
    :cond_31
    const v5, 0xe007f

    .line 696
    .line 697
    .line 698
    if-ne v11, v5, :cond_d

    .line 699
    .line 700
    const/16 v5, 0xc

    .line 701
    .line 702
    :goto_23
    if-lez v4, :cond_33

    .line 703
    .line 704
    if-ne v5, v15, :cond_32

    .line 705
    .line 706
    goto :goto_24

    .line 707
    :cond_32
    const/4 v6, 0x0

    .line 708
    const/16 v8, 0x9

    .line 709
    .line 710
    goto/16 :goto_5

    .line 711
    .line 712
    :cond_33
    :goto_24
    sub-int/2addr v3, v9

    .line 713
    goto :goto_25

    .line 714
    :cond_34
    invoke-static {}, Lmb/n;->a()Lmb/n;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    iget-object v4, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 719
    .line 720
    iget-object v5, v1, Lmb/j;->c:Lmb/b;

    .line 721
    .line 722
    iget v5, v5, Lmb/b;->b:I

    .line 723
    .line 724
    invoke-virtual {v4, v5}, Lmb/g;->o(I)Lmb/h;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v2, v3, v4}, Lmb/n;->b(ILmb/h;)I

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    :goto_25
    iget-object v2, v1, Lmb/j;->c:Lmb/b;

    .line 733
    .line 734
    iget v4, v2, Lmb/b;->c:I

    .line 735
    .line 736
    if-le v3, v4, :cond_35

    .line 737
    .line 738
    move/from16 v21, v4

    .line 739
    .line 740
    move v4, v3

    .line 741
    move/from16 v3, v21

    .line 742
    .line 743
    :cond_35
    if-ne v3, v4, :cond_36

    .line 744
    .line 745
    iget v2, v2, Lmb/b;->b:I

    .line 746
    .line 747
    if-lez v2, :cond_37

    .line 748
    .line 749
    if-nez v3, :cond_37

    .line 750
    .line 751
    iget-object v3, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 752
    .line 753
    sub-int/2addr v2, v7

    .line 754
    invoke-virtual {v3, v2}, Lmb/g;->o(I)Lmb/h;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    iget v4, v4, Lmb/h;->c:I

    .line 759
    .line 760
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 761
    .line 762
    iget v1, v1, Lmb/b;->b:I

    .line 763
    .line 764
    const/4 v5, 0x0

    .line 765
    invoke-virtual {v3, v2, v4, v1, v5}, Lmb/g;->h(IIII)V

    .line 766
    .line 767
    .line 768
    goto :goto_26

    .line 769
    :cond_36
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 770
    .line 771
    iget v2, v2, Lmb/b;->b:I

    .line 772
    .line 773
    invoke-virtual {v1, v2, v3, v2, v4}, Lmb/g;->h(IIII)V

    .line 774
    .line 775
    .line 776
    :cond_37
    :goto_26
    return-void

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final B(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 13
    .line 14
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lmb/j;->d:Lmb/b;

    .line 19
    .line 20
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v4, v1, Lmb/b;->b:I

    .line 33
    .line 34
    iget v1, v1, Lmb/b;->c:I

    .line 35
    .line 36
    iget v5, v2, Lmb/b;->b:I

    .line 37
    .line 38
    iget v6, v2, Lmb/b;->c:I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual {v3, v7}, Lmb/g;->u(Z)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v3, v4, v1, v5, v6}, Lmb/g;->A(IIII)Lmb/g;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v3, v7}, Lmb/g;->E(Z)V

    .line 49
    .line 50
    .line 51
    iget v3, v2, Lmb/b;->b:I

    .line 52
    .line 53
    iget v4, v2, Lmb/b;->c:I

    .line 54
    .line 55
    invoke-virtual {p0, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, p1, v7, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 75
    .line 76
    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    iget-object p1, v0, Lmb/j;->d:Lmb/b;

    .line 80
    .line 81
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget p2, v2, Lmb/b;->b:I

    .line 86
    .line 87
    iget v0, v2, Lmb/b;->c:I

    .line 88
    .line 89
    iget v1, p1, Lmb/b;->b:I

    .line 90
    .line 91
    iget p1, p1, Lmb/b;->c:I

    .line 92
    .line 93
    invoke-virtual {p0, p2, v0, v1, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    invoke-virtual {v3, v7}, Lmb/g;->E(Z)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final C(II)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScroller()Ltb/m;

    .line 5
    .line 6
    .line 7
    move-result-object v6

    .line 8
    iget-object v1, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 9
    .line 10
    move v2, p1

    .line 11
    invoke-virtual {v1, p1, v0}, Lwb/c;->s(II)[F

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aget v3, v1, v2

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-float/2addr v4, v3

    .line 23
    const/4 v3, 0x0

    .line 24
    aget v1, v1, v3

    .line 25
    .line 26
    iget-object v5, v6, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v8, v6, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    :goto_0
    int-to-float v5, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalY()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    :goto_2
    int-to-float v9, v9

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalX()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    goto :goto_2

    .line 64
    :goto_3
    iget-object v10, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 65
    .line 66
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    mul-int/lit8 v10, v10, 0x2

    .line 74
    .line 75
    int-to-float v10, v10

    .line 76
    sub-float v10, v1, v10

    .line 77
    .line 78
    cmpg-float v10, v10, v5

    .line 79
    .line 80
    if-gez v10, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    mul-int/lit8 v10, v10, 0x2

    .line 87
    .line 88
    int-to-float v10, v10

    .line 89
    sub-float v10, v1, v10

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_2
    move v10, v5

    .line 93
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    int-to-float v11, v11

    .line 98
    add-float/2addr v11, v5

    .line 99
    const/high16 v5, 0x3f800000    # 1.0f

    .line 100
    .line 101
    cmpl-float v11, v1, v11

    .line 102
    .line 103
    if-lez v11, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    int-to-float v10, v10

    .line 110
    sub-float/2addr v1, v10

    .line 111
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    int-to-float v10, v10

    .line 116
    mul-float v10, v10, v5

    .line 117
    .line 118
    add-float/2addr v10, v1

    .line 119
    :cond_3
    const/4 v1, 0x0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    goto :goto_5

    .line 124
    :cond_4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v11, "a"

    .line 129
    .line 130
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    :goto_5
    iget-boolean v11, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->R0:Z

    .line 135
    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    goto :goto_6

    .line 143
    :cond_5
    const/4 v11, 0x0

    .line 144
    :goto_6
    add-float/2addr v11, v9

    .line 145
    cmpg-float v11, v4, v11

    .line 146
    .line 147
    if-gez v11, :cond_7

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    div-int/lit8 v11, v11, 0x2

    .line 154
    .line 155
    iget-boolean v12, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->R0:Z

    .line 156
    .line 157
    if-eqz v12, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    neg-float v12, v12

    .line 164
    goto :goto_7

    .line 165
    :cond_6
    const/4 v12, 0x0

    .line 166
    :goto_7
    add-float/2addr v12, v4

    .line 167
    sub-float/2addr v12, v0

    .line 168
    sub-float v13, v12, v9

    .line 169
    .line 170
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    int-to-float v11, v11

    .line 175
    cmpg-float v13, v13, v11

    .line 176
    .line 177
    if-gez v13, :cond_8

    .line 178
    .line 179
    sub-float v11, v9, v11

    .line 180
    .line 181
    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    goto :goto_8

    .line 186
    :cond_7
    move v12, v9

    .line 187
    :cond_8
    :goto_8
    add-float v11, v4, v0

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    int-to-float v13, v13

    .line 194
    add-float/2addr v9, v13

    .line 195
    cmpl-float v9, v11, v9

    .line 196
    .line 197
    if-lez v9, :cond_9

    .line 198
    .line 199
    const v9, 0x3f4ccccd    # 0.8f

    .line 200
    .line 201
    .line 202
    mul-float v0, v0, v9

    .line 203
    .line 204
    add-float/2addr v0, v4

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    int-to-float v4, v4

    .line 210
    sub-float v12, v0, v4

    .line 211
    .line 212
    :cond_9
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    int-to-float v0, v0

    .line 217
    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    int-to-float v0, v0

    .line 230
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    int-to-float v0, v0

    .line 243
    sub-float v0, v9, v0

    .line 244
    .line 245
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    cmpg-float v0, v0, v1

    .line 254
    .line 255
    if-gez v0, :cond_a

    .line 256
    .line 257
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    int-to-float v0, v0

    .line 262
    sub-float v0, v10, v0

    .line 263
    .line 264
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    cmpg-float v0, v0, v1

    .line 273
    .line 274
    if-gez v0, :cond_a

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_a

    .line 280
    .line 281
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 282
    .line 283
    .line 284
    move-result-wide v0

    .line 285
    iget-wide v4, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->o1:J

    .line 286
    .line 287
    sub-long/2addr v0, v4

    .line 288
    const-wide/16 v4, 0x64

    .line 289
    .line 290
    cmp-long v11, v0, v4

    .line 291
    .line 292
    if-ltz v11, :cond_b

    .line 293
    .line 294
    const/4 v3, 0x1

    .line 295
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 296
    .line 297
    .line 298
    move-result-wide v0

    .line 299
    iput-wide v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->o1:J

    .line 300
    .line 301
    if-eqz v3, :cond_c

    .line 302
    .line 303
    invoke-virtual {v8, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Ltb/m;->a()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    int-to-float v0, v0

    .line 322
    sub-float v0, v9, v0

    .line 323
    .line 324
    float-to-int v3, v0

    .line 325
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    int-to-float v0, v0

    .line 330
    sub-float v0, v10, v0

    .line 331
    .line 332
    float-to-int v4, v0

    .line 333
    iget-object v0, v6, Ltb/m;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 334
    .line 335
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget v5, v0, Ltb/e;->j:I

    .line 340
    .line 341
    move-object v0, v6

    .line 342
    invoke-virtual/range {v0 .. v5}, Ltb/m;->b(IIIII)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_c
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    int-to-float v0, v0

    .line 364
    sub-float v0, v9, v0

    .line 365
    .line 366
    float-to-int v3, v0

    .line 367
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    int-to-float v0, v0

    .line 372
    sub-float v0, v10, v0

    .line 373
    .line 374
    float-to-int v4, v0

    .line 375
    const/4 v5, 0x0

    .line 376
    move-object v0, v6

    .line 377
    invoke-virtual/range {v0 .. v5}, Ltb/m;->b(IIIII)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v6}, Ltb/m;->a()V

    .line 384
    .line 385
    .line 386
    :goto_9
    new-instance v8, Ldb/w;

    .line 387
    .line 388
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    float-to-int v4, v9

    .line 397
    float-to-int v5, v10

    .line 398
    const/4 v6, 0x3

    .line 399
    move-object v0, v8

    .line 400
    move-object v1, p0

    .line 401
    invoke-direct/range {v0 .. v6}, Ldb/w;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;IIIII)V

    .line 402
    .line 403
    .line 404
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 405
    .line 406
    invoke-virtual {v0, v8}, Ldb/p;->a(Lbi/a;)I

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 410
    .line 411
    .line 412
    :goto_a
    return-void
.end method

.method public final D()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v2, v0, Lmb/b;->b:I

    .line 11
    .line 12
    iget v3, v0, Lmb/b;->c:I

    .line 13
    .line 14
    iget v0, v0, Lmb/b;->a:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v4}, Lmb/g;->u(Z)V

    .line 18
    .line 19
    .line 20
    if-ltz v2, :cond_3

    .line 21
    .line 22
    :try_start_0
    iget-object v5, v1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-lt v2, v5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v1, v2}, Lmb/g;->o(I)Lmb/h;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget v6, v5, Lmb/h;->c:I

    .line 36
    .line 37
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget v5, v5, Lmb/m;->b:I

    .line 42
    .line 43
    add-int/2addr v6, v5

    .line 44
    if-gt v3, v6, :cond_3

    .line 45
    .line 46
    if-gez v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v1}, Lmb/g;->n()Lmb/a;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5, v2, v3}, Lmb/a;->A(II)Lmb/b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget v2, v2, Lmb/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    if-ne v2, v0, :cond_2

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1, v4}, Lmb/g;->E(Z)V

    .line 65
    .line 66
    .line 67
    move v4, v0

    .line 68
    goto :goto_3

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Lmb/g;->E(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :goto_2
    invoke-virtual {v1, v4}, Lmb/g;->E(Z)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :goto_3
    if-nez v4, :cond_5

    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 82
    .line 83
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 84
    .line 85
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 90
    .line 91
    :cond_5
    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 6
    .line 7
    iget v0, v0, Lmb/b;->b:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 14
    .line 15
    iget v1, v1, Lmb/b;->c:I

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->C(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final F(Ltb/x;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->D()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSelectingTarget()Lmb/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "pos"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Ltb/x;->a:Lte/p;

    .line 17
    .line 18
    invoke-interface {v1, p0, v0}, Lte/p;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lmb/b;

    .line 23
    .line 24
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 25
    .line 26
    iget v3, v1, Lmb/b;->b:I

    .line 27
    .line 28
    iget v4, v1, Lmb/b;->c:I

    .line 29
    .line 30
    iget v5, v0, Lmb/b;->b:I

    .line 31
    .line 32
    iget v6, v0, Lmb/b;->c:I

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v7, 0x7

    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v8}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Ltb/x;->i:Ltb/x;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-ne p1, v0, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    neg-int v0, v0

    .line 53
    int-to-float v0, v0

    .line 54
    invoke-virtual {p1, v2, v0, v1}, Ltb/u;->j(FFZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Ltb/x;->j:Ltb/x;

    .line 59
    .line 60
    if-ne p1, v0, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-float v0, v0

    .line 69
    invoke-virtual {p1, v2, v0, v1}, Ltb/u;->j(FFZ)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 73
    .line 74
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 75
    .line 76
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 93
    .line 94
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 95
    .line 96
    iget v0, p1, Lmb/b;->b:I

    .line 97
    .line 98
    iget p1, p1, Lmb/b;->c:I

    .line 99
    .line 100
    invoke-virtual {p0, v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->C(II)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method public final G(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lmb/j;->c:Lmb/b;

    .line 25
    .line 26
    iget v2, v2, Lmb/b;->a:I

    .line 27
    .line 28
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 29
    .line 30
    iget v0, v0, Lmb/b;->a:I

    .line 31
    .line 32
    iget v3, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 37
    .line 38
    iget v3, v3, Ltb/e;->g:I

    .line 39
    .line 40
    iput v3, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 41
    .line 42
    :cond_0
    iget v3, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 43
    .line 44
    if-ge v3, v2, :cond_1

    .line 45
    .line 46
    div-int/lit8 v3, v3, 0x2

    .line 47
    .line 48
    sub-int v3, v2, v3

    .line 49
    .line 50
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v3, 0x0

    .line 56
    :goto_0
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 57
    .line 58
    iget v5, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 59
    .line 60
    add-int/2addr v5, v3

    .line 61
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 62
    .line 63
    invoke-virtual {v4, v3, v5, p1}, Ltb/f;->c(III)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 68
    .line 69
    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 70
    .line 71
    sub-int/2addr v2, v3

    .line 72
    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 73
    .line 74
    sub-int/2addr v0, v3

    .line 75
    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getKeyMetaStates()Lqb/a;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lqb/a;->b()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Lqb/a;->a()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    iget p1, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 94
    .line 95
    or-int/lit8 p1, p1, 0x2

    .line 96
    .line 97
    iput p1, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 98
    .line 99
    :cond_2
    return-object v1
.end method

.method public final H(FF)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-float/2addr p1, v1

    .line 8
    invoke-interface {v0, p1, p2}, Lwb/d;->n(FF)Leb/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p2, p1, Leb/j;->a:I

    .line 13
    .line 14
    iget p1, p1, Leb/j;->b:I

    .line 15
    .line 16
    invoke-static {p2, p1}, Lsb/h;->g(II)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    return-wide p1
.end method

.method public final I(FF)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    add-float/2addr p1, v0

    .line 17
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    add-float/2addr p2, v0

    .line 23
    invoke-virtual {p0, p1, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->H(FF)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    return-wide p1
.end method

.method public final J(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSpacingPixels()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 6
    .line 7
    iget-object v1, v1, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 12
    .line 13
    sub-int/2addr v2, v3

    .line 14
    add-int/2addr v2, v0

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr p1, v3

    .line 21
    mul-int p1, p1, v2

    .line 22
    .line 23
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 24
    .line 25
    sub-int/2addr p1, v1

    .line 26
    div-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    sub-int/2addr p1, v0

    .line 29
    return p1
.end method

.method public final K(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    mul-int p1, p1, v0

    .line 8
    .line 9
    return p1
.end method

.method public final L(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int v0, v0, p1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSpacingPixels()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    div-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public final M(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->y()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    invoke-virtual {v7}, Lmb/g;->b()Z

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 30
    .line 31
    iget v1, v1, Lmb/b;->b:I

    .line 32
    .line 33
    move v9, v1

    .line 34
    :goto_0
    iget-object v1, v0, Lmb/j;->d:Lmb/b;

    .line 35
    .line 36
    iget v1, v1, Lmb/b;->b:I

    .line 37
    .line 38
    if-gt v9, v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {v7, v9}, Lmb/g;->o(I)Lmb/h;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lmb/k;->a(Ljava/lang/CharSequence;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    const/16 v3, 0x20

    .line 49
    .line 50
    shr-long v3, v1, v3

    .line 51
    .line 52
    long-to-int v4, v3

    .line 53
    const-wide v5, 0xffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    and-long/2addr v1, v5

    .line 59
    long-to-int v2, v1

    .line 60
    mul-int v1, v2, v8

    .line 61
    .line 62
    add-int/2addr v1, v4

    .line 63
    add-int v6, v4, v2

    .line 64
    .line 65
    rem-int v3, v1, v8

    .line 66
    .line 67
    sub-int v3, v8, v3

    .line 68
    .line 69
    if-lez v4, :cond_2

    .line 70
    .line 71
    if-lez v2, :cond_2

    .line 72
    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    move v3, v8

    .line 76
    :cond_1
    add-int/2addr v3, v1

    .line 77
    div-int/2addr v3, v8

    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static {v3, p1}, Lbf/h;->P(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    move-object v1, v7

    .line 84
    move v2, v9

    .line 85
    move v3, v4

    .line 86
    move-object v4, v5

    .line 87
    move v5, v9

    .line 88
    invoke-virtual/range {v1 .. v6}, Lmb/g;->w(IILjava/lang/CharSequence;II)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    if-ne v3, v8, :cond_3

    .line 93
    .line 94
    invoke-virtual {v7, v9, v6, p1}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-string v1, " "

    .line 99
    .line 100
    invoke-static {v3, v1}, Lbf/h;->P(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v7, v9, v6, v1}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v7}, Lmb/g;->k()Z

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->O()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->L:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    return v0
.end method

.method public final Q(FF)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->I(FF)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 6
    .line 7
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    shr-long v3, v0, v3

    .line 12
    .line 13
    long-to-int v4, v3

    .line 14
    const-wide v5, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr v0, v5

    .line 20
    long-to-int v1, v0

    .line 21
    invoke-virtual {v2, v4, v1}, Lmb/g;->l(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p2, v0}, Lwb/d;->l(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ltb/l;->d(I)Leb/o;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v0, Leb/i;

    .line 36
    .line 37
    invoke-direct {v0}, Leb/i;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Leb/k;

    .line 41
    .line 42
    invoke-direct {v1, p2, v0}, Leb/k;-><init>(Leb/o;Leb/i;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p2, v1, v0}, Leb/o;->k(Leb/m;Z)V

    .line 47
    .line 48
    .line 49
    iget p2, v1, Leb/k;->a:F

    .line 50
    .line 51
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-float/2addr p2, v1

    .line 56
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    int-to-float v2, v2

    .line 61
    add-float/2addr v2, p1

    .line 62
    cmpl-float p1, v2, v1

    .line 63
    .line 64
    if-ltz p1, :cond_0

    .line 65
    .line 66
    cmpg-float p1, v2, p2

    .line 67
    .line 68
    if-gtz p1, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0
.end method

.method public final R()F
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-lez v0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0xa

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v0, 0x13

    .line 21
    .line 22
    invoke-static {v0}, Lsb/h;->f(I)[F

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 27
    .line 28
    iget-object v5, v5, Ltb/l;->c:Leb/c;

    .line 29
    .line 30
    const-string v6, "0 1 2 3 4 5 6 7 8 9"

    .line 31
    .line 32
    invoke-virtual {v5, v6, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lsb/h;->i([F)V

    .line 36
    .line 37
    .line 38
    :goto_1
    if-ge v2, v0, :cond_2

    .line 39
    .line 40
    aget v5, v4, v2

    .line 41
    .line 42
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v2, v2, 0x2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    int-to-float v0, v3

    .line 50
    mul-float v1, v1, v0

    .line 51
    .line 52
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C:F

    .line 53
    .line 54
    add-float/2addr v1, v0

    .line 55
    return v1
.end method

.method public final S()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->R()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->s:F

    .line 10
    .line 11
    add-float/2addr v0, v1

    .line 12
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t:F

    .line 13
    .line 14
    add-float/2addr v0, v1

    .line 15
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r:F

    .line 16
    .line 17
    add-float/2addr v0, v1

    .line 18
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 19
    .line 20
    invoke-virtual {v1}, Ltb/l;->z()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    int-to-float v1, v1

    .line 25
    add-float/2addr v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q:F

    .line 28
    .line 29
    const/high16 v1, 0x40a00000    # 5.0f

    .line 30
    .line 31
    mul-float v0, v0, v1

    .line 32
    .line 33
    :goto_0
    return v0
.end method

.method public final T(Ltb/x;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->F(Ltb/x;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->U(Ltb/x;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final U(Ltb/x;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x7

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Ltb/x;->e:Ltb/x;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 16
    .line 17
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 18
    .line 19
    iget v0, p1, Lmb/b;->b:I

    .line 20
    .line 21
    iget p1, p1, Lmb/b;->c:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object v0, Ltb/x;->f:Ltb/x;

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 32
    .line 33
    iget-object p1, p1, Lmb/j;->d:Lmb/b;

    .line 34
    .line 35
    iget v0, p1, Lmb/b;->b:I

    .line 36
    .line 37
    iget p1, p1, Lmb/b;->c:I

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p1, Ltb/x;->b:Ltb/w;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    if-eq v0, v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->D()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 60
    .line 61
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 62
    .line 63
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 69
    .line 70
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 71
    .line 72
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_0
    const-string v3, "pos"

    .line 77
    .line 78
    invoke-static {v0, v3}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p1, Ltb/x;->a:Lte/p;

    .line 82
    .line 83
    invoke-interface {v3, p0, v0}, Lte/p;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lmb/b;

    .line 88
    .line 89
    sget-object v3, Ltb/x;->i:Ltb/x;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    if-ne p1, v3, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    neg-int v3, v3

    .line 101
    int-to-float v3, v3

    .line 102
    invoke-virtual {p1, v4, v3, v2}, Ltb/u;->j(FFZ)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    sget-object v3, Ltb/x;->j:Ltb/x;

    .line 107
    .line 108
    if-ne p1, v3, :cond_5

    .line 109
    .line 110
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-float v3, v3

    .line 117
    invoke-virtual {p1, v4, v3, v2}, Ltb/u;->j(FFZ)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    iget p1, v0, Lmb/b;->b:I

    .line 121
    .line 122
    iget v0, v0, Lmb/b;->c:I

    .line 123
    .line 124
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final V()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x1:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->G(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 10
    .line 11
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x1:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 12
    .line 13
    iget v2, v2, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->p0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->o0()F

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 25
    .line 26
    iget-object v0, v0, Ltb/f;->b:Lmb/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Lmb/d;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final W(I)V
    .locals 1

    .line 1
    new-instance v0, Ldb/x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ldb/x;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ldb/p;->a(Lbi/a;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorRange()Lmb/o;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final X()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lsb/h;->a(Landroid/content/ClipData;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v0, v2}, Ltb/f;->commitText(Ljava/lang/CharSequence;I)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_2
    return-void
.end method

.method public final Y(Ljava/lang/Runnable;J)V
    .locals 3

    .line 1
    sget-object v0, Lsb/c;->a:Lsb/c;

    .line 2
    .line 3
    new-instance v1, Ltb/c;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Ltb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Ljava/lang/Runnable;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Z(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lsb/c;->a:Lsb/c;

    .line 2
    .line 3
    new-instance v1, Ltb/c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Ltb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Ljava/lang/Runnable;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final a0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 2
    .line 3
    iget-object v1, v0, Lmb/g;->i:Lmb/w;

    .line 4
    .line 5
    iget-boolean v2, v1, Lmb/w;->b:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget v2, v1, Lmb/w;->f:I

    .line 10
    .line 11
    iget-object v3, v1, Lmb/w;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v2, v4, :cond_0

    .line 18
    .line 19
    iget-boolean v2, v1, Lmb/w;->g:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v1, Lmb/w;->g:Z

    .line 25
    .line 26
    iget v4, v1, Lmb/w;->f:I

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lmb/q;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Lmb/q;->c(Lmb/g;)V

    .line 35
    .line 36
    .line 37
    iget v0, v1, Lmb/w;->f:I

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    iput v0, v1, Lmb/w;->f:I

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, v1, Lmb/w;->g:Z

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b(Lmb/g;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 7
    .line 8
    check-cast p1, Ldc/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Ldc/c;->d()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 14
    .line 15
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M:Z

    .line 28
    .line 29
    return-void
.end method

.method public final b0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->X0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c(Lmb/g;IIIILjava/lang/CharSequence;)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move/from16 v8, p2

    .line 3
    .line 4
    move/from16 v9, p4

    .line 5
    .line 6
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 7
    .line 8
    iget-object v1, v0, Lyb/b;->a:Landroidx/room/s;

    .line 9
    .line 10
    const/4 v10, 0x1

    .line 11
    const/4 v11, 0x0

    .line 12
    if-eq v8, v9, :cond_8

    .line 13
    .line 14
    sub-int v2, v9, v8

    .line 15
    .line 16
    iget-object v3, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, La0/n;

    .line 19
    .line 20
    if-ne v2, v10, :cond_3

    .line 21
    .line 22
    if-ltz v8, :cond_1

    .line 23
    .line 24
    iget v4, v3, La0/n;->b:I

    .line 25
    .line 26
    if-gt v8, v4, :cond_2

    .line 27
    .line 28
    add-int/2addr v4, v10

    .line 29
    invoke-virtual {v3, v4}, La0/n;->a(I)V

    .line 30
    .line 31
    .line 32
    iget-object v4, v3, La0/n;->a:[I

    .line 33
    .line 34
    iget v5, v3, La0/n;->b:I

    .line 35
    .line 36
    if-eq v8, v5, :cond_0

    .line 37
    .line 38
    add-int/lit8 v6, v8, 0x1

    .line 39
    .line 40
    invoke-static {v6, v8, v4, v4, v5}, Lje/i;->e0(II[I[II)V

    .line 41
    .line 42
    .line 43
    :cond_0
    aput v11, v4, v8

    .line 44
    .line 45
    iget v4, v3, La0/n;->b:I

    .line 46
    .line 47
    add-int/2addr v4, v10

    .line 48
    iput v4, v3, La0/n;->b:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 55
    .line 56
    const-string v1, "Index must be between 0 and size"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_3
    new-array v4, v2, [I

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    if-ltz v8, :cond_7

    .line 68
    .line 69
    iget v5, v3, La0/n;->b:I

    .line 70
    .line 71
    if-gt v8, v5, :cond_7

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    add-int/2addr v5, v2

    .line 77
    invoke-virtual {v3, v5}, La0/n;->a(I)V

    .line 78
    .line 79
    .line 80
    iget-object v5, v3, La0/n;->a:[I

    .line 81
    .line 82
    iget v6, v3, La0/n;->b:I

    .line 83
    .line 84
    if-eq v8, v6, :cond_5

    .line 85
    .line 86
    add-int v12, v8, v2

    .line 87
    .line 88
    invoke-static {v12, v8, v5, v5, v6}, Lje/i;->e0(II[I[II)V

    .line 89
    .line 90
    .line 91
    :cond_5
    const/16 v6, 0xc

    .line 92
    .line 93
    invoke-static {v8, v11, v4, v5, v6}, Lje/i;->g0(II[I[II)V

    .line 94
    .line 95
    .line 96
    iget v4, v3, La0/n;->b:I

    .line 97
    .line 98
    add-int/2addr v4, v2

    .line 99
    iput v4, v3, La0/n;->b:I

    .line 100
    .line 101
    :goto_0
    iget-object v1, v1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_9

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lyb/a;

    .line 120
    .line 121
    iget v4, v3, Lyb/a;->a:I

    .line 122
    .line 123
    if-le v4, v8, :cond_6

    .line 124
    .line 125
    add-int/2addr v4, v2

    .line 126
    iput v4, v3, Lyb/a;->a:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 130
    .line 131
    const-string v1, ""

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 141
    .line 142
    const/16 v2, 0x1d

    .line 143
    .line 144
    if-lt v1, v2, :cond_c

    .line 145
    .line 146
    iget-object v0, v0, Lyb/b;->b:Ls4/a;

    .line 147
    .line 148
    if-eqz v0, :cond_c

    .line 149
    .line 150
    iget-object v0, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_c

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lyb/c;

    .line 169
    .line 170
    iget v2, v1, Lyb/c;->a:I

    .line 171
    .line 172
    if-ne v2, v8, :cond_b

    .line 173
    .line 174
    iput-boolean v10, v1, Lyb/c;->c:Z

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_b
    if-le v2, v8, :cond_a

    .line 178
    .line 179
    sub-int v3, v9, v8

    .line 180
    .line 181
    add-int/2addr v3, v2

    .line 182
    iput v3, v1, Lyb/c;->a:I

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_c
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 186
    .line 187
    invoke-virtual {v0}, Ltb/l;->C()V

    .line 188
    .line 189
    .line 190
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 196
    .line 197
    invoke-virtual {v0}, Lmb/g;->n()Lmb/a;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move/from16 v3, p3

    .line 202
    .line 203
    invoke-virtual {v0, v8, v3}, Lmb/a;->A(II)Lmb/b;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 208
    .line 209
    invoke-virtual {v0}, Lmb/g;->n()Lmb/a;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move/from16 v5, p5

    .line 214
    .line 215
    invoke-virtual {v0, v9, v5}, Lmb/a;->A(II)Lmb/b;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 220
    .line 221
    move-object v1, p1

    .line 222
    move/from16 v2, p2

    .line 223
    .line 224
    move/from16 v3, p3

    .line 225
    .line 226
    move/from16 v4, p4

    .line 227
    .line 228
    move/from16 v5, p5

    .line 229
    .line 230
    move-object/from16 v6, p6

    .line 231
    .line 232
    invoke-interface/range {v0 .. v6}, Lmb/i;->c(Lmb/g;IIIILjava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 236
    .line 237
    iget-wide v3, v0, Ltb/l;->z:J

    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    move/from16 v1, p2

    .line 241
    .line 242
    move/from16 v2, p4

    .line 243
    .line 244
    invoke-virtual/range {v0 .. v5}, Ltb/l;->c(IIJZ)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->s()V

    .line 248
    .line 249
    .line 250
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 256
    .line 257
    invoke-virtual {v0}, Ltb/u;->m()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_d

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_d
    const-wide/16 v1, 0x0

    .line 265
    .line 266
    iput-wide v1, v0, Ltb/u;->q:J

    .line 267
    .line 268
    iget-object v0, v0, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 271
    .line 272
    .line 273
    :goto_3
    iget-boolean v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->G:Z

    .line 274
    .line 275
    if-eqz v0, :cond_e

    .line 276
    .line 277
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 278
    .line 279
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_e

    .line 284
    .line 285
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 286
    .line 287
    iget-object v0, v0, Ltb/f;->b:Lmb/d;

    .line 288
    .line 289
    invoke-virtual {v0}, Lmb/d;->a()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_e

    .line 294
    .line 295
    iget v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 296
    .line 297
    if-nez v0, :cond_e

    .line 298
    .line 299
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 300
    .line 301
    check-cast v0, Ldc/c;

    .line 302
    .line 303
    invoke-virtual {v0}, Ldc/c;->c()V

    .line 304
    .line 305
    .line 306
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 307
    .line 308
    check-cast v0, Ldc/c;

    .line 309
    .line 310
    invoke-virtual {v0}, Ldc/c;->e()V

    .line 311
    .line 312
    .line 313
    :cond_e
    iget-boolean v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->M:Z

    .line 314
    .line 315
    if-eqz v0, :cond_f

    .line 316
    .line 317
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 318
    .line 319
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 320
    .line 321
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto :goto_4

    .line 326
    :cond_f
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 327
    .line 328
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 329
    .line 330
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :goto_4
    iput-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 335
    .line 336
    new-instance v8, Ldb/d;

    .line 337
    .line 338
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 339
    .line 340
    iget-object v0, v0, Lmb/g;->i:Lmb/w;

    .line 341
    .line 342
    iget-boolean v6, v0, Lmb/w;->g:Z

    .line 343
    .line 344
    const/4 v2, 0x2

    .line 345
    move-object v0, v8

    .line 346
    move-object v1, p0

    .line 347
    move-object v3, v12

    .line 348
    move-object v4, v13

    .line 349
    move-object/from16 v5, p6

    .line 350
    .line 351
    invoke-direct/range {v0 .. v6}, Ldb/d;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;ILmb/b;Lmb/b;Ljava/lang/CharSequence;Z)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 355
    .line 356
    invoke-virtual {v0, v8}, Ldb/p;->a(Lbi/a;)I

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->W(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12}, Lmb/b;->a()Lmb/b;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v13}, Lmb/b;->a()Lmb/b;

    .line 366
    .line 367
    .line 368
    iput-boolean v11, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->E:Z

    .line 369
    .line 370
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->n0()V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method public final c0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Ltb/f;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    iget v2, v1, Lmb/g;->e:I

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lmb/g;->k()Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v0, Ltb/f;->b:Lmb/d;

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    iput v2, v1, Lmb/d;->c:I

    .line 23
    .line 24
    iput v2, v1, Lmb/d;->a:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, v1, Lmb/d;->b:Z

    .line 28
    .line 29
    iput-boolean v2, v0, Ltb/f;->c:Z

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeScroll()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/u;->b:Ltb/m;

    .line 4
    .line 5
    iget-object v1, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ltb/m;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz v1, :cond_9

    .line 17
    .line 18
    iget-object v0, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartX()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v1, v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartY()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eq v1, v4, :cond_4

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    iput v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H1:F

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    int-to-float v1, v1

    .line 60
    iput v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->I1:F

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartX()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    sub-int/2addr v1, v4

    .line 71
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    int-to-float v1, v1

    .line 76
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/high16 v5, 0x40a00000    # 5.0f

    .line 81
    .line 82
    mul-float v4, v4, v5

    .line 83
    .line 84
    cmpl-float v1, v1, v4

    .line 85
    .line 86
    if-lez v1, :cond_2

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 v1, 0x0

    .line 91
    :goto_0
    iput-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K1:Z

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getStartY()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int/2addr v1, v4

    .line 102
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    int-to-float v1, v1

    .line 107
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    mul-float v4, v4, v5

    .line 112
    .line 113
    cmpl-float v1, v1, v4

    .line 114
    .line 115
    if-lez v1, :cond_3

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/4 v1, 0x0

    .line 120
    :goto_1
    iput-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->J1:Z

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/4 v4, 0x0

    .line 127
    if-gtz v1, :cond_5

    .line 128
    .line 129
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H1:F

    .line 130
    .line 131
    cmpg-float v1, v1, v4

    .line 132
    .line 133
    if-gtz v1, :cond_5

    .line 134
    .line 135
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    iget-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K1:Z

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    float-to-int v5, v5

    .line 154
    invoke-virtual {v1, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 158
    .line 159
    iput-boolean v2, v1, Ltb/u;->j:Z

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-lt v5, v1, :cond_6

    .line 171
    .line 172
    iget v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H1:F

    .line 173
    .line 174
    int-to-float v1, v1

    .line 175
    cmpl-float v1, v5, v1

    .line 176
    .line 177
    if-ltz v1, :cond_6

    .line 178
    .line 179
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    iget-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K1:Z

    .line 188
    .line 189
    if-eqz v1, :cond_6

    .line 190
    .line 191
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    float-to-int v5, v5

    .line 198
    invoke-virtual {v1, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 202
    .line 203
    iput-boolean v3, v1, Ltb/u;->j:Z

    .line 204
    .line 205
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-gtz v1, :cond_7

    .line 210
    .line 211
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->I1:F

    .line 212
    .line 213
    cmpg-float v1, v1, v4

    .line 214
    .line 215
    if-gtz v1, :cond_7

    .line 216
    .line 217
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_7

    .line 224
    .line 225
    iget-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->J1:Z

    .line 226
    .line 227
    if-eqz v1, :cond_7

    .line 228
    .line 229
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    float-to-int v0, v0

    .line 236
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 240
    .line 241
    iput-boolean v2, v0, Ltb/u;->i:Z

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_7
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-lt v2, v1, :cond_8

    .line 253
    .line 254
    iget v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->I1:F

    .line 255
    .line 256
    int-to-float v1, v1

    .line 257
    cmpl-float v1, v2, v1

    .line 258
    .line 259
    if-ltz v1, :cond_8

    .line 260
    .line 261
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_8

    .line 268
    .line 269
    iget-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->J1:Z

    .line 270
    .line 271
    if-eqz v1, :cond_8

    .line 272
    .line 273
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    float-to-int v0, v0

    .line 280
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 284
    .line 285
    iput-boolean v3, v0, Ltb/u;->i:Z

    .line 286
    .line 287
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 288
    .line 289
    .line 290
    :cond_9
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final computeVerticalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 12
    .line 13
    iget v1, v1, Ltb/e;->h:I

    .line 14
    .line 15
    if-lez v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v0, v2}, Ltb/a;->j(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 25
    .line 26
    iget-object v3, v2, Lmb/j;->c:Lmb/b;

    .line 27
    .line 28
    iget v3, v3, Lmb/b;->a:I

    .line 29
    .line 30
    iget-object v2, v2, Lmb/j;->d:Lmb/b;

    .line 31
    .line 32
    iget v2, v2, Lmb/b;->a:I

    .line 33
    .line 34
    invoke-static {v0, v3, v2}, Ltb/a;->i(Landroid/view/accessibility/AccessibilityNodeInfo;II)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lm0/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lm0/h;->z(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-lez v1, :cond_3

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget v3, v2, Lmb/g;->d:I

    .line 52
    .line 53
    if-gt v3, v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lmb/g;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lmb/g;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    move v1, v3

    .line 79
    :cond_1
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v2, v3, v1}, Lmb/g;->subSequence(II)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_2
    :goto_0
    check-cast v2, Lmb/g;

    .line 85
    .line 86
    invoke-virtual {v2}, Lmb/g;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ltb/b;->z()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ltb/b;->C()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ltb/b;->D()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ltb/b;->j()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string v1, "size must be bigger than 0"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-lez v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/16 v3, 0x17

    .line 148
    .line 149
    if-lez v1, :cond_5

    .line 150
    .line 151
    invoke-static {}, Lua/t7;->z()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v0, v4}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 156
    .line 157
    .line 158
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    if-lt v4, v3, :cond_5

    .line 161
    .line 162
    invoke-static {}, Lr8/a;->v()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-static {v0, v4}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    if-ge v1, v2, :cond_6

    .line 170
    .line 171
    invoke-static {}, Lua/t7;->j()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 176
    .line 177
    .line 178
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .line 180
    if-lt v1, v3, :cond_6

    .line 181
    .line 182
    invoke-static {}, Lr8/a;->x()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 187
    .line 188
    .line 189
    :cond_6
    return-object v0
.end method

.method public final d0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lmb/g;->o(I)Lmb/h;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v1, v1, Lmb/h;->c:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, v2, v2, v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iget-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t0:Z

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 24
    .line 25
    invoke-virtual {v1}, Ltb/u;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScroller()Ltb/m;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    :cond_1
    if-gez v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScroller()Ltb/m;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ne v0, v1, :cond_4

    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iput v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m:I

    .line 73
    .line 74
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t0:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    return p1
.end method

.method public final e0(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 2
    .line 3
    iget-boolean v0, v0, Ltb/e;->q:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p1, p2, v0}, Lsb/h;->d(Lmb/g;IIZ)Lmb/o;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p1, Lmb/o;->a:Lmb/b;

    .line 14
    .line 15
    iget v1, p2, Lmb/b;->b:I

    .line 16
    .line 17
    iget v2, p2, Lmb/b;->c:I

    .line 18
    .line 19
    iget-object p1, p1, Lmb/o;->b:Lmb/b;

    .line 20
    .line 21
    iget v3, p1, Lmb/b;->b:I

    .line 22
    .line 23
    iget v4, p1, Lmb/b;->c:I

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v5, 0x5

    .line 27
    move-object v0, p0

    .line 28
    invoke-virtual/range {v0 .. v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final f0(FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_0

    .line 5
    .line 6
    cmpg-float v0, p2, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->s:F

    .line 11
    .line 12
    iput p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t:F

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "margin can not be under zero"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final g0(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getBlockLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w:F

    .line 2
    .line 3
    return v0
.end method

.method public getClipboardManager()Landroid/content/ClipboardManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getColorScheme()Lzb/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j1:Lzb/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentCursorBlock()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getCursor()Lmb/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCursorAnimator()Lcc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCursorBlink()Ltb/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCursorRange()Lmb/o;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    new-instance v1, Lmb/o;

    .line 4
    .line 5
    iget-object v2, v0, Lmb/j;->c:Lmb/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v2, v0}, Lmb/o;-><init>(Lmb/b;Lmb/b;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public getDiagnosticIndicatorStyle()Lcc/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->n1:Lcc/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiagnostics()Lib/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getDividerMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public getDividerMarginRight()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public getDpUnit()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q:F

    .line 2
    .line 3
    return v0
.end method

.method public getEdgeEffectColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-static {v0}, Ltb/b;->c(Landroid/widget/EdgeEffect;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getEditable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public getEditorLanguage()Lgb/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventHandler()Ltb/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraArguments()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->D1:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstVisibleLine()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleRow()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Lwb/d;->p(I)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getFirstVisibleRow()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-int/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getFormatTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGraphPaint()Leb/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->g:Leb/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public getHandleStyle()Lcc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A1:Lcc/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHighlightTexts()Ljb/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getHorizontalEdgeEffect()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHorizontalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->s:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object v0
.end method

.method public getHorizontalScrollbarTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->t:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object v0
.end method

.method public getInlayHintRenderers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N1:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getInlayHints()Lkb/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getInsertHandleDescriptor()Lcc/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->d1:Lcc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInsertSelectionWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v:F

    .line 2
    .line 3
    return v0
.end method

.method public getKeyMetaStates()Lqb/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a:Lkf/d;

    .line 2
    .line 3
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lqb/a;

    .line 6
    .line 7
    return-object v0
.end method

.method public getLastVisibleLine()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleRow()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Lwb/d;->p(I)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    return v0
.end method

.method public getLastVisibleRow()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lwb/d;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    div-int/2addr v2, v1

    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public getLayout()Lwb/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeftHandleDescriptor()Lcc/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b1:Lcc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getLineInfoTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z:F

    .line 2
    .line 3
    return v0
.end method

.method public getLineNumberAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r1:Landroid/graphics/Paint$Align;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineNumberMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C:F

    .line 2
    .line 3
    return v0
.end method

.method public getLineNumberMetrics()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 4
    .line 5
    return-object v0
.end method

.method public getLineNumberTipTextProvider()Lcc/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k1:Lcc/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineSeparator()Lmb/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->L1:Lmb/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B:F

    .line 2
    .line 3
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A:F

    .line 2
    .line 3
    return v0
.end method

.method public getLineSpacingPixels()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 4
    .line 5
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    int-to-float v0, v1

    .line 11
    iget v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A:F

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    sub-float/2addr v1, v2

    .line 16
    mul-float v1, v1, v0

    .line 17
    .line 18
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B:F

    .line 19
    .line 20
    add-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    return v0
.end method

.method public getLnPanelPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->P:I

    .line 2
    .line 3
    return v0
.end method

.method public getLnPanelPositionMode()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->R:I

    .line 2
    .line 3
    return v0
.end method

.method public getNonPrintablePaintingFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/u;->b:Ltb/m;

    .line 4
    .line 5
    iget-object v0, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/u;->b:Ltb/m;

    .line 4
    .line 5
    iget-object v0, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getOtherPaint()Leb/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->c:Leb/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public getProps()Ltb/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderContext()Lyb/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderer()Ltb/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRightHandleDescriptor()Lcc/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->c1:Lcc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRowHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 4
    .line 5
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSpacingPixels()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v1

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getRowHeightOfText()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 4
    .line 5
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    return v1
.end method

.method public getScrollMaxX()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lwb/d;->r()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-float/2addr v1, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    const/high16 v2, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v0, v2

    .line 21
    sub-float/2addr v1, v0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    float-to-int v0, v0

    .line 28
    return v0
.end method

.method public getScrollMaxY()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 6
    .line 7
    invoke-interface {v1}, Lwb/d;->d()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    .line 15
    const/4 v2, -0x2

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iget v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->D:F

    .line 27
    .line 28
    sub-float/2addr v2, v3

    .line 29
    mul-float v2, v2, v0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v2, v0

    .line 37
    :goto_1
    float-to-int v0, v2

    .line 38
    sub-int/2addr v1, v0

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public getScroller()Ltb/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/u;->b:Ltb/m;

    .line 4
    .line 5
    return-object v0
.end method

.method public getSearcher()Ltb/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->y1:Ltb/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectingTarget()Lmb/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 18
    .line 19
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 27
    .line 28
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public getSnippetController()Lac/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M1:Lac/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStyles()Ljb/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getTabWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getText()Lmb/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextBorderWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x:F

    .line 2
    .line 3
    return v0
.end method

.method public getTextLetterSpacing()F
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-static {v0}, Ltb/b;->a(Leb/c;)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTextPaint()Leb/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTextSizePx()F
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTypefaceLineNumber()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->c:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTypefaceText()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getVerticalEdgeEffect()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerticalExtraSpaceFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->D:F

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->u:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object v0
.end method

.method public getVerticalScrollbarTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->v:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h0(IIIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 2
    .line 3
    check-cast v0, Ldc/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Ldc/c;->d()V

    .line 6
    .line 7
    .line 8
    if-lez p2, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 11
    .line 12
    add-int/lit8 v1, p2, -0x1

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lmb/g;->c(II)C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, p2, 0x1

    .line 25
    .line 26
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lmb/g;->o(I)Lmb/h;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v1, v1, Lmb/h;->c:I

    .line 33
    .line 34
    if-le v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p2, v0

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 39
    .line 40
    iget-object v1, v0, Lmb/j;->b:Lmb/a;

    .line 41
    .line 42
    invoke-virtual {v1, p1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 51
    .line 52
    iget-object v1, v0, Lmb/j;->b:Lmb/a;

    .line 53
    .line 54
    invoke-virtual {v1, p1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Lmb/j;->d:Lmb/b;

    .line 63
    .line 64
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M0:Z

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->n0()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->p0()V

    .line 75
    .line 76
    .line 77
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->G:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 82
    .line 83
    invoke-virtual {v0}, Ltb/u;->g()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 94
    .line 95
    check-cast v0, Ldc/c;

    .line 96
    .line 97
    invoke-virtual {v0}, Ldc/c;->c()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 101
    .line 102
    check-cast v0, Ldc/c;

    .line 103
    .line 104
    invoke-virtual {v0}, Ldc/c;->e()V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 108
    .line 109
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 110
    .line 111
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 116
    .line 117
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 118
    .line 119
    invoke-virtual {v0}, Lyb/b;->a()V

    .line 120
    .line 121
    .line 122
    if-eqz p4, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->C(II)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {p0, p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->W(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final i0(IIII)V
    .locals 7

    .line 1
    const/4 v6, 0x1

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final isHorizontalScrollBarEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->P0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isVerticalScrollBarEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->O0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j(Lmb/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lmb/i;->j(Lmb/g;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j0(IIIIIZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Lmb/g;->l(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p3, p4}, Lmb/g;->l(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p5, p6}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-le v0, v1, :cond_1

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move v1, p3

    .line 30
    move v2, p4

    .line 31
    move v3, p1

    .line 32
    move v4, p2

    .line 33
    move v5, p5

    .line 34
    move v6, p6

    .line 35
    invoke-virtual/range {v0 .. v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 40
    .line 41
    check-cast v0, Ldc/c;

    .line 42
    .line 43
    invoke-virtual {v0}, Ldc/c;->a()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 47
    .line 48
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 49
    .line 50
    .line 51
    if-lez p2, :cond_3

    .line 52
    .line 53
    add-int/lit8 v0, p2, -0x1

    .line 54
    .line 55
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 56
    .line 57
    invoke-virtual {v1, p1, v0}, Lmb/g;->c(II)C

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    add-int/lit8 v0, p2, 0x1

    .line 68
    .line 69
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lmb/g;->o(I)Lmb/h;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget v1, v1, Lmb/h;->c:I

    .line 76
    .line 77
    if-le v0, v1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move p2, v0

    .line 81
    :cond_3
    :goto_0
    if-lez p4, :cond_5

    .line 82
    .line 83
    add-int/lit8 v0, p4, -0x1

    .line 84
    .line 85
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 86
    .line 87
    invoke-virtual {v1, p3, v0}, Lmb/g;->c(II)C

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    add-int/lit8 v0, p4, 0x1

    .line 98
    .line 99
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 100
    .line 101
    invoke-virtual {v1, p3}, Lmb/g;->o(I)Lmb/h;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget v1, v1, Lmb/h;->c:I

    .line 106
    .line 107
    if-le v0, v1, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move p4, v0

    .line 111
    :cond_5
    :goto_1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 112
    .line 113
    iget-object v1, v0, Lmb/j;->b:Lmb/a;

    .line 114
    .line 115
    invoke-virtual {v1, p1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 124
    .line 125
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 126
    .line 127
    iget-object v1, v0, Lmb/j;->b:Lmb/a;

    .line 128
    .line 129
    invoke-virtual {v1, p3, p4}, Lmb/a;->A(II)Lmb/b;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, v0, Lmb/j;->d:Lmb/b;

    .line 138
    .line 139
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->n0()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->p0()V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 146
    .line 147
    invoke-virtual {v0}, Lyb/b;->a()V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 151
    .line 152
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 153
    .line 154
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 167
    .line 168
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 169
    .line 170
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 183
    .line 184
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 185
    .line 186
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 191
    .line 192
    :cond_6
    if-eqz p6, :cond_8

    .line 193
    .line 194
    const/4 p6, 0x6

    .line 195
    if-ne p5, p6, :cond_7

    .line 196
    .line 197
    invoke-virtual {p0, p1, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->C(II)V

    .line 198
    .line 199
    .line 200
    const-wide/16 p1, 0x0

    .line 201
    .line 202
    iput-wide p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->o1:J

    .line 203
    .line 204
    invoke-virtual {p0, p3, p4}, Lio/github/rosemoe/sora/widget/CodeEditor;->C(II)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    invoke-virtual {p0, p3, p4}, Lio/github/rosemoe/sora/widget/CodeEditor;->C(II)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-virtual {p0, p5}, Lio/github/rosemoe/sora/widget/CodeEditor;->W(I)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final k(Lmb/g;IIIILjava/lang/StringBuilder;)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move v8, p2

    .line 3
    move/from16 v4, p4

    .line 4
    .line 5
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 6
    .line 7
    iget-object v1, v0, Lyb/b;->a:Landroidx/room/s;

    .line 8
    .line 9
    if-eq v8, v4, :cond_6

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, La0/n;

    .line 14
    .line 15
    invoke-virtual {v2, p2, v4}, La0/n;->c(II)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    const-string v2, "<this>"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lje/k;->k0(Ljava/util/List;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-ltz v2, :cond_3

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    move-object v9, v6

    .line 40
    check-cast v9, Lyb/a;

    .line 41
    .line 42
    const-string v10, "it"

    .line 43
    .line 44
    invoke-static {v9, v10}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v9, v9, Lyb/a;->a:I

    .line 48
    .line 49
    if-gt v8, v9, :cond_0

    .line 50
    .line 51
    if-gt v9, v4, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    if-eq v5, v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    :goto_1
    if-eq v3, v2, :cond_2

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v3, v5

    .line 67
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-ge v3, v2, :cond_4

    .line 72
    .line 73
    invoke-static {v1}, Lje/k;->k0(Ljava/util/List;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-gt v3, v2, :cond_4

    .line 78
    .line 79
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    if-eq v2, v3, :cond_4

    .line 83
    .line 84
    add-int/lit8 v2, v2, -0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lyb/a;

    .line 102
    .line 103
    iget v3, v2, Lyb/a;->a:I

    .line 104
    .line 105
    if-le v3, v4, :cond_5

    .line 106
    .line 107
    sub-int v5, v4, v8

    .line 108
    .line 109
    sub-int/2addr v3, v5

    .line 110
    iput v3, v2, Lyb/a;->a:I

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v2, 0x1d

    .line 119
    .line 120
    const/4 v9, 0x1

    .line 121
    if-lt v1, v2, :cond_c

    .line 122
    .line 123
    iget-object v0, v0, Lyb/b;->b:Ls4/a;

    .line 124
    .line 125
    if-eqz v0, :cond_c

    .line 126
    .line 127
    new-instance v1, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v2, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_b

    .line 145
    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Lyb/c;

    .line 151
    .line 152
    iget v6, v5, Lyb/c;->a:I

    .line 153
    .line 154
    if-ne v6, v8, :cond_9

    .line 155
    .line 156
    iput-boolean v9, v5, Lyb/c;->c:Z

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_9
    add-int/lit8 v10, v8, 0x1

    .line 160
    .line 161
    if-gt v10, v6, :cond_a

    .line 162
    .line 163
    if-gt v6, v4, :cond_a

    .line 164
    .line 165
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    iget-object v5, v5, Lyb/c;->b:Landroid/graphics/RenderNode;

    .line 169
    .line 170
    invoke-static {v5}, Lwa/f;->i(Landroid/graphics/RenderNode;)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_a
    if-le v6, v4, :cond_8

    .line 175
    .line 176
    sub-int v10, v4, v8

    .line 177
    .line 178
    sub-int/2addr v6, v10

    .line 179
    iput v6, v5, Lyb/c;->a:I

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_b
    invoke-static {v1}, Lje/j;->o0(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 187
    .line 188
    .line 189
    iget-object v0, v0, Ls4/a;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Ljava/util/Stack;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    :cond_c
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 197
    .line 198
    invoke-virtual {v0}, Ltb/l;->C()V

    .line 199
    .line 200
    .line 201
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 207
    .line 208
    invoke-virtual {v0}, Lmb/g;->n()Lmb/a;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move v3, p3

    .line 213
    invoke-virtual {v0, p2, p3}, Lmb/a;->A(II)Lmb/b;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v10}, Lmb/b;->a()Lmb/b;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    move/from16 v5, p5

    .line 222
    .line 223
    iput v5, v11, Lmb/b;->c:I

    .line 224
    .line 225
    iput v4, v11, Lmb/b;->b:I

    .line 226
    .line 227
    iget v0, v10, Lmb/b;->a:I

    .line 228
    .line 229
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    add-int/2addr v1, v0

    .line 234
    iput v1, v11, Lmb/b;->a:I

    .line 235
    .line 236
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 237
    .line 238
    move-object v1, p1

    .line 239
    move v2, p2

    .line 240
    move v3, p3

    .line 241
    move/from16 v4, p4

    .line 242
    .line 243
    move/from16 v5, p5

    .line 244
    .line 245
    move-object/from16 v6, p6

    .line 246
    .line 247
    invoke-interface/range {v0 .. v6}, Lmb/i;->k(Lmb/g;IIIILjava/lang/StringBuilder;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 251
    .line 252
    add-int/lit8 v2, v8, 0x1

    .line 253
    .line 254
    iget-wide v3, v0, Ltb/l;->z:J

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    move v1, p2

    .line 258
    invoke-virtual/range {v0 .. v5}, Ltb/l;->c(IIJZ)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->s()V

    .line 262
    .line 263
    .line 264
    iget-boolean v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->G:Z

    .line 265
    .line 266
    if-eqz v0, :cond_d

    .line 267
    .line 268
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 269
    .line 270
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_d

    .line 275
    .line 276
    iget-boolean v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->E:Z

    .line 277
    .line 278
    if-nez v0, :cond_d

    .line 279
    .line 280
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 281
    .line 282
    iget-object v0, v0, Ltb/f;->b:Lmb/d;

    .line 283
    .line 284
    invoke-virtual {v0}, Lmb/d;->a()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_d

    .line 289
    .line 290
    iget v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->S:I

    .line 291
    .line 292
    if-nez v0, :cond_d

    .line 293
    .line 294
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 295
    .line 296
    check-cast v0, Ldc/c;

    .line 297
    .line 298
    invoke-virtual {v0}, Ldc/c;->c()V

    .line 299
    .line 300
    .line 301
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 302
    .line 303
    check-cast v0, Ldc/c;

    .line 304
    .line 305
    invoke-virtual {v0}, Ldc/c;->e()V

    .line 306
    .line 307
    .line 308
    :cond_d
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-boolean v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->M:Z

    .line 314
    .line 315
    if-eqz v0, :cond_e

    .line 316
    .line 317
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 318
    .line 319
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 320
    .line 321
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto :goto_5

    .line 326
    :cond_e
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 327
    .line 328
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 329
    .line 330
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :goto_5
    iput-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 335
    .line 336
    new-instance v8, Ldb/d;

    .line 337
    .line 338
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 339
    .line 340
    iget-object v0, v0, Lmb/g;->i:Lmb/w;

    .line 341
    .line 342
    iget-boolean v6, v0, Lmb/w;->g:Z

    .line 343
    .line 344
    const/4 v2, 0x3

    .line 345
    move-object v0, v8

    .line 346
    move-object v1, p0

    .line 347
    move-object v3, v10

    .line 348
    move-object v4, v11

    .line 349
    move-object/from16 v5, p6

    .line 350
    .line 351
    invoke-direct/range {v0 .. v6}, Ldb/d;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;ILmb/b;Lmb/b;Ljava/lang/CharSequence;Z)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 355
    .line 356
    invoke-virtual {v0, v8}, Ldb/p;->a(Lbi/a;)I

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->W(I)V

    .line 360
    .line 361
    .line 362
    iget-boolean v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->E:Z

    .line 363
    .line 364
    if-nez v0, :cond_10

    .line 365
    .line 366
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->n0()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 370
    .line 371
    .line 372
    iget-object v0, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 373
    .line 374
    invoke-virtual {v0}, Ltb/u;->m()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-nez v1, :cond_f

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_f
    const-wide/16 v1, 0x0

    .line 382
    .line 383
    iput-wide v1, v0, Ltb/u;->q:J

    .line 384
    .line 385
    iget-object v0, v0, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 388
    .line 389
    .line 390
    :cond_10
    :goto_6
    return-void
.end method

.method public final k0(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->S0:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->S0:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 24
    .line 25
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final l0(Ljava/lang/Class;Ldb/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 2
    .line 3
    iget-object v1, v0, Lmb/g;->i:Lmb/w;

    .line 4
    .line 5
    iget-boolean v2, v1, Lmb/w;->b:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget v2, v1, Lmb/w;->f:I

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    iget-boolean v3, v1, Lmb/w;->g:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, v1, Lmb/w;->g:Z

    .line 19
    .line 20
    iget-object v4, v1, Lmb/w;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmb/q;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lmb/q;->d(Lmb/g;)V

    .line 30
    .line 31
    .line 32
    iget v0, v1, Lmb/w;->f:I

    .line 33
    .line 34
    sub-int/2addr v0, v3

    .line 35
    iput v0, v1, Lmb/w;->f:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, v1, Lmb/w;->g:Z

    .line 39
    .line 40
    iget-object v0, v2, Lmb/q;->a:Lmb/o;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    :try_start_0
    iget-object v1, v0, Lmb/o;->a:Lmb/b;

    .line 47
    .line 48
    iget v3, v1, Lmb/b;->b:I

    .line 49
    .line 50
    iget v4, v1, Lmb/b;->c:I

    .line 51
    .line 52
    iget-object v0, v0, Lmb/o;->b:Lmb/b;

    .line 53
    .line 54
    iget v5, v0, Lmb/b;->b:I

    .line 55
    .line 56
    iget v6, v0, Lmb/b;->c:I

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    const/4 v7, 0x1

    .line 60
    move-object v2, p0

    .line 61
    invoke-virtual/range {v2 .. v8}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final n0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->o0()F

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x1:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->G(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x1:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 15
    .line 16
    iget v2, v2, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 17
    .line 18
    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 22
    .line 23
    iget v0, v0, Lmb/g;->e:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-gt v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 29
    .line 30
    iget-object v0, v0, Ltb/f;->b:Lmb/d;

    .line 31
    .line 32
    invoke-virtual {v0}, Lmb/d;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->p0()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final o0()F
    .locals 12

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 4
    .line 5
    iget v1, v0, Lmb/b;->b:I

    .line 6
    .line 7
    iget v0, v0, Lmb/b;->c:I

    .line 8
    .line 9
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 10
    .line 11
    invoke-virtual {v2, v1, v0}, Lwb/c;->s(II)[F

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aget v3, v0, v2

    .line 21
    .line 22
    add-float/2addr v1, v3

    .line 23
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    sub-float/2addr v1, v3

    .line 29
    const/4 v3, 0x0

    .line 30
    aget v0, v0, v3

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    sub-float v9, v0, v4

    .line 38
    .line 39
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    sub-float v7, v9, v0

    .line 45
    .line 46
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-float v0, v0

    .line 51
    div-float v0, v7, v0

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-float v8, v0

    .line 62
    const/4 v0, 0x0

    .line 63
    cmpg-float v4, v1, v0

    .line 64
    .line 65
    if-gez v4, :cond_0

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-float v0, v0

    .line 75
    cmpl-float v0, v1, v0

    .line 76
    .line 77
    if-lez v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-float v1, v0

    .line 84
    const/4 v0, 0x0

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x1

    .line 87
    :goto_0
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 88
    .line 89
    iget-object v4, v4, Ltb/f;->b:Lmb/d;

    .line 90
    .line 91
    iget-boolean v5, v4, Lmb/d;->b:Z

    .line 92
    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    return v1

    .line 96
    :cond_2
    iget-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 97
    .line 98
    iget-boolean v5, v5, Ltb/e;->E:Z

    .line 99
    .line 100
    if-eqz v5, :cond_5

    .line 101
    .line 102
    iget-object v11, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->u1:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 103
    .line 104
    invoke-static {v11}, Ltb/b;->p(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V

    .line 105
    .line 106
    .line 107
    iget-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i1:Landroid/graphics/Matrix;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x2

    .line 117
    new-array v6, v5, [I

    .line 118
    .line 119
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    .line 121
    .line 122
    iget-object v10, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i1:Landroid/graphics/Matrix;

    .line 123
    .line 124
    aget v3, v6, v3

    .line 125
    .line 126
    int-to-float v3, v3

    .line 127
    aget v6, v6, v2

    .line 128
    .line 129
    int-to-float v6, v6

    .line 130
    invoke-virtual {v10, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    .line 132
    .line 133
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i1:Landroid/graphics/Matrix;

    .line 134
    .line 135
    invoke-static {v11, v3}, Ltb/b;->t(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 139
    .line 140
    iget-object v6, v3, Lmb/j;->c:Lmb/b;

    .line 141
    .line 142
    iget v6, v6, Lmb/b;->a:I

    .line 143
    .line 144
    iget-object v3, v3, Lmb/j;->d:Lmb/b;

    .line 145
    .line 146
    iget v3, v3, Lmb/b;->a:I

    .line 147
    .line 148
    invoke-static {v11, v6, v3}, Ltb/b;->r(Landroid/view/inputmethod/CursorAnchorInfo$Builder;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lmb/d;->a()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    iget v3, v4, Lmb/d;->a:I

    .line 158
    .line 159
    iget-object v6, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 160
    .line 161
    iget v4, v4, Lmb/d;->c:I

    .line 162
    .line 163
    invoke-virtual {v6, v3, v4}, Lmb/g;->C(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v11, v3, v4}, Ltb/b;->s(Landroid/view/inputmethod/CursorAnchorInfo$Builder;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    if-eqz v0, :cond_4

    .line 171
    .line 172
    const/4 v10, 0x1

    .line 173
    goto :goto_1

    .line 174
    :cond_4
    const/4 v10, 0x2

    .line 175
    :goto_1
    move-object v5, v11

    .line 176
    move v6, v1

    .line 177
    invoke-static/range {v5 .. v10}, Ltb/b;->q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFFI)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 181
    .line 182
    invoke-static {v11}, Ltb/b;->k(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v0, p0, v2}, Ltb/b;->u(Landroid/view/inputmethod/InputMethodManager;Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 187
    .line 188
    .line 189
    :cond_5
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldb/a;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Ldb/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ldb/p;->a(Lbi/a;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCheckIsTextEditor()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

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
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 5
    .line 6
    invoke-virtual {p1}, Ltb/u;->i()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->L:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K:Z

    .line 13
    .line 14
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 5
    .line 6
    iget-object v0, v0, Ltb/u;->H:Landroid/graphics/PointF;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 12
    .line 13
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->I(FF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    new-instance v2, Ldb/e;

    .line 20
    .line 21
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 22
    .line 23
    invoke-virtual {v3}, Lmb/g;->n()Lmb/a;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    shr-long v4, v0, v4

    .line 30
    .line 31
    long-to-int v5, v4

    .line 32
    const-wide v6, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v0, v6

    .line 38
    long-to-int v1, v0

    .line 39
    invoke-virtual {v3, v5, v1}, Lmb/a;->A(II)Lmb/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v2, p0, p1, v0}, Ldb/e;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/ContextMenu;Lmb/b;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Ldb/p;->a(Lbi/a;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->t()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->n:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v0, 0x20001

    .line 29
    .line 30
    .line 31
    :goto_0
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 35
    .line 36
    :goto_1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 47
    .line 48
    iget v0, v0, Lmb/b;->a:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    :goto_2
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 65
    .line 66
    iget v0, v0, Lmb/b;->a:I

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_3
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 71
    .line 72
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ltb/f;->getCursorCapsMode(I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 79
    .line 80
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/high16 v0, 0x12000000

    .line 86
    .line 87
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 88
    .line 89
    new-instance v0, Ldb/a;

    .line 90
    .line 91
    invoke-direct {v0, p0, p1}, Ldb/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/inputmethod/EditorInfo;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ldb/p;->a(Lbi/a;)I

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 100
    .line 101
    iget-object v0, p1, Ltb/f;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 102
    .line 103
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_4
    iget v3, v0, Lmb/g;->e:I

    .line 108
    .line 109
    if-lez v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lmb/g;->k()Z

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    iget-object v0, p1, Ltb/f;->b:Lmb/d;

    .line 116
    .line 117
    const/4 v3, -0x1

    .line 118
    iput v3, v0, Lmb/d;->c:I

    .line 119
    .line 120
    iput v3, v0, Lmb/d;->a:I

    .line 121
    .line 122
    iput-boolean v2, v0, Lmb/d;->b:Z

    .line 123
    .line 124
    iput-boolean v2, p1, Ltb/f;->c:Z

    .line 125
    .line 126
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 127
    .line 128
    iput v2, p1, Lmb/g;->e:I

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_6
    :goto_5
    return-object v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldb/a;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Ldb/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ldb/p;->a(Lbi/a;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Ltb/d;->c:Z

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 24
    .line 25
    iput-object v3, p1, Ltb/u;->L:Lmb/b;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 32
    .line 33
    iget-object v2, v0, Ltb/u;->L:Lmb/b;

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :cond_2
    iput-object v3, v0, Ltb/u;->L:Lmb/b;

    .line 40
    .line 41
    iget v0, v2, Lmb/b;->b:I

    .line 42
    .line 43
    iget v2, v2, Lmb/b;->c:I

    .line 44
    .line 45
    invoke-virtual {p0, v0, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lsb/h;->a(Landroid/content/ClipData;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Ltb/f;->commitText(Ljava/lang/CharSequence;I)Z

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 77
    .line 78
    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {p0, v0, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->I(FF)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    const/16 v0, 0x20

    .line 96
    .line 97
    shr-long v6, v4, v0

    .line 98
    .line 99
    long-to-int v0, v6

    .line 100
    const-wide v6, 0xffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    and-long/2addr v4, v6

    .line 106
    long-to-int v2, v4

    .line 107
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 108
    .line 109
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Lmb/g;->n()Lmb/a;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5, v0, v2}, Lmb/a;->A(II)Lmb/b;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, v4, Ltb/u;->L:Lmb/b;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {v0, v3, v2, p1}, Ltb/u;->k(Landroid/view/MotionEvent;FF)V

    .line 137
    .line 138
    .line 139
    :cond_5
    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 14
    .line 15
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    iget-object v3, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 21
    .line 22
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    int-to-float v3, v3

    .line 27
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, v0, Ltb/l;->G:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v0, p1}, Ltb/l;->r(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    iput-boolean v2, v0, Ltb/l;->G:Z

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->U0:Z

    .line 43
    .line 44
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 45
    .line 46
    iget-boolean v0, v0, Ltb/d;->b:Z

    .line 47
    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 51
    .line 52
    iget-object p1, p1, Ltb/u;->b:Ltb/m;

    .line 53
    .line 54
    iget-object p1, p1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    :cond_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 63
    .line 64
    iget-object p1, p1, Ltb/u;->d:Lvb/v;

    .line 65
    .line 66
    iget-object p1, p1, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 75
    .line 76
    iget-boolean p1, p1, Ltb/d;->b:Z

    .line 77
    .line 78
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->U0:Z

    .line 79
    .line 80
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 81
    .line 82
    iget-object p1, p1, Ltb/u;->d:Lvb/v;

    .line 83
    .line 84
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v0, Lha/db;

    .line 88
    .line 89
    const/16 v1, 0x14

    .line 90
    .line 91
    invoke-direct {v0, v1, p1}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    iput-boolean v2, v0, Ltb/l;->G:Z

    .line 100
    .line 101
    throw p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 8
    .line 9
    iget v0, p3, Ltb/d;->e:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    :cond_0
    iput-boolean p2, p3, Ltb/d;->c:Z

    .line 15
    .line 16
    if-eqz p2, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object p3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 23
    .line 24
    iput-boolean p2, p3, Ltb/d;->c:Z

    .line 25
    .line 26
    iput-boolean p2, p3, Ltb/d;->b:Z

    .line 27
    .line 28
    iget-object p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 29
    .line 30
    invoke-virtual {p2}, Ltb/u;->m()Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    iput-wide v0, p2, Ltb/u;->q:J

    .line 40
    .line 41
    iget-object p2, p2, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    new-instance p2, Ldb/g;

    .line 52
    .line 53
    invoke-direct {p2, p0, p1}, Ldb/g;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ldb/p;->a(Lbi/a;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Ltb/a;->l(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iput-boolean v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iput-boolean v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K:Z

    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v5, 0xb

    .line 35
    .line 36
    if-eq v0, v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v5, 0xc

    .line 43
    .line 44
    if-ne v0, v5, :cond_4

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    :cond_3
    iput-boolean v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->L:Z

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v4, 0x7

    .line 60
    if-eq v0, v4, :cond_5

    .line 61
    .line 62
    if-eq v0, v2, :cond_5

    .line 63
    .line 64
    if-eq v0, v1, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 68
    .line 69
    new-instance v1, Lha/jd;

    .line 70
    .line 71
    const/16 v2, 0x16

    .line 72
    .line 73
    invoke-direct {v1, v2}, Lha/jd;-><init>(I)V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2, p1}, Ltb/u;->b(Lha/jd;Lmb/b;Landroid/view/MotionEvent;)I

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v4, 0x8

    .line 86
    .line 87
    if-ne v0, v4, :cond_9

    .line 88
    .line 89
    invoke-static {p1}, Ltb/a;->n(Landroid/view/MotionEvent;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a:Lkf/d;

    .line 96
    .line 97
    iget-object v4, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lqb/a;

    .line 100
    .line 101
    iget-boolean v4, v4, Lqb/a;->c:Z

    .line 102
    .line 103
    if-nez v4, :cond_9

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    neg-float v2, v2

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    neg-float v1, v1

    .line 115
    iget v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->y:F

    .line 116
    .line 117
    mul-float v1, v1, v4

    .line 118
    .line 119
    iget-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 120
    .line 121
    iget v5, v5, Ltb/e;->H:F

    .line 122
    .line 123
    mul-float v1, v1, v5

    .line 124
    .line 125
    mul-float v2, v2, v4

    .line 126
    .line 127
    mul-float v2, v2, v5

    .line 128
    .line 129
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Lqb/a;

    .line 132
    .line 133
    invoke-virtual {v0}, Lqb/a;->a()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 140
    .line 141
    iget v4, v4, Ltb/e;->B:F

    .line 142
    .line 143
    mul-float v1, v1, v4

    .line 144
    .line 145
    mul-float v2, v2, v4

    .line 146
    .line 147
    :cond_7
    invoke-virtual {v0}, Lqb/a;->b()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    move v6, v2

    .line 154
    move v2, v1

    .line 155
    move v1, v6

    .line 156
    :cond_8
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 157
    .line 158
    invoke-virtual {v0, p1, p1, v1, v2}, Ltb/u;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 159
    .line 160
    .line 161
    return v3

    .line 162
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 23

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->a:Lkf/d;

    .line 8
    .line 9
    iget-object v4, v3, Lkf/d;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lqb/a;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget-object v6, v4, Lqb/a;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 21
    .line 22
    iget-object v7, v4, Lqb/a;->b:Landroid/text/Editable;

    .line 23
    .line 24
    invoke-virtual {v4, v6, v7, v5, v1}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iput-boolean v5, v4, Lqb/a;->c:Z

    .line 32
    .line 33
    iget-object v5, v3, Lkf/d;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 36
    .line 37
    iget-object v6, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 38
    .line 39
    new-instance v15, Ldb/i;

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    invoke-direct {v15, v5, v1, v8}, Ldb/i;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/KeyEvent;I)V

    .line 43
    .line 44
    .line 45
    new-instance v14, Ldb/t;

    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lqb/a;->b()Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lqb/a;->a()Z

    .line 54
    .line 55
    .line 56
    invoke-direct {v14, v5, v1, v8}, Ldb/t;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/KeyEvent;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v15}, Ldb/p;->a(Lbi/a;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    and-int/2addr v9, v8

    .line 64
    const/4 v13, 0x0

    .line 65
    if-eqz v9, :cond_0

    .line 66
    .line 67
    invoke-virtual {v15, v13}, Ldb/i;->c(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto/16 :goto_26

    .line 72
    .line 73
    :cond_0
    invoke-virtual {v4}, Lqb/a;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {v4}, Lqb/a;->a()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    invoke-virtual {v3, v0, v1}, Lkf/d;->E(ILandroid/view/KeyEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eqz v11, :cond_3

    .line 90
    .line 91
    invoke-virtual {v6, v14}, Ldb/p;->a(Lbi/a;)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    and-int/2addr v6, v8

    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {v14, v13}, Ldb/i;->c(Z)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    invoke-virtual {v15, v13}, Ldb/i;->c(Z)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    :cond_1
    const/4 v13, 0x1

    .line 111
    :cond_2
    move v0, v13

    .line 112
    goto/16 :goto_26

    .line 113
    .line 114
    :cond_3
    const/16 v6, 0x7b

    .line 115
    .line 116
    const/16 v8, 0x7a

    .line 117
    .line 118
    if-eq v0, v8, :cond_4

    .line 119
    .line 120
    if-eq v0, v6, :cond_4

    .line 121
    .line 122
    packed-switch v0, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    :pswitch_0
    invoke-static {v7}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    iget-object v11, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 130
    .line 131
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    const/4 v6, 0x4

    .line 140
    if-eq v0, v6, :cond_5d

    .line 141
    .line 142
    const/16 v6, 0x3d

    .line 143
    .line 144
    const/16 v8, 0x20

    .line 145
    .line 146
    if-eq v0, v6, :cond_51

    .line 147
    .line 148
    const/16 v6, 0x3e

    .line 149
    .line 150
    if-eq v0, v6, :cond_4e

    .line 151
    .line 152
    const/16 v6, 0x42

    .line 153
    .line 154
    if-eq v0, v6, :cond_43

    .line 155
    .line 156
    const/16 v4, 0x43

    .line 157
    .line 158
    if-eq v0, v4, :cond_3e

    .line 159
    .line 160
    const/16 v4, 0x5c

    .line 161
    .line 162
    if-eq v0, v4, :cond_3c

    .line 163
    .line 164
    const/16 v4, 0x5d

    .line 165
    .line 166
    if-eq v0, v4, :cond_3a

    .line 167
    .line 168
    const/16 v4, 0x6f

    .line 169
    .line 170
    if-eq v0, v4, :cond_37

    .line 171
    .line 172
    const/16 v4, 0x70

    .line 173
    .line 174
    if-eq v0, v4, :cond_32

    .line 175
    .line 176
    const/16 v4, 0x7a

    .line 177
    .line 178
    if-eq v0, v4, :cond_2f

    .line 179
    .line 180
    const/16 v4, 0x7b

    .line 181
    .line 182
    if-eq v0, v4, :cond_2c

    .line 183
    .line 184
    const/16 v4, 0x116

    .line 185
    .line 186
    if-eq v0, v4, :cond_2b

    .line 187
    .line 188
    const/16 v4, 0x117

    .line 189
    .line 190
    if-eq v0, v4, :cond_29

    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    packed-switch v0, :pswitch_data_1

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_11

    .line 201
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_11

    .line 207
    .line 208
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 209
    .line 210
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    const/16 v7, 0x1d

    .line 219
    .line 220
    if-eq v0, v7, :cond_e

    .line 221
    .line 222
    const/16 v7, 0x26

    .line 223
    .line 224
    if-eq v0, v7, :cond_b

    .line 225
    .line 226
    const/16 v3, 0x1f

    .line 227
    .line 228
    if-eq v0, v3, :cond_a

    .line 229
    .line 230
    if-eq v0, v8, :cond_7

    .line 231
    .line 232
    packed-switch v0, :pswitch_data_2

    .line 233
    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    goto/16 :goto_25

    .line 237
    .line 238
    :pswitch_1
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_5

    .line 243
    .line 244
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->m0()V

    .line 245
    .line 246
    .line 247
    :cond_5
    :goto_1
    move-object v8, v14

    .line 248
    const/4 v7, 0x1

    .line 249
    :goto_2
    const/4 v14, 0x0

    .line 250
    goto/16 :goto_5

    .line 251
    .line 252
    :pswitch_2
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_5

    .line 257
    .line 258
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->a0()V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :pswitch_3
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_6

    .line 267
    .line 268
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->z()V

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_6
    const/4 v3, 0x1

    .line 273
    invoke-virtual {v5, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :pswitch_4
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    iget-object v3, v3, Lmb/j;->c:Lmb/b;

    .line 282
    .line 283
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iget v4, v3, Lmb/b;->b:I

    .line 288
    .line 289
    iget v3, v3, Lmb/b;->c:I

    .line 290
    .line 291
    invoke-virtual {v5, v4, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->e0(II)V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :pswitch_5
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_5

    .line 300
    .line 301
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->X()V

    .line 302
    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_7
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_9

    .line 310
    .line 311
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_8

    .line 320
    .line 321
    const-string v3, ""

    .line 322
    .line 323
    const/4 v4, 0x1

    .line 324
    invoke-virtual {v5, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->B(Ljava/lang/String;Z)V

    .line 325
    .line 326
    .line 327
    move-object v6, v14

    .line 328
    const/4 v4, 0x0

    .line 329
    const/4 v7, 0x1

    .line 330
    goto :goto_3

    .line 331
    :cond_8
    const/4 v4, 0x1

    .line 332
    iget-object v3, v3, Lmb/j;->c:Lmb/b;

    .line 333
    .line 334
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    iget v11, v3, Lmb/b;->b:I

    .line 339
    .line 340
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    iget v3, v3, Lmb/b;->b:I

    .line 345
    .line 346
    invoke-virtual {v6, v3}, Lmb/g;->o(I)Lmb/h;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    iget v12, v3, Lmb/h;->c:I

    .line 351
    .line 352
    const/4 v3, 0x1

    .line 353
    const/4 v13, 0x0

    .line 354
    const/4 v10, 0x0

    .line 355
    move-object v8, v5

    .line 356
    move v9, v11

    .line 357
    const/4 v7, 0x1

    .line 358
    const/4 v4, 0x0

    .line 359
    move-object v6, v14

    .line 360
    move v14, v3

    .line 361
    invoke-virtual/range {v8 .. v14}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 362
    .line 363
    .line 364
    const-string v3, "\n"

    .line 365
    .line 366
    invoke-virtual {v5, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->B(Ljava/lang/String;Z)V

    .line 367
    .line 368
    .line 369
    :goto_3
    move-object v8, v6

    .line 370
    goto :goto_2

    .line 371
    :cond_9
    const/4 v7, 0x1

    .line 372
    move-object v8, v14

    .line 373
    goto :goto_2

    .line 374
    :cond_a
    move-object v6, v14

    .line 375
    const/4 v4, 0x0

    .line 376
    const/4 v7, 0x1

    .line 377
    invoke-virtual {v5, v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_b
    move-object v8, v14

    .line 382
    const/4 v7, 0x1

    .line 383
    const/4 v14, 0x0

    .line 384
    if-eqz v9, :cond_d

    .line 385
    .line 386
    invoke-virtual {v6}, Lmb/j;->a()Z

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    if-eqz v9, :cond_c

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_c
    iget-object v6, v6, Lmb/j;->c:Lmb/b;

    .line 394
    .line 395
    iget v6, v6, Lmb/b;->b:I

    .line 396
    .line 397
    invoke-virtual {v4, v6}, Lmb/g;->o(I)Lmb/h;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    iget v4, v4, Lmb/h;->c:I

    .line 402
    .line 403
    invoke-virtual {v5, v6, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v14, v7}, Ltb/f;->deleteSurroundingText(II)Z

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 410
    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_d
    :goto_4
    const/4 v13, 0x0

    .line 414
    goto :goto_6

    .line 415
    :cond_e
    move-object v8, v14

    .line 416
    const/4 v7, 0x1

    .line 417
    const/4 v14, 0x0

    .line 418
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->d0()V

    .line 419
    .line 420
    .line 421
    :goto_5
    const/4 v13, 0x1

    .line 422
    :goto_6
    invoke-virtual {v8, v13}, Ldb/i;->c(Z)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-nez v3, :cond_10

    .line 427
    .line 428
    invoke-virtual {v15, v13}, Ldb/i;->c(Z)Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-eqz v3, :cond_f

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_f
    const/4 v13, 0x0

    .line 436
    goto :goto_8

    .line 437
    :cond_10
    :goto_7
    const/4 v13, 0x1

    .line 438
    :goto_8
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    goto/16 :goto_25

    .line 443
    .line 444
    :cond_11
    const/4 v6, 0x1

    .line 445
    const/4 v14, 0x0

    .line 446
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-static {v7, v1}, Lm0/h;->f(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    invoke-virtual {v1, v9}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    .line 459
    .line 460
    .line 461
    move-result v9

    .line 462
    if-eqz v9, :cond_19

    .line 463
    .line 464
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 465
    .line 466
    .line 467
    move-result v10

    .line 468
    if-eqz v10, :cond_19

    .line 469
    .line 470
    const v10, 0xef00

    .line 471
    .line 472
    .line 473
    if-eq v9, v10, :cond_18

    .line 474
    .line 475
    const v10, 0xef01

    .line 476
    .line 477
    .line 478
    if-ne v9, v10, :cond_12

    .line 479
    .line 480
    goto/16 :goto_b

    .line 481
    .line 482
    :cond_12
    const/high16 v10, -0x80000000

    .line 483
    .line 484
    and-int/2addr v10, v9

    .line 485
    if-eqz v10, :cond_13

    .line 486
    .line 487
    const v10, 0x7fffffff

    .line 488
    .line 489
    .line 490
    and-int/2addr v9, v10

    .line 491
    const/4 v13, 0x1

    .line 492
    goto :goto_9

    .line 493
    :cond_13
    const/4 v13, 0x0

    .line 494
    :goto_9
    iget-object v10, v8, Lmb/j;->c:Lmb/b;

    .line 495
    .line 496
    iget v10, v10, Lmb/b;->a:I

    .line 497
    .line 498
    add-int/lit8 v11, v10, 0x1

    .line 499
    .line 500
    iget-object v12, v8, Lmb/j;->d:Lmb/b;

    .line 501
    .line 502
    iget v12, v12, Lmb/b;->a:I

    .line 503
    .line 504
    if-ne v11, v12, :cond_14

    .line 505
    .line 506
    invoke-virtual {v4, v10}, Lmb/g;->charAt(I)C

    .line 507
    .line 508
    .line 509
    move-result v10

    .line 510
    invoke-static {v10, v9}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 511
    .line 512
    .line 513
    move-result v11

    .line 514
    if-eq v11, v10, :cond_14

    .line 515
    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 517
    .line 518
    .line 519
    move-result v10

    .line 520
    if-nez v10, :cond_14

    .line 521
    .line 522
    move v9, v11

    .line 523
    const/4 v13, 0x0

    .line 524
    :cond_14
    if-eqz v13, :cond_17

    .line 525
    .line 526
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    iget-object v11, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 531
    .line 532
    invoke-virtual {v11}, Lmb/j;->a()Z

    .line 533
    .line 534
    .line 535
    move-result v11

    .line 536
    if-eqz v11, :cond_15

    .line 537
    .line 538
    iget-object v11, v8, Lmb/j;->c:Lmb/b;

    .line 539
    .line 540
    iget v11, v11, Lmb/b;->a:I

    .line 541
    .line 542
    add-int/lit8 v12, v11, 0x1

    .line 543
    .line 544
    iget-object v13, v8, Lmb/j;->d:Lmb/b;

    .line 545
    .line 546
    iget v13, v13, Lmb/b;->a:I

    .line 547
    .line 548
    if-ne v12, v13, :cond_16

    .line 549
    .line 550
    invoke-virtual {v4, v11}, Lmb/g;->charAt(I)C

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    if-ne v4, v9, :cond_16

    .line 555
    .line 556
    :cond_15
    iget-object v4, v8, Lmb/j;->d:Lmb/b;

    .line 557
    .line 558
    iget v8, v4, Lmb/b;->b:I

    .line 559
    .line 560
    iget v4, v4, Lmb/b;->c:I

    .line 561
    .line 562
    const/16 v11, 0x9

    .line 563
    .line 564
    invoke-virtual {v5, v8, v4, v11, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 565
    .line 566
    .line 567
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {v5, v4, v6, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    iget-object v8, v10, Lmb/j;->d:Lmb/b;

    .line 583
    .line 584
    iget v8, v8, Lmb/b;->b:I

    .line 585
    .line 586
    invoke-virtual {v4, v8}, Lmb/g;->o(I)Lmb/h;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    iget-object v8, v10, Lmb/j;->d:Lmb/b;

    .line 591
    .line 592
    iget v8, v8, Lmb/b;->c:I

    .line 593
    .line 594
    invoke-static {v4, v8}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    iget-object v8, v10, Lmb/j;->d:Lmb/b;

    .line 603
    .line 604
    iget v9, v8, Lmb/b;->b:I

    .line 605
    .line 606
    iget v8, v8, Lmb/b;->c:I

    .line 607
    .line 608
    sub-int v18, v8, v4

    .line 609
    .line 610
    iget-object v3, v3, Lkf/d;->b:Ljava/lang/Object;

    .line 611
    .line 612
    move-object/from16 v16, v3

    .line 613
    .line 614
    check-cast v16, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 615
    .line 616
    const/16 v21, 0x9

    .line 617
    .line 618
    const/16 v22, 0x1

    .line 619
    .line 620
    move/from16 v17, v9

    .line 621
    .line 622
    move/from16 v19, v9

    .line 623
    .line 624
    move/from16 v20, v8

    .line 625
    .line 626
    invoke-virtual/range {v16 .. v22}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 627
    .line 628
    .line 629
    :cond_16
    :goto_a
    const/4 v12, 0x1

    .line 630
    goto :goto_c

    .line 631
    :cond_17
    new-instance v3, Ljava/lang/String;

    .line 632
    .line 633
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5, v3, v6, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 644
    .line 645
    .line 646
    goto :goto_a

    .line 647
    :cond_18
    :goto_b
    invoke-super {v5, v0, v1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 648
    .line 649
    .line 650
    move-result v12

    .line 651
    goto :goto_c

    .line 652
    :cond_19
    invoke-super {v5, v0, v1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 653
    .line 654
    .line 655
    move-result v12

    .line 656
    :goto_c
    if-eqz v12, :cond_1a

    .line 657
    .line 658
    invoke-static {v7}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 659
    .line 660
    .line 661
    :cond_1a
    invoke-virtual {v15, v12}, Ldb/i;->c(Z)Z

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    goto/16 :goto_25

    .line 670
    .line 671
    :pswitch_6
    const/4 v6, 0x1

    .line 672
    if-eqz v10, :cond_1b

    .line 673
    .line 674
    sget-object v3, Ltb/x;->h:Ltb/x;

    .line 675
    .line 676
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 677
    .line 678
    .line 679
    goto :goto_d

    .line 680
    :cond_1b
    sget-object v3, Ltb/x;->f:Ltb/x;

    .line 681
    .line 682
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 683
    .line 684
    .line 685
    :goto_d
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    goto/16 :goto_25

    .line 694
    .line 695
    :pswitch_7
    const/4 v6, 0x1

    .line 696
    if-eqz v10, :cond_1c

    .line 697
    .line 698
    sget-object v3, Ltb/x;->g:Ltb/x;

    .line 699
    .line 700
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 701
    .line 702
    .line 703
    goto :goto_e

    .line 704
    :cond_1c
    sget-object v3, Ltb/x;->e:Ltb/x;

    .line 705
    .line 706
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 707
    .line 708
    .line 709
    :goto_e
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 710
    .line 711
    .line 712
    move-result v3

    .line 713
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    goto/16 :goto_25

    .line 718
    .line 719
    :pswitch_8
    const/4 v6, 0x1

    .line 720
    const/4 v14, 0x0

    .line 721
    if-eqz v10, :cond_22

    .line 722
    .line 723
    if-eqz v9, :cond_21

    .line 724
    .line 725
    iget-object v3, v13, Lmb/j;->c:Lmb/b;

    .line 726
    .line 727
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    iget-object v4, v13, Lmb/j;->d:Lmb/b;

    .line 732
    .line 733
    invoke-virtual {v4}, Lmb/b;->a()Lmb/b;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    iget-object v7, v12, Lmb/g;->a:Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 740
    .line 741
    .line 742
    move-result v7

    .line 743
    iget v8, v4, Lmb/b;->b:I

    .line 744
    .line 745
    sub-int/2addr v7, v6

    .line 746
    if-ne v8, v7, :cond_1d

    .line 747
    .line 748
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    goto/16 :goto_25

    .line 757
    .line 758
    :cond_1d
    add-int/2addr v8, v6

    .line 759
    invoke-virtual {v12, v8}, Lmb/g;->o(I)Lmb/h;

    .line 760
    .line 761
    .line 762
    move-result-object v7

    .line 763
    invoke-virtual {v7}, Lmb/h;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v7

    .line 767
    invoke-virtual {v12}, Lmb/g;->b()Z

    .line 768
    .line 769
    .line 770
    iget v8, v4, Lmb/b;->b:I

    .line 771
    .line 772
    invoke-virtual {v12, v8}, Lmb/g;->o(I)Lmb/h;

    .line 773
    .line 774
    .line 775
    move-result-object v9

    .line 776
    iget v9, v9, Lmb/h;->c:I

    .line 777
    .line 778
    iget v10, v4, Lmb/b;->b:I

    .line 779
    .line 780
    add-int/2addr v10, v6

    .line 781
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 782
    .line 783
    .line 784
    move-result v11

    .line 785
    invoke-virtual {v12, v8, v9, v10, v11}, Lmb/g;->h(IIII)V

    .line 786
    .line 787
    .line 788
    iget v8, v3, Lmb/b;->b:I

    .line 789
    .line 790
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSeparator()Lmb/m;

    .line 791
    .line 792
    .line 793
    move-result-object v9

    .line 794
    iget-object v9, v9, Lmb/m;->a:Ljava/lang/String;

    .line 795
    .line 796
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v7

    .line 800
    invoke-virtual {v12, v8, v14, v7}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v12}, Lmb/g;->k()Z

    .line 804
    .line 805
    .line 806
    invoke-virtual {v12}, Lmb/g;->n()Lmb/a;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    iget v8, v3, Lmb/b;->b:I

    .line 811
    .line 812
    add-int/2addr v8, v6

    .line 813
    iget v9, v3, Lmb/b;->c:I

    .line 814
    .line 815
    invoke-virtual {v7, v8, v9}, Lmb/a;->A(II)Lmb/b;

    .line 816
    .line 817
    .line 818
    move-result-object v7

    .line 819
    invoke-virtual {v12}, Lmb/g;->n()Lmb/a;

    .line 820
    .line 821
    .line 822
    move-result-object v8

    .line 823
    iget v9, v4, Lmb/b;->b:I

    .line 824
    .line 825
    add-int/2addr v9, v6

    .line 826
    iget v10, v4, Lmb/b;->c:I

    .line 827
    .line 828
    invoke-virtual {v8, v9, v10}, Lmb/a;->A(II)Lmb/b;

    .line 829
    .line 830
    .line 831
    move-result-object v8

    .line 832
    iget v9, v3, Lmb/b;->a:I

    .line 833
    .line 834
    iget v4, v4, Lmb/b;->a:I

    .line 835
    .line 836
    if-eq v9, v4, :cond_1f

    .line 837
    .line 838
    iget-object v4, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 839
    .line 840
    iget v9, v7, Lmb/b;->b:I

    .line 841
    .line 842
    iget v10, v7, Lmb/b;->c:I

    .line 843
    .line 844
    iget v11, v8, Lmb/b;->b:I

    .line 845
    .line 846
    iget v12, v8, Lmb/b;->c:I

    .line 847
    .line 848
    invoke-virtual {v5, v9, v10, v11, v12}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 849
    .line 850
    .line 851
    if-eqz v4, :cond_20

    .line 852
    .line 853
    invoke-virtual {v4, v3}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    if-eqz v3, :cond_1e

    .line 858
    .line 859
    iput-object v7, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 860
    .line 861
    goto :goto_f

    .line 862
    :cond_1e
    iput-object v8, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 863
    .line 864
    goto :goto_f

    .line 865
    :cond_1f
    iget v3, v7, Lmb/b;->b:I

    .line 866
    .line 867
    iget v4, v7, Lmb/b;->c:I

    .line 868
    .line 869
    invoke-virtual {v5, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 870
    .line 871
    .line 872
    :cond_20
    :goto_f
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    goto/16 :goto_25

    .line 881
    .line 882
    :cond_21
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 887
    .line 888
    .line 889
    move-result v7

    .line 890
    int-to-float v7, v7

    .line 891
    invoke-virtual {v3, v4, v7, v14}, Ltb/u;->j(FFZ)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    goto/16 :goto_25

    .line 903
    .line 904
    :cond_22
    sget-object v3, Ltb/x;->d:Ltb/x;

    .line 905
    .line 906
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    goto/16 :goto_25

    .line 918
    .line 919
    :pswitch_9
    const/4 v6, 0x1

    .line 920
    const/4 v14, 0x0

    .line 921
    if-eqz v10, :cond_28

    .line 922
    .line 923
    if-eqz v9, :cond_27

    .line 924
    .line 925
    iget-object v3, v13, Lmb/j;->c:Lmb/b;

    .line 926
    .line 927
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    iget-object v4, v13, Lmb/j;->d:Lmb/b;

    .line 932
    .line 933
    invoke-virtual {v4}, Lmb/b;->a()Lmb/b;

    .line 934
    .line 935
    .line 936
    move-result-object v4

    .line 937
    iget v7, v3, Lmb/b;->b:I

    .line 938
    .line 939
    if-nez v7, :cond_23

    .line 940
    .line 941
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    goto/16 :goto_25

    .line 950
    .line 951
    :cond_23
    sub-int/2addr v7, v6

    .line 952
    invoke-virtual {v12, v7}, Lmb/g;->o(I)Lmb/h;

    .line 953
    .line 954
    .line 955
    move-result-object v7

    .line 956
    invoke-virtual {v7}, Lmb/h;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v7

    .line 960
    invoke-virtual {v12}, Lmb/g;->b()Z

    .line 961
    .line 962
    .line 963
    iget v8, v3, Lmb/b;->b:I

    .line 964
    .line 965
    add-int/lit8 v9, v8, -0x1

    .line 966
    .line 967
    invoke-virtual {v12, v9, v14, v8, v14}, Lmb/g;->h(IIII)V

    .line 968
    .line 969
    .line 970
    iget v8, v4, Lmb/b;->b:I

    .line 971
    .line 972
    sub-int/2addr v8, v6

    .line 973
    invoke-virtual {v12, v8}, Lmb/g;->o(I)Lmb/h;

    .line 974
    .line 975
    .line 976
    move-result-object v9

    .line 977
    iget v9, v9, Lmb/h;->c:I

    .line 978
    .line 979
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSeparator()Lmb/m;

    .line 980
    .line 981
    .line 982
    move-result-object v10

    .line 983
    iget-object v10, v10, Lmb/m;->a:Ljava/lang/String;

    .line 984
    .line 985
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v7

    .line 989
    invoke-virtual {v12, v8, v9, v7}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v12}, Lmb/g;->k()Z

    .line 993
    .line 994
    .line 995
    invoke-virtual {v12}, Lmb/g;->n()Lmb/a;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    iget v8, v3, Lmb/b;->b:I

    .line 1000
    .line 1001
    sub-int/2addr v8, v6

    .line 1002
    iget v9, v3, Lmb/b;->c:I

    .line 1003
    .line 1004
    invoke-virtual {v7, v8, v9}, Lmb/a;->A(II)Lmb/b;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v7

    .line 1008
    invoke-virtual {v12}, Lmb/g;->n()Lmb/a;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v8

    .line 1012
    iget v9, v4, Lmb/b;->b:I

    .line 1013
    .line 1014
    sub-int/2addr v9, v6

    .line 1015
    iget v10, v4, Lmb/b;->c:I

    .line 1016
    .line 1017
    invoke-virtual {v8, v9, v10}, Lmb/a;->A(II)Lmb/b;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v8

    .line 1021
    iget v9, v3, Lmb/b;->a:I

    .line 1022
    .line 1023
    iget v4, v4, Lmb/b;->a:I

    .line 1024
    .line 1025
    if-eq v9, v4, :cond_25

    .line 1026
    .line 1027
    iget-object v4, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 1028
    .line 1029
    iget v9, v7, Lmb/b;->b:I

    .line 1030
    .line 1031
    iget v10, v7, Lmb/b;->c:I

    .line 1032
    .line 1033
    iget v11, v8, Lmb/b;->b:I

    .line 1034
    .line 1035
    iget v12, v8, Lmb/b;->c:I

    .line 1036
    .line 1037
    invoke-virtual {v5, v9, v10, v11, v12}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 1038
    .line 1039
    .line 1040
    if-eqz v4, :cond_26

    .line 1041
    .line 1042
    invoke-virtual {v4, v3}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v3

    .line 1046
    if-eqz v3, :cond_24

    .line 1047
    .line 1048
    iput-object v7, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 1049
    .line 1050
    goto :goto_10

    .line 1051
    :cond_24
    iput-object v8, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 1052
    .line 1053
    goto :goto_10

    .line 1054
    :cond_25
    iget v3, v7, Lmb/b;->b:I

    .line 1055
    .line 1056
    iget v4, v7, Lmb/b;->c:I

    .line 1057
    .line 1058
    invoke-virtual {v5, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 1059
    .line 1060
    .line 1061
    :cond_26
    :goto_10
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v3

    .line 1065
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    goto/16 :goto_25

    .line 1070
    .line 1071
    :cond_27
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 1076
    .line 1077
    .line 1078
    move-result v7

    .line 1079
    neg-int v7, v7

    .line 1080
    int-to-float v7, v7

    .line 1081
    invoke-virtual {v3, v4, v7, v14}, Ltb/u;->j(FFZ)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v3

    .line 1088
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    goto/16 :goto_25

    .line 1093
    .line 1094
    :cond_28
    sget-object v3, Ltb/x;->c:Ltb/x;

    .line 1095
    .line 1096
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    goto/16 :goto_25

    .line 1108
    .line 1109
    :cond_29
    const/4 v6, 0x1

    .line 1110
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v3

    .line 1114
    if-eqz v3, :cond_2a

    .line 1115
    .line 1116
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->X()V

    .line 1117
    .line 1118
    .line 1119
    :cond_2a
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v3

    .line 1123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    goto/16 :goto_25

    .line 1128
    .line 1129
    :cond_2b
    const/4 v6, 0x1

    .line 1130
    invoke-virtual {v5, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v3

    .line 1137
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    goto/16 :goto_25

    .line 1142
    .line 1143
    :cond_2c
    const/4 v6, 0x1

    .line 1144
    if-eqz v10, :cond_2d

    .line 1145
    .line 1146
    sget-object v3, Ltb/x;->q:Ltb/x;

    .line 1147
    .line 1148
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1149
    .line 1150
    .line 1151
    goto :goto_12

    .line 1152
    :cond_2d
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    iget-boolean v3, v3, Ltb/e;->I:Z

    .line 1157
    .line 1158
    if-eqz v3, :cond_2e

    .line 1159
    .line 1160
    sget-object v3, Ltb/x;->s:Ltb/x;

    .line 1161
    .line 1162
    goto :goto_11

    .line 1163
    :cond_2e
    sget-object v3, Ltb/x;->n:Ltb/x;

    .line 1164
    .line 1165
    :goto_11
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1166
    .line 1167
    .line 1168
    :goto_12
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v3

    .line 1172
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    goto/16 :goto_25

    .line 1177
    .line 1178
    :cond_2f
    const/4 v6, 0x1

    .line 1179
    if-eqz v10, :cond_30

    .line 1180
    .line 1181
    sget-object v3, Ltb/x;->p:Ltb/x;

    .line 1182
    .line 1183
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_14

    .line 1187
    :cond_30
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v3

    .line 1191
    iget-boolean v3, v3, Ltb/e;->I:Z

    .line 1192
    .line 1193
    if-eqz v3, :cond_31

    .line 1194
    .line 1195
    sget-object v3, Ltb/x;->r:Ltb/x;

    .line 1196
    .line 1197
    goto :goto_13

    .line 1198
    :cond_31
    sget-object v3, Ltb/x;->m:Ltb/x;

    .line 1199
    .line 1200
    :goto_13
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1201
    .line 1202
    .line 1203
    :goto_14
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v3

    .line 1207
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v3

    .line 1211
    goto/16 :goto_25

    .line 1212
    .line 1213
    :cond_32
    const/4 v6, 0x1

    .line 1214
    const/4 v14, 0x0

    .line 1215
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v3

    .line 1219
    if-eqz v3, :cond_36

    .line 1220
    .line 1221
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 1222
    .line 1223
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 1224
    .line 1225
    .line 1226
    move-result v3

    .line 1227
    if-eqz v3, :cond_33

    .line 1228
    .line 1229
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_15

    .line 1233
    :cond_33
    if-eqz v10, :cond_34

    .line 1234
    .line 1235
    sget-object v3, Ltb/x;->h:Ltb/x;

    .line 1236
    .line 1237
    invoke-virtual {v5, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->F(Ltb/x;)V

    .line 1238
    .line 1239
    .line 1240
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 1241
    .line 1242
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    if-eqz v3, :cond_35

    .line 1247
    .line 1248
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_15

    .line 1252
    :cond_34
    invoke-virtual {v11, v14, v6}, Ltb/f;->deleteSurroundingText(II)Z

    .line 1253
    .line 1254
    .line 1255
    :cond_35
    :goto_15
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 1256
    .line 1257
    .line 1258
    :cond_36
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v3

    .line 1262
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    goto/16 :goto_25

    .line 1267
    .line 1268
    :cond_37
    const/4 v6, 0x1

    .line 1269
    const/4 v14, 0x0

    .line 1270
    invoke-virtual {v13}, Lmb/j;->a()Z

    .line 1271
    .line 1272
    .line 1273
    move-result v3

    .line 1274
    if-eqz v3, :cond_39

    .line 1275
    .line 1276
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v3

    .line 1280
    iget-boolean v3, v3, Ltb/e;->t:Z

    .line 1281
    .line 1282
    if-eqz v3, :cond_38

    .line 1283
    .line 1284
    iget-object v3, v13, Lmb/j;->d:Lmb/b;

    .line 1285
    .line 1286
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v3

    .line 1290
    goto :goto_16

    .line 1291
    :cond_38
    iget-object v3, v13, Lmb/j;->c:Lmb/b;

    .line 1292
    .line 1293
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    :goto_16
    iget v4, v3, Lmb/b;->b:I

    .line 1298
    .line 1299
    iget v3, v3, Lmb/b;->c:I

    .line 1300
    .line 1301
    invoke-virtual {v5, v4, v3, v14, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 1302
    .line 1303
    .line 1304
    :cond_39
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v3

    .line 1308
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    goto/16 :goto_25

    .line 1313
    .line 1314
    :cond_3a
    const/4 v6, 0x1

    .line 1315
    if-eqz v10, :cond_3b

    .line 1316
    .line 1317
    sget-object v3, Ltb/x;->l:Ltb/x;

    .line 1318
    .line 1319
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1320
    .line 1321
    .line 1322
    goto :goto_17

    .line 1323
    :cond_3b
    sget-object v3, Ltb/x;->j:Ltb/x;

    .line 1324
    .line 1325
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1326
    .line 1327
    .line 1328
    :goto_17
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v3

    .line 1332
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v3

    .line 1336
    goto/16 :goto_25

    .line 1337
    .line 1338
    :cond_3c
    const/4 v6, 0x1

    .line 1339
    if-eqz v10, :cond_3d

    .line 1340
    .line 1341
    sget-object v3, Ltb/x;->k:Ltb/x;

    .line 1342
    .line 1343
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1344
    .line 1345
    .line 1346
    goto :goto_18

    .line 1347
    :cond_3d
    sget-object v3, Ltb/x;->i:Ltb/x;

    .line 1348
    .line 1349
    invoke-virtual {v5, v3, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->T(Ltb/x;Z)V

    .line 1350
    .line 1351
    .line 1352
    :goto_18
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v3

    .line 1356
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v3

    .line 1360
    goto/16 :goto_25

    .line 1361
    .line 1362
    :cond_3e
    const/4 v6, 0x1

    .line 1363
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1364
    .line 1365
    .line 1366
    move-result v3

    .line 1367
    if-eqz v3, :cond_42

    .line 1368
    .line 1369
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 1370
    .line 1371
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 1372
    .line 1373
    .line 1374
    move-result v3

    .line 1375
    if-eqz v3, :cond_3f

    .line 1376
    .line 1377
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_19

    .line 1381
    :cond_3f
    if-eqz v10, :cond_40

    .line 1382
    .line 1383
    sget-object v3, Ltb/x;->g:Ltb/x;

    .line 1384
    .line 1385
    invoke-virtual {v5, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->F(Ltb/x;)V

    .line 1386
    .line 1387
    .line 1388
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 1389
    .line 1390
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    if-eqz v3, :cond_41

    .line 1395
    .line 1396
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 1397
    .line 1398
    .line 1399
    goto :goto_19

    .line 1400
    :cond_40
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 1401
    .line 1402
    .line 1403
    :cond_41
    :goto_19
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 1404
    .line 1405
    .line 1406
    :cond_42
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v3

    .line 1410
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v3

    .line 1414
    goto/16 :goto_25

    .line 1415
    .line 1416
    :cond_43
    move-object v8, v14

    .line 1417
    const/4 v6, 0x1

    .line 1418
    const/4 v14, 0x0

    .line 1419
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v7

    .line 1427
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v11

    .line 1431
    if-eqz v11, :cond_4d

    .line 1432
    .line 1433
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSeparator()Lmb/m;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v11

    .line 1437
    iget-object v11, v11, Lmb/m;->a:Ljava/lang/String;

    .line 1438
    .line 1439
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEditorLanguage()Lgb/b;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v12

    .line 1443
    if-eqz v9, :cond_44

    .line 1444
    .line 1445
    if-nez v4, :cond_44

    .line 1446
    .line 1447
    if-nez v10, :cond_44

    .line 1448
    .line 1449
    invoke-static {v5, v3, v7, v15, v8}, Lkf/d;->P(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/j;Lmb/g;Ldb/i;Ldb/t;)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v3

    .line 1457
    goto/16 :goto_25

    .line 1458
    .line 1459
    :cond_44
    if-eqz v10, :cond_4b

    .line 1460
    .line 1461
    if-nez v9, :cond_4b

    .line 1462
    .line 1463
    if-eqz v4, :cond_48

    .line 1464
    .line 1465
    iget-object v4, v3, Lmb/j;->c:Lmb/b;

    .line 1466
    .line 1467
    invoke-virtual {v4}, Lmb/b;->a()Lmb/b;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v4

    .line 1471
    iget v4, v4, Lmb/b;->b:I

    .line 1472
    .line 1473
    if-nez v4, :cond_47

    .line 1474
    .line 1475
    invoke-virtual {v7, v14, v14, v11}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v5, v14, v14}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v8, v6}, Ldb/i;->c(Z)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v3

    .line 1488
    if-nez v3, :cond_46

    .line 1489
    .line 1490
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v3

    .line 1494
    if-eqz v3, :cond_45

    .line 1495
    .line 1496
    goto :goto_1a

    .line 1497
    :cond_45
    const/4 v13, 0x0

    .line 1498
    goto :goto_1b

    .line 1499
    :cond_46
    :goto_1a
    const/4 v13, 0x1

    .line 1500
    :goto_1b
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v3

    .line 1504
    goto/16 :goto_25

    .line 1505
    .line 1506
    :cond_47
    add-int/lit8 v4, v4, -0x1

    .line 1507
    .line 1508
    invoke-virtual {v7, v4}, Lmb/g;->o(I)Lmb/h;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v6

    .line 1512
    iget v6, v6, Lmb/h;->c:I

    .line 1513
    .line 1514
    invoke-virtual {v5, v4, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 1515
    .line 1516
    .line 1517
    invoke-static {v5, v3, v7, v15, v8}, Lkf/d;->P(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/j;Lmb/g;Ldb/i;Ldb/t;)Z

    .line 1518
    .line 1519
    .line 1520
    move-result v3

    .line 1521
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v3

    .line 1525
    goto/16 :goto_25

    .line 1526
    .line 1527
    :cond_48
    iget-object v3, v3, Lmb/j;->c:Lmb/b;

    .line 1528
    .line 1529
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v3

    .line 1533
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v3

    .line 1537
    invoke-virtual {v5, v11, v6, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 1538
    .line 1539
    .line 1540
    iget v4, v3, Lmb/b;->b:I

    .line 1541
    .line 1542
    iget v3, v3, Lmb/b;->c:I

    .line 1543
    .line 1544
    invoke-virtual {v5, v4, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v8, v6}, Ldb/i;->c(Z)Z

    .line 1551
    .line 1552
    .line 1553
    move-result v3

    .line 1554
    if-nez v3, :cond_4a

    .line 1555
    .line 1556
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1557
    .line 1558
    .line 1559
    move-result v3

    .line 1560
    if-eqz v3, :cond_49

    .line 1561
    .line 1562
    goto :goto_1c

    .line 1563
    :cond_49
    const/4 v13, 0x0

    .line 1564
    goto :goto_1d

    .line 1565
    :cond_4a
    :goto_1c
    const/4 v13, 0x1

    .line 1566
    :goto_1d
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    goto/16 :goto_25

    .line 1571
    .line 1572
    :cond_4b
    check-cast v12, Lgb/a;

    .line 1573
    .line 1574
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 1578
    .line 1579
    .line 1580
    move-result v3

    .line 1581
    if-eqz v3, :cond_4c

    .line 1582
    .line 1583
    invoke-virtual {v5, v11, v6, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 1584
    .line 1585
    .line 1586
    goto :goto_1e

    .line 1587
    :cond_4c
    invoke-virtual {v5, v11, v6, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 1588
    .line 1589
    .line 1590
    :goto_1e
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 1591
    .line 1592
    .line 1593
    :cond_4d
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v3

    .line 1601
    goto/16 :goto_25

    .line 1602
    .line 1603
    :cond_4e
    const/4 v6, 0x1

    .line 1604
    if-eqz v10, :cond_4f

    .line 1605
    .line 1606
    if-nez v4, :cond_4f

    .line 1607
    .line 1608
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->p1:Lvb/k;

    .line 1609
    .line 1610
    invoke-virtual {v3}, Lvb/k;->h()V

    .line 1611
    .line 1612
    .line 1613
    goto :goto_1f

    .line 1614
    :cond_4f
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    if-eqz v3, :cond_50

    .line 1619
    .line 1620
    const-string v3, " "

    .line 1621
    .line 1622
    invoke-virtual {v5, v3, v6, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 1626
    .line 1627
    .line 1628
    :cond_50
    :goto_1f
    invoke-virtual {v15, v6}, Ldb/i;->c(Z)Z

    .line 1629
    .line 1630
    .line 1631
    move-result v3

    .line 1632
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v3

    .line 1636
    goto/16 :goto_25

    .line 1637
    .line 1638
    :cond_51
    const/4 v6, 0x1

    .line 1639
    const/4 v14, 0x0

    .line 1640
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1641
    .line 1642
    .line 1643
    move-result v3

    .line 1644
    if-eqz v3, :cond_58

    .line 1645
    .line 1646
    if-nez v4, :cond_58

    .line 1647
    .line 1648
    if-nez v10, :cond_58

    .line 1649
    .line 1650
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSnippetController()Lac/b;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v3

    .line 1654
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1655
    .line 1656
    .line 1657
    const-wide v3, 0xffffffffL

    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    if-eqz v9, :cond_59

    .line 1663
    .line 1664
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v7

    .line 1668
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v14

    .line 1672
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 1673
    .line 1674
    .line 1675
    move-result v16

    .line 1676
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->y()Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v13

    .line 1680
    invoke-virtual {v14}, Lmb/g;->b()Z

    .line 1681
    .line 1682
    .line 1683
    iget-object v9, v7, Lmb/j;->c:Lmb/b;

    .line 1684
    .line 1685
    iget v9, v9, Lmb/b;->b:I

    .line 1686
    .line 1687
    move v12, v9

    .line 1688
    :goto_20
    iget-object v9, v7, Lmb/j;->d:Lmb/b;

    .line 1689
    .line 1690
    iget v9, v9, Lmb/b;->b:I

    .line 1691
    .line 1692
    if-gt v12, v9, :cond_57

    .line 1693
    .line 1694
    invoke-virtual {v14, v12}, Lmb/g;->q(I)Ljava/lang/String;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v9

    .line 1698
    invoke-static {v9}, Lmb/k;->a(Ljava/lang/CharSequence;)J

    .line 1699
    .line 1700
    .line 1701
    move-result-wide v9

    .line 1702
    move-object/from16 v18, v7

    .line 1703
    .line 1704
    shr-long v6, v9, v8

    .line 1705
    .line 1706
    long-to-int v7, v6

    .line 1707
    and-long/2addr v9, v3

    .line 1708
    long-to-int v6, v9

    .line 1709
    mul-int v9, v6, v16

    .line 1710
    .line 1711
    add-int/2addr v9, v7

    .line 1712
    if-nez v9, :cond_52

    .line 1713
    .line 1714
    move v7, v12

    .line 1715
    move-object/from16 v20, v13

    .line 1716
    .line 1717
    move-object v9, v14

    .line 1718
    goto :goto_22

    .line 1719
    :cond_52
    add-int v11, v7, v6

    .line 1720
    .line 1721
    rem-int v10, v9, v16

    .line 1722
    .line 1723
    if-lez v7, :cond_54

    .line 1724
    .line 1725
    if-lez v6, :cond_54

    .line 1726
    .line 1727
    if-nez v10, :cond_53

    .line 1728
    .line 1729
    move/from16 v10, v16

    .line 1730
    .line 1731
    :cond_53
    sub-int/2addr v9, v10

    .line 1732
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 1733
    .line 1734
    .line 1735
    move-result v6

    .line 1736
    div-int v6, v6, v16

    .line 1737
    .line 1738
    const/4 v7, 0x0

    .line 1739
    invoke-static {v6, v13}, Lbf/h;->P(ILjava/lang/String;)Ljava/lang/String;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v6

    .line 1743
    move-object v9, v14

    .line 1744
    move v10, v12

    .line 1745
    move/from16 v19, v11

    .line 1746
    .line 1747
    move v11, v7

    .line 1748
    move v7, v12

    .line 1749
    move-object v12, v6

    .line 1750
    move-object/from16 v20, v13

    .line 1751
    .line 1752
    move v13, v7

    .line 1753
    move-object v6, v14

    .line 1754
    move/from16 v14, v19

    .line 1755
    .line 1756
    invoke-virtual/range {v9 .. v14}, Lmb/g;->w(IILjava/lang/CharSequence;II)V

    .line 1757
    .line 1758
    .line 1759
    move-object v9, v6

    .line 1760
    goto :goto_22

    .line 1761
    :cond_54
    move/from16 v19, v11

    .line 1762
    .line 1763
    move v7, v12

    .line 1764
    move-object/from16 v20, v13

    .line 1765
    .line 1766
    move-object v9, v14

    .line 1767
    if-nez v10, :cond_56

    .line 1768
    .line 1769
    if-lez v6, :cond_55

    .line 1770
    .line 1771
    move/from16 v6, v19

    .line 1772
    .line 1773
    const/4 v12, 0x1

    .line 1774
    goto :goto_21

    .line 1775
    :cond_55
    move/from16 v12, v16

    .line 1776
    .line 1777
    move/from16 v6, v19

    .line 1778
    .line 1779
    :goto_21
    sub-int v11, v6, v12

    .line 1780
    .line 1781
    invoke-virtual {v9, v7, v11, v7, v6}, Lmb/g;->h(IIII)V

    .line 1782
    .line 1783
    .line 1784
    goto :goto_22

    .line 1785
    :cond_56
    move/from16 v6, v19

    .line 1786
    .line 1787
    sub-int v11, v6, v10

    .line 1788
    .line 1789
    invoke-virtual {v9, v7, v11, v7, v6}, Lmb/g;->h(IIII)V

    .line 1790
    .line 1791
    .line 1792
    :goto_22
    add-int/lit8 v12, v7, 0x1

    .line 1793
    .line 1794
    move-object v14, v9

    .line 1795
    move-object/from16 v7, v18

    .line 1796
    .line 1797
    move-object/from16 v13, v20

    .line 1798
    .line 1799
    const/4 v6, 0x1

    .line 1800
    goto :goto_20

    .line 1801
    :cond_57
    move-object v9, v14

    .line 1802
    invoke-virtual {v9}, Lmb/g;->k()Z

    .line 1803
    .line 1804
    .line 1805
    :cond_58
    :goto_23
    const/4 v3, 0x1

    .line 1806
    goto :goto_24

    .line 1807
    :cond_59
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v6

    .line 1811
    invoke-virtual {v6}, Lmb/j;->a()Z

    .line 1812
    .line 1813
    .line 1814
    move-result v7

    .line 1815
    if-eqz v7, :cond_5a

    .line 1816
    .line 1817
    const/4 v7, 0x1

    .line 1818
    invoke-virtual {v5, v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->M(Z)V

    .line 1819
    .line 1820
    .line 1821
    goto :goto_23

    .line 1822
    :cond_5a
    iget-object v6, v6, Lmb/j;->c:Lmb/b;

    .line 1823
    .line 1824
    invoke-virtual {v6}, Lmb/b;->a()Lmb/b;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v6

    .line 1828
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v7

    .line 1832
    iget v9, v6, Lmb/b;->b:I

    .line 1833
    .line 1834
    invoke-virtual {v7, v9}, Lmb/g;->o(I)Lmb/h;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v7

    .line 1838
    invoke-static {v7}, Lmb/k;->a(Ljava/lang/CharSequence;)J

    .line 1839
    .line 1840
    .line 1841
    move-result-wide v9

    .line 1842
    shr-long v7, v9, v8

    .line 1843
    .line 1844
    long-to-int v8, v7

    .line 1845
    and-long/2addr v3, v9

    .line 1846
    long-to-int v4, v3

    .line 1847
    iget v3, v6, Lmb/b;->c:I

    .line 1848
    .line 1849
    add-int/2addr v8, v4

    .line 1850
    if-le v3, v8, :cond_5c

    .line 1851
    .line 1852
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 1853
    .line 1854
    if-eqz v3, :cond_58

    .line 1855
    .line 1856
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1857
    .line 1858
    .line 1859
    move-result v3

    .line 1860
    if-eqz v3, :cond_58

    .line 1861
    .line 1862
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 1863
    .line 1864
    iget-object v3, v3, Ltb/f;->b:Lmb/d;

    .line 1865
    .line 1866
    invoke-virtual {v3}, Lmb/d;->a()Z

    .line 1867
    .line 1868
    .line 1869
    move-result v3

    .line 1870
    if-eqz v3, :cond_5b

    .line 1871
    .line 1872
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 1873
    .line 1874
    .line 1875
    :cond_5b
    iget-object v3, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 1876
    .line 1877
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->y()Ljava/lang/String;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v4

    .line 1881
    invoke-virtual {v3, v4}, Ltb/f;->a(Ljava/lang/CharSequence;)V

    .line 1882
    .line 1883
    .line 1884
    goto :goto_23

    .line 1885
    :cond_5c
    invoke-virtual {v5, v14}, Lio/github/rosemoe/sora/widget/CodeEditor;->M(Z)V

    .line 1886
    .line 1887
    .line 1888
    goto :goto_23

    .line 1889
    :goto_24
    invoke-virtual {v15, v3}, Ldb/i;->c(Z)Z

    .line 1890
    .line 1891
    .line 1892
    move-result v3

    .line 1893
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v3

    .line 1897
    goto :goto_25

    .line 1898
    :cond_5d
    const/4 v14, 0x0

    .line 1899
    invoke-virtual {v13}, Lmb/j;->a()Z

    .line 1900
    .line 1901
    .line 1902
    move-result v3

    .line 1903
    if-eqz v3, :cond_5e

    .line 1904
    .line 1905
    iget-object v3, v13, Lmb/j;->c:Lmb/b;

    .line 1906
    .line 1907
    iget v4, v3, Lmb/b;->b:I

    .line 1908
    .line 1909
    iget v3, v3, Lmb/b;->c:I

    .line 1910
    .line 1911
    invoke-virtual {v5, v4, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 1912
    .line 1913
    .line 1914
    const/4 v3, 0x1

    .line 1915
    invoke-virtual {v15, v3}, Ldb/i;->c(Z)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v3

    .line 1919
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v3

    .line 1923
    goto :goto_25

    .line 1924
    :cond_5e
    const/4 v3, 0x1

    .line 1925
    iget-boolean v4, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->W0:Z

    .line 1926
    .line 1927
    if-eqz v4, :cond_5f

    .line 1928
    .line 1929
    iput-boolean v14, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->W0:Z

    .line 1930
    .line 1931
    invoke-virtual {v15, v3}, Ldb/i;->c(Z)Z

    .line 1932
    .line 1933
    .line 1934
    move-result v3

    .line 1935
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v3

    .line 1939
    goto :goto_25

    .line 1940
    :cond_5f
    invoke-virtual {v15, v14}, Ldb/i;->c(Z)Z

    .line 1941
    .line 1942
    .line 1943
    move-result v3

    .line 1944
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v3

    .line 1948
    :goto_25
    if-eqz v3, :cond_60

    .line 1949
    .line 1950
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1951
    .line 1952
    .line 1953
    move-result v0

    .line 1954
    invoke-virtual {v15, v0}, Ldb/i;->c(Z)Z

    .line 1955
    .line 1956
    .line 1957
    move-result v0

    .line 1958
    goto :goto_26

    .line 1959
    :cond_60
    invoke-super {v5, v0, v1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    invoke-virtual {v15, v0}, Ldb/i;->c(Z)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    :goto_26
    return v0

    .line 1968
    nop

    .line 1969
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    new-instance v0, Ldb/i;

    .line 2
    .line 3
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a:Lkf/d;

    .line 4
    .line 5
    iget-object v1, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v0, v1, p3, v2}, Ldb/i;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/KeyEvent;I)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ldb/p;->a(Lbi/a;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    and-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1}, Ldb/i;->c(Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super {v1, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Ldb/i;->c(Z)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a:Lkf/d;

    .line 2
    .line 3
    iget-object v1, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lqb/a;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, v1, Lqb/a;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 15
    .line 16
    iget-object v4, v1, Lqb/a;->b:Landroid/text/Editable;

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4, v2, p2}, Landroid/text/method/MetaKeyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput-boolean v2, v1, Lqb/a;->c:Z

    .line 26
    .line 27
    iget-object v2, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 30
    .line 31
    iget-object v3, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 32
    .line 33
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 34
    .line 35
    .line 36
    new-instance v4, Ldb/i;

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-direct {v4, v2, p2, v5}, Ldb/i;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/KeyEvent;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ldb/p;->a(Lbi/a;)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    and-int/lit8 v6, v6, 0x2

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Ldb/i;->c(Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v0, p1, p2}, Lkf/d;->E(ILandroid/view/KeyEvent;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    new-instance v0, Ldb/t;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lqb/a;->b()Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lqb/a;->a()Z

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v2, p2, v5}, Ldb/t;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/KeyEvent;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ldb/p;->a(Lbi/a;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    and-int/lit8 v1, v1, 0x2

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v7}, Ldb/i;->c(Z)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v4, v7}, Ldb/i;->c(Z)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v5, 0x0

    .line 98
    :cond_2
    :goto_0
    move p1, v5

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-super {v2, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v4, p1}, Ldb/i;->c(Z)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    :goto_1
    return p1
.end method

.method public final onMeasure(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/high16 v3, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-ne v1, v3, :cond_1

    .line 11
    .line 12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->X0:Z

    .line 20
    .line 21
    move/from16 v4, p1

    .line 22
    .line 23
    move/from16 v2, p2

    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual/range {p0 .. p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    iget-boolean v5, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 37
    .line 38
    iget v6, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->k:I

    .line 39
    .line 40
    iget-object v7, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 41
    .line 42
    iget-object v8, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 43
    .line 44
    iget-object v11, v8, Ltb/l;->b:Leb/c;

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const v10, 0x3fffffff    # 1.9999999f

    .line 55
    .line 56
    .line 57
    if-nez v8, :cond_2

    .line 58
    .line 59
    const v15, 0x3fffffff    # 1.9999999f

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    move v15, v12

    .line 68
    :goto_1
    if-nez v9, :cond_3

    .line 69
    .line 70
    const v14, 0x3fffffff    # 1.9999999f

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    move v14, v10

    .line 79
    :goto_2
    new-instance v10, Lu1/p;

    .line 80
    .line 81
    invoke-direct {v10, v6}, Lu1/p;-><init>(I)V

    .line 82
    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    if-eqz v5, :cond_c

    .line 86
    .line 87
    if-eq v8, v3, :cond_8

    .line 88
    .line 89
    if-eq v9, v3, :cond_4

    .line 90
    .line 91
    iget-object v5, v7, Lmb/g;->a:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    new-array v5, v5, [I

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    const/4 v5, 0x0

    .line 101
    :goto_3
    new-instance v8, Landroidx/leanback/widget/i;

    .line 102
    .line 103
    const/4 v9, 0x6

    .line 104
    invoke-direct {v8, v2, v9}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 105
    .line 106
    .line 107
    iget-object v9, v7, Lmb/g;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    add-int/lit8 v13, v9, -0x1

    .line 114
    .line 115
    new-instance v12, Landroidx/fragment/app/f;

    .line 116
    .line 117
    const/16 v16, 0x5

    .line 118
    .line 119
    move-object v9, v12

    .line 120
    move-object v6, v12

    .line 121
    move-object v12, v8

    .line 122
    move v2, v13

    .line 123
    move-object v13, v5

    .line 124
    move/from16 v17, v14

    .line 125
    .line 126
    move/from16 v14, v16

    .line 127
    .line 128
    invoke-direct/range {v9 .. v14}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v2, v6}, Lmb/g;->y(ILmb/f;)V

    .line 132
    .line 133
    .line 134
    int-to-float v2, v15

    .line 135
    iget v6, v8, Landroidx/leanback/widget/i;->b:I

    .line 136
    .line 137
    int-to-float v6, v6

    .line 138
    add-float/2addr v6, v1

    .line 139
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    float-to-int v2, v2

    .line 144
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v5, :cond_7

    .line 149
    .line 150
    int-to-float v2, v2

    .line 151
    sub-float/2addr v2, v1

    .line 152
    float-to-int v1, v2

    .line 153
    if-gtz v1, :cond_5

    .line 154
    .line 155
    iget v1, v7, Lmb/g;->d:I

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_5
    const/4 v2, 0x0

    .line 159
    const/4 v7, 0x0

    .line 160
    :goto_4
    array-length v8, v5

    .line 161
    if-ge v2, v8, :cond_6

    .line 162
    .line 163
    int-to-double v7, v7

    .line 164
    aget v9, v5, v2

    .line 165
    .line 166
    int-to-double v9, v9

    .line 167
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 168
    .line 169
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 170
    .line 171
    .line 172
    mul-double v9, v9, v11

    .line 173
    .line 174
    int-to-double v13, v1

    .line 175
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 176
    .line 177
    .line 178
    div-double/2addr v9, v13

    .line 179
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 180
    .line 181
    .line 182
    move-result-wide v9

    .line 183
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 188
    .line 189
    .line 190
    add-double/2addr v9, v7

    .line 191
    double-to-int v7, v9

    .line 192
    add-int/lit8 v2, v2, 0x1

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_6
    move v1, v7

    .line 196
    :goto_5
    int-to-float v1, v1

    .line 197
    mul-float v4, v4, v1

    .line 198
    .line 199
    float-to-int v1, v4

    .line 200
    move/from16 v2, v17

    .line 201
    .line 202
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    goto :goto_6

    .line 211
    :cond_7
    move/from16 v1, p2

    .line 212
    .line 213
    :goto_6
    move v2, v1

    .line 214
    move v1, v6

    .line 215
    goto/16 :goto_9

    .line 216
    .line 217
    :cond_8
    move v2, v14

    .line 218
    if-eq v9, v3, :cond_a

    .line 219
    .line 220
    new-instance v5, Landroidx/leanback/widget/i;

    .line 221
    .line 222
    const/4 v6, 0x6

    .line 223
    const/4 v8, 0x0

    .line 224
    invoke-direct {v5, v8, v6}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 225
    .line 226
    .line 227
    int-to-float v6, v15

    .line 228
    sub-float/2addr v6, v1

    .line 229
    float-to-int v13, v6

    .line 230
    if-gtz v13, :cond_9

    .line 231
    .line 232
    iget v1, v7, Lmb/g;->d:I

    .line 233
    .line 234
    iput v1, v5, Landroidx/leanback/widget/i;->b:I

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_9
    iget-object v1, v7, Lmb/g;->a:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    const/4 v6, 0x1

    .line 244
    sub-int/2addr v1, v6

    .line 245
    new-instance v6, Lf2/e0;

    .line 246
    .line 247
    const/4 v14, 0x5

    .line 248
    move-object v9, v6

    .line 249
    move-object v12, v5

    .line 250
    invoke-direct/range {v9 .. v14}, Lf2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v1, v6}, Lmb/g;->y(ILmb/f;)V

    .line 254
    .line 255
    .line 256
    :goto_7
    iget v1, v5, Landroidx/leanback/widget/i;->b:I

    .line 257
    .line 258
    int-to-float v1, v1

    .line 259
    mul-float v4, v4, v1

    .line 260
    .line 261
    float-to-int v1, v4

    .line 262
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    move v2, v1

    .line 271
    move/from16 v1, p1

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_a
    move/from16 v1, p1

    .line 275
    .line 276
    :cond_b
    move/from16 v2, p2

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_c
    move v2, v14

    .line 280
    if-eq v8, v3, :cond_d

    .line 281
    .line 282
    new-instance v5, Landroidx/leanback/widget/i;

    .line 283
    .line 284
    const/4 v6, 0x6

    .line 285
    const/4 v8, 0x0

    .line 286
    invoke-direct {v5, v8, v6}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 287
    .line 288
    .line 289
    iget-object v6, v7, Lmb/g;->a:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    const/4 v8, 0x1

    .line 296
    sub-int/2addr v6, v8

    .line 297
    new-instance v8, Lcom/hjq/permissions/b;

    .line 298
    .line 299
    const/16 v12, 0x12

    .line 300
    .line 301
    invoke-direct {v8, v10, v11, v5, v12}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7, v6, v8}, Lmb/g;->y(ILmb/f;)V

    .line 305
    .line 306
    .line 307
    iget v5, v5, Landroidx/leanback/widget/i;->b:I

    .line 308
    .line 309
    int-to-float v5, v5

    .line 310
    add-float/2addr v5, v1

    .line 311
    int-to-float v1, v15

    .line 312
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    float-to-int v1, v1

    .line 317
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    goto :goto_8

    .line 322
    :cond_d
    move/from16 v1, p1

    .line 323
    .line 324
    :goto_8
    if-eq v9, v3, :cond_b

    .line 325
    .line 326
    iget-object v5, v7, Lmb/g;->a:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    int-to-float v5, v5

    .line 333
    mul-float v4, v4, v5

    .line 334
    .line 335
    float-to-int v4, v4

    .line 336
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    :goto_9
    invoke-static {v1, v2}, Lsb/h;->g(II)J

    .line 345
    .line 346
    .line 347
    move-result-wide v1

    .line 348
    const/16 v3, 0x20

    .line 349
    .line 350
    shr-long v3, v1, v3

    .line 351
    .line 352
    long-to-int v4, v3

    .line 353
    const-wide v5, 0xffffffffL

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    and-long/2addr v1, v5

    .line 359
    long-to-int v2, v1

    .line 360
    const/4 v1, 0x1

    .line 361
    iput-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->X0:Z

    .line 362
    .line 363
    :goto_a
    invoke-super {v0, v4, v2}, Landroid/view/View;->onMeasure(II)V

    .line 364
    .line 365
    .line 366
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_9

    .line 6
    .line 7
    const/16 v0, 0x2002

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->O()V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 p2, 0x3ec

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 34
    .line 35
    invoke-virtual {v0}, Ltb/u;->g()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x3fd

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLeftHandleDescriptor()Lcc/d;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lcc/d;->a:Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRightHandleDescriptor()Lcc/d;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Lcc/d;->a:Landroid/graphics/RectF;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertHandleDescriptor()Lcc/d;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lcc/d;->a:Landroid/graphics/RectF;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/d;->d0(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/MotionEvent;I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    const/16 v0, 0x20

    .line 118
    .line 119
    shr-long v4, v2, v0

    .line 120
    .line 121
    long-to-int v0, v4

    .line 122
    const-wide v4, 0xffffffffL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    and-long/2addr v2, v4

    .line 128
    long-to-int v3, v2

    .line 129
    const/4 v2, 0x1

    .line 130
    if-nez v3, :cond_3

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const/4 v3, 0x0

    .line 135
    :goto_0
    const/4 v4, 0x5

    .line 136
    if-ne v0, v4, :cond_5

    .line 137
    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 141
    .line 142
    iget-boolean p2, p1, Ltb/u;->K:Z

    .line 143
    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    iget-boolean p1, p1, Ltb/u;->I:Z

    .line 147
    .line 148
    if-nez p1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1

    .line 159
    :cond_4
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const/16 p2, 0x3f0

    .line 169
    .line 170
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :cond_5
    if-ne v0, v2, :cond_7

    .line 176
    .line 177
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 178
    .line 179
    iget v0, v0, Ltb/e;->w:I

    .line 180
    .line 181
    if-eq v0, v2, :cond_6

    .line 182
    .line 183
    const/4 v1, 0x2

    .line 184
    if-eq v0, v1, :cond_6

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const/16 p2, 0x3ea

    .line 192
    .line 193
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    return-object p1

    .line 203
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/16 p2, 0x3fc

    .line 208
    .line 209
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    return-object p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 5
    .line 6
    iget-object v0, v0, Ltb/l;->d:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 9
    .line 10
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getVerticalEdgeEffect()Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getHorizontalEdgeEffect()Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p2, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getVerticalEdgeEffect()Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getHorizontalEdgeEffect()Landroid/widget/EdgeEffect;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    if-eq p1, p3, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v2, 0x0

    .line 63
    if-le p3, v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sub-int/2addr p3, v0

    .line 74
    int-to-float p3, p3

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p3, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-le v0, v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    sub-int/2addr v0, v2

    .line 96
    int-to-float v2, v0

    .line 97
    :cond_2
    invoke-virtual {p1, p3, v2, v1}, Ltb/u;->j(FFZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 103
    .line 104
    .line 105
    :goto_2
    iput-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->J1:Z

    .line 106
    .line 107
    iput-boolean v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->K1:Z

    .line 108
    .line 109
    if-le p4, p2, :cond_4

    .line 110
    .line 111
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 112
    .line 113
    iget-boolean p1, p1, Ltb/e;->l:Z

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 118
    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    invoke-static/range {p1 .. p1}, Ltb/a;->l(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_1c

    .line 19
    .line 20
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 26
    .line 27
    iget-object v5, v2, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 28
    .line 29
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->O()V

    .line 30
    .line 31
    .line 32
    iget-boolean v6, v2, Ltb/u;->s:Z

    .line 33
    .line 34
    if-nez v6, :cond_1a

    .line 35
    .line 36
    iget-boolean v6, v2, Ltb/u;->r:Z

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    const/4 v6, 0x0

    .line 43
    iput-object v6, v2, Ltb/u;->H:Landroid/graphics/PointF;

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const-wide v8, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/16 v10, 0x20

    .line 55
    .line 56
    if-eqz v7, :cond_16

    .line 57
    .line 58
    const/4 v11, 0x2

    .line 59
    if-eq v7, v4, :cond_8

    .line 60
    .line 61
    if-eq v7, v11, :cond_3

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    if-eq v7, v1, :cond_2

    .line 65
    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v2}, Ltb/u;->i()V

    .line 69
    .line 70
    .line 71
    iput v3, v2, Ltb/u;->z:I

    .line 72
    .line 73
    goto/16 :goto_7

    .line 74
    .line 75
    :cond_3
    iget-boolean v6, v2, Ltb/u;->G:Z

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    iget v7, v2, Ltb/u;->C:F

    .line 86
    .line 87
    sub-float/2addr v6, v7

    .line 88
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    iget v7, v2, Ltb/u;->A:I

    .line 93
    .line 94
    int-to-float v7, v7

    .line 95
    cmpl-float v6, v6, v7

    .line 96
    .line 97
    if-gtz v6, :cond_5

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    iget v11, v2, Ltb/u;->D:F

    .line 104
    .line 105
    sub-float/2addr v6, v11

    .line 106
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    cmpl-float v6, v6, v7

    .line 111
    .line 112
    if-lez v6, :cond_6

    .line 113
    .line 114
    :cond_5
    iput-boolean v3, v2, Ltb/u;->I:Z

    .line 115
    .line 116
    :cond_6
    iget v3, v2, Ltb/u;->E:I

    .line 117
    .line 118
    and-int/2addr v3, v4

    .line 119
    if-eqz v3, :cond_1b

    .line 120
    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {v5, v3, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->I(FF)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    shr-long v10, v6, v10

    .line 134
    .line 135
    long-to-int v15, v10

    .line 136
    and-long/2addr v6, v8

    .line 137
    long-to-int v3, v6

    .line 138
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lmb/g;->n()Lmb/a;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v6, v15, v3}, Lmb/a;->A(II)Lmb/b;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget-boolean v7, v2, Ltb/u;->I:Z

    .line 151
    .line 152
    if-nez v7, :cond_7

    .line 153
    .line 154
    iget-boolean v7, v2, Ltb/u;->K:Z

    .line 155
    .line 156
    if-nez v7, :cond_7

    .line 157
    .line 158
    iget-object v12, v2, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 159
    .line 160
    iget-object v7, v12, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 161
    .line 162
    iget v13, v7, Lmb/b;->b:I

    .line 163
    .line 164
    iget v14, v7, Lmb/b;->c:I

    .line 165
    .line 166
    const/16 v18, 0x1

    .line 167
    .line 168
    const/16 v17, 0x8

    .line 169
    .line 170
    move/from16 v16, v3

    .line 171
    .line 172
    invoke-virtual/range {v12 .. v18}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 173
    .line 174
    .line 175
    :cond_7
    iput-object v6, v2, Ltb/u;->L:Lmb/b;

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/view/View;->postInvalidate()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ltb/u;->l(Landroid/view/MotionEvent;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_7

    .line 184
    .line 185
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 186
    .line 187
    .line 188
    move-result-wide v12

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 190
    .line 191
    .line 192
    move-result-wide v14

    .line 193
    sub-long/2addr v12, v14

    .line 194
    long-to-float v7, v12

    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    int-to-float v12, v12

    .line 200
    const/high16 v13, 0x40000000    # 2.0f

    .line 201
    .line 202
    mul-float v12, v12, v13

    .line 203
    .line 204
    cmpl-float v7, v7, v12

    .line 205
    .line 206
    if-lez v7, :cond_9

    .line 207
    .line 208
    iput-boolean v3, v2, Ltb/u;->I:Z

    .line 209
    .line 210
    :cond_9
    iget-boolean v7, v2, Ltb/u;->G:Z

    .line 211
    .line 212
    if-nez v7, :cond_15

    .line 213
    .line 214
    iget-boolean v7, v2, Ltb/u;->K:Z

    .line 215
    .line 216
    if-eqz v7, :cond_f

    .line 217
    .line 218
    iget-boolean v7, v2, Ltb/u;->I:Z

    .line 219
    .line 220
    if-nez v7, :cond_f

    .line 221
    .line 222
    iget v7, v2, Ltb/u;->E:I

    .line 223
    .line 224
    and-int/2addr v7, v4

    .line 225
    if-eqz v7, :cond_f

    .line 226
    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    invoke-virtual {v5, v7, v12}, Lio/github/rosemoe/sora/widget/CodeEditor;->I(FF)J

    .line 236
    .line 237
    .line 238
    move-result-wide v12

    .line 239
    shr-long v14, v12, v10

    .line 240
    .line 241
    long-to-int v7, v14

    .line 242
    and-long/2addr v8, v12

    .line 243
    long-to-int v9, v8

    .line 244
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v8}, Lmb/g;->n()Lmb/a;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v8, v7, v9}, Lmb/a;->A(II)Lmb/b;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorRange()Lmb/o;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget v9, v7, Lmb/b;->a:I

    .line 264
    .line 265
    iget-object v10, v8, Lmb/o;->a:Lmb/b;

    .line 266
    .line 267
    iget v10, v10, Lmb/b;->a:I

    .line 268
    .line 269
    if-lt v9, v10, :cond_a

    .line 270
    .line 271
    iget-object v10, v8, Lmb/o;->b:Lmb/b;

    .line 272
    .line 273
    iget v10, v10, Lmb/b;->a:I

    .line 274
    .line 275
    if-ge v9, v10, :cond_a

    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_a
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getKeyMetaStates()Lqb/a;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    iget-boolean v9, v9, Lqb/a;->c:Z

    .line 284
    .line 285
    iget-object v10, v8, Lmb/o;->b:Lmb/b;

    .line 286
    .line 287
    if-nez v9, :cond_b

    .line 288
    .line 289
    invoke-virtual {v10, v7}, Lmb/b;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    if-nez v9, :cond_f

    .line 294
    .line 295
    :cond_b
    iget v9, v10, Lmb/b;->a:I

    .line 296
    .line 297
    iget-object v8, v8, Lmb/o;->a:Lmb/b;

    .line 298
    .line 299
    iget v12, v8, Lmb/b;->a:I

    .line 300
    .line 301
    sub-int/2addr v9, v12

    .line 302
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getKeyMetaStates()Lqb/a;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    iget-boolean v12, v12, Lqb/a;->c:Z

    .line 307
    .line 308
    if-eqz v12, :cond_c

    .line 309
    .line 310
    iget v12, v7, Lmb/b;->a:I

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_c
    iget v12, v7, Lmb/b;->a:I

    .line 314
    .line 315
    iget v13, v8, Lmb/b;->a:I

    .line 316
    .line 317
    if-ge v12, v13, :cond_d

    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_d
    sub-int/2addr v12, v9

    .line 321
    :goto_0
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    iget v8, v8, Lmb/b;->a:I

    .line 326
    .line 327
    iget v10, v10, Lmb/b;->a:I

    .line 328
    .line 329
    invoke-virtual {v13, v8, v10}, Lmb/g;->C(II)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getKeyMetaStates()Lqb/a;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    iget-boolean v10, v10, Lqb/a;->c:Z

    .line 338
    .line 339
    if-eqz v10, :cond_e

    .line 340
    .line 341
    iget v10, v7, Lmb/b;->b:I

    .line 342
    .line 343
    iget v14, v7, Lmb/b;->c:I

    .line 344
    .line 345
    invoke-virtual {v13, v10, v14, v8}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_e
    invoke-virtual {v13}, Lmb/g;->b()Z

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v13}, Lmb/g;->n()Lmb/a;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-virtual {v7, v12}, Lmb/a;->z(I)Lmb/b;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    iget v10, v7, Lmb/b;->b:I

    .line 364
    .line 365
    iget v14, v7, Lmb/b;->c:I

    .line 366
    .line 367
    invoke-virtual {v13, v10, v14, v8}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v13}, Lmb/g;->k()Z

    .line 371
    .line 372
    .line 373
    :goto_1
    invoke-virtual {v13}, Lmb/g;->n()Lmb/a;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    add-int/2addr v12, v9

    .line 378
    invoke-virtual {v8, v12}, Lmb/a;->z(I)Lmb/b;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    iget v13, v7, Lmb/b;->b:I

    .line 383
    .line 384
    iget v14, v7, Lmb/b;->c:I

    .line 385
    .line 386
    iget v15, v8, Lmb/b;->b:I

    .line 387
    .line 388
    iget v7, v8, Lmb/b;->c:I

    .line 389
    .line 390
    const/16 v17, 0x8

    .line 391
    .line 392
    const/16 v18, 0x1

    .line 393
    .line 394
    iget-object v12, v2, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 395
    .line 396
    move/from16 v16, v7

    .line 397
    .line 398
    invoke-virtual/range {v12 .. v18}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 399
    .line 400
    .line 401
    :cond_f
    :goto_2
    iget-boolean v7, v2, Ltb/u;->I:Z

    .line 402
    .line 403
    if-eqz v7, :cond_15

    .line 404
    .line 405
    iget v7, v2, Ltb/u;->E:I

    .line 406
    .line 407
    and-int/lit8 v8, v7, 0x1

    .line 408
    .line 409
    if-eqz v8, :cond_10

    .line 410
    .line 411
    invoke-virtual {v2, v1}, Ltb/u;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 412
    .line 413
    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 415
    .line 416
    .line 417
    move-result-wide v5

    .line 418
    iput-wide v5, v2, Ltb/u;->F:J

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_10
    and-int/2addr v7, v11

    .line 422
    if-eqz v7, :cond_15

    .line 423
    .line 424
    new-instance v7, Landroid/graphics/PointF;

    .line 425
    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 435
    .line 436
    .line 437
    iput-object v7, v2, Ltb/u;->H:Landroid/graphics/PointF;

    .line 438
    .line 439
    new-instance v7, Lha/jd;

    .line 440
    .line 441
    const/16 v8, 0x1a

    .line 442
    .line 443
    invoke-direct {v7, v8}, Lha/jd;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v7, v6, v1}, Ltb/u;->b(Lha/jd;Lmb/b;Landroid/view/MotionEvent;)I

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    and-int/2addr v6, v11

    .line 451
    if-eqz v6, :cond_11

    .line 452
    .line 453
    goto :goto_4

    .line 454
    :cond_11
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 455
    .line 456
    const/16 v7, 0x18

    .line 457
    .line 458
    if-lt v6, v7, :cond_12

    .line 459
    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    invoke-static {v5, v8, v9}, Lq/t;->t(Lio/github/rosemoe/sora/widget/CodeEditor;FF)V

    .line 469
    .line 470
    .line 471
    goto :goto_3

    .line 472
    :cond_12
    const/16 v8, 0x17

    .line 473
    .line 474
    if-lt v6, v8, :cond_13

    .line 475
    .line 476
    invoke-static {v5}, Lr8/a;->o(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 477
    .line 478
    .line 479
    :cond_13
    :goto_3
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    iget-boolean v8, v8, Ltb/e;->F:Z

    .line 484
    .line 485
    if-eqz v8, :cond_15

    .line 486
    .line 487
    if-lt v6, v7, :cond_14

    .line 488
    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    invoke-static {v5, v6, v1}, Lq/t;->B(Lio/github/rosemoe/sora/widget/CodeEditor;FF)V

    .line 498
    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->showContextMenu()Z

    .line 502
    .line 503
    .line 504
    :cond_15
    :goto_4
    invoke-virtual {v2}, Ltb/u;->i()V

    .line 505
    .line 506
    .line 507
    iput v3, v2, Ltb/u;->z:I

    .line 508
    .line 509
    goto/16 :goto_7

    .line 510
    .line 511
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    iput v6, v2, Ltb/u;->C:F

    .line 516
    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    iput v6, v2, Ltb/u;->D:F

    .line 522
    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    iput v6, v2, Ltb/u;->E:I

    .line 528
    .line 529
    iput-boolean v4, v2, Ltb/u;->I:Z

    .line 530
    .line 531
    and-int/2addr v6, v4

    .line 532
    if-eqz v6, :cond_1b

    .line 533
    .line 534
    invoke-virtual {v2, v1}, Ltb/u;->h(Landroid/view/MotionEvent;)Z

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    if-eqz v6, :cond_17

    .line 539
    .line 540
    iget-boolean v6, v2, Ltb/u;->s:Z

    .line 541
    .line 542
    if-nez v6, :cond_1b

    .line 543
    .line 544
    iget-boolean v6, v2, Ltb/u;->r:Z

    .line 545
    .line 546
    if-eqz v6, :cond_17

    .line 547
    .line 548
    goto :goto_7

    .line 549
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 550
    .line 551
    .line 552
    move-result-wide v6

    .line 553
    iget-wide v11, v2, Ltb/u;->F:J

    .line 554
    .line 555
    sub-long/2addr v6, v11

    .line 556
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 557
    .line 558
    .line 559
    move-result v11

    .line 560
    int-to-long v11, v11

    .line 561
    cmp-long v13, v6, v11

    .line 562
    .line 563
    if-gez v13, :cond_18

    .line 564
    .line 565
    iput-boolean v4, v2, Ltb/u;->G:Z

    .line 566
    .line 567
    invoke-virtual {v2, v1}, Ltb/u;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 568
    .line 569
    .line 570
    goto :goto_7

    .line 571
    :cond_18
    iget v1, v2, Ltb/u;->C:F

    .line 572
    .line 573
    iget v6, v2, Ltb/u;->D:F

    .line 574
    .line 575
    invoke-virtual {v5, v1, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->I(FF)J

    .line 576
    .line 577
    .line 578
    move-result-wide v6

    .line 579
    shr-long v10, v6, v10

    .line 580
    .line 581
    long-to-int v1, v10

    .line 582
    and-long/2addr v6, v8

    .line 583
    long-to-int v7, v6

    .line 584
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-virtual {v6}, Lmb/g;->n()Lmb/a;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    invoke-virtual {v6, v1, v7}, Lmb/a;->A(II)Lmb/b;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    iget-object v8, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 597
    .line 598
    invoke-virtual {v8}, Lmb/j;->a()Z

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    if-eqz v8, :cond_19

    .line 603
    .line 604
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorRange()Lmb/o;

    .line 605
    .line 606
    .line 607
    move-result-object v8

    .line 608
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    iget v9, v6, Lmb/b;->a:I

    .line 612
    .line 613
    iget-object v10, v8, Lmb/o;->a:Lmb/b;

    .line 614
    .line 615
    iget v10, v10, Lmb/b;->a:I

    .line 616
    .line 617
    if-lt v9, v10, :cond_19

    .line 618
    .line 619
    iget-object v8, v8, Lmb/o;->b:Lmb/b;

    .line 620
    .line 621
    iget v8, v8, Lmb/b;->a:I

    .line 622
    .line 623
    if-ge v9, v8, :cond_19

    .line 624
    .line 625
    iget v8, v2, Ltb/u;->C:F

    .line 626
    .line 627
    iget v9, v2, Ltb/u;->D:F

    .line 628
    .line 629
    invoke-virtual {v5, v8, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->Q(FF)Z

    .line 630
    .line 631
    .line 632
    move-result v8

    .line 633
    if-eqz v8, :cond_19

    .line 634
    .line 635
    iput-boolean v4, v2, Ltb/u;->K:Z

    .line 636
    .line 637
    goto :goto_5

    .line 638
    :cond_19
    iput-boolean v3, v2, Ltb/u;->K:Z

    .line 639
    .line 640
    const/16 v3, 0x8

    .line 641
    .line 642
    invoke-virtual {v5, v1, v7, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 646
    .line 647
    .line 648
    :goto_5
    iput-object v6, v2, Ltb/u;->L:Lmb/b;

    .line 649
    .line 650
    invoke-virtual {v5}, Landroid/view/View;->postInvalidate()V

    .line 651
    .line 652
    .line 653
    goto :goto_7

    .line 654
    :cond_1a
    :goto_6
    invoke-virtual {v2, v1}, Ltb/u;->h(Landroid/view/MotionEvent;)Z

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    :cond_1b
    :goto_7
    return v4

    .line 659
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->O()V

    .line 660
    .line 661
    .line 662
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 663
    .line 664
    iget-boolean v5, v2, Ltb/u;->s:Z

    .line 665
    .line 666
    if-nez v5, :cond_1e

    .line 667
    .line 668
    iget-boolean v5, v2, Ltb/u;->r:Z

    .line 669
    .line 670
    if-nez v5, :cond_1e

    .line 671
    .line 672
    invoke-virtual {v2}, Ltb/u;->g()Z

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-eqz v2, :cond_1d

    .line 677
    .line 678
    goto :goto_8

    .line 679
    :cond_1d
    const/4 v2, 0x0

    .line 680
    goto :goto_9

    .line 681
    :cond_1e
    :goto_8
    const/4 v2, 0x1

    .line 682
    :goto_9
    iget-object v5, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 683
    .line 684
    invoke-virtual {v5, v1}, Ltb/u;->h(Landroid/view/MotionEvent;)Z

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    iget-object v6, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 689
    .line 690
    iget-boolean v7, v6, Ltb/u;->s:Z

    .line 691
    .line 692
    if-nez v7, :cond_20

    .line 693
    .line 694
    iget-boolean v7, v6, Ltb/u;->r:Z

    .line 695
    .line 696
    if-nez v7, :cond_20

    .line 697
    .line 698
    invoke-virtual {v6}, Ltb/u;->g()Z

    .line 699
    .line 700
    .line 701
    move-result v6

    .line 702
    if-eqz v6, :cond_1f

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_1f
    const/4 v6, 0x0

    .line 706
    goto :goto_b

    .line 707
    :cond_20
    :goto_a
    const/4 v6, 0x1

    .line 708
    :goto_b
    iget-object v7, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->t1:Landroid/view/ScaleGestureDetector;

    .line 709
    .line 710
    invoke-virtual {v7, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    if-nez v6, :cond_21

    .line 715
    .line 716
    if-nez v2, :cond_21

    .line 717
    .line 718
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->s1:Landroid/view/GestureDetector;

    .line 719
    .line 720
    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    goto :goto_c

    .line 725
    :cond_21
    const/4 v2, 0x0

    .line 726
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    if-ne v1, v4, :cond_22

    .line 731
    .line 732
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 733
    .line 734
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 735
    .line 736
    .line 737
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 738
    .line 739
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 740
    .line 741
    .line 742
    :cond_22
    if-nez v7, :cond_23

    .line 743
    .line 744
    if-nez v2, :cond_23

    .line 745
    .line 746
    if-eqz v5, :cond_24

    .line 747
    .line 748
    :cond_23
    const/4 v3, 0x1

    .line 749
    :cond_24
    return v3
.end method

.method public final p0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 7
    .line 8
    iget-object v0, v0, Ltb/f;->b:Lmb/d;

    .line 9
    .line 10
    iget-boolean v1, v0, Lmb/d;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lmb/d;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 23
    .line 24
    iget-object v0, v0, Ltb/f;->b:Lmb/d;

    .line 25
    .line 26
    iget v2, v0, Lmb/d;->a:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :try_start_1
    iget v1, v0, Lmb/d;->c:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    move v8, v1

    .line 31
    move v7, v2

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    const/4 v2, -0x1

    .line 34
    :catch_1
    move v7, v2

    .line 35
    :goto_0
    const/4 v8, -0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v7, -0x1

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 40
    .line 41
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 42
    .line 43
    iget-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 44
    .line 45
    iget v5, v1, Lmb/b;->a:I

    .line 46
    .line 47
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 48
    .line 49
    iget v6, v0, Lmb/b;->a:I

    .line 50
    .line 51
    move-object v4, p0

    .line 52
    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_8

    .line 5
    .line 6
    const/16 v0, 0x2000

    .line 7
    .line 8
    if-eq p1, v0, :cond_7

    .line 9
    .line 10
    const/16 v0, 0x4000

    .line 11
    .line 12
    if-eq p1, v0, :cond_6

    .line 13
    .line 14
    const v0, 0x8000

    .line 15
    .line 16
    .line 17
    if-eq p1, v0, :cond_5

    .line 18
    .line 19
    const/high16 v0, 0x10000

    .line 20
    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    const/high16 v0, 0x200000

    .line 24
    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x17

    .line 30
    .line 31
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    const v0, 0x1020038

    .line 34
    .line 35
    .line 36
    if-eq p1, v0, :cond_1

    .line 37
    .line 38
    const v0, 0x102003a

    .line 39
    .line 40
    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Ltb/x;->i:Ltb/x;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->U(Ltb/x;)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    sget-object p1, Ltb/x;->j:Ltb/x;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->U(Ltb/x;)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_3
    const-string p1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->z()V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->X()V

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :cond_6
    invoke-virtual {p0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :cond_7
    sget-object p1, Ltb/x;->j:Ltb/x;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->U(Ltb/x;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_8
    sget-object p1, Ltb/x;->i:Ltb/x;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->U(Ltb/x;)V

    .line 92
    .line 93
    .line 94
    return v1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    sget-object v0, Lsb/c;->a:Lsb/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->X0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    .line 13
    const/4 v2, -0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 29
    .line 30
    invoke-interface {v1}, Lwb/d;->d()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public setBlockLineEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBlockLineWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorScheme(Lzb/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j1:Lzb/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lzb/a;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-ne v1, p0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j1:Lzb/a;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lzb/a;->a(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setCursorAnimationEnabled(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 4
    .line 5
    check-cast v0, Ldc/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Ldc/c;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Q0:Z

    .line 11
    .line 12
    return-void
.end method

.method public setCursorAnimator(Lcc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z1:Lcc/a;

    .line 2
    .line 3
    return-void
.end method

.method public setCursorBlinkPeriod(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ltb/d;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ltb/d;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget v1, v0, Ltb/d;->e:I

    .line 14
    .line 15
    iput p1, v0, Ltb/d;->e:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-gtz p1, :cond_1

    .line 19
    .line 20
    iput-boolean v2, v0, Ltb/d;->b:Z

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, v0, Ltb/d;->c:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean v2, v0, Ltb/d;->c:Z

    .line 27
    .line 28
    :goto_0
    if-gtz v1, :cond_2

    .line 29
    .line 30
    iget-boolean p1, v0, Ltb/d;->c:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Lm0/h;->v(Lio/github/rosemoe/sora/widget/CodeEditor;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B1:Ltb/d;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public setCursorWidth(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "width can not be under zero"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public setDiagnosticIndicatorStyle(Lcc/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->n1:Lcc/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDiagnostics(Lib/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setDisableSoftKbdIfHardKbdAvailable(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a1:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a1:Z

    .line 7
    .line 8
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setDisplayLnPanel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->O:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividerMargin(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->f0(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "width can not be under zero"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public setEdgeEffectColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->v1:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lt0/e;->v(Landroid/widget/EdgeEffect;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->w1:Landroid/widget/EdgeEffect;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lt0/e;->v(Landroid/widget/EdgeEffect;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEditable(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->G:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M1:Lac/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setEditorLanguage(Lgb/b;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lgb/a;

    .line 4
    .line 5
    invoke-direct {p1}, Lgb/a;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 14
    .line 15
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget p1, p1, Lmb/g;->d:I

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "start > end"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b:Ls4/a;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p1, Ls4/a;->d:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_3
    sget-object p1, Lgb/a;->a:Ls4/a;

    .line 40
    .line 41
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b:Ls4/a;

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    new-instance p1, Ls4/a;

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    invoke-direct {p1, v0}, Ls4/a;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b:Ls4/a;

    .line 57
    .line 58
    :cond_4
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b:Ls4/a;

    .line 59
    .line 60
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 61
    .line 62
    iget-object v0, v0, Ltb/e;->a:Ls4/a;

    .line 63
    .line 64
    iput-object v0, p1, Ls4/a;->d:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 67
    .line 68
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x1:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 9
    .line 10
    return-void
.end method

.method public setFirstLineNumberAlwaysVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->T0:Z

    .line 2
    .line 3
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Leb/c;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 9
    .line 10
    iget-object v0, v0, Ltb/l;->c:Leb/c;

    .line 11
    .line 12
    invoke-static {v0, p1}, Ltb/b;->x(Leb/c;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 16
    .line 17
    iget-object v0, v0, Ltb/l;->g:Leb/c;

    .line 18
    .line 19
    invoke-static {v0, p1}, Ltb/b;->x(Leb/c;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 23
    .line 24
    invoke-virtual {p1}, Ltb/l;->C()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setFormatTip(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l1:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setHardwareAcceleratedDrawAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->G1:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setHighlightBracketPair(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 10
    .line 11
    invoke-virtual {p1}, Ll5/y;->N()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setHighlightCurrentBlock(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M0:Z

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iput v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setHighlightCurrentLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHighlightTexts(Ljb/b;)V
    .locals 0

    .line 1
    new-instance p1, La0/o;

    .line 2
    .line 3
    invoke-direct {p1}, La0/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->P0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iput-object p1, v0, Ltb/l;->s:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-void
.end method

.method public setHorizontalScrollbarTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iput-object p1, v0, Ltb/l;->t:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-void
.end method

.method public setInlayHints(Lkb/a;)V
    .locals 1

    .line 1
    new-instance p1, La0/o;

    .line 2
    .line 3
    invoke-direct {p1}, La0/o;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lh5/m;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lh5/m;-><init>(La0/o;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lwb/d;->i(Lh5/m;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 26
    .line 27
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setInputType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->n:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInterceptParentHorizontalScrollIfNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->t0:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setLayoutBusy(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 13
    .line 14
    iget-boolean v1, p1, Ltb/u;->V:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iput-boolean v0, p1, Ltb/u;->V:Z

    .line 19
    .line 20
    iget-wide v1, p1, Ltb/u;->T:J

    .line 21
    .line 22
    const/16 p1, 0x20

    .line 23
    .line 24
    shr-long v3, v1, p1

    .line 25
    .line 26
    long-to-int p1, v3

    .line 27
    const-wide v3, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v1, v3

    .line 33
    long-to-int v2, v1

    .line 34
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 35
    .line 36
    check-cast v1, Lwb/n;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v2}, Lwb/n;->x(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    mul-int v1, v1, p1

    .line 47
    .line 48
    int-to-float p1, v1

    .line 49
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 50
    .line 51
    iget v2, v1, Ltb/u;->X:F

    .line 52
    .line 53
    sub-float/2addr p1, v2

    .line 54
    iget-object v1, v1, Ltb/u;->b:Ltb/m;

    .line 55
    .line 56
    new-instance v9, Ldb/w;

    .line 57
    .line 58
    iget-object v2, v1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget-object v2, v1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    float-to-int p1, p1

    .line 71
    const/4 v8, 0x5

    .line 72
    const/4 v6, 0x0

    .line 73
    move-object v2, v9

    .line 74
    move-object v3, p0

    .line 75
    move v7, p1

    .line 76
    invoke-direct/range {v2 .. v8}, Ldb/w;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;IIIII)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 80
    .line 81
    invoke-virtual {v2, v9}, Ldb/p;->a(Lbi/a;)I

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    move-object v2, v1

    .line 89
    move v4, p1

    .line 90
    invoke-virtual/range {v2 .. v7}, Ltb/m;->b(IIIII)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ltb/m;->a()V

    .line 99
    .line 100
    .line 101
    :cond_0
    iput-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 102
    .line 103
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 107
    .line 108
    .line 109
    new-instance p1, Ldb/a;

    .line 110
    .line 111
    const/4 v0, 0x3

    .line 112
    invoke-direct {p1, p0, v0}, Ldb/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ldb/p;->a(Lbi/a;)I

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 122
    .line 123
    if-ne v0, p1, :cond_2

    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->N:Z

    .line 127
    .line 128
    new-instance p1, Ldb/a;

    .line 129
    .line 130
    const/4 v0, 0x3

    .line 131
    invoke-direct {p1, p0, v0}, Ldb/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ldb/p;->a(Lbi/a;)I

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public setLigatureEnabled(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string p1, "\'liga\' 0,\'calt\' 0,\'hlig\' 0,\'dlig\' 0,\'clig\' 0"

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLineInfoTextSize(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->z:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setLineNumberAlign(Landroid/graphics/Paint$Align;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->r1:Landroid/graphics/Paint$Align;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLineNumberEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setLineNumberMarginLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLineNumberTipTextProvider(Lcc/c;)V
    .locals 1

    .line 1
    const-string v0, "Provider can not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k1:Lcc/c;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineSeparator(Lmb/m;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmb/m;->c:Lmb/m;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->L1:Lmb/m;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public setLineSpacingExtra(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->B:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLnPanelPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->P:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLnPanelPositionMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->R:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNonPrintablePaintingFlags(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->p:I

    .line 2
    .line 3
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->p:I

    .line 4
    .line 5
    and-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    and-int/lit16 p1, p1, 0x80

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setPinLineNumber(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->R0:Z

    .line 2
    .line 3
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRenderFunctionCharacters(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 6
    .line 7
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 8
    .line 9
    invoke-virtual {p1}, Ltb/l;->B()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setScalable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScrollBarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->P0:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->O0:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSelectionHandleStyle(Lcc/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcc/e;

    .line 5
    .line 6
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->A1:Lcc/e;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSoftKeyboardEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Z0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Z0:Z

    .line 7
    .line 8
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->c0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setStickyTextSelection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->V0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStyles(Ljb/d;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->M0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->l:I

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 14
    .line 15
    invoke-virtual {p1}, Ltb/l;->C()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setTabWidth(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k:I

    .line 5
    .line 6
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 12
    .line 13
    invoke-virtual {p1}, Ltb/l;->C()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "width can not be under 1"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lmb/g;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 16
    .line 17
    iput v1, v0, Lmb/g;->e:I

    .line 18
    .line 19
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->D1:Landroid/os/Bundle;

    .line 25
    .line 26
    instance-of v0, p1, Lmb/g;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    check-cast p1, Lmb/g;

    .line 32
    .line 33
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 34
    .line 35
    iput v1, p1, Lmb/g;->e:I

    .line 36
    .line 37
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 38
    .line 39
    invoke-virtual {p1}, Ltb/l;->C()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lmb/g;

    .line 44
    .line 45
    invoke-direct {v0, p1, v2}, Lmb/g;-><init>(Ljava/lang/CharSequence;Z)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 56
    .line 57
    invoke-virtual {p1}, Lmb/g;->m()Lmb/j;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 62
    .line 63
    iget-object p1, p1, Lmb/j;->d:Lmb/b;

    .line 64
    .line 65
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g:Lmb/b;

    .line 70
    .line 71
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 72
    .line 73
    iget-object v3, p1, Ltb/u;->b:Ltb/m;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-virtual/range {v3 .. v8}, Ltb/m;->b(IIIII)V

    .line 81
    .line 82
    .line 83
    iput-boolean v1, p1, Ltb/u;->r:Z

    .line 84
    .line 85
    iput-boolean v1, p1, Ltb/u;->s:Z

    .line 86
    .line 87
    const/4 v0, -0x1

    .line 88
    iput v0, p1, Ltb/u;->e:I

    .line 89
    .line 90
    invoke-virtual {p1}, Ltb/u;->e()V

    .line 91
    .line 92
    .line 93
    iget-object p1, p1, Ltb/u;->d:Lvb/v;

    .line 94
    .line 95
    invoke-virtual {p1}, Lvb/v;->a()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Lmb/g;->a(Lmb/i;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 104
    .line 105
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->I:Z

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lmb/g;->z(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 111
    .line 112
    iget-object v0, p1, Lmb/g;->h:Lnb/a;

    .line 113
    .line 114
    iput-boolean v2, v0, Lnb/a;->b:Z

    .line 115
    .line 116
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 117
    .line 118
    iget-object p1, p1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iget-object v0, v0, Lyb/b;->a:Landroidx/room/s;

    .line 125
    .line 126
    iget-object v3, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v3, La0/n;

    .line 129
    .line 130
    iget v4, v3, La0/n;->b:I

    .line 131
    .line 132
    if-le v4, p1, :cond_3

    .line 133
    .line 134
    invoke-virtual {v3, p1, v4}, La0/n;->c(II)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    if-ge v4, p1, :cond_4

    .line 139
    .line 140
    sub-int/2addr p1, v4

    .line 141
    const/4 v4, 0x0

    .line 142
    :goto_1
    if-ge v4, p1, :cond_4

    .line 143
    .line 144
    iget v5, v3, La0/n;->b:I

    .line 145
    .line 146
    add-int/2addr v5, v2

    .line 147
    invoke-virtual {v3, v5}, La0/n;->a(I)V

    .line 148
    .line 149
    .line 150
    iget-object v5, v3, La0/n;->a:[I

    .line 151
    .line 152
    iget v6, v3, La0/n;->b:I

    .line 153
    .line 154
    aput v1, v5, v6

    .line 155
    .line 156
    add-int/2addr v6, v2

    .line 157
    iput v6, v3, La0/n;->b:I

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    :goto_2
    iget p1, v3, La0/n;->b:I

    .line 163
    .line 164
    const/high16 v4, -0x80000000

    .line 165
    .line 166
    if-gt p1, v4, :cond_5

    .line 167
    .line 168
    sget-object p1, Lye/c;->d:Lye/c;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    new-instance v4, Lye/c;

    .line 172
    .line 173
    sub-int/2addr p1, v2

    .line 174
    invoke-direct {v4, v1, p1}, Lye/c;-><init>(II)V

    .line 175
    .line 176
    .line 177
    move-object p1, v4

    .line 178
    :goto_3
    invoke-virtual {p1}, Lye/a;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_4
    move-object v4, p1

    .line 183
    check-cast v4, Lye/b;

    .line 184
    .line 185
    iget-boolean v4, v4, Lye/b;->c:Z

    .line 186
    .line 187
    if-eqz v4, :cond_7

    .line 188
    .line 189
    move-object v4, p1

    .line 190
    check-cast v4, Lye/b;

    .line 191
    .line 192
    invoke-virtual {v4}, Lye/b;->a()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ltz v4, :cond_6

    .line 197
    .line 198
    iget v5, v3, La0/n;->b:I

    .line 199
    .line 200
    if-ge v4, v5, :cond_6

    .line 201
    .line 202
    iget-object v5, v3, La0/n;->a:[I

    .line 203
    .line 204
    aget v6, v5, v4

    .line 205
    .line 206
    aput v1, v5, v4

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 210
    .line 211
    const-string v0, "Index must be between 0 and size"

    .line 212
    .line 213
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :cond_7
    iget-object p1, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 225
    .line 226
    iget-object v0, p1, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 227
    .line 228
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iput-object v1, p1, Ltb/l;->D:Lmb/j;

    .line 233
    .line 234
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, p1, Ltb/l;->F:Lmb/g;

    .line 239
    .line 240
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 241
    .line 242
    if-eqz p1, :cond_9

    .line 243
    .line 244
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 245
    .line 246
    iget v0, v0, Lmb/g;->d:I

    .line 247
    .line 248
    if-ltz v0, :cond_8

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    const-string v0, "start > end"

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_9
    :goto_5
    new-instance p1, Ldb/d;

    .line 263
    .line 264
    new-instance v6, Lmb/b;

    .line 265
    .line 266
    invoke-direct {v6}, Lmb/b;-><init>()V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 270
    .line 271
    invoke-virtual {v0}, Lmb/g;->n()Lmb/a;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    sub-int/2addr v1, v2

    .line 280
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 281
    .line 282
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    sub-int/2addr v4, v2

    .line 287
    invoke-virtual {v3, v4}, Lmb/g;->o(I)Lmb/h;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    iget v3, v3, Lmb/h;->c:I

    .line 292
    .line 293
    invoke-virtual {v0, v1, v3}, Lmb/a;->A(II)Lmb/b;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    iget-object v8, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    const/4 v5, 0x1

    .line 301
    move-object v3, p1

    .line 302
    move-object v4, p0

    .line 303
    invoke-direct/range {v3 .. v9}, Ldb/d;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;ILmb/b;Lmb/b;Ljava/lang/CharSequence;Z)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 307
    .line 308
    invoke-virtual {v0, p1}, Ldb/p;->a(Lbi/a;)I

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 312
    .line 313
    .line 314
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->f1:Landroid/view/inputmethod/InputMethodManager;

    .line 315
    .line 316
    if-eqz p1, :cond_a

    .line 317
    .line 318
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->E1:Lyb/b;

    .line 325
    .line 326
    invoke-virtual {p1}, Lyb/b;->a()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 330
    .line 331
    .line 332
    return-void
.end method

.method public setTextBorderWidth(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->x:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "width can not be under zero"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public setTextLetterSpacing(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v1, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Leb/c;->setLetterSpacing(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Ltb/l;->c:Leb/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Leb/c;->setLetterSpacing(F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ltb/l;->B()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iget-object v1, v0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Ltb/l;->c:Leb/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ltb/l;->B()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTextSizePx(F)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setTextSizePx(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTextSizePxDirect(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTextSizePxDirect(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextSizePx()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 6
    .line 7
    iget-object v2, v1, Ltb/l;->b:Leb/c;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Leb/c;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v3, v1, Ltb/l;->c:Leb/c;

    .line 16
    .line 17
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    iget-object v4, v1, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 21
    .line 22
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const v5, 0x3f59999a    # 0.85f

    .line 30
    .line 31
    .line 32
    mul-float v5, v5, p1

    .line 33
    .line 34
    iget-object v6, v1, Ltb/l;->g:Leb/c;

    .line 35
    .line 36
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v1, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v1, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v1, Ltb/l;->B:Landroid/graphics/Paint$FontMetricsInt;

    .line 56
    .line 57
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lyb/b;->a()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ltb/l;->C()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Ldb/a0;

    .line 68
    .line 69
    invoke-direct {v1, p0, v0, p1}, Ldb/a0;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;FF)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ldb/p;->a(Lbi/a;)I

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setTypefaceLineNumber(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Ltb/l;->c:Leb/c;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 20
    .line 21
    iget-object p1, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setTypefaceText(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Ltb/l;->b:Leb/c;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Leb/c;->c()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 23
    .line 24
    iget-object p1, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lyb/b;->a()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ltb/l;->C()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->b0()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setUndoEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->I:Z

    .line 2
    .line 3
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lmb/g;->z(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVerticalExtraSpaceFactor(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_0

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v1, p1, v1

    .line 9
    .line 10
    if-gtz v1, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->D:F

    .line 13
    .line 14
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v0, v1}, Ltb/u;->j(FFZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "the factor should be in range [0.0, 1.0]"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->O0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iput-object p1, v0, Ltb/l;->u:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-void
.end method

.method public setVerticalScrollbarTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 2
    .line 3
    iput-object p1, v0, Ltb/l;->v:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-void
.end method

.method public setWordwrap(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->k0(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final t()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->a1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 28
    .line 29
    if-ne v0, v3, :cond_0

    .line 30
    .line 31
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->Z0:Z

    .line 35
    .line 36
    return v0
.end method

.method public final u(Ljava/lang/CharSequence;ZZ)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-boolean p3, p3, Ltb/e;->d:Z

    .line 10
    .line 11
    if-eqz p3, :cond_3

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-lez p3, :cond_3

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    sub-int/2addr p3, v0

    .line 24
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-le v2, v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v2, v1

    .line 44
    :goto_0
    iget-object v3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->b:Ls4/a;

    .line 45
    .line 46
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 47
    .line 48
    iget-object v4, v4, Lmb/j;->c:Lmb/b;

    .line 49
    .line 50
    invoke-virtual {v4}, Lmb/b;->a()Lmb/b;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 58
    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3, p3}, Ls4/a;->h(C)Ltb/y;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v2, v1

    .line 68
    :goto_1
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget p3, v4, Lmb/b;->a:I

    .line 71
    .line 72
    iput p3, v2, Ltb/y;->a:I

    .line 73
    .line 74
    iput p3, v2, Ltb/y;->b:I

    .line 75
    .line 76
    move-object v1, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    invoke-virtual {v3, p3}, Ls4/a;->i(C)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ltb/y;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    :goto_3
    iget-object p3, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 103
    .line 104
    iget-object v8, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 105
    .line 106
    iget-object v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 107
    .line 108
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :catch_0
    nop

    .line 113
    :goto_4
    if-eqz v1, :cond_4

    .line 114
    .line 115
    sget-object v2, Ltb/y;->c:Ltb/y;

    .line 116
    .line 117
    if-eq v1, v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {p3}, Lmb/j;->a()Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Lmb/g;->b()Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8}, Lmb/g;->n()Lmb/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget p2, v1, Ltb/y;->b:I

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lmb/a;->z(I)Lmb/b;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget v3, p1, Lmb/b;->b:I

    .line 136
    .line 137
    iget v4, p1, Lmb/b;->c:I

    .line 138
    .line 139
    iget-object p2, p3, Lmb/j;->d:Lmb/b;

    .line 140
    .line 141
    iget v6, p2, Lmb/b;->b:I

    .line 142
    .line 143
    iget v7, p2, Lmb/b;->c:I

    .line 144
    .line 145
    const-string v5, ""

    .line 146
    .line 147
    move-object v2, v8

    .line 148
    invoke-virtual/range {v2 .. v7}, Lmb/g;->w(IILjava/lang/CharSequence;II)V

    .line 149
    .line 150
    .line 151
    iget p2, p1, Lmb/b;->b:I

    .line 152
    .line 153
    iget p1, p1, Lmb/b;->c:I

    .line 154
    .line 155
    const-string p3, ""

    .line 156
    .line 157
    invoke-virtual {v8, p2, p1, p3}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, Lmb/g;->k()Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Lmb/g;->n()Lmb/a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget p2, v1, Ltb/y;->a:I

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Lmb/a;->z(I)Lmb/b;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget p2, p1, Lmb/b;->b:I

    .line 174
    .line 175
    iget p1, p1, Lmb/b;->c:I

    .line 176
    .line 177
    invoke-virtual {p0, p2, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_4
    invoke-virtual {p3}, Lmb/j;->a()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    iget-object p2, p3, Lmb/j;->c:Lmb/b;

    .line 188
    .line 189
    iget v3, p2, Lmb/b;->b:I

    .line 190
    .line 191
    iget v4, p2, Lmb/b;->c:I

    .line 192
    .line 193
    iget-object p2, p3, Lmb/j;->d:Lmb/b;

    .line 194
    .line 195
    iget v6, p2, Lmb/b;->b:I

    .line 196
    .line 197
    iget v7, p2, Lmb/b;->c:I

    .line 198
    .line 199
    move-object v2, v8

    .line 200
    move-object v5, p1

    .line 201
    invoke-virtual/range {v2 .. v7}, Lmb/g;->w(IILjava/lang/CharSequence;II)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_5
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 207
    .line 208
    iget-boolean v1, v1, Ltb/e;->f:Z

    .line 209
    .line 210
    if-eqz v1, :cond_c

    .line 211
    .line 212
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    if-eqz p2, :cond_c

    .line 219
    .line 220
    const/4 p2, 0x0

    .line 221
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    const/16 v2, 0xd

    .line 226
    .line 227
    const/16 v3, 0xa

    .line 228
    .line 229
    if-eq v1, v3, :cond_6

    .line 230
    .line 231
    if-ne v1, v2, :cond_c

    .line 232
    .line 233
    :cond_6
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 234
    .line 235
    iget-object v5, p3, Lmb/j;->c:Lmb/b;

    .line 236
    .line 237
    iget v5, v5, Lmb/b;->b:I

    .line 238
    .line 239
    invoke-virtual {v4, v5}, Lmb/g;->q(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const/4 v5, 0x0

    .line 244
    const/4 v6, 0x0

    .line 245
    :goto_5
    iget-object v7, p3, Lmb/j;->c:Lmb/b;

    .line 246
    .line 247
    iget v7, v7, Lmb/b;->c:I

    .line 248
    .line 249
    if-ge p2, v7, :cond_9

    .line 250
    .line 251
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    const/16 v9, 0x9

    .line 256
    .line 257
    if-eq v7, v9, :cond_7

    .line 258
    .line 259
    const/16 v10, 0x20

    .line 260
    .line 261
    if-ne v7, v10, :cond_9

    .line 262
    .line 263
    :cond_7
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-ne v7, v9, :cond_8

    .line 268
    .line 269
    add-int/lit8 v6, v6, 0x1

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_9
    iget p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k:I

    .line 278
    .line 279
    mul-int v6, v6, p2

    .line 280
    .line 281
    add-int/2addr v6, v5

    .line 282
    :try_start_1
    iget-object p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 283
    .line 284
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 285
    .line 286
    iget v4, v4, Lmb/g;->d:I

    .line 287
    .line 288
    if-ltz v4, :cond_a

    .line 289
    .line 290
    iget-object v4, p3, Lmb/j;->c:Lmb/b;

    .line 291
    .line 292
    iget v4, v4, Lmb/b;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .line 294
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :catch_1
    nop

    .line 299
    goto :goto_7

    .line 300
    :catch_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 305
    .line 306
    const-string v4, "start > end"

    .line 307
    .line 308
    invoke-direct {p2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 312
    :goto_7
    if-ne v1, v2, :cond_b

    .line 313
    .line 314
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    const/4 v1, 0x2

    .line 319
    if-lt p2, v1, :cond_b

    .line 320
    .line 321
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-ne p2, v3, :cond_b

    .line 326
    .line 327
    const/4 v0, 0x2

    .line 328
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    iget p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->k:I

    .line 334
    .line 335
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v6, p1}, Lmb/k;->b(II)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move-object p1, p2

    .line 348
    :cond_c
    iget-object p2, p3, Lmb/j;->c:Lmb/b;

    .line 349
    .line 350
    iget p3, p2, Lmb/b;->b:I

    .line 351
    .line 352
    iget p2, p2, Lmb/b;->c:I

    .line 353
    .line 354
    invoke-virtual {v8, p3, p2, p1}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    :goto_8
    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 14
    .line 15
    iget-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 16
    .line 17
    iget v1, v1, Lmb/b;->a:I

    .line 18
    .line 19
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 20
    .line 21
    iget v0, v0, Lmb/b;->a:I

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->w(IILjava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lmb/j;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 46
    .line 47
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p1, p1, Lmb/b;->b:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Lmb/g;->o(I)Lmb/h;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget v1, v1, Lmb/h;->c:I

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSeparator()Lmb/m;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Lmb/m;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0, v0, v1, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->w(IILjava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public final w(IILjava/lang/CharSequence;)V
    .locals 4

    .line 1
    if-ge p2, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sub-int v0, p2, p1

    .line 5
    .line 6
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 7
    .line 8
    iget v1, v1, Ltb/e;->A:I

    .line 9
    .line 10
    const v2, 0x7f130161

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-le v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lcb/a;->a:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, p2

    .line 30
    :goto_0
    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    :try_start_0
    instance-of v0, p3, Lmb/g;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast p3, Lmb/g;

    .line 43
    .line 44
    invoke-virtual {p3, p1, p2}, Lmb/g;->C(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    invoke-interface {p3, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_1
    iget-object p2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 60
    .line 61
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    instance-of p2, p2, Landroid/os/TransactionTooLargeException;

    .line 74
    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object p2, Lcb/a;->a:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_4

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v2, p2

    .line 91
    :goto_3
    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 116
    .line 117
    .line 118
    :goto_4
    return-void
.end method

.method public final x(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    instance-of v2, v0, Lwb/g;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-boolean v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    check-cast v0, Lwb/g;

    .line 15
    .line 16
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 17
    .line 18
    iput-object p1, v0, Lwb/c;->b:Lmb/g;

    .line 19
    .line 20
    iget-object p1, v0, Lwb/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    .line 24
    .line 25
    new-instance p1, Lu1/p;

    .line 26
    .line 27
    iget-object v2, v0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 28
    .line 29
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-direct {p1, v2}, Lu1/p;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v0, Lwb/g;->g:Lu1/p;

    .line 37
    .line 38
    iget-object v2, v0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 39
    .line 40
    iget-boolean v2, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 41
    .line 42
    iput-boolean v2, p1, Lu1/p;->b:Z

    .line 43
    .line 44
    :try_start_0
    iget-object p1, v0, Lwb/g;->e:Lbd/e;

    .line 45
    .line 46
    iget-object p1, p1, Lbd/e;->h:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    .line 50
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    .line 52
    const-wide/16 v3, 0x5

    .line 53
    .line 54
    invoke-virtual {p1, v3, v4, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget-object p1, v0, Lwb/g;->e:Lbd/e;

    .line 61
    .line 62
    iget-object p1, p1, Lbd/e;->h:Ljava/io/Serializable;

    .line 63
    .line 64
    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lwb/g;->e:Lbd/e;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v2, Lsb/a;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Lsb/a;-><init>(Lbd/e;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p1, Lbd/e;->k:Ljava/lang/Object;

    .line 80
    .line 81
    iput v1, p1, Lbd/e;->c:I

    .line 82
    .line 83
    iget-object v2, p1, Lbd/e;->j:Ljava/io/Serializable;

    .line 84
    .line 85
    check-cast v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    iput-object v2, p1, Lbd/e;->l:Ljava/lang/Object;

    .line 92
    .line 93
    iput v1, p1, Lbd/e;->e:I

    .line 94
    .line 95
    iget-object p1, v0, Lwb/g;->f:Lbd/e;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v3, Lsb/a;

    .line 101
    .line 102
    invoke-direct {v3, p1}, Lsb/a;-><init>(Lbd/e;)V

    .line 103
    .line 104
    .line 105
    iput-object v3, p1, Lbd/e;->k:Ljava/lang/Object;

    .line 106
    .line 107
    iput v1, p1, Lbd/e;->c:I

    .line 108
    .line 109
    iget-object v3, p1, Lbd/e;->j:Ljava/io/Serializable;

    .line 110
    .line 111
    check-cast v3, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    .line 115
    .line 116
    iput-object v2, p1, Lbd/e;->l:Ljava/lang/Object;

    .line 117
    .line 118
    iput v1, p1, Lbd/e;->e:I

    .line 119
    .line 120
    iget-object p1, v0, Lwb/g;->e:Lbd/e;

    .line 121
    .line 122
    iget-object v1, v0, Lwb/g;->f:Lbd/e;

    .line 123
    .line 124
    invoke-virtual {v0, p1, v1}, Lwb/g;->u(Lbd/e;Lbd/e;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception p1

    .line 129
    goto :goto_1

    .line 130
    :cond_0
    new-instance p1, Lbd/e;

    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    invoke-direct {p1, v1}, Lbd/e;-><init>(I)V

    .line 134
    .line 135
    .line 136
    iput-object p1, v0, Lwb/g;->e:Lbd/e;

    .line 137
    .line 138
    new-instance v1, Lbd/e;

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    invoke-direct {v1, v2}, Lbd/e;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iput-object v1, v0, Lwb/g;->f:Lbd/e;

    .line 145
    .line 146
    invoke-virtual {v0, p1, v1}, Lwb/g;->u(Lbd/e;Lbd/e;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void

    .line 150
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 151
    .line 152
    const-string v1, "Unable to wait for lock"

    .line 153
    .line 154
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_1
    instance-of v2, v0, Lwb/n;

    .line 159
    .line 160
    if-eqz v2, :cond_2

    .line 161
    .line 162
    iget-boolean v2, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 163
    .line 164
    if-eqz v2, :cond_2

    .line 165
    .line 166
    new-instance v0, Lwb/n;

    .line 167
    .line 168
    iget-object v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 169
    .line 170
    iget-boolean v6, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->S0:Z

    .line 171
    .line 172
    iget-object v1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 173
    .line 174
    move-object v7, v1

    .line 175
    check-cast v7, Lwb/n;

    .line 176
    .line 177
    move-object v3, v0

    .line 178
    move-object v4, p0

    .line 179
    move v8, p1

    .line 180
    invoke-direct/range {v3 .. v8}, Lwb/n;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;ZLwb/n;Z)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 184
    .line 185
    invoke-interface {p1}, Lwb/d;->m()V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 189
    .line 190
    return-void

    .line 191
    :cond_2
    invoke-interface {v0}, Lwb/d;->m()V

    .line 192
    .line 193
    .line 194
    :cond_3
    iget-boolean p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 195
    .line 196
    if-eqz p1, :cond_4

    .line 197
    .line 198
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->F1:Ltb/l;

    .line 199
    .line 200
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->R()F

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    float-to-int v0, v0

    .line 205
    iput v0, p1, Ltb/l;->C:I

    .line 206
    .line 207
    new-instance p1, Lwb/n;

    .line 208
    .line 209
    iget-object v4, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 210
    .line 211
    iget-boolean v5, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->S0:Z

    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    const/4 v7, 0x0

    .line 215
    move-object v2, p1

    .line 216
    move-object v3, p0

    .line 217
    invoke-direct/range {v2 .. v7}, Lwb/n;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;ZLwb/n;Z)V

    .line 218
    .line 219
    .line 220
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_4
    new-instance p1, Lwb/g;

    .line 224
    .line 225
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 226
    .line 227
    invoke-direct {p1, p0, v0}, Lwb/g;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;)V

    .line 228
    .line 229
    .line 230
    iput-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 231
    .line 232
    :goto_2
    iget-object p1, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 233
    .line 234
    if-eqz p1, :cond_5

    .line 235
    .line 236
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p1, v0, v0, v1}, Ltb/u;->j(FFZ)V

    .line 238
    .line 239
    .line 240
    :cond_5
    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEditorLanguage()Lgb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lmb/k;->b(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->V()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->z()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 35
    .line 36
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, v0, Lmb/b;->b:I

    .line 41
    .line 42
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget v0, v0, Lmb/b;->b:I

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lmb/g;->o(I)Lmb/h;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Lmb/h;->c:I

    .line 53
    .line 54
    add-int/lit8 v0, v1, 0x1

    .line 55
    .line 56
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x0

    .line 61
    if-ne v0, v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lmb/g;->o(I)Lmb/h;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v0, v0, Lmb/h;->c:I

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lmb/g;->o(I)Lmb/h;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v0, v0, Lmb/h;->c:I

    .line 88
    .line 89
    invoke-virtual {p0, v1, v3, v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0, v1, v3, v0, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->i0(IIII)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->z()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->C1:Ltb/e;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    :goto_1
    return-void
.end method
