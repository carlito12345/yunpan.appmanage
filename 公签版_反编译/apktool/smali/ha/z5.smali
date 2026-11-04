.class public final Lha/z5;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public A:Landroid/widget/CheckBox;

.field public B:Landroid/widget/EditText;

.field public final g:Lx9/w3;

.field public final h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/CheckBox;

.field public n:Landroid/widget/CheckBox;

.field public p:Landroid/widget/CheckBox;

.field public q:Landroid/widget/CheckBox;

.field public r:Landroid/widget/CheckBox;

.field public s:Landroid/widget/CheckBox;

.field public t:Landroid/widget/CheckBox;

.field public v:Landroid/widget/CheckBox;

.field public w:Landroid/widget/CheckBox;

.field public x:Landroid/widget/CheckBox;

.field public y:Landroid/widget/CheckBox;

.field public z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;Lcom/yunpan/appmanage/bean/FileAttributeBean;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00a8

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lha/z5;->i:I

    .line 9
    .line 10
    iput-object p3, p0, Lha/z5;->g:Lx9/w3;

    .line 11
    .line 12
    iput-object p4, p0, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    iput-object p1, p0, Lha/z5;->j:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p0, Lha/z5;->m:Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "r"

    .line 12
    .line 13
    const-string v1, "-"

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v0, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 43
    .line 44
    :goto_0
    iget-object p2, p0, Lha/z5;->n:Landroid/widget/CheckBox;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const-string v2, "w"

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lha/z5;->j:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3, v2, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lha/z5;->j:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v3, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 80
    .line 81
    :goto_1
    iget-object p2, p0, Lha/z5;->p:Landroid/widget/CheckBox;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    const-string v3, "S"

    .line 88
    .line 89
    const-string v4, "x"

    .line 90
    .line 91
    const-string v5, "s"

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    iget-object p2, p0, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v6, v5, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v6, v4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    iget-object p2, p0, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v6, v3, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v6, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 165
    .line 166
    :goto_2
    iget-object p2, p0, Lha/z5;->q:Landroid/widget/CheckBox;

    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_5

    .line 173
    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v6, v0, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v6, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 200
    .line 201
    :goto_3
    iget-object p2, p0, Lha/z5;->r:Landroid/widget/CheckBox;

    .line 202
    .line 203
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_6

    .line 208
    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v6, v2, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v6, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 235
    .line 236
    :goto_4
    iget-object p2, p0, Lha/z5;->s:Landroid/widget/CheckBox;

    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-eqz p2, :cond_8

    .line 243
    .line 244
    iget-object p2, p0, Lha/z5;->y:Landroid/widget/CheckBox;

    .line 245
    .line 246
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_7

    .line 251
    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v6, v5, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v6, v4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_8
    iget-object p2, p0, Lha/z5;->y:Landroid/widget/CheckBox;

    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-eqz p2, :cond_9

    .line 287
    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v6, v3, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v6, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 314
    .line 315
    :goto_5
    iget-object p2, p0, Lha/z5;->t:Landroid/widget/CheckBox;

    .line 316
    .line 317
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_a

    .line 322
    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v6, p0, Lha/z5;->j:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v6, v0, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v0, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 349
    .line 350
    :goto_6
    iget-object p2, p0, Lha/z5;->v:Landroid/widget/CheckBox;

    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-eqz p2, :cond_b

    .line 357
    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v0, v2, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 378
    .line 379
    invoke-static {v0, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 384
    .line 385
    :goto_7
    iget-object p2, p0, Lha/z5;->w:Landroid/widget/CheckBox;

    .line 386
    .line 387
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    if-eqz p2, :cond_d

    .line 392
    .line 393
    iget-object p2, p0, Lha/z5;->z:Landroid/widget/CheckBox;

    .line 394
    .line 395
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 396
    .line 397
    .line 398
    move-result p2

    .line 399
    if-eqz p2, :cond_c

    .line 400
    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 407
    .line 408
    invoke-static {v0, v5, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 421
    .line 422
    invoke-static {v0, v4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p2

    .line 426
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_d
    iget-object p2, p0, Lha/z5;->z:Landroid/widget/CheckBox;

    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 432
    .line 433
    .line 434
    move-result p2

    .line 435
    if-eqz p2, :cond_e

    .line 436
    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 443
    .line 444
    invoke-static {v0, v3, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p2

    .line 448
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    iget-object v0, p0, Lha/z5;->j:Ljava/lang/String;

    .line 457
    .line 458
    invoke-static {v0, v1, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    iput-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 463
    .line 464
    :goto_8
    iget-object p2, p0, Lha/z5;->j:Ljava/lang/String;

    .line 465
    .line 466
    invoke-static {p2}, Lcom/yunpan/appmanage/util/a0;->h(Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    iput p2, p0, Lha/z5;->i:I

    .line 471
    .line 472
    iget-object p2, p0, Lha/z5;->k:Landroid/widget/TextView;

    .line 473
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    iget-object v1, p0, Lha/z5;->j:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v1, " ("

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    iget v1, p0, Lha/z5;->i:I

    .line 490
    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v1, ")"

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    iget-object p2, p0, Lha/z5;->B:Landroid/widget/EditText;

    .line 507
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iget p1, p0, Lha/z5;->i:I

    .line 514
    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0b03f3

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x3e8

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lha/z5;->B:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lha/z5;->i:I

    .line 34
    .line 35
    iget-object v0, p0, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 36
    .line 37
    iget v0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermission:I

    .line 38
    .line 39
    if-ne v0, p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, La1/d;

    .line 46
    .line 47
    const/16 v0, 0x16

    .line 48
    .line 49
    invoke-direct {p1, v0, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lmc/c;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lha/p0;

    .line 73
    .line 74
    const/16 v1, 0x9

    .line 75
    .line 76
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const v0, 0x7f0b0397

    .line 88
    .line 89
    .line 90
    if-ne p1, v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b031f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/CheckBox;

    .line 12
    .line 13
    iput-object p1, p0, Lha/z5;->m:Landroid/widget/CheckBox;

    .line 14
    .line 15
    const p1, 0x7f0b0320

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/CheckBox;

    .line 23
    .line 24
    iput-object p1, p0, Lha/z5;->n:Landroid/widget/CheckBox;

    .line 25
    .line 26
    const p1, 0x7f0b0321

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/CheckBox;

    .line 34
    .line 35
    iput-object p1, p0, Lha/z5;->p:Landroid/widget/CheckBox;

    .line 36
    .line 37
    const p1, 0x7f0b0601

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/CheckBox;

    .line 45
    .line 46
    iput-object p1, p0, Lha/z5;->q:Landroid/widget/CheckBox;

    .line 47
    .line 48
    const p1, 0x7f0b0602

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/CheckBox;

    .line 56
    .line 57
    iput-object p1, p0, Lha/z5;->r:Landroid/widget/CheckBox;

    .line 58
    .line 59
    const p1, 0x7f0b0603

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/CheckBox;

    .line 67
    .line 68
    iput-object p1, p0, Lha/z5;->s:Landroid/widget/CheckBox;

    .line 69
    .line 70
    const p1, 0x7f0b0528

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/CheckBox;

    .line 78
    .line 79
    iput-object p1, p0, Lha/z5;->t:Landroid/widget/CheckBox;

    .line 80
    .line 81
    const p1, 0x7f0b0529

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/CheckBox;

    .line 89
    .line 90
    iput-object p1, p0, Lha/z5;->v:Landroid/widget/CheckBox;

    .line 91
    .line 92
    const p1, 0x7f0b052a

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/CheckBox;

    .line 100
    .line 101
    iput-object p1, p0, Lha/z5;->w:Landroid/widget/CheckBox;

    .line 102
    .line 103
    const p1, 0x7f0b05f4

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/CheckBox;

    .line 111
    .line 112
    iput-object p1, p0, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 113
    .line 114
    const p1, 0x7f0b05ef

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/CheckBox;

    .line 122
    .line 123
    iput-object p1, p0, Lha/z5;->y:Landroid/widget/CheckBox;

    .line 124
    .line 125
    const p1, 0x7f0b05f5

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/CheckBox;

    .line 133
    .line 134
    iput-object p1, p0, Lha/z5;->z:Landroid/widget/CheckBox;

    .line 135
    .line 136
    const p1, 0x7f0b031e

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/widget/CheckBox;

    .line 144
    .line 145
    iput-object p1, p0, Lha/z5;->A:Landroid/widget/CheckBox;

    .line 146
    .line 147
    const p1, 0x7f0b0428

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Landroid/widget/EditText;

    .line 155
    .line 156
    iput-object p1, p0, Lha/z5;->B:Landroid/widget/EditText;

    .line 157
    .line 158
    const p1, 0x7f0b058f

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/TextView;

    .line 166
    .line 167
    iput-object p1, p0, Lha/z5;->k:Landroid/widget/TextView;

    .line 168
    .line 169
    const p1, 0x7f0b03f3

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Landroid/widget/LinearLayout;

    .line 177
    .line 178
    iput-object p1, p0, Lha/z5;->l:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    const p1, 0x7f0b0397

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lha/z5;->A:Landroid/widget/CheckBox;

    .line 196
    .line 197
    iget-object v0, p0, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 198
    .line 199
    iget-boolean v1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->isDirectory:Z

    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    const/16 v3, 0x8

    .line 203
    .line 204
    if-eqz v1, :cond_0

    .line 205
    .line 206
    const/4 v1, 0x0

    .line 207
    goto :goto_0

    .line 208
    :cond_0
    const/16 v1, 0x8

    .line 209
    .line 210
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    const/16 v1, 0x72

    .line 220
    .line 221
    const/4 v2, 0x1

    .line 222
    if-ne p1, v1, :cond_1

    .line 223
    .line 224
    iget-object p1, p0, Lha/z5;->m:Landroid/widget/CheckBox;

    .line 225
    .line 226
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 227
    .line 228
    .line 229
    :cond_1
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    const/16 v4, 0x77

    .line 236
    .line 237
    if-ne p1, v4, :cond_2

    .line 238
    .line 239
    iget-object p1, p0, Lha/z5;->n:Landroid/widget/CheckBox;

    .line 240
    .line 241
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 242
    .line 243
    .line 244
    :cond_2
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 245
    .line 246
    const/4 v5, 0x2

    .line 247
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    const/16 v6, 0x53

    .line 252
    .line 253
    const/16 v7, 0x73

    .line 254
    .line 255
    const/16 v8, 0x78

    .line 256
    .line 257
    if-ne p1, v8, :cond_3

    .line 258
    .line 259
    iget-object p1, p0, Lha/z5;->p:Landroid/widget/CheckBox;

    .line 260
    .line 261
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_3
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-ne p1, v7, :cond_4

    .line 272
    .line 273
    iget-object p1, p0, Lha/z5;->p:Landroid/widget/CheckBox;

    .line 274
    .line 275
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 279
    .line 280
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_4
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-ne p1, v6, :cond_5

    .line 291
    .line 292
    iget-object p1, p0, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 293
    .line 294
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 295
    .line 296
    .line 297
    :cond_5
    :goto_1
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 298
    .line 299
    const/4 v5, 0x3

    .line 300
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-ne p1, v1, :cond_6

    .line 305
    .line 306
    iget-object p1, p0, Lha/z5;->q:Landroid/widget/CheckBox;

    .line 307
    .line 308
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 309
    .line 310
    .line 311
    :cond_6
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 312
    .line 313
    const/4 v5, 0x4

    .line 314
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-ne p1, v4, :cond_7

    .line 319
    .line 320
    iget-object p1, p0, Lha/z5;->r:Landroid/widget/CheckBox;

    .line 321
    .line 322
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 323
    .line 324
    .line 325
    :cond_7
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 326
    .line 327
    const/4 v5, 0x5

    .line 328
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-ne p1, v8, :cond_8

    .line 333
    .line 334
    iget-object p1, p0, Lha/z5;->s:Landroid/widget/CheckBox;

    .line 335
    .line 336
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_8
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-ne p1, v7, :cond_9

    .line 347
    .line 348
    iget-object p1, p0, Lha/z5;->s:Landroid/widget/CheckBox;

    .line 349
    .line 350
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p0, Lha/z5;->y:Landroid/widget/CheckBox;

    .line 354
    .line 355
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_9
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-ne p1, v6, :cond_a

    .line 366
    .line 367
    iget-object p1, p0, Lha/z5;->y:Landroid/widget/CheckBox;

    .line 368
    .line 369
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 370
    .line 371
    .line 372
    :cond_a
    :goto_2
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 373
    .line 374
    const/4 v5, 0x6

    .line 375
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-ne p1, v1, :cond_b

    .line 380
    .line 381
    iget-object p1, p0, Lha/z5;->t:Landroid/widget/CheckBox;

    .line 382
    .line 383
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 384
    .line 385
    .line 386
    :cond_b
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 387
    .line 388
    const/4 v1, 0x7

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-ne p1, v4, :cond_c

    .line 394
    .line 395
    iget-object p1, p0, Lha/z5;->v:Landroid/widget/CheckBox;

    .line 396
    .line 397
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 398
    .line 399
    .line 400
    :cond_c
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-ne p1, v8, :cond_d

    .line 407
    .line 408
    iget-object p1, p0, Lha/z5;->w:Landroid/widget/CheckBox;

    .line 409
    .line 410
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 411
    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_d
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    const/16 v1, 0x74

    .line 421
    .line 422
    if-ne p1, v1, :cond_e

    .line 423
    .line 424
    iget-object p1, p0, Lha/z5;->w:Landroid/widget/CheckBox;

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 427
    .line 428
    .line 429
    iget-object p1, p0, Lha/z5;->z:Landroid/widget/CheckBox;

    .line 430
    .line 431
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_e
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    const/16 v1, 0x54

    .line 442
    .line 443
    if-ne p1, v1, :cond_f

    .line 444
    .line 445
    iget-object p1, p0, Lha/z5;->z:Landroid/widget/CheckBox;

    .line 446
    .line 447
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 448
    .line 449
    .line 450
    :cond_f
    :goto_3
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 451
    .line 452
    iput-object p1, p0, Lha/z5;->j:Ljava/lang/String;

    .line 453
    .line 454
    iget p1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermission:I

    .line 455
    .line 456
    iput p1, p0, Lha/z5;->i:I

    .line 457
    .line 458
    iget-object p1, p0, Lha/z5;->k:Landroid/widget/TextView;

    .line 459
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    iget-object v1, p0, Lha/z5;->j:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v1, " ("

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    iget v1, p0, Lha/z5;->i:I

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v1, ")"

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, Lha/z5;->B:Landroid/widget/EditText;

    .line 493
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string v1, ""

    .line 497
    .line 498
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget v1, p0, Lha/z5;->i:I

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    iget-object p1, p0, Lha/z5;->B:Landroid/widget/EditText;

    .line 514
    .line 515
    new-instance v0, Lha/c0;

    .line 516
    .line 517
    const/4 v1, 0x2

    .line 518
    invoke-direct {v0, p0, v1}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 522
    .line 523
    .line 524
    iget-object p1, p0, Lha/z5;->m:Landroid/widget/CheckBox;

    .line 525
    .line 526
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 527
    .line 528
    .line 529
    iget-object p1, p0, Lha/z5;->n:Landroid/widget/CheckBox;

    .line 530
    .line 531
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lha/z5;->p:Landroid/widget/CheckBox;

    .line 535
    .line 536
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 537
    .line 538
    .line 539
    iget-object p1, p0, Lha/z5;->q:Landroid/widget/CheckBox;

    .line 540
    .line 541
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 542
    .line 543
    .line 544
    iget-object p1, p0, Lha/z5;->r:Landroid/widget/CheckBox;

    .line 545
    .line 546
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 547
    .line 548
    .line 549
    iget-object p1, p0, Lha/z5;->s:Landroid/widget/CheckBox;

    .line 550
    .line 551
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 552
    .line 553
    .line 554
    iget-object p1, p0, Lha/z5;->t:Landroid/widget/CheckBox;

    .line 555
    .line 556
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lha/z5;->v:Landroid/widget/CheckBox;

    .line 560
    .line 561
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 562
    .line 563
    .line 564
    iget-object p1, p0, Lha/z5;->w:Landroid/widget/CheckBox;

    .line 565
    .line 566
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 567
    .line 568
    .line 569
    iget-object p1, p0, Lha/z5;->x:Landroid/widget/CheckBox;

    .line 570
    .line 571
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 572
    .line 573
    .line 574
    iget-object p1, p0, Lha/z5;->y:Landroid/widget/CheckBox;

    .line 575
    .line 576
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 577
    .line 578
    .line 579
    iget-object p1, p0, Lha/z5;->z:Landroid/widget/CheckBox;

    .line 580
    .line 581
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 582
    .line 583
    .line 584
    return-void
.end method
