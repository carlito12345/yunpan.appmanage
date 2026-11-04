.class public final Lha/i;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lha/i;->g:I

    const v0, 0x7f0e00e7

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 9
    iput-object p3, p0, Lha/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/m8;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/i;->g:I

    const v0, 0x7f0e00b4

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 2
    iput-object p3, p0, Lha/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lha/i;->g:I

    const v0, 0x7f0e00e1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 4
    iput-object p3, p0, Lha/i;->h:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lha/i;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lua/u7;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lha/i;->g:I

    const v0, 0x7f0e0078

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 7
    iput-object p3, p0, Lha/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lha/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/i;->i:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lha/i;->h:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lha/h8;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lha/h8;->e(I)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget v0, p0, Lha/i;->g:I

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
    const p1, 0x7f0b0560

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 17
    .line 18
    iput-object p1, p0, Lha/i;->i:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Lha/gc;

    .line 21
    .line 22
    invoke-direct {v0}, Lha/gc;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p1}, Lta/l;->h(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v0, p0, Lha/i;->i:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lha/i;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 44
    .line 45
    const/16 v0, 0xff

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0b03f3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    new-instance v0, Lha/g9;

    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    const p1, 0x7f0b05ba

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    iget-object v0, p0, Lha/i;->h:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    const p1, 0x7f0b040b

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v0, p0, Lha/i;->i:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const p1, 0x7f0b0334

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v0, Lha/g9;

    .line 113
    .line 114
    const/4 v1, 0x5

    .line 115
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const p1, 0x7f0b0361

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/ImageView;

    .line 129
    .line 130
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 131
    .line 132
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 133
    .line 134
    if-eqz v0, :cond_0

    .line 135
    .line 136
    const v0, 0x7f080237

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    const v0, 0x7f080234

    .line 141
    .line 142
    .line 143
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    const v0, 0x7f0b035f

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Lha/f;

    .line 154
    .line 155
    const/4 v2, 0x2

    .line 156
    invoke-direct {v1, p1, v2}, Lha/f;-><init>(Landroid/widget/ImageView;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 172
    .line 173
    const-string v1, "\u5355\u51fb"

    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lha/i;->i:Ljava/lang/Object;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 185
    .line 186
    const-string v1, "\u53cc\u51fb"

    .line 187
    .line 188
    const/4 v2, 0x2

    .line 189
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 196
    .line 197
    const-string v1, "\u4e09\u51fb"

    .line 198
    .line 199
    const/4 v2, 0x3

    .line 200
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    const v0, 0x7f0b05f7

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/widget/TextView;

    .line 214
    .line 215
    iget-object v1, p0, Lha/i;->i:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 218
    .line 219
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    const v1, 0x7f0b05f6

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    new-instance v2, Lha/s6;

    .line 232
    .line 233
    const/4 v3, 0x1

    .line 234
    invoke-direct {v2, p0, p1, v0, v3}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    const p1, 0x7f0b03b4

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Landroid/widget/TextView;

    .line 248
    .line 249
    const v0, 0x7f0b0334

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/widget/TextView;

    .line 257
    .line 258
    const v1, 0x7f0b0428

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Landroid/widget/EditText;

    .line 266
    .line 267
    new-instance v2, Lha/x6;

    .line 268
    .line 269
    const/4 v3, 0x2

    .line 270
    invoke-direct {v2, v0, v3}, Lha/x6;-><init>(Landroid/widget/TextView;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 274
    .line 275
    .line 276
    new-instance v2, Lha/e7;

    .line 277
    .line 278
    const/4 v3, 0x0

    .line 279
    invoke-direct {v2, p0, v1, v3}, Lha/e7;-><init>(Lha/i;Landroid/widget/EditText;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Lha/e7;

    .line 286
    .line 287
    const/4 v2, 0x1

    .line 288
    invoke-direct {v0, p0, v1, v2}, Lha/e7;-><init>(Lha/i;Landroid/widget/EditText;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_2
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 299
    .line 300
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 301
    .line 302
    const-class v1, Lcom/yunpan/appmanage/service/AdbPairService;

    .line 303
    .line 304
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    .line 310
    :catch_0
    const p1, 0x7f0b03ad

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 320
    .line 321
    .line 322
    new-instance v0, Lha/d;

    .line 323
    .line 324
    const/4 v1, 0x0

    .line 325
    invoke-direct {v0, p0, v1}, Lha/d;-><init>(Lha/i;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    const p1, 0x7f0b03d2

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    new-instance v0, Lha/d;

    .line 339
    .line 340
    const/4 v1, 0x1

    .line 341
    invoke-direct {v0, p0, v1}, Lha/d;-><init>(Lha/i;I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    const p1, 0x7f0b03c6

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 355
    .line 356
    new-instance v0, Lc6/c;

    .line 357
    .line 358
    invoke-direct {v0, p0, v1, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .line 363
    .line 364
    const p1, 0x7f0b03e0

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    new-instance v0, Lha/d;

    .line 372
    .line 373
    const/4 v1, 0x2

    .line 374
    invoke-direct {v0, p0, v1}, Lha/d;-><init>(Lha/i;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    const p1, 0x7f0b0370

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Landroid/widget/TextView;

    .line 388
    .line 389
    iput-object p1, p0, Lha/i;->i:Ljava/lang/Object;

    .line 390
    .line 391
    const p1, 0x7f0b036e

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    new-instance v0, Lha/d;

    .line 399
    .line 400
    const/4 v1, 0x3

    .line 401
    invoke-direct {v0, p0, v1}, Lha/d;-><init>(Lha/i;I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .line 406
    .line 407
    const p1, 0x7f0b0353

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    check-cast p1, Landroid/widget/ImageView;

    .line 415
    .line 416
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 417
    .line 418
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 419
    .line 420
    const v2, 0x7f080237

    .line 421
    .line 422
    .line 423
    const v3, 0x7f080234

    .line 424
    .line 425
    .line 426
    if-eqz v1, :cond_1

    .line 427
    .line 428
    const v1, 0x7f080234

    .line 429
    .line 430
    .line 431
    goto :goto_1

    .line 432
    :cond_1
    const v1, 0x7f080237

    .line 433
    .line 434
    .line 435
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    .line 437
    .line 438
    const v1, 0x7f0b0352

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    new-instance v4, Lha/e;

    .line 446
    .line 447
    const/4 v5, 0x0

    .line 448
    invoke-direct {v4, p0, p1, v5}, Lha/e;-><init>(Lha/i;Landroid/widget/ImageView;I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    .line 453
    .line 454
    const p1, 0x7f0b0357

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Landroid/widget/ImageView;

    .line 462
    .line 463
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->C:Z

    .line 464
    .line 465
    if-eqz v1, :cond_2

    .line 466
    .line 467
    const v1, 0x7f080234

    .line 468
    .line 469
    .line 470
    goto :goto_2

    .line 471
    :cond_2
    const v1, 0x7f080237

    .line 472
    .line 473
    .line 474
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    .line 476
    .line 477
    const v1, 0x7f0b0356

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    new-instance v4, Lha/f;

    .line 485
    .line 486
    const/4 v5, 0x0

    .line 487
    invoke-direct {v4, p1, v5}, Lha/f;-><init>(Landroid/widget/ImageView;I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    .line 492
    .line 493
    const p1, 0x7f0b035d

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    check-cast p1, Landroid/widget/ImageView;

    .line 501
    .line 502
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->D:Z

    .line 503
    .line 504
    if-eqz v0, :cond_3

    .line 505
    .line 506
    const v2, 0x7f080234

    .line 507
    .line 508
    .line 509
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    .line 511
    .line 512
    const v0, 0x7f0b035c

    .line 513
    .line 514
    .line 515
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    new-instance v1, Lha/e;

    .line 520
    .line 521
    const/4 v2, 0x1

    .line 522
    invoke-direct {v1, p0, p1, v2}, Lha/e;-><init>(Lha/i;Landroid/widget/ImageView;I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
