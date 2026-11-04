.class public final Lv3/e;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lv3/l0;


# instance fields
.field public final A:Landroid/graphics/Point;

.field public final B:F

.field public C:I

.field public D:J

.field public E:I

.field public F:Landroid/graphics/Rect;

.field public final G:Landroid/animation/ValueAnimator;

.field public H:F

.field public I:Z

.field public K:Z

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public P:I

.field public R:[J

.field public S:[Z

.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/drawable/Drawable;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final v:I

.field public final w:Ljava/lang/StringBuilder;

.field public final x:Ljava/util/Formatter;

.field public final y:Lua/g8;

.field public final z:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v4, v0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 16
    .line 17
    new-instance v4, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 23
    .line 24
    new-instance v4, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Lv3/e;->c:Landroid/graphics/Rect;

    .line 30
    .line 31
    new-instance v4, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v4, v0, Lv3/e;->d:Landroid/graphics/Rect;

    .line 37
    .line 38
    new-instance v4, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v4, v0, Lv3/e;->e:Landroid/graphics/Paint;

    .line 44
    .line 45
    new-instance v5, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v5, v0, Lv3/e;->f:Landroid/graphics/Paint;

    .line 51
    .line 52
    new-instance v6, Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v6, v0, Lv3/e;->g:Landroid/graphics/Paint;

    .line 58
    .line 59
    new-instance v7, Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v7, v0, Lv3/e;->h:Landroid/graphics/Paint;

    .line 65
    .line 66
    new-instance v8, Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v8, v0, Lv3/e;->i:Landroid/graphics/Paint;

    .line 72
    .line 73
    new-instance v9, Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v9, v0, Lv3/e;->j:Landroid/graphics/Paint;

    .line 79
    .line 80
    const/4 v10, 0x1

    .line 81
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    .line 83
    .line 84
    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v11, v0, Lv3/e;->z:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 90
    .line 91
    new-instance v11, Landroid/graphics/Point;

    .line 92
    .line 93
    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v11, v0, Lv3/e;->A:Landroid/graphics/Point;

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .line 108
    iput v3, v0, Lv3/e;->B:F

    .line 109
    .line 110
    const/16 v11, -0x32

    .line 111
    .line 112
    invoke-static {v3, v11}, Lv3/e;->a(FI)I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    iput v11, v0, Lv3/e;->v:I

    .line 117
    .line 118
    const/4 v11, 0x4

    .line 119
    invoke-static {v3, v11}, Lv3/e;->a(FI)I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    const/16 v13, 0x1a

    .line 124
    .line 125
    invoke-static {v3, v13}, Lv3/e;->a(FI)I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    invoke-static {v3, v11}, Lv3/e;->a(FI)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    const/16 v14, 0xc

    .line 134
    .line 135
    invoke-static {v3, v14}, Lv3/e;->a(FI)I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    invoke-static {v3, v2}, Lv3/e;->a(FI)I

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    const/16 v10, 0x10

    .line 144
    .line 145
    invoke-static {v3, v10}, Lv3/e;->a(FI)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    iput v12, v0, Lv3/e;->l:I

    .line 150
    .line 151
    iput v13, v0, Lv3/e;->m:I

    .line 152
    .line 153
    iput v2, v0, Lv3/e;->n:I

    .line 154
    .line 155
    iput v11, v0, Lv3/e;->p:I

    .line 156
    .line 157
    iput v14, v0, Lv3/e;->q:I

    .line 158
    .line 159
    iput v15, v0, Lv3/e;->r:I

    .line 160
    .line 161
    iput v3, v0, Lv3/e;->s:I

    .line 162
    .line 163
    const/4 v2, -0x1

    .line 164
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    .line 169
    .line 170
    const v2, -0x33000001    # -1.3421772E8f

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    .line 175
    .line 176
    const v2, 0x33ffffff

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    .line 181
    .line 182
    const v2, -0x4d000100

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    .line 187
    .line 188
    const v2, 0x33ffff00

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    .line 193
    .line 194
    iput-object v1, v0, Lv3/e;->k:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object v1, v0, Lv3/e;->w:Ljava/lang/StringBuilder;

    .line 202
    .line 203
    new-instance v2, Ljava/util/Formatter;

    .line 204
    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-direct {v2, v1, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 210
    .line 211
    .line 212
    iput-object v2, v0, Lv3/e;->x:Ljava/util/Formatter;

    .line 213
    .line 214
    new-instance v1, Lua/g8;

    .line 215
    .line 216
    const/4 v2, 0x2

    .line 217
    invoke-direct {v1, v2, v0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iput-object v1, v0, Lv3/e;->y:Lua/g8;

    .line 221
    .line 222
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    const/4 v2, 0x1

    .line 231
    add-int/2addr v1, v2

    .line 232
    div-int/lit8 v1, v1, 0x2

    .line 233
    .line 234
    iput v1, v0, Lv3/e;->t:I

    .line 235
    .line 236
    const/high16 v1, 0x3f800000    # 1.0f

    .line 237
    .line 238
    iput v1, v0, Lv3/e;->H:F

    .line 239
    .line 240
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 241
    .line 242
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object v1, v0, Lv3/e;->G:Landroid/animation/ValueAnimator;

    .line 246
    .line 247
    new-instance v2, Lq7/i;

    .line 248
    .line 249
    const/4 v3, 0x1

    .line 250
    invoke-direct {v2, v3, v0}, Lq7/i;-><init>(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    .line 255
    .line 256
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    iput-wide v1, v0, Lv3/e;->M:J

    .line 262
    .line 263
    iput-wide v1, v0, Lv3/e;->D:J

    .line 264
    .line 265
    const/16 v1, 0x14

    .line 266
    .line 267
    iput v1, v0, Lv3/e;->C:I

    .line 268
    .line 269
    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_0

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 280
    .line 281
    .line 282
    :cond_0
    return-void
.end method

.method public static a(FI)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    mul-float p1, p1, p0

    .line 3
    .line 4
    const/high16 p0, 0x3f000000    # 0.5f

    .line 5
    .line 6
    add-float/2addr p1, p0

    .line 7
    float-to-int p0, p1

    .line 8
    return p0
.end method

.method private getPositionIncrement()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lv3/e;->D:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, Lv3/e;->M:J

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v2, p0, Lv3/e;->C:I

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    div-long/2addr v0, v2

    .line 25
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/e;->x:Ljava/util/Formatter;

    .line 2
    .line 3
    iget-wide v1, p0, Lv3/e;->N:J

    .line 4
    .line 5
    iget-object v3, p0, Lv3/e;->w:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-static {v3, v0, v1, v2}, Lu1/f0;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 6

    .line 1
    iget-object v0, p0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    iget-wide v1, p0, Lv3/e;->M:J

    .line 10
    .line 11
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v5, v1, v3

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lv3/e;->d:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-long v1, v1

    .line 28
    iget-wide v3, p0, Lv3/e;->M:J

    .line 29
    .line 30
    mul-long v1, v1, v3

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v3, v0

    .line 37
    div-long/2addr v1, v3

    .line 38
    return-wide v1

    .line 39
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    return-wide v0
.end method


# virtual methods
.method public final b(J)Z
    .locals 9

    .line 1
    iget-wide v4, p0, Lv3/e;->M:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    cmp-long v2, v4, v0

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    return v6

    .line 11
    :cond_0
    iget-boolean v0, p0, Lv3/e;->K:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-wide v0, p0, Lv3/e;->L:J

    .line 16
    .line 17
    :goto_0
    move-wide v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-wide v0, p0, Lv3/e;->N:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    add-long v0, v7, p1

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Lu1/f0;->h(JJJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    cmp-long v0, p1, v7

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return v6

    .line 35
    :cond_2
    iget-boolean v0, p0, Lv3/e;->K:Z

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lv3/e;->c(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p0, p1, p2}, Lv3/e;->f(J)V

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public final c(J)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-wide p1, p0, Lv3/e;->L:J

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lv3/e;->K:Z

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lv3/e;->z:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lv3/h;

    .line 36
    .line 37
    iget-object v3, v3, Lv3/h;->a:Lv3/t;

    .line 38
    .line 39
    iput-boolean v1, v3, Lv3/t;->n1:Z

    .line 40
    .line 41
    iget-object v4, v3, Lv3/t;->N:Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-object v5, v3, Lv3/t;->P:Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-object v6, v3, Lv3/t;->R:Ljava/util/Formatter;

    .line 48
    .line 49
    invoke-static {v5, v6, p1, p2}, Lu1/f0;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v4, v3, Lv3/t;->a:Lv3/y;

    .line 57
    .line 58
    invoke-virtual {v4}, Lv3/y;->f()V

    .line 59
    .line 60
    .line 61
    iget-object v4, v3, Lv3/t;->g1:Lr1/m0;

    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    iget-boolean v5, v3, Lv3/t;->p1:Z

    .line 66
    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Lv3/t;->i(Lr1/m0;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    :try_start_0
    iget-object v4, v3, Lv3/t;->f:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v5, v3, Lv3/t;->g1:Lr1/m0;

    .line 81
    .line 82
    new-array v6, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    aput-object v7, v6, v0

    .line 87
    .line 88
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catch_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :cond_3
    iget-object v4, v3, Lv3/t;->g1:Lr1/m0;

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Lv3/t;->h(Lr1/m0;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    :try_start_1
    iget-object v4, v3, Lv3/t;->i:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v5, v3, Lv3/t;->g1:Lr1/m0;

    .line 115
    .line 116
    new-array v6, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    aput-object v7, v6, v0

    .line 121
    .line 122
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catch_2
    move-exception p1

    .line 127
    goto :goto_2

    .line 128
    :catch_3
    move-exception p1

    .line 129
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p2

    .line 135
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v5, "Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can\'t enable scrubbing mode). player.class="

    .line 138
    .line 139
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v5, v3, Lv3/t;->g1:Lr1/m0;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-static {v4}, Lu1/a;->p(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_3
    iget-object v4, v3, Lv3/t;->g1:Lr1/m0;

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Lv3/t;->k(Lr1/m0;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_1

    .line 168
    .line 169
    iget-object v4, v3, Lv3/t;->g1:Lr1/m0;

    .line 170
    .line 171
    invoke-static {v3, v4, p1, p2}, Lv3/t;->a(Lv3/t;Lr1/m0;J)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_6
    return-void
.end method

.method public final d(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lv3/e;->y:Lua/g8;

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lv3/e;->K:Z

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lv3/e;->z:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_4

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lv3/h;

    .line 42
    .line 43
    iget-wide v4, p0, Lv3/e;->L:J

    .line 44
    .line 45
    iget-object v3, v3, Lv3/h;->a:Lv3/t;

    .line 46
    .line 47
    iput-boolean v1, v3, Lv3/t;->n1:Z

    .line 48
    .line 49
    iget-object v6, v3, Lv3/t;->g1:Lr1/m0;

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    invoke-static {v3, v6, v4, v5}, Lv3/t;->a(Lv3/t;Lr1/m0;J)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v4, v3, Lv3/t;->g1:Lr1/m0;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lv3/t;->i(Lr1/m0;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    :try_start_0
    iget-object v4, v3, Lv3/t;->f:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v5, v3, Lv3/t;->g1:Lr1/m0;

    .line 72
    .line 73
    new-array v6, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    aput-object v7, v6, v1

    .line 78
    .line 79
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception p1

    .line 86
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_2
    iget-object v4, v3, Lv3/t;->g1:Lr1/m0;

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Lv3/t;->h(Lr1/m0;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    :try_start_1
    iget-object v4, v3, Lv3/t;->i:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v5, v3, Lv3/t;->g1:Lr1/m0;

    .line 106
    .line 107
    new-array v6, v0, [Ljava/lang/Object;

    .line 108
    .line 109
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 110
    .line 111
    aput-object v7, v6, v1

    .line 112
    .line 113
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catch_2
    move-exception p1

    .line 118
    goto :goto_2

    .line 119
    :catch_3
    move-exception p1

    .line 120
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_3
    :goto_3
    iget-object v3, v3, Lv3/t;->a:Lv3/y;

    .line 127
    .line 128
    invoke-virtual {v3}, Lv3/y;->g()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv3/e;->k:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lv3/e;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lv3/e;->d:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v3, p0, Lv3/e;->K:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-wide v3, p0, Lv3/e;->L:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v3, p0, Lv3/e;->N:J

    .line 21
    .line 22
    :goto_0
    iget-wide v5, p0, Lv3/e;->M:J

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v9, v5, v7

    .line 27
    .line 28
    if-lez v9, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-long v5, v5

    .line 35
    iget-wide v7, p0, Lv3/e;->O:J

    .line 36
    .line 37
    mul-long v5, v5, v7

    .line 38
    .line 39
    iget-wide v7, p0, Lv3/e;->M:J

    .line 40
    .line 41
    div-long/2addr v5, v7

    .line 42
    long-to-int v6, v5

    .line 43
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    add-int/2addr v5, v6

    .line 46
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-long v5, v0

    .line 59
    mul-long v5, v5, v3

    .line 60
    .line 61
    iget-wide v3, p0, Lv3/e;->M:J

    .line 62
    .line 63
    div-long/2addr v5, v3

    .line 64
    long-to-int v0, v5

    .line 65
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    add-int/2addr v3, v0

    .line 68
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    :goto_1
    iget-object v0, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final f(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lv3/e;->L:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Lv3/e;->L:J

    .line 9
    .line 10
    iget-object v0, p0, Lv3/e;->z:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lv3/h;

    .line 27
    .line 28
    iget-object v1, v1, Lv3/h;->a:Lv3/t;

    .line 29
    .line 30
    iget-object v2, v1, Lv3/t;->N:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v3, v1, Lv3/t;->P:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v4, v1, Lv3/t;->R:Ljava/util/Formatter;

    .line 37
    .line 38
    invoke-static {v3, v4, p1, p2}, Lu1/f0;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v2, v1, Lv3/t;->g1:Lr1/m0;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lv3/t;->k(Lr1/m0;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v1, Lv3/t;->g1:Lr1/m0;

    .line 54
    .line 55
    invoke-static {v1, v2, p1, p2}, Lv3/t;->a(Lv3/t;Lr1/m0;J)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public getPreferredUpdateDelay()J
    .locals 6

    .line 1
    iget-object v0, p0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, Lv3/e;->B:F

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    float-to-int v0, v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v1, p0, Lv3/e;->M:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v5, v1, v3

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v5, v1, v3

    .line 28
    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    int-to-long v3, v0

    .line 33
    div-long/2addr v1, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :goto_1
    return-wide v1
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv3/e;->k:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget-object v8, v0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-int/lit8 v3, v1, 0x2

    .line 19
    .line 20
    sub-int v9, v2, v3

    .line 21
    .line 22
    add-int v10, v9, v1

    .line 23
    .line 24
    iget-wide v1, v0, Lv3/e;->M:J

    .line 25
    .line 26
    iget-object v6, v0, Lv3/e;->g:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget-object v11, v0, Lv3/e;->d:Landroid/graphics/Rect;

    .line 29
    .line 30
    const-wide/16 v12, 0x0

    .line 31
    .line 32
    cmp-long v3, v1, v12

    .line 33
    .line 34
    if-gtz v3, :cond_0

    .line 35
    .line 36
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    int-to-float v2, v1

    .line 39
    int-to-float v3, v9

    .line 40
    iget v1, v8, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    int-to-float v4, v1

    .line 43
    int-to-float v5, v10

    .line 44
    move-object/from16 v1, p1

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_0
    iget-object v1, v0, Lv3/e;->c:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v14, v1, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v15, v1, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget v2, v11, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget v2, v8, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    if-ge v1, v2, :cond_1

    .line 72
    .line 73
    int-to-float v3, v1

    .line 74
    int-to-float v4, v9

    .line 75
    int-to-float v5, v2

    .line 76
    int-to-float v2, v10

    .line 77
    move-object/from16 v1, p1

    .line 78
    .line 79
    move/from16 v16, v2

    .line 80
    .line 81
    move v2, v3

    .line 82
    move v3, v4

    .line 83
    move v4, v5

    .line 84
    move/from16 v5, v16

    .line 85
    .line 86
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-le v15, v1, :cond_2

    .line 96
    .line 97
    int-to-float v2, v1

    .line 98
    int-to-float v3, v9

    .line 99
    int-to-float v4, v15

    .line 100
    int-to-float v5, v10

    .line 101
    iget-object v6, v0, Lv3/e;->f:Landroid/graphics/Paint;

    .line 102
    .line 103
    move-object/from16 v1, p1

    .line 104
    .line 105
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-lez v1, :cond_3

    .line 113
    .line 114
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    int-to-float v2, v1

    .line 117
    int-to-float v3, v9

    .line 118
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 119
    .line 120
    int-to-float v4, v1

    .line 121
    int-to-float v5, v10

    .line 122
    iget-object v6, v0, Lv3/e;->e:Landroid/graphics/Paint;

    .line 123
    .line 124
    move-object/from16 v1, p1

    .line 125
    .line 126
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget v1, v0, Lv3/e;->P:I

    .line 130
    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    iget-object v14, v0, Lv3/e;->R:[J

    .line 135
    .line 136
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v15, v0, Lv3/e;->S:[Z

    .line 140
    .line 141
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget v6, v0, Lv3/e;->p:I

    .line 145
    .line 146
    div-int/lit8 v16, v6, 0x2

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    :goto_0
    iget v1, v0, Lv3/e;->P:I

    .line 151
    .line 152
    if-ge v4, v1, :cond_6

    .line 153
    .line 154
    aget-wide v17, v14, v4

    .line 155
    .line 156
    const-wide/16 v19, 0x0

    .line 157
    .line 158
    iget-wide v1, v0, Lv3/e;->M:J

    .line 159
    .line 160
    move-wide/from16 v21, v1

    .line 161
    .line 162
    invoke-static/range {v17 .. v22}, Lu1/f0;->h(JJJ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    int-to-long v12, v3

    .line 171
    mul-long v12, v12, v1

    .line 172
    .line 173
    iget-wide v1, v0, Lv3/e;->M:J

    .line 174
    .line 175
    div-long/2addr v12, v1

    .line 176
    long-to-int v1, v12

    .line 177
    sub-int v1, v1, v16

    .line 178
    .line 179
    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    sub-int/2addr v3, v6

    .line 186
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    add-int/2addr v1, v2

    .line 195
    aget-boolean v2, v15, v4

    .line 196
    .line 197
    if-eqz v2, :cond_5

    .line 198
    .line 199
    iget-object v2, v0, Lv3/e;->i:Landroid/graphics/Paint;

    .line 200
    .line 201
    :goto_1
    move-object v12, v2

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    iget-object v2, v0, Lv3/e;->h:Landroid/graphics/Paint;

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :goto_2
    int-to-float v2, v1

    .line 207
    int-to-float v3, v9

    .line 208
    add-int/2addr v1, v6

    .line 209
    int-to-float v13, v1

    .line 210
    int-to-float v1, v10

    .line 211
    move/from16 v19, v1

    .line 212
    .line 213
    move-object/from16 v1, p1

    .line 214
    .line 215
    move/from16 v20, v4

    .line 216
    .line 217
    move v4, v13

    .line 218
    const/4 v13, 0x0

    .line 219
    move/from16 v5, v19

    .line 220
    .line 221
    move/from16 v19, v6

    .line 222
    .line 223
    move-object v6, v12

    .line 224
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v4, v20, 0x1

    .line 228
    .line 229
    move/from16 v6, v19

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    const-wide/16 v12, 0x0

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_6
    :goto_3
    iget-wide v1, v0, Lv3/e;->M:J

    .line 236
    .line 237
    const-wide/16 v3, 0x0

    .line 238
    .line 239
    cmp-long v5, v1, v3

    .line 240
    .line 241
    if-gtz v5, :cond_7

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_7
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 245
    .line 246
    iget v2, v11, Landroid/graphics/Rect;->left:I

    .line 247
    .line 248
    iget v3, v8, Landroid/graphics/Rect;->right:I

    .line 249
    .line 250
    invoke-static {v1, v2, v3}, Lu1/f0;->g(III)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iget-object v3, v0, Lv3/e;->k:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    if-nez v3, :cond_b

    .line 261
    .line 262
    iget-boolean v3, v0, Lv3/e;->K:Z

    .line 263
    .line 264
    if-nez v3, :cond_a

    .line 265
    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_8

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_9

    .line 278
    .line 279
    iget v3, v0, Lv3/e;->q:I

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_9
    iget v3, v0, Lv3/e;->r:I

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_a
    :goto_4
    iget v3, v0, Lv3/e;->s:I

    .line 286
    .line 287
    :goto_5
    int-to-float v3, v3

    .line 288
    iget v4, v0, Lv3/e;->H:F

    .line 289
    .line 290
    mul-float v3, v3, v4

    .line 291
    .line 292
    const/high16 v4, 0x40000000    # 2.0f

    .line 293
    .line 294
    div-float/2addr v3, v4

    .line 295
    float-to-int v3, v3

    .line 296
    int-to-float v1, v1

    .line 297
    int-to-float v2, v2

    .line 298
    int-to-float v3, v3

    .line 299
    iget-object v4, v0, Lv3/e;->j:Landroid/graphics/Paint;

    .line 300
    .line 301
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_b
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    int-to-float v4, v4

    .line 310
    iget v5, v0, Lv3/e;->H:F

    .line 311
    .line 312
    mul-float v4, v4, v5

    .line 313
    .line 314
    float-to-int v4, v4

    .line 315
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    int-to-float v5, v5

    .line 320
    iget v6, v0, Lv3/e;->H:F

    .line 321
    .line 322
    mul-float v5, v5, v6

    .line 323
    .line 324
    float-to-int v5, v5

    .line 325
    div-int/lit8 v4, v4, 0x2

    .line 326
    .line 327
    sub-int v6, v1, v4

    .line 328
    .line 329
    div-int/lit8 v5, v5, 0x2

    .line 330
    .line 331
    sub-int v8, v2, v5

    .line 332
    .line 333
    add-int/2addr v1, v4

    .line 334
    add-int/2addr v2, v5

    .line 335
    invoke-virtual {v3, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    .line 340
    .line 341
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lv3/e;->K:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lv3/e;->d(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lv3/e;->getProgressText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string v0, "android.widget.SeekBar"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.widget.SeekBar"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lv3/e;->getProgressText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lv3/e;->M:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-gtz v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lua/t7;->j()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lua/t7;->z()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lwa/h;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lv3/e;->getPositionIncrement()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const/16 v2, 0x42

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    neg-long v0, v0

    .line 21
    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lv3/e;->b(J)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lv3/e;->y:Lua/g8;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lv3/e;->K:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lv3/e;->d(Z)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    sub-int p2, p4, p2

    .line 12
    .line 13
    iget-boolean p3, p0, Lv3/e;->I:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p3, p0, Lv3/e;->t:I

    .line 21
    .line 22
    :goto_0
    iget v1, p0, Lv3/e;->n:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iget v3, p0, Lv3/e;->l:I

    .line 26
    .line 27
    iget v4, p0, Lv3/e;->m:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-int v1, p5, v1

    .line 36
    .line 37
    sub-int/2addr v1, v4

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int v2, p5, v2

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    div-int/lit8 v5, v3, 0x2

    .line 46
    .line 47
    sub-int v5, p3, v5

    .line 48
    .line 49
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-int/2addr v2, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sub-int v1, p5, v4

    .line 56
    .line 57
    div-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    sub-int v2, p5, v3

    .line 60
    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    :goto_1
    add-int/2addr v4, v1

    .line 64
    iget-object v5, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v5, p1, v1, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    add-int/2addr p1, p3

    .line 72
    iget p2, v5, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    sub-int/2addr p2, p3

    .line 75
    add-int/2addr v3, v2

    .line 76
    iget-object p3, p0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {p3, p1, v2, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    .line 80
    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 p2, 0x1d

    .line 84
    .line 85
    if-lt p1, p2, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lv3/e;->F:Landroid/graphics/Rect;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, p4, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lv3/e;->F:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, p5, :cond_2

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {p1, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lv3/e;->F:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Lh4/e0;->v(Lv3/e;Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget v1, p0, Lv3/e;->m:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move p2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lv3/e;->k:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->k:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lr8/a;->q(Landroid/graphics/drawable/Drawable;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

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
    iget-wide v2, p0, Lv3/e;->M:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lv3/e;->A:Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    float-to-int v3, v3

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 31
    .line 32
    .line 33
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lv3/e;->d:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v5, p0, Lv3/e;->b:Landroid/graphics/Rect;

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    const/4 v7, 0x3

    .line 49
    if-eq v3, v6, :cond_3

    .line 50
    .line 51
    const/4 v8, 0x2

    .line 52
    if-eq v3, v8, :cond_1

    .line 53
    .line 54
    if-eq v3, v7, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-boolean p1, p0, Lv3/e;->K:Z

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget p1, p0, Lv3/e;->v:I

    .line 62
    .line 63
    if-ge v0, p1, :cond_2

    .line 64
    .line 65
    iget p1, p0, Lv3/e;->E:I

    .line 66
    .line 67
    invoke-static {v2, p1, v7, p1}, Lta/q;->g(IIII)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    int-to-float p1, p1

    .line 72
    float-to-int p1, p1

    .line 73
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 74
    .line 75
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    invoke-static {p1, v0, v1}, Lu1/f0;->g(III)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, v4, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iput v2, p0, Lv3/e;->E:I

    .line 85
    .line 86
    int-to-float p1, v2

    .line 87
    float-to-int p1, p1

    .line 88
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    invoke-static {p1, v0, v1}, Lu1/f0;->g(III)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, v4, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    :goto_0
    invoke-direct {p0}, Lv3/e;->getScrubberPosition()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    invoke-virtual {p0, v0, v1}, Lv3/e;->f(J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    .line 110
    .line 111
    return v6

    .line 112
    :cond_3
    iget-boolean v0, p0, Lv3/e;->K:Z

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-ne p1, v7, :cond_4

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    :cond_4
    invoke-virtual {p0, v1}, Lv3/e;->d(Z)V

    .line 124
    .line 125
    .line 126
    return v6

    .line 127
    :cond_5
    int-to-float p1, v2

    .line 128
    int-to-float v0, v0

    .line 129
    float-to-int p1, p1

    .line 130
    float-to-int v0, v0

    .line 131
    iget-object v2, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 140
    .line 141
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    invoke-static {p1, v0, v1}, Lu1/f0;->g(III)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, v4, Landroid/graphics/Rect;->right:I

    .line 148
    .line 149
    invoke-direct {p0}, Lv3/e;->getScrubberPosition()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    invoke-virtual {p0, v0, v1}, Lv3/e;->c(J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 160
    .line 161
    .line 162
    return v6

    .line 163
    :cond_6
    :goto_1
    return v1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-wide v1, p0, Lv3/e;->M:J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    cmp-long v5, v1, v3

    .line 15
    .line 16
    if-gtz v5, :cond_1

    .line 17
    .line 18
    return p2

    .line 19
    :cond_1
    const/16 v1, 0x2000

    .line 20
    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Lv3/e;->getPositionIncrement()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    neg-long v1, v1

    .line 28
    invoke-virtual {p0, v1, v2}, Lv3/e;->b(J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lv3/e;->d(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 v1, 0x1000

    .line 39
    .line 40
    if-ne p1, v1, :cond_4

    .line 41
    .line 42
    invoke-direct {p0}, Lv3/e;->getPositionIncrement()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {p0, v1, v2}, Lv3/e;->b(J)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lv3/e;->d(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    return p2
.end method

.method public setAdMarkerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lv3/e;->O:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Lv3/e;->O:J

    .line 9
    .line 10
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lv3/e;->M:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Lv3/e;->M:J

    .line 9
    .line 10
    iget-boolean v0, p0, Lv3/e;->K:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v2, p1, v0

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lv3/e;->d(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lv3/e;->K:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lv3/e;->d(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, La9/o;->k(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lv3/e;->C:I

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lv3/e;->D:J

    .line 17
    .line 18
    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

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
    invoke-static {v0}, La9/o;->k(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lv3/e;->C:I

    .line 15
    .line 16
    iput-wide p1, p0, Lv3/e;->D:J

    .line 17
    .line 18
    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->i:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPosition(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lv3/e;->N:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Lv3/e;->N:J

    .line 9
    .line 10
    invoke-direct {p0}, Lv3/e;->getProgressText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lv3/e;->e()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->j:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/e;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv3/e;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
