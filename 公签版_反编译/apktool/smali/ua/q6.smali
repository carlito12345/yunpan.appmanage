.class public final synthetic Lua/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/q6;->a:I

    iput-object p1, p0, Lua/q6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    const p1, 0x7f0802a2

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0802a3

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lua/q6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 9
    .line 10
    iget v3, p0, Lua/q6;->a:I

    .line 11
    .line 12
    packed-switch v3, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-boolean v3, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R:Z

    .line 16
    .line 17
    xor-int/2addr v1, v3

    .line 18
    iput-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R:Z

    .line 19
    .line 20
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->L:Landroid/widget/ImageView;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const p1, 0x7f0802a3

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-boolean v3, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P:Z

    .line 32
    .line 33
    xor-int/2addr v1, v3

    .line 34
    iput-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P:Z

    .line 35
    .line 36
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->K:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    const p1, 0x7f0802a3

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    iget-boolean v3, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O:Z

    .line 48
    .line 49
    xor-int/2addr v1, v3

    .line 50
    iput-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O:Z

    .line 51
    .line 52
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->I:Landroid/widget/ImageView;

    .line 53
    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    const p1, 0x7f0802a3

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_2
    iget-boolean v3, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N:Z

    .line 64
    .line 65
    xor-int/2addr v1, v3

    .line 66
    iput-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N:Z

    .line 67
    .line 68
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->H:Landroid/widget/ImageView;

    .line 69
    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    const p1, 0x7f0802a3

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_3
    iget-boolean v3, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M:Z

    .line 80
    .line 81
    xor-int/2addr v1, v3

    .line 82
    iput-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M:Z

    .line 83
    .line 84
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->G:Landroid/widget/ImageView;

    .line 85
    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    const p1, 0x7f0802a3

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_4
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 96
    .line 97
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M:Z

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "leftOn"

    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 109
    .line 110
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N:Z

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "rightOn"

    .line 117
    .line 118
    invoke-virtual {p1, v1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 122
    .line 123
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O:Z

    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "bottomOn"

    .line 130
    .line 131
    invoke-virtual {p1, v1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 135
    .line 136
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P:Z

    .line 137
    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "showView"

    .line 143
    .line 144
    invoke-virtual {p1, v1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 148
    .line 149
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R:Z

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, "upTrigger"

    .line 156
    .line 157
    invoke-virtual {p1, v1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 161
    .line 162
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "leftSplit"

    .line 181
    .line 182
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 186
    .line 187
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "rightSplit"

    .line 206
    .line 207
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 211
    .line 212
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V:Landroid/widget/TextView;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v1, "bottomSplit"

    .line 231
    .line 232
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 236
    .line 237
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Y:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v1, "leftSize"

    .line 248
    .line 249
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 253
    .line 254
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Z:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const-string v1, "rightSize"

    .line 265
    .line 266
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 270
    .line 271
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->h0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    const-string v1, "bottomSize"

    .line 282
    .line 283
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 287
    .line 288
    iget v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->R0:I

    .line 289
    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const-string v1, "effect"

    .line 295
    .line 296
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 300
    .line 301
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->X:Landroid/widget/TextView;

    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v1, "effectName"

    .line 312
    .line 313
    invoke-virtual {p1, v1, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 317
    .line 318
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v1, "leftTop"

    .line 329
    .line 330
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 331
    .line 332
    .line 333
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 334
    .line 335
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->M0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v1, "leftBottom"

    .line 346
    .line 347
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 348
    .line 349
    .line 350
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 351
    .line 352
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->N0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    const-string v1, "rightTop"

    .line 363
    .line 364
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 365
    .line 366
    .line 367
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 368
    .line 369
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->O0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const-string v1, "rightBottom"

    .line 380
    .line 381
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 385
    .line 386
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->P0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const-string v1, "bottomLeft"

    .line 397
    .line 398
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 399
    .line 400
    .line 401
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 402
    .line 403
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->Q0:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 404
    .line 405
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const-string v1, "bottomRight"

    .line 414
    .line 415
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 416
    .line 417
    .line 418
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->C:Lz7/s;

    .line 419
    .line 420
    invoke-static {v2, p1}, Lq4/a;->X(Landroid/content/Context;Lz7/s;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :pswitch_5
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V0:I

    .line 428
    .line 429
    iget-object v1, p0, Lua/q6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    new-instance p1, Lha/fa;

    .line 435
    .line 436
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 437
    .line 438
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 439
    .line 440
    new-instance v5, Lua/r6;

    .line 441
    .line 442
    const/4 v0, 0x2

    .line 443
    invoke-direct {v5, v1, v0}, Lua/r6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 444
    .line 445
    .line 446
    const/4 v3, 0x0

    .line 447
    move-object v0, p1

    .line 448
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_6
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V0:I

    .line 456
    .line 457
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 458
    .line 459
    .line 460
    return-void

    .line 461
    :pswitch_7
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V0:I

    .line 462
    .line 463
    iget-object v3, p0, Lua/q6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance p1, Lha/fa;

    .line 469
    .line 470
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 471
    .line 472
    iget-object v6, v3, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 473
    .line 474
    new-instance v7, Lua/r6;

    .line 475
    .line 476
    invoke-direct {v7, v3, v1}, Lua/r6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 477
    .line 478
    .line 479
    const/4 v5, 0x0

    .line 480
    move-object v2, p1

    .line 481
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :pswitch_8
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V0:I

    .line 489
    .line 490
    iget-object v1, p0, Lua/q6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    new-instance p1, Lha/fa;

    .line 496
    .line 497
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 498
    .line 499
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 500
    .line 501
    new-instance v5, Lua/r6;

    .line 502
    .line 503
    const/4 v0, 0x0

    .line 504
    invoke-direct {v5, v1, v0}, Lua/r6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V

    .line 505
    .line 506
    .line 507
    const/4 v3, 0x0

    .line 508
    move-object v0, p1

    .line 509
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    nop

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
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
