.class public final Lv3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/k0;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lv3/t;


# direct methods
.method public constructor <init>(Lv3/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/h;->a:Lv3/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic A(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic B(ILr1/l0;Lr1/l0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic C(Lr1/h0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic D(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic E(Lr1/y;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic F(Lu7/y0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic H(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic b(Lr1/b1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic d(Lr1/x0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic e(Lr1/v0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic g(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic h(Lr1/i0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic i(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic j(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic k(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic m(Lr1/b0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic n(Ly1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lr1/j0;)V
    .locals 10

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x7

    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x5

    .line 11
    const/16 v7, 0xd

    .line 12
    .line 13
    filled-new-array {v5, v6, v7}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    invoke-virtual {p1, v8}, Lr1/j0;->a([I)Z

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget-object v9, p0, Lv3/h;->a:Lv3/t;

    .line 22
    .line 23
    if-eqz v8, :cond_0

    .line 24
    .line 25
    invoke-virtual {v9}, Lv3/t;->q()V

    .line 26
    .line 27
    .line 28
    :cond_0
    filled-new-array {v5, v6, v4, v7}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p1, v5}, Lr1/j0;->a([I)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v9}, Lv3/t;->s()V

    .line 39
    .line 40
    .line 41
    :cond_1
    filled-new-array {v3, v7}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v3}, Lr1/j0;->a([I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v9}, Lv3/t;->t()V

    .line 52
    .line 53
    .line 54
    :cond_2
    filled-new-array {v2, v7}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Lr1/j0;->a([I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v9}, Lv3/t;->v()V

    .line 65
    .line 66
    .line 67
    :cond_3
    new-array v2, v4, [I

    .line 68
    .line 69
    fill-array-data v2, :array_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Lr1/j0;->a([I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v9}, Lv3/t;->p()V

    .line 79
    .line 80
    .line 81
    :cond_4
    filled-new-array {v0, v1, v7}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lr1/j0;->a([I)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v9}, Lv3/t;->w()V

    .line 92
    .line 93
    .line 94
    :cond_5
    const/16 v0, 0xc

    .line 95
    .line 96
    filled-new-array {v0, v7}, [I

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lr1/j0;->a([I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v9}, Lv3/t;->r()V

    .line 107
    .line 108
    .line 109
    :cond_6
    const/4 v0, 0x2

    .line 110
    filled-new-array {v0, v7}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lr1/j0;->a([I)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {v9}, Lv3/t;->x()V

    .line 121
    .line 122
    .line 123
    :cond_7
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv3/h;->a:Lv3/t;

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
    iget-object v2, v0, Lv3/t;->a:Lv3/y;

    .line 9
    .line 10
    invoke-virtual {v2}, Lv3/y;->g()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lv3/t;->w:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-ne v3, p1, :cond_1

    .line 18
    .line 19
    check-cast v1, La/b;

    .line 20
    .line 21
    invoke-virtual {v1, v4}, La/b;->i(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_11

    .line 26
    .line 27
    invoke-virtual {v1}, La/b;->q()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    iget-object v3, v0, Lv3/t;->v:Landroid/widget/ImageView;

    .line 33
    .line 34
    if-ne v3, p1, :cond_2

    .line 35
    .line 36
    check-cast v1, La/b;

    .line 37
    .line 38
    const/4 p1, 0x7

    .line 39
    invoke-virtual {v1, p1}, La/b;->i(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_11

    .line 44
    .line 45
    invoke-virtual {v1}, La/b;->s()V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_2
    const/16 v3, 0xc

    .line 51
    .line 52
    iget-object v5, v0, Lv3/t;->y:Landroid/view/View;

    .line 53
    .line 54
    if-ne v5, p1, :cond_3

    .line 55
    .line 56
    move-object p1, v1

    .line 57
    check-cast p1, Ly1/x;

    .line 58
    .line 59
    invoke-virtual {p1}, Ly1/x;->J()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v0, 0x4

    .line 64
    if-eq p1, v0, :cond_11

    .line 65
    .line 66
    check-cast v1, La/b;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, La/b;->i(I)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_11

    .line 73
    .line 74
    move-object p1, v1

    .line 75
    check-cast p1, Ly1/x;

    .line 76
    .line 77
    invoke-virtual {p1}, Ly1/x;->h0()V

    .line 78
    .line 79
    .line 80
    iget-wide v4, p1, Ly1/x;->c1:J

    .line 81
    .line 82
    invoke-virtual {v1, v3, v4, v5}, La/b;->r(IJ)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_3
    iget-object v5, v0, Lv3/t;->z:Landroid/view/View;

    .line 88
    .line 89
    if-ne v5, p1, :cond_4

    .line 90
    .line 91
    check-cast v1, La/b;

    .line 92
    .line 93
    const/16 p1, 0xb

    .line 94
    .line 95
    invoke-virtual {v1, p1}, La/b;->i(I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_11

    .line 100
    .line 101
    move-object v0, v1

    .line 102
    check-cast v0, Ly1/x;

    .line 103
    .line 104
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 105
    .line 106
    .line 107
    iget-wide v2, v0, Ly1/x;->b1:J

    .line 108
    .line 109
    neg-long v2, v2

    .line 110
    invoke-virtual {v1, p1, v2, v3}, La/b;->r(IJ)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_4
    const/4 v5, 0x0

    .line 116
    const/4 v6, 0x1

    .line 117
    iget-object v7, v0, Lv3/t;->x:Landroid/widget/ImageView;

    .line 118
    .line 119
    if-ne v7, p1, :cond_6

    .line 120
    .line 121
    iget-boolean p1, v0, Lv3/t;->l1:Z

    .line 122
    .line 123
    invoke-static {v1, p1}, Lu1/f0;->O(Lr1/m0;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-static {v1}, Lu1/f0;->y(Lr1/m0;)Z

    .line 130
    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_5
    check-cast v1, La/b;

    .line 135
    .line 136
    invoke-virtual {v1, v6}, La/b;->i(I)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_11

    .line 141
    .line 142
    check-cast v1, Ly1/x;

    .line 143
    .line 144
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v6, v5}, Ly1/x;->e0(IZ)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_6
    iget-object v7, v0, Lv3/t;->C:Landroid/widget/ImageView;

    .line 153
    .line 154
    if-ne v7, p1, :cond_c

    .line 155
    .line 156
    const/16 p1, 0xf

    .line 157
    .line 158
    move-object v2, v1

    .line 159
    check-cast v2, La/b;

    .line 160
    .line 161
    invoke-virtual {v2, p1}, La/b;->i(I)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_11

    .line 166
    .line 167
    check-cast v1, Ly1/x;

    .line 168
    .line 169
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 170
    .line 171
    .line 172
    iget p1, v1, Ly1/x;->K:I

    .line 173
    .line 174
    iget v0, v0, Lv3/t;->r1:I

    .line 175
    .line 176
    const/4 v2, 0x1

    .line 177
    :goto_0
    const/4 v3, 0x2

    .line 178
    if-gt v2, v3, :cond_b

    .line 179
    .line 180
    add-int v4, p1, v2

    .line 181
    .line 182
    rem-int/lit8 v4, v4, 0x3

    .line 183
    .line 184
    if-eqz v4, :cond_a

    .line 185
    .line 186
    if-eq v4, v6, :cond_8

    .line 187
    .line 188
    if-eq v4, v3, :cond_7

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_7
    and-int/lit8 v3, v0, 0x2

    .line 192
    .line 193
    if-eqz v3, :cond_9

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_8
    and-int/lit8 v3, v0, 0x1

    .line 197
    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_a
    :goto_2
    move p1, v4

    .line 205
    :cond_b
    invoke-virtual {v1, p1}, Ly1/x;->Z(I)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_c
    iget-object v7, v0, Lv3/t;->D:Landroid/widget/ImageView;

    .line 211
    .line 212
    if-ne v7, p1, :cond_d

    .line 213
    .line 214
    const/16 p1, 0xe

    .line 215
    .line 216
    move-object v0, v1

    .line 217
    check-cast v0, La/b;

    .line 218
    .line 219
    invoke-virtual {v0, p1}, La/b;->i(I)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_11

    .line 224
    .line 225
    check-cast v1, Ly1/x;

    .line 226
    .line 227
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 228
    .line 229
    .line 230
    iget-boolean p1, v1, Ly1/x;->L:Z

    .line 231
    .line 232
    xor-int/2addr p1, v6

    .line 233
    invoke-virtual {v1}, Ly1/x;->h0()V

    .line 234
    .line 235
    .line 236
    iget-boolean v0, v1, Ly1/x;->L:Z

    .line 237
    .line 238
    if-eq v0, p1, :cond_11

    .line 239
    .line 240
    iput-boolean p1, v1, Ly1/x;->L:Z

    .line 241
    .line 242
    iget-object v0, v1, Ly1/x;->l:Ly1/f0;

    .line 243
    .line 244
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lu1/b0;->c()Lu1/a0;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 254
    .line 255
    invoke-virtual {v0, v3, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iput-object v0, v2, Lu1/a0;->a:Landroid/os/Message;

    .line 260
    .line 261
    invoke-virtual {v2}, Lu1/a0;->b()V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lha/qa;

    .line 265
    .line 266
    const/16 v2, 0x8

    .line 267
    .line 268
    invoke-direct {v0, v2, p1}, Lha/qa;-><init>(IZ)V

    .line 269
    .line 270
    .line 271
    iget-object p1, v1, Ly1/x;->m:Lu1/m;

    .line 272
    .line 273
    invoke-virtual {p1, v4, v0}, Lu1/m;->c(ILu1/j;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ly1/x;->d0()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Lu1/m;->b()V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_d
    iget-object v1, v0, Lv3/t;->I:Landroid/view/View;

    .line 284
    .line 285
    if-ne v1, p1, :cond_e

    .line 286
    .line 287
    invoke-virtual {v2}, Lv3/y;->f()V

    .line 288
    .line 289
    .line 290
    iget-object p1, v0, Lv3/t;->m:Lv3/n;

    .line 291
    .line 292
    invoke-virtual {v0, p1, v1}, Lv3/t;->e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_e
    iget-object v1, v0, Lv3/t;->K:Landroid/view/View;

    .line 297
    .line 298
    if-ne v1, p1, :cond_f

    .line 299
    .line 300
    invoke-virtual {v2}, Lv3/y;->f()V

    .line 301
    .line 302
    .line 303
    iget-object p1, v0, Lv3/t;->n:Lv3/k;

    .line 304
    .line 305
    invoke-virtual {v0, p1, v1}, Lv3/t;->e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_f
    iget-object v1, v0, Lv3/t;->L:Landroid/view/View;

    .line 310
    .line 311
    if-ne v1, p1, :cond_10

    .line 312
    .line 313
    invoke-virtual {v2}, Lv3/y;->f()V

    .line 314
    .line 315
    .line 316
    iget-object p1, v0, Lv3/t;->q:Lv3/g;

    .line 317
    .line 318
    invoke-virtual {v0, p1, v1}, Lv3/t;->e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_10
    iget-object v1, v0, Lv3/t;->F:Landroid/widget/ImageView;

    .line 323
    .line 324
    if-ne v1, p1, :cond_11

    .line 325
    .line 326
    invoke-virtual {v2}, Lv3/y;->f()V

    .line 327
    .line 328
    .line 329
    iget-object p1, v0, Lv3/t;->p:Lv3/p;

    .line 330
    .line 331
    invoke-virtual {v0, p1, v1}, Lv3/t;->e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V

    .line 332
    .line 333
    .line 334
    :cond_11
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/h;->a:Lv3/t;

    .line 2
    .line 3
    iget-boolean v1, v0, Lv3/t;->x1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lv3/t;->a:Lv3/y;

    .line 8
    .line 9
    invoke-virtual {v0}, Lv3/y;->g()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic q(Lt1/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic r(Ly1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic t(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic u(Lr1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic v(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic x(Lr1/d0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic z(Z)V
    .locals 0

    .line 1
    return-void
.end method
