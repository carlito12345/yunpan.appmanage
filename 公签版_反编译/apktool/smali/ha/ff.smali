.class public final Lha/ff;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final i:Lx9/a6;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final k:Lx9/q5;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public s:Lx9/n5;

.field public t:Lua/t8;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00da

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lx9/a6;

    .line 8
    .line 9
    invoke-direct {p1}, Lx9/a6;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/ff;->i:Lx9/a6;

    .line 13
    .line 14
    new-instance p1, Lx9/q5;

    .line 15
    .line 16
    invoke-direct {p1}, Lx9/q5;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/ff;->k:Lx9/q5;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    iget-object v1, p0, Lha/ff;->i:Lx9/a6;

    .line 9
    .line 10
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    sub-int/2addr v2, v3

    .line 16
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lha/ff;->k:Lx9/q5;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const-string v2, ""

    .line 36
    .line 37
    invoke-virtual {p0, v2, v0, v0}, Lha/ff;->b(Ljava/lang/String;IZ)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lha/ff;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sub-int/2addr v0, v3

    .line 50
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 55
    .line 56
    iget-object v1, p0, Lha/ff;->s:Lx9/n5;

    .line 57
    .line 58
    iget v2, v1, Lx9/n5;->a:I

    .line 59
    .line 60
    if-ne v2, v3, :cond_0

    .line 61
    .line 62
    new-instance v2, Lba/b;

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lmc/c;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_0
    const/4 v4, 0x2

    .line 91
    if-ne v2, v4, :cond_1

    .line 92
    .line 93
    new-instance v2, Lba/b;

    .line 94
    .line 95
    const/4 v3, 0x7

    .line 96
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lmc/c;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_1
    const/16 v4, 0x14

    .line 122
    .line 123
    if-ne v2, v4, :cond_2

    .line 124
    .line 125
    iput v3, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 126
    .line 127
    new-instance v2, Lba/b;

    .line 128
    .line 129
    const/16 v3, 0x9

    .line 130
    .line 131
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Lmc/c;

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_2
    const/16 v4, 0x15

    .line 157
    .line 158
    if-ne v2, v4, :cond_3

    .line 159
    .line 160
    iput v3, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 161
    .line 162
    new-instance v2, Lba/b;

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lmc/c;

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_3
    const/4 v3, 0x3

    .line 191
    if-ne v2, v3, :cond_4

    .line 192
    .line 193
    new-instance v2, Lba/b;

    .line 194
    .line 195
    const/16 v3, 0xe

    .line 196
    .line 197
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lmc/c;

    .line 201
    .line 202
    const/4 v1, 0x0

    .line 203
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_4
    const/4 v3, 0x4

    .line 223
    if-ne v2, v3, :cond_5

    .line 224
    .line 225
    new-instance v2, Lba/b;

    .line 226
    .line 227
    const/16 v3, 0xb

    .line 228
    .line 229
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lmc/c;

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    goto :goto_0

    .line 253
    :cond_5
    const/4 v3, 0x5

    .line 254
    if-ne v2, v3, :cond_6

    .line 255
    .line 256
    new-instance v2, Lba/b;

    .line 257
    .line 258
    const/16 v3, 0xc

    .line 259
    .line 260
    invoke-direct {v2, v1, v0, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 261
    .line 262
    .line 263
    new-instance v0, Lmc/c;

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    goto :goto_0

    .line 284
    :cond_6
    const/4 v3, 0x6

    .line 285
    if-ne v2, v3, :cond_7

    .line 286
    .line 287
    new-instance v2, Lba/f;

    .line 288
    .line 289
    const/16 v3, 0xb

    .line 290
    .line 291
    invoke-direct {v2, v1, v0, v3}, Lba/f;-><init>(Lx9/n5;Ljava/lang/Object;I)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lmc/c;

    .line 295
    .line 296
    const/4 v1, 0x0

    .line 297
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    goto :goto_0

    .line 315
    :cond_7
    const/4 v3, 0x7

    .line 316
    if-ne v2, v3, :cond_8

    .line 317
    .line 318
    new-instance v2, Lba/b;

    .line 319
    .line 320
    const/16 v3, 0xf

    .line 321
    .line 322
    invoke-direct {v2, v0, v1, v3}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;I)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Lmc/c;

    .line 326
    .line 327
    const/4 v1, 0x0

    .line 328
    invoke-direct {v0, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    :goto_0
    new-instance v1, Lha/p0;

    .line 346
    .line 347
    const/16 v2, 0x1d

    .line 348
    .line 349
    invoke-direct {v1, v2, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 353
    .line 354
    .line 355
    :cond_8
    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/ff;->n:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lha/ff;->p:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lha/ff;->q:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/ff;->i:Lx9/a6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-int/2addr v0, v2

    .line 25
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lha/ff;->a()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b05ba

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/ff;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    const p1, 0x7f0b0531

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 25
    .line 26
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 27
    .line 28
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, v1, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 38
    .line 39
    iget-object v0, p0, Lha/ff;->i:Lx9/a6;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0b047a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 52
    .line 53
    iput-object p1, p0, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    invoke-direct {v2, v1, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 65
    .line 66
    iget-object v1, p0, Lha/ff;->k:Lx9/q5;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 69
    .line 70
    .line 71
    const p1, 0x7f0b03f3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p1, p0, Lha/ff;->l:Landroid/widget/TextView;

    .line 81
    .line 82
    const p1, 0x7f0b0395

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object p1, p0, Lha/ff;->m:Landroid/widget/TextView;

    .line 92
    .line 93
    const p1, 0x7f0b03a7

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    .line 102
    new-instance v2, Lha/df;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-direct {v2, p0, v3}, Lha/df;-><init>(Lha/ff;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lha/ff;->l:Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance v2, Lha/df;

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-direct {v2, p0, v3}, Lha/df;-><init>(Lha/ff;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lha/ff;->m:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v2, Lha/df;

    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    invoke-direct {v2, p0, v3}, Lha/df;-><init>(Lha/ff;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    const p1, 0x7f0b0549

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object p1, p0, Lha/ff;->n:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const p1, 0x7f0b0546

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/widget/ImageView;

    .line 152
    .line 153
    iput-object p1, p0, Lha/ff;->p:Landroid/widget/ImageView;

    .line 154
    .line 155
    const p1, 0x7f0b054c

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object p1, p0, Lha/ff;->q:Landroid/widget/TextView;

    .line 165
    .line 166
    iget-object p1, p0, Lha/ff;->n:Landroid/widget/LinearLayout;

    .line 167
    .line 168
    const/16 v2, 0x8

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    const p1, 0x7f0b0517

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 181
    .line 182
    iput-object p1, p0, Lha/ff;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lha/ef;

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-direct {p1, p0, v2}, Lha/ef;-><init>(Lha/ff;I)V

    .line 191
    .line 192
    .line 193
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 194
    .line 195
    new-instance p1, Lha/ef;

    .line 196
    .line 197
    const/4 v0, 0x1

    .line 198
    invoke-direct {p1, p0, v0}, Lha/ef;-><init>(Lha/ff;I)V

    .line 199
    .line 200
    .line 201
    iput-object p1, v1, Lc6/g;->e:Lc6/e;

    .line 202
    .line 203
    iget-object p1, p0, Lha/ff;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 204
    .line 205
    new-instance v0, Lha/ef;

    .line 206
    .line 207
    const/4 v1, 0x2

    .line 208
    invoke-direct {v0, p0, v1}, Lha/ef;-><init>(Lha/ff;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 215
    .line 216
    new-instance v0, Lha/ef;

    .line 217
    .line 218
    const/4 v1, 0x3

    .line 219
    invoke-direct {v0, p0, v1}, Lha/ef;-><init>(Lha/ff;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method
