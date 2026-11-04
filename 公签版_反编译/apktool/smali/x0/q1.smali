.class public final Lx0/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Lx0/g;

.field public b:Lx0/j2;


# direct methods
.method public constructor <init>(Landroid/view/View;Lx0/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lx0/q1;->a:Lx0/g;

    .line 5
    .line 6
    invoke-static {p1}, Lx0/b1;->j(Landroid/view/View;)Lx0/j2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v0, 0x1e

    .line 15
    .line 16
    if-lt p2, v0, :cond_0

    .line 17
    .line 18
    new-instance p2, Lx0/z1;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lx0/z1;-><init>(Lx0/j2;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x1d

    .line 25
    .line 26
    if-lt p2, v0, :cond_1

    .line 27
    .line 28
    new-instance p2, Lx0/y1;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lx0/y1;-><init>(Lx0/j2;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v0, 0x14

    .line 35
    .line 36
    if-lt p2, v0, :cond_2

    .line 37
    .line 38
    new-instance p2, Lx0/x1;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lx0/x1;-><init>(Lx0/j2;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance p2, Lx0/a2;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lx0/a2;-><init>(Lx0/j2;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p2}, Lx0/a2;->b()Lx0/j2;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 p1, 0x0

    .line 55
    :goto_1
    iput-object p1, p0, Lx0/q1;->b:Lx0/j2;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const/4 v9, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lvb/b;->i(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p2}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lx0/q1;->b:Lx0/j2;

    .line 22
    .line 23
    invoke-static/range {p1 .. p2}, Lx0/r1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    return-object v1

    .line 28
    :cond_0
    invoke-static/range {p1 .. p2}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    iget-object v4, v0, Lx0/q1;->b:Lx0/j2;

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lx0/b1;->j(Landroid/view/View;)Lx0/j2;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, v0, Lx0/q1;->b:Lx0/j2;

    .line 41
    .line 42
    :cond_1
    iget-object v4, v0, Lx0/q1;->b:Lx0/j2;

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    iput-object v10, v0, Lx0/q1;->b:Lx0/j2;

    .line 47
    .line 48
    invoke-static/range {p1 .. p2}, Lx0/r1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    return-object v1

    .line 53
    :cond_2
    invoke-static/range {p1 .. p1}, Lx0/r1;->j(Landroid/view/View;)Lx0/g;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    iget-object v4, v4, Lx0/g;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Landroid/view/WindowInsets;

    .line 62
    .line 63
    invoke-static {v4, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-static/range {p1 .. p2}, Lx0/r1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    return-object v1

    .line 74
    :cond_3
    iget-object v4, v0, Lx0/q1;->b:Lx0/j2;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x1

    .line 78
    :goto_0
    iget-object v11, v10, Lx0/j2;->a:Lx0/g2;

    .line 79
    .line 80
    const/16 v12, 0x100

    .line 81
    .line 82
    if-gt v6, v12, :cond_5

    .line 83
    .line 84
    invoke-virtual {v11, v6}, Lx0/g2;->f(I)Lp0/c;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    iget-object v12, v4, Lx0/j2;->a:Lx0/g2;

    .line 89
    .line 90
    invoke-virtual {v12, v6}, Lx0/g2;->f(I)Lp0/c;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v11, v12}, Lp0/c;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-nez v11, :cond_4

    .line 99
    .line 100
    or-int/2addr v5, v6

    .line 101
    :cond_4
    shl-int/2addr v6, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    if-nez v5, :cond_6

    .line 104
    .line 105
    invoke-static/range {p1 .. p2}, Lx0/r1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    return-object v1

    .line 110
    :cond_6
    iget-object v4, v0, Lx0/q1;->b:Lx0/j2;

    .line 111
    .line 112
    and-int/lit8 v2, v5, 0x8

    .line 113
    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    invoke-virtual {v11, v3}, Lx0/g2;->f(I)Lp0/c;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget v2, v2, Lp0/c;->d:I

    .line 121
    .line 122
    iget-object v6, v4, Lx0/j2;->a:Lx0/g2;

    .line 123
    .line 124
    invoke-virtual {v6, v3}, Lx0/g2;->f(I)Lp0/c;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    iget v6, v6, Lp0/c;->d:I

    .line 129
    .line 130
    if-le v2, v6, :cond_7

    .line 131
    .line 132
    sget-object v2, Lx0/r1;->e:Landroid/view/animation/Interpolator;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    sget-object v2, Lx0/r1;->f:Lm1/a;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    sget-object v2, Lx0/r1;->g:Landroid/view/animation/DecelerateInterpolator;

    .line 139
    .line 140
    :goto_1
    new-instance v12, Lx0/v1;

    .line 141
    .line 142
    const-wide/16 v13, 0xa0

    .line 143
    .line 144
    invoke-direct {v12, v5, v2, v13, v14}, Lx0/v1;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v12, Lx0/v1;->a:Lx0/u1;

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-virtual {v2, v6}, Lx0/u1;->d(F)V

    .line 151
    .line 152
    .line 153
    new-array v2, v9, [F

    .line 154
    .line 155
    fill-array-data v2, :array_0

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-object v6, v12, Lx0/v1;->a:Lx0/u1;

    .line 163
    .line 164
    invoke-virtual {v6}, Lx0/u1;->a()J

    .line 165
    .line 166
    .line 167
    move-result-wide v13

    .line 168
    invoke-virtual {v2, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v11, v5}, Lx0/g2;->f(I)Lp0/c;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v6, v4, Lx0/j2;->a:Lx0/g2;

    .line 177
    .line 178
    invoke-virtual {v6, v5}, Lx0/g2;->f(I)Lp0/c;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    iget v11, v2, Lp0/c;->a:I

    .line 183
    .line 184
    iget v14, v6, Lp0/c;->a:I

    .line 185
    .line 186
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    iget v14, v2, Lp0/c;->b:I

    .line 191
    .line 192
    iget v15, v6, Lp0/c;->b:I

    .line 193
    .line 194
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    iget v1, v2, Lp0/c;->c:I

    .line 199
    .line 200
    iget v3, v6, Lp0/c;->c:I

    .line 201
    .line 202
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    move-object/from16 v16, v13

    .line 207
    .line 208
    iget v13, v2, Lp0/c;->d:I

    .line 209
    .line 210
    move/from16 v17, v5

    .line 211
    .line 212
    iget v5, v6, Lp0/c;->d:I

    .line 213
    .line 214
    move-object/from16 v18, v4

    .line 215
    .line 216
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-static {v11, v9, v0, v4}, Lp0/c;->b(IIII)Lp0/c;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget v2, v2, Lp0/c;->a:I

    .line 225
    .line 226
    iget v4, v6, Lp0/c;->a:I

    .line 227
    .line 228
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-static {v2, v4, v1, v3}, Lp0/c;->b(IIII)Lp0/c;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v9, Lua/i8;

    .line 249
    .line 250
    const/16 v2, 0x8

    .line 251
    .line 252
    const/4 v3, 0x0

    .line 253
    invoke-direct {v9, v2, v0, v1, v3}, Lua/i8;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 254
    .line 255
    .line 256
    invoke-static {v7, v8, v3}, Lx0/r1;->f(Landroid/view/View;Landroid/view/WindowInsets;Z)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Lx0/p1;

    .line 260
    .line 261
    move-object v1, v0

    .line 262
    move-object v2, v12

    .line 263
    move-object v3, v10

    .line 264
    move-object/from16 v4, v18

    .line 265
    .line 266
    move/from16 v5, v17

    .line 267
    .line 268
    move-object/from16 v6, p1

    .line 269
    .line 270
    invoke-direct/range {v1 .. v6}, Lx0/p1;-><init>(Lx0/v1;Lx0/j2;Lx0/j2;ILandroid/view/View;)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v1, v16

    .line 274
    .line 275
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lh4/p;

    .line 279
    .line 280
    const/4 v2, 0x2

    .line 281
    invoke-direct {v0, v12, v7, v2}, Lh4/p;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Lcom/yunpan/appmanage/util/l;

    .line 288
    .line 289
    invoke-direct {v0, v7, v12, v9, v1}, Lcom/yunpan/appmanage/util/l;-><init>(Landroid/view/View;Lx0/v1;Lua/i8;Landroid/animation/ValueAnimator;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v7, v0}, Lx0/a0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 293
    .line 294
    .line 295
    move-object/from16 v0, p0

    .line 296
    .line 297
    iput-object v10, v0, Lx0/q1;->b:Lx0/j2;

    .line 298
    .line 299
    invoke-static/range {p1 .. p2}, Lx0/r1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    return-object v1

    .line 304
    nop

    .line 305
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
