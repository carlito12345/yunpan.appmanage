.class public final synthetic Lub/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lub/a;->a:I

    iput-object p2, p0, Lub/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p2

    .line 5
    .line 6
    move/from16 v3, p3

    .line 7
    .line 8
    move/from16 v4, p4

    .line 9
    .line 10
    move/from16 v5, p5

    .line 11
    .line 12
    move/from16 v6, p6

    .line 13
    .line 14
    move/from16 v7, p7

    .line 15
    .line 16
    move/from16 v8, p8

    .line 17
    .line 18
    move/from16 v9, p9

    .line 19
    .line 20
    iget v10, v0, Lub/a;->a:I

    .line 21
    .line 22
    packed-switch v10, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget-object v10, v0, Lub/a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v10, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 28
    .line 29
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    if-ne v2, v6, :cond_0

    .line 33
    .line 34
    if-ne v3, v7, :cond_0

    .line 35
    .line 36
    if-ne v4, v8, :cond_0

    .line 37
    .line 38
    if-eq v5, v9, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance v2, Lua/g8;

    .line 41
    .line 42
    const/16 v3, 0x11

    .line 43
    .line 44
    invoke-direct {v2, v3, v10}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_0
    iget-object v3, v0, Lub/a;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lv3/y;

    .line 54
    .line 55
    iget-object v5, v3, Lv3/y;->a:Lv3/t;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    sub-int/2addr v7, v9

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    sub-int/2addr v7, v9

    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    sub-int/2addr v9, v10

    .line 80
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sub-int/2addr v9, v5

    .line 85
    iget-object v5, v3, Lv3/y;->d:Landroid/view/ViewGroup;

    .line 86
    .line 87
    invoke-static {v5}, Lv3/y;->c(Landroid/view/View;)I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    const/4 v11, 0x0

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    add-int/2addr v13, v12

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const/4 v13, 0x0

    .line 105
    :goto_0
    sub-int/2addr v10, v13

    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    instance-of v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    .line 120
    if-eqz v14, :cond_4

    .line 121
    .line 122
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .line 124
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    .line 126
    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 127
    .line 128
    add-int/2addr v14, v13

    .line 129
    add-int/2addr v12, v14

    .line 130
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    add-int/2addr v5, v13

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    const/4 v5, 0x0

    .line 143
    :goto_2
    sub-int/2addr v12, v5

    .line 144
    iget-object v5, v3, Lv3/y;->j:Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-static {v5}, Lv3/y;->c(Landroid/view/View;)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iget-object v13, v3, Lv3/y;->l:Landroid/view/View;

    .line 151
    .line 152
    invoke-static {v13}, Lv3/y;->c(Landroid/view/View;)I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    add-int/2addr v13, v5

    .line 157
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    iget-object v10, v3, Lv3/y;->e:Landroid/view/ViewGroup;

    .line 162
    .line 163
    if-nez v10, :cond_6

    .line 164
    .line 165
    const/4 v13, 0x0

    .line 166
    goto :goto_3

    .line 167
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    instance-of v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 176
    .line 177
    if-eqz v14, :cond_7

    .line 178
    .line 179
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 180
    .line 181
    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 182
    .line 183
    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 184
    .line 185
    add-int/2addr v14, v10

    .line 186
    add-int/2addr v13, v14

    .line 187
    :cond_7
    :goto_3
    mul-int/lit8 v13, v13, 0x2

    .line 188
    .line 189
    add-int/2addr v13, v12

    .line 190
    const/4 v10, 0x1

    .line 191
    if-le v7, v5, :cond_9

    .line 192
    .line 193
    if-gt v9, v13, :cond_8

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_8
    const/4 v5, 0x0

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    :goto_4
    const/4 v5, 0x1

    .line 199
    :goto_5
    iget-boolean v7, v3, Lv3/y;->B:Z

    .line 200
    .line 201
    if-eq v7, v5, :cond_a

    .line 202
    .line 203
    iput-boolean v5, v3, Lv3/y;->B:Z

    .line 204
    .line 205
    new-instance v5, Lv3/u;

    .line 206
    .line 207
    const/4 v7, 0x1

    .line 208
    invoke-direct {v5, v3, v7}, Lv3/u;-><init>(Lv3/y;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 212
    .line 213
    .line 214
    :cond_a
    sub-int v2, v4, v2

    .line 215
    .line 216
    sub-int v4, v8, v6

    .line 217
    .line 218
    if-eq v2, v4, :cond_b

    .line 219
    .line 220
    const/4 v11, 0x1

    .line 221
    :cond_b
    iget-boolean v2, v3, Lv3/y;->B:Z

    .line 222
    .line 223
    if-nez v2, :cond_c

    .line 224
    .line 225
    if-eqz v11, :cond_c

    .line 226
    .line 227
    new-instance v2, Lv3/u;

    .line 228
    .line 229
    const/4 v4, 0x2

    .line 230
    invoke-direct {v2, v3, v4}, Lv3/u;-><init>(Lv3/y;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 234
    .line 235
    .line 236
    :cond_c
    return-void

    .line 237
    :pswitch_1
    iget-object v10, v0, Lub/a;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v10, Lv3/t;

    .line 240
    .line 241
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    sub-int v2, v4, v2

    .line 245
    .line 246
    sub-int v3, v5, v3

    .line 247
    .line 248
    sub-int v4, v8, v6

    .line 249
    .line 250
    sub-int v5, v9, v7

    .line 251
    .line 252
    if-ne v2, v4, :cond_d

    .line 253
    .line 254
    if-eq v3, v5, :cond_e

    .line 255
    .line 256
    :cond_d
    iget-object v2, v10, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 257
    .line 258
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_e

    .line 263
    .line 264
    invoke-virtual {v10}, Lv3/t;->u()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    sub-int/2addr v3, v4

    .line 276
    iget v4, v10, Lv3/t;->t:I

    .line 277
    .line 278
    sub-int/2addr v3, v4

    .line 279
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    neg-int v5, v5

    .line 284
    sub-int v4, v5, v4

    .line 285
    .line 286
    const/4 v5, -0x1

    .line 287
    const/4 v6, -0x1

    .line 288
    move-object/from16 p2, v2

    .line 289
    .line 290
    move-object/from16 p3, p1

    .line 291
    .line 292
    move/from16 p4, v3

    .line 293
    .line 294
    move/from16 p5, v4

    .line 295
    .line 296
    move/from16 p6, v5

    .line 297
    .line 298
    move/from16 p7, v6

    .line 299
    .line 300
    invoke-virtual/range {p2 .. p7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 301
    .line 302
    .line 303
    :cond_e
    return-void

    .line 304
    :pswitch_2
    iget-object v1, v0, Lub/a;->b:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v1, Lub/b;

    .line 307
    .line 308
    iget-object v2, v1, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_f

    .line 315
    .line 316
    const/4 v2, 0x0

    .line 317
    invoke-virtual {v1, v2}, Lub/b;->a(Z)V

    .line 318
    .line 319
    .line 320
    :cond_f
    return-void

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
