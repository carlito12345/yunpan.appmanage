.class public final Lha/d2;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lha/d2;->g:I

    const v0, 0x7f0e00df

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lha/d2;->g:I

    const v0, 0x7f0e00f4

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    const-string p1, ""

    iput-object p1, p0, Lha/d2;->h:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lha/d2;->j:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lha/d2;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/m8;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/d2;->g:I

    const v0, 0x7f0e00b5

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 9
    iput-object p3, p0, Lha/d2;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/u1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lha/d2;->g:I

    const v0, 0x7f0e008b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 2
    iput-object p4, p0, Lha/d2;->i:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lha/d2;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget v0, p0, Lha/d2;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0b05c2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    const v0, 0x7f0b05cd

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    const v1, 0x7f0b03b5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .line 36
    const v2, 0x7f0b03b6

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v3, Lha/rc;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v3, p0, p1, v4}, Lha/rc;-><init>(Lha/d2;Landroid/widget/TextView;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lha/rc;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {p1, p0, v0, v1}, Lha/rc;-><init>(Lha/d2;Landroid/widget/TextView;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const p1, 0x7f0b03f3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v0, Lha/g9;

    .line 71
    .line 72
    const/16 v1, 0xe

    .line 73
    .line 74
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    const p1, 0x7f0b0409

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/EditText;

    .line 92
    .line 93
    iput-object p1, p0, Lha/d2;->j:Ljava/lang/Object;

    .line 94
    .line 95
    const p1, 0x7f0b052b

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/EditText;

    .line 103
    .line 104
    iput-object p1, p0, Lha/d2;->i:Ljava/lang/Object;

    .line 105
    .line 106
    const p1, 0x7f0b03f3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object p1, p0, Lha/d2;->h:Ljava/lang/Object;

    .line 116
    .line 117
    new-instance v0, Lha/ua;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-direct {v0, p0, v1}, Lha/ua;-><init>(Lha/d2;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    const p1, 0x7f0b03ad

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v0, Lha/ua;

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    invoke-direct {v0, p0, v1}, Lha/ua;-><init>(Lha/d2;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    const p1, 0x7f0b0374

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance v0, Lha/ua;

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    invoke-direct {v0, p0, v1}, Lha/ua;-><init>(Lha/d2;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    const p1, 0x7f0b039e

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v0, Lha/ua;

    .line 166
    .line 167
    const/4 v1, 0x3

    .line 168
    invoke-direct {v0, p0, v1}, Lha/ua;-><init>(Lha/d2;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 184
    .line 185
    const-string v1, "\u957f\u6309"

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 195
    .line 196
    const-string v1, "\u5355\u51fb"

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    iput-object v0, p0, Lha/d2;->i:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 208
    .line 209
    const-string v1, "\u53cc\u51fb"

    .line 210
    .line 211
    const/4 v3, 0x2

    .line 212
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 219
    .line 220
    const-string v1, "\u4e09\u51fb"

    .line 221
    .line 222
    const/4 v4, 0x3

    .line 223
    invoke-direct {v0, v1, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    const v0, 0x7f0b05f7

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Landroid/widget/TextView;

    .line 237
    .line 238
    iget-object v1, p0, Lha/d2;->i:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 241
    .line 242
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    const v1, 0x7f0b05f6

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    new-instance v4, Lha/a7;

    .line 255
    .line 256
    const/4 v5, 0x1

    .line 257
    invoke-direct {v4, p0, p1, v0, v5}, Lha/a7;-><init>(Lha/d2;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 269
    .line 270
    const-string v1, "\u65b9\u6cd5\u4e00"

    .line 271
    .line 272
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    iput-object v0, p0, Lha/d2;->j:Ljava/lang/Object;

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 281
    .line 282
    const-string v1, "\u65b9\u6cd5\u4e8c"

    .line 283
    .line 284
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    const v0, 0x7f0b0323

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Landroid/widget/TextView;

    .line 298
    .line 299
    iget-object v1, p0, Lha/d2;->j:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 302
    .line 303
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    const v1, 0x7f0b0322

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    new-instance v2, Lha/a7;

    .line 316
    .line 317
    const/4 v3, 0x0

    .line 318
    invoke-direct {v2, p0, p1, v0, v3}, Lha/a7;-><init>(Lha/d2;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    .line 323
    .line 324
    const p1, 0x7f0b03b4

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    check-cast p1, Landroid/widget/TextView;

    .line 332
    .line 333
    const v0, 0x7f0b0334

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Landroid/widget/TextView;

    .line 341
    .line 342
    const v1, 0x7f0b0428

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Landroid/widget/EditText;

    .line 350
    .line 351
    new-instance v2, Lha/x6;

    .line 352
    .line 353
    const/4 v3, 0x1

    .line 354
    invoke-direct {v2, v0, v3}, Lha/x6;-><init>(Landroid/widget/TextView;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 358
    .line 359
    .line 360
    new-instance v2, Lha/b7;

    .line 361
    .line 362
    const/4 v3, 0x0

    .line 363
    invoke-direct {v2, p0, v1, v3}, Lha/b7;-><init>(Lha/d2;Landroid/widget/EditText;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    new-instance v0, Lha/b7;

    .line 370
    .line 371
    const/4 v2, 0x1

    .line 372
    invoke-direct {v0, p0, v1, v2}, Lha/b7;-><init>(Lha/d2;Landroid/widget/EditText;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :pswitch_2
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 380
    .line 381
    .line 382
    const p1, 0x7f0b0440

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, Landroid/widget/EditText;

    .line 390
    .line 391
    iput-object p1, p0, Lha/d2;->j:Ljava/lang/Object;

    .line 392
    .line 393
    iget-object v0, p0, Lha/d2;->h:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    const p1, 0x7f0b03f3

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 408
    .line 409
    const/4 v1, 0x6

    .line 410
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
