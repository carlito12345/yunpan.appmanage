.class public final synthetic Lvb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvb/p;


# direct methods
.method public synthetic constructor <init>(Lvb/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvb/o;->a:I

    iput-object p1, p0, Lvb/o;->b:Lvb/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbi/a;Lag/h;)V
    .locals 11

    .line 1
    iget p2, p0, Lvb/o;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ldb/l;

    .line 7
    .line 8
    const-string p2, "<unused var>"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lvb/o;->b:Lvb/p;

    .line 14
    .line 15
    iget-object p2, p1, Lvb/p;->p:Ldb/p;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0}, Ldb/p;->d(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lvb/p;->b()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p1, Ldb/g;

    .line 26
    .line 27
    const-string p2, "event"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p1, Ldb/g;->c:Z

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lvb/o;->b:Lvb/p;

    .line 37
    .line 38
    invoke-virtual {p1}, Lvb/p;->b()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_1
    check-cast p1, Ldb/a0;

    .line 43
    .line 44
    const-string p2, "event"

    .line 45
    .line 46
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lvb/o;->b:Lvb/p;

    .line 50
    .line 51
    iget-object p2, p1, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object p2, p1, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_10

    .line 63
    .line 64
    iget-object p2, p1, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    int-to-double v0, p2

    .line 71
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 77
    .line 78
    .line 79
    mul-double v0, v0, v2

    .line 80
    .line 81
    double-to-int p2, v0

    .line 82
    iget-object v0, p1, Lvb/p;->r:Lcom/yunpan/appmanage/carsdk/k0;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const/high16 v1, -0x80000000

    .line 88
    .line 89
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iget-object v3, v0, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Landroid/view/ViewGroup;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    const-string v5, "quickfixPanel"

    .line 99
    .line 100
    if-eqz v3, :cond_f

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iget v6, p1, Lvb/p;->s:I

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    iget-object v3, v0, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v3, Landroid/view/ViewGroup;

    .line 114
    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-virtual {v3, v2, v8}, Landroid/view/View;->measure(II)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v0, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v3, Landroid/view/ViewGroup;

    .line 127
    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget-object v8, v0, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v8, Landroid/view/ViewGroup;

    .line 137
    .line 138
    if-eqz v8, :cond_1

    .line 139
    .line 140
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-le v5, p2, :cond_5

    .line 145
    .line 146
    move v5, p2

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v5}, Lue/d;->g(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v4

    .line 152
    :cond_2
    invoke-static {v5}, Lue/d;->g(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v4

    .line 156
    :cond_3
    invoke-static {v5}, Lue/d;->g(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v4

    .line 160
    :cond_4
    const/4 v3, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    :cond_5
    :goto_0
    sub-int/2addr v6, v3

    .line 163
    const/4 v8, 0x1

    .line 164
    if-ge v6, v8, :cond_6

    .line 165
    .line 166
    const/4 v6, 0x1

    .line 167
    :cond_6
    iget-object v8, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v8, Landroid/view/ViewGroup;

    .line 170
    .line 171
    const-string v9, "messagePanel"

    .line 172
    .line 173
    if-eqz v8, :cond_e

    .line 174
    .line 175
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    const/4 v10, -0x2

    .line 180
    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    .line 182
    iget-object v10, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v10, Landroid/view/ViewGroup;

    .line 185
    .line 186
    if-eqz v10, :cond_d

    .line 187
    .line 188
    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    iget-object v10, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v10, Landroid/view/ViewGroup;

    .line 194
    .line 195
    if-eqz v10, :cond_c

    .line 196
    .line 197
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {v10, v2, v1}, Landroid/view/View;->measure(II)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v1, Landroid/view/ViewGroup;

    .line 207
    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-le v1, v6, :cond_7

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_7
    move v6, v1

    .line 218
    :goto_1
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    .line 220
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    .line 224
    if-eqz v1, :cond_a

    .line 225
    .line 226
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .line 233
    if-eqz v0, :cond_9

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-le v0, p2, :cond_8

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_8
    move p2, v0

    .line 243
    :goto_2
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    add-int/2addr v3, v6

    .line 248
    iput p2, p1, Lub/b;->m:I

    .line 249
    .line 250
    iput v3, p1, Lub/b;->n:I

    .line 251
    .line 252
    invoke-virtual {p1, v7}, Lub/b;->a(Z)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    invoke-static {v9}, Lue/d;->g(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v4

    .line 260
    :cond_a
    invoke-static {v9}, Lue/d;->g(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v4

    .line 264
    :cond_b
    invoke-static {v9}, Lue/d;->g(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v4

    .line 268
    :cond_c
    invoke-static {v9}, Lue/d;->g(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v4

    .line 272
    :cond_d
    invoke-static {v9}, Lue/d;->g(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v4

    .line 276
    :cond_e
    invoke-static {v9}, Lue/d;->g(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v4

    .line 280
    :cond_f
    invoke-static {v5}, Lue/d;->g(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v4

    .line 284
    :cond_10
    :goto_3
    return-void

    .line 285
    :pswitch_2
    check-cast p1, Ldb/c;

    .line 286
    .line 287
    const-string p2, "<unused var>"

    .line 288
    .line 289
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lvb/o;->b:Lvb/p;

    .line 293
    .line 294
    invoke-virtual {p1}, Lvb/p;->d()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_3
    check-cast p1, Ldb/w;

    .line 299
    .line 300
    const-string p2, "<unused var>"

    .line 301
    .line 302
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lvb/o;->b:Lvb/p;

    .line 306
    .line 307
    iget-object p1, p1, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 308
    .line 309
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_4
    check-cast p1, Ldb/x;

    .line 314
    .line 315
    const-string p2, "event"

    .line 316
    .line 317
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lvb/o;->b:Lvb/p;

    .line 321
    .line 322
    iget-object v0, p2, Lvb/p;->p:Ldb/p;

    .line 323
    .line 324
    iget-boolean v0, v0, Ldb/p;->f:Z

    .line 325
    .line 326
    if-eqz v0, :cond_14

    .line 327
    .line 328
    iget-object v0, p2, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 329
    .line 330
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_11

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_11
    invoke-virtual {p1}, Ldb/x;->c()Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-nez v1, :cond_13

    .line 342
    .line 343
    const/4 v1, 0x3

    .line 344
    iget v2, p1, Ldb/x;->e:I

    .line 345
    .line 346
    if-eq v2, v1, :cond_12

    .line 347
    .line 348
    const/4 v1, 0x1

    .line 349
    if-eq v2, v1, :cond_12

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_12
    const-string v1, "getLeft(...)"

    .line 353
    .line 354
    iget-object p1, p1, Ldb/x;->c:Lmb/b;

    .line 355
    .line 356
    invoke-static {p1, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDiagnostics()Lib/a;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p2}, Lvb/p;->g()V

    .line 363
    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_13
    :goto_4
    invoke-virtual {p2}, Lvb/p;->g()V

    .line 367
    .line 368
    .line 369
    :cond_14
    :goto_5
    return-void

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
