.class public final synthetic Lua/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityImage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/f2;->a:I

    iput-object p1, p0, Lua/f2;->b:Lcom/yunpan/appmanage/ui/ActivityImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    const/16 p1, 0x15

    .line 2
    .line 3
    const/16 v0, 0x16

    .line 4
    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lua/f2;->b:Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 10
    .line 11
    iget v5, p0, Lua/f2;->a:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    const-string p3, "s"

    .line 28
    .line 29
    if-ne p2, p1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 32
    .line 33
    iget v5, v1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 34
    .line 35
    add-int/lit8 v5, v5, -0x1

    .line 36
    .line 37
    if-gez v5, :cond_0

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    :cond_0
    iget-object v4, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->T:Landroid/widget/TextView;

    .line 41
    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v5}, Lcom/yunpan/appmanage/util/w;->x(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-ne p2, v0, :cond_2

    .line 65
    .line 66
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 67
    .line 68
    iget v5, v1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 69
    .line 70
    add-int/2addr v5, v3

    .line 71
    iget-object v4, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->T:Landroid/widget/TextView;

    .line 72
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v5}, Lcom/yunpan/appmanage/util/w;->x(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    if-eq p2, p1, :cond_3

    .line 95
    .line 96
    if-ne p2, v0, :cond_4

    .line 97
    .line 98
    :cond_3
    const/4 v2, 0x1

    .line 99
    :cond_4
    return v2

    .line 100
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    if-ne p2, v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 114
    .line 115
    .line 116
    :cond_5
    if-ne p2, v1, :cond_6

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    :cond_6
    return v2

    .line 120
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_7

    .line 130
    .line 131
    if-ne p2, v1, :cond_7

    .line 132
    .line 133
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 136
    .line 137
    .line 138
    :cond_7
    if-ne p2, v1, :cond_8

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    :cond_8
    return v2

    .line 142
    :pswitch_2
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_9

    .line 152
    .line 153
    if-ne p2, v1, :cond_9

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 156
    .line 157
    .line 158
    :cond_9
    if-ne p2, v1, :cond_a

    .line 159
    .line 160
    const/4 v2, 0x1

    .line 161
    :cond_a
    return v2

    .line 162
    :pswitch_3
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_b

    .line 172
    .line 173
    if-ne p2, v1, :cond_b

    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 176
    .line 177
    .line 178
    :cond_b
    if-ne p2, v1, :cond_c

    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    :cond_c
    return v2

    .line 182
    :pswitch_4
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_d

    .line 192
    .line 193
    if-ne p2, v1, :cond_d

    .line 194
    .line 195
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 196
    .line 197
    .line 198
    :cond_d
    if-ne p2, v1, :cond_e

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    :cond_e
    return v2

    .line 202
    :pswitch_5
    sget v5, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    const/16 v5, 0x42

    .line 217
    .line 218
    const/16 v6, 0x14

    .line 219
    .line 220
    if-nez p3, :cond_17

    .line 221
    .line 222
    if-eq p2, p1, :cond_16

    .line 223
    .line 224
    if-ne p2, v1, :cond_f

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_f
    if-ne p2, v0, :cond_10

    .line 229
    .line 230
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 231
    .line 232
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 233
    .line 234
    iget-object p3, p3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 235
    .line 236
    iget v7, p3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 237
    .line 238
    add-int/2addr v7, v3

    .line 239
    iput v7, p3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_3

    .line 245
    .line 246
    :cond_10
    if-ne p2, v6, :cond_12

    .line 247
    .line 248
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 249
    .line 250
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 251
    .line 252
    .line 253
    move-result p3

    .line 254
    if-nez p3, :cond_11

    .line 255
    .line 256
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->K:Landroid/widget/TextView;

    .line 257
    .line 258
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_11
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 263
    .line 264
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 265
    .line 266
    iget-object p3, p3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 267
    .line 268
    iget v7, p3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 269
    .line 270
    add-int/2addr v7, v3

    .line 271
    iput v7, p3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 272
    .line 273
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_12
    if-ne p2, v5, :cond_17

    .line 278
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 280
    .line 281
    .line 282
    move-result-wide v7

    .line 283
    iget-wide v9, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->Z:J

    .line 284
    .line 285
    sub-long/2addr v7, v9

    .line 286
    const-wide/16 v9, 0x7d0

    .line 287
    .line 288
    cmp-long p3, v7, v9

    .line 289
    .line 290
    if-gez p3, :cond_13

    .line 291
    .line 292
    iget p3, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 293
    .line 294
    add-int/2addr p3, v3

    .line 295
    iput p3, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 296
    .line 297
    const/4 v7, 0x3

    .line 298
    if-le p3, v7, :cond_14

    .line 299
    .line 300
    sget-object p3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 301
    .line 302
    iget-boolean v7, p3, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 303
    .line 304
    if-eqz v7, :cond_14

    .line 305
    .line 306
    iget-object v7, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->Y:Lcom/yunpan/appmanage/carsdk/u;

    .line 307
    .line 308
    invoke-virtual {v7, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, v2}, Lcom/yunpan/appmanage/util/w;->w(Z)V

    .line 312
    .line 313
    .line 314
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->P:Landroid/widget/CheckBox;

    .line 315
    .line 316
    invoke-virtual {p3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 317
    .line 318
    .line 319
    const-string p3, "\u81ea\u52a8\u64ad\u653e\u5df2\u5173\u95ed"

    .line 320
    .line 321
    invoke-static {p3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 326
    .line 327
    .line 328
    move-result-wide v7

    .line 329
    iput-wide v7, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->Z:J

    .line 330
    .line 331
    iput v2, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 332
    .line 333
    :cond_14
    :goto_1
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityImage;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 334
    .line 335
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 336
    .line 337
    .line 338
    move-result p3

    .line 339
    if-nez p3, :cond_15

    .line 340
    .line 341
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_15
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->A()V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_16
    :goto_2
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 350
    .line 351
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 352
    .line 353
    iget-object p3, p3, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 354
    .line 355
    iget v7, p3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 356
    .line 357
    sub-int/2addr v7, v3

    .line 358
    iput v7, p3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 359
    .line 360
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 361
    .line 362
    .line 363
    :cond_17
    :goto_3
    if-eq p2, p1, :cond_18

    .line 364
    .line 365
    if-eq p2, v0, :cond_18

    .line 366
    .line 367
    if-eq p2, v1, :cond_18

    .line 368
    .line 369
    if-eq p2, v6, :cond_18

    .line 370
    .line 371
    if-ne p2, v5, :cond_19

    .line 372
    .line 373
    :cond_18
    const/4 v2, 0x1

    .line 374
    :cond_19
    return v2

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
