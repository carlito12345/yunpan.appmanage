.class public final synthetic Lua/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lc6/f;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;
.implements Lha/y6;
.implements Lha/gb;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/i9;


# direct methods
.method public synthetic constructor <init>(Lua/i9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/r8;->a:I

    iput-object p1, p0, Lua/r8;->b:Lua/i9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lua/r8;->b:Lua/i9;

    .line 2
    .line 3
    iget-object v0, p1, Lua/i9;->x:Lx9/g0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lx9/w3;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Lua/i9;->n(Lx9/w3;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget v0, p0, Lua/r8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lua/r8;->b:Lua/i9;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lua/i9;->y(I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 14
    .line 15
    iget-object v1, v0, Lua/i9;->j:Lx9/o5;

    .line 16
    .line 17
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lua/i9;->x(ILandroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :pswitch_1
    iget-object p2, p0, Lua/r8;->b:Lua/i9;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lua/i9;->w(I)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_8

    .line 13
    .line 14
    new-instance p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-direct {p2, p1, v1}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lua/i9;->j:Lx9/o5;

    .line 22
    .line 23
    iget v1, v0, Lua/i9;->T:I

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lx9/n5;

    .line 30
    .line 31
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 32
    .line 33
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    sub-int/2addr v2, v3

    .line 39
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 44
    .line 45
    iget v2, p1, Lx9/n5;->a:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_0

    .line 48
    .line 49
    new-instance v2, Lba/d;

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lmc/c;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_0
    const/4 v3, 0x2

    .line 78
    if-ne v2, v3, :cond_1

    .line 79
    .line 80
    new-instance v2, Lba/d;

    .line 81
    .line 82
    const/4 v3, 0x3

    .line 83
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lmc/c;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_1
    const/4 v3, 0x3

    .line 109
    if-ne v2, v3, :cond_2

    .line 110
    .line 111
    new-instance v2, Lba/d;

    .line 112
    .line 113
    invoke-direct {v2, p2, v1, p1}, Lba/d;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lmc/c;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_2
    const/4 v3, 0x4

    .line 139
    if-ne v2, v3, :cond_3

    .line 140
    .line 141
    new-instance v2, Lba/d;

    .line 142
    .line 143
    const/4 v3, 0x5

    .line 144
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Lmc/c;

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_3
    const/4 v3, 0x5

    .line 170
    if-ne v2, v3, :cond_4

    .line 171
    .line 172
    new-instance v2, Lba/d;

    .line 173
    .line 174
    const/4 v3, 0x6

    .line 175
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Lmc/c;

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_4
    const/4 v3, 0x6

    .line 201
    if-ne v2, v3, :cond_5

    .line 202
    .line 203
    new-instance v2, Lba/b;

    .line 204
    .line 205
    invoke-direct {v2, v1, p2, p1}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Lmc/c;

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    goto :goto_0

    .line 229
    :cond_5
    const/4 v3, 0x7

    .line 230
    if-ne v2, v3, :cond_6

    .line 231
    .line 232
    new-instance v2, Lba/d;

    .line 233
    .line 234
    const/16 v3, 0xb

    .line 235
    .line 236
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 237
    .line 238
    .line 239
    new-instance p1, Lmc/c;

    .line 240
    .line 241
    const/4 v1, 0x0

    .line 242
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    goto :goto_0

    .line 260
    :cond_6
    const/16 v3, 0x14

    .line 261
    .line 262
    if-ne v2, v3, :cond_7

    .line 263
    .line 264
    new-instance v2, Lba/d;

    .line 265
    .line 266
    const/4 v3, 0x4

    .line 267
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 268
    .line 269
    .line 270
    new-instance p1, Lmc/c;

    .line 271
    .line 272
    const/4 v1, 0x0

    .line 273
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 277
    .line 278
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    goto :goto_0

    .line 291
    :cond_7
    const/16 v3, 0x15

    .line 292
    .line 293
    if-ne v2, v3, :cond_8

    .line 294
    .line 295
    new-instance v2, Lba/d;

    .line 296
    .line 297
    const/4 v3, 0x0

    .line 298
    invoke-direct {v2, p1, v1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 299
    .line 300
    .line 301
    new-instance p1, Lmc/c;

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 308
    .line 309
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    :goto_0
    new-instance v1, Lha/h3;

    .line 322
    .line 323
    const/16 v2, 0x15

    .line 324
    .line 325
    invoke-direct {v1, v0, v2, p2}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 329
    .line 330
    .line 331
    :cond_8
    return-void
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 5

    .line 1
    iget v0, p0, Lua/r8;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Lua/i9;->k:Lcom/recycleview/MyRecycleView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0x42

    .line 20
    .line 21
    const/16 v3, 0x14d

    .line 22
    .line 23
    if-ne p1, v1, :cond_4

    .line 24
    .line 25
    iget-object p1, v0, Lua/i9;->F:Lx9/c6;

    .line 26
    .line 27
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, v0, Lua/i9;->x:Lx9/g0;

    .line 48
    .line 49
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-lez p1, :cond_2

    .line 54
    .line 55
    iget-object p1, v0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, v0, Lua/i9;->s:Lx9/h0;

    .line 62
    .line 63
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_3

    .line 68
    .line 69
    iget-object p1, v0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {v3, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/16 v1, 0x21

    .line 80
    .line 81
    if-ne p1, v1, :cond_5

    .line 82
    .line 83
    iget-object p1, v0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const/16 v1, 0x82

    .line 90
    .line 91
    if-ne p1, v1, :cond_6

    .line 92
    .line 93
    iget-object p1, v0, Lua/i9;->q:Lx9/y5;

    .line 94
    .line 95
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    invoke-static {v3, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :cond_7
    const/4 v2, 0x0

    .line 109
    :goto_0
    return v2

    .line 110
    :sswitch_0
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x11

    .line 116
    .line 117
    const/16 v2, 0x14d

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    if-ne p1, v1, :cond_8

    .line 121
    .line 122
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_8
    const/16 v1, 0x42

    .line 127
    .line 128
    if-ne p1, v1, :cond_c

    .line 129
    .line 130
    iget-object p1, v0, Lua/i9;->F:Lx9/c6;

    .line 131
    .line 132
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_9

    .line 137
    .line 138
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_9

    .line 145
    .line 146
    iget-object p1, v0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_9
    iget-object p1, v0, Lua/i9;->x:Lx9/g0;

    .line 153
    .line 154
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-lez p1, :cond_a

    .line 159
    .line 160
    iget-object p1, v0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_a
    iget-object p1, v0, Lua/i9;->s:Lx9/h0;

    .line 167
    .line 168
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-lez p1, :cond_b

    .line 173
    .line 174
    iget-object p1, v0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_b
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_c
    const/16 v1, 0x21

    .line 185
    .line 186
    if-ne p1, v1, :cond_d

    .line 187
    .line 188
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string p2, "up"

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_d
    const/16 v1, 0x82

    .line 199
    .line 200
    if-ne p1, v1, :cond_f

    .line 201
    .line 202
    iget-object p1, v0, Lua/i9;->n:Lx9/a6;

    .line 203
    .line 204
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_e

    .line 209
    .line 210
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_e
    iget-object p1, v0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_f
    const/4 v3, 0x0

    .line 221
    :goto_1
    return v3

    .line 222
    :sswitch_1
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const/16 v1, 0x42

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    if-ne p1, v1, :cond_10

    .line 231
    .line 232
    const/16 p1, 0x14d

    .line 233
    .line 234
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_10
    const/16 p2, 0x11

    .line 239
    .line 240
    if-ne p1, p2, :cond_12

    .line 241
    .line 242
    iget-object p1, v0, Lua/i9;->q:Lx9/y5;

    .line 243
    .line 244
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-lez p1, :cond_11

    .line 249
    .line 250
    iget-object p1, v0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_11
    iget-object p1, v0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_12
    const/16 p2, 0x21

    .line 263
    .line 264
    if-ne p1, p2, :cond_13

    .line 265
    .line 266
    iget-object p1, v0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_13
    const/16 p2, 0x82

    .line 273
    .line 274
    if-ne p1, p2, :cond_14

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_14
    const/4 v2, 0x0

    .line 278
    :goto_2
    return v2

    .line 279
    :sswitch_2
    iget-object p2, p0, Lua/r8;->b:Lua/i9;

    .line 280
    .line 281
    const/16 v0, 0x42

    .line 282
    .line 283
    const/4 v1, 0x1

    .line 284
    if-ne p1, v0, :cond_15

    .line 285
    .line 286
    iget-object p1, p2, Lua/i9;->t:Lcom/recycleview/MyRecycleView;

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_15
    const/16 v0, 0x11

    .line 293
    .line 294
    if-ne p1, v0, :cond_17

    .line 295
    .line 296
    iget-object p1, p2, Lua/i9;->n:Lx9/a6;

    .line 297
    .line 298
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-lez p1, :cond_16

    .line 303
    .line 304
    iget-object p1, p2, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_16
    iget-object p1, p2, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_17
    const/16 v0, 0x21

    .line 317
    .line 318
    if-ne p1, v0, :cond_19

    .line 319
    .line 320
    iget-object p1, p2, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 321
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-nez p1, :cond_18

    .line 327
    .line 328
    iget-object p1, p2, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 329
    .line 330
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_18
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    const-string p2, "up"

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_19
    const/16 v0, 0x82

    .line 345
    .line 346
    if-ne p1, v0, :cond_1a

    .line 347
    .line 348
    iget-object p1, p2, Lua/i9;->z:Lx9/f0;

    .line 349
    .line 350
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-lez p1, :cond_1b

    .line 355
    .line 356
    iget-object p1, p2, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 357
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    const/4 v1, 0x0

    .line 366
    :cond_1b
    :goto_3
    return v1

    .line 367
    :sswitch_3
    iget-object p2, p0, Lua/r8;->b:Lua/i9;

    .line 368
    .line 369
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    const/16 v0, 0x42

    .line 373
    .line 374
    const/4 v1, 0x1

    .line 375
    if-ne p1, v0, :cond_1c

    .line 376
    .line 377
    iget-object p1, p2, Lua/i9;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 378
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 380
    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_1c
    const/16 v0, 0x11

    .line 384
    .line 385
    if-ne p1, v0, :cond_1d

    .line 386
    .line 387
    iget-object p1, p2, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_1d
    const/16 v0, 0x21

    .line 394
    .line 395
    if-ne p1, v0, :cond_1e

    .line 396
    .line 397
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    const-string p2, "up"

    .line 402
    .line 403
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_1e
    const/16 v0, 0x82

    .line 408
    .line 409
    if-ne p1, v0, :cond_20

    .line 410
    .line 411
    iget-object p1, p2, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_1f

    .line 418
    .line 419
    iget-object p1, p2, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 420
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 422
    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_1f
    iget-object p1, p2, Lua/i9;->x:Lx9/g0;

    .line 426
    .line 427
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-lez p1, :cond_21

    .line 432
    .line 433
    iget-object p1, p2, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 436
    .line 437
    .line 438
    goto :goto_4

    .line 439
    :cond_20
    const/4 v1, 0x0

    .line 440
    :cond_21
    :goto_4
    return v1

    .line 441
    :sswitch_4
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    const/16 v1, 0x42

    .line 447
    .line 448
    const/16 v2, 0x14d

    .line 449
    .line 450
    const/4 v3, 0x1

    .line 451
    if-ne p1, v1, :cond_22

    .line 452
    .line 453
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 454
    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_22
    const/16 v1, 0x11

    .line 458
    .line 459
    const/16 v4, 0x8

    .line 460
    .line 461
    if-ne p1, v1, :cond_24

    .line 462
    .line 463
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 464
    .line 465
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    iget-object p1, v0, Lua/i9;->n:Lx9/a6;

    .line 469
    .line 470
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-lez p1, :cond_23

    .line 475
    .line 476
    iget-object p1, v0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 477
    .line 478
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 479
    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_23
    iget-object p1, v0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 483
    .line 484
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 485
    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_24
    const/16 v1, 0x21

    .line 489
    .line 490
    if-ne p1, v1, :cond_25

    .line 491
    .line 492
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 493
    .line 494
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    iget-object p1, v0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 498
    .line 499
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 500
    .line 501
    .line 502
    goto :goto_5

    .line 503
    :cond_25
    const/16 v0, 0x82

    .line 504
    .line 505
    if-ne p1, v0, :cond_26

    .line 506
    .line 507
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 508
    .line 509
    .line 510
    goto :goto_5

    .line 511
    :cond_26
    const/4 v3, 0x0

    .line 512
    :goto_5
    return v3

    .line 513
    :sswitch_5
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    const/16 v1, 0x11

    .line 519
    .line 520
    const/16 v2, 0x14d

    .line 521
    .line 522
    const/4 v3, 0x1

    .line 523
    if-ne p1, v1, :cond_27

    .line 524
    .line 525
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 526
    .line 527
    .line 528
    goto :goto_6

    .line 529
    :cond_27
    const/16 v1, 0x42

    .line 530
    .line 531
    if-ne p1, v1, :cond_2c

    .line 532
    .line 533
    iget-object p1, v0, Lua/i9;->F:Lx9/c6;

    .line 534
    .line 535
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    if-lez p1, :cond_28

    .line 540
    .line 541
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-nez p1, :cond_28

    .line 548
    .line 549
    iget-object p1, v0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 550
    .line 551
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 552
    .line 553
    .line 554
    goto :goto_6

    .line 555
    :cond_28
    iget-object p1, v0, Lua/i9;->z:Lx9/f0;

    .line 556
    .line 557
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-lez p1, :cond_29

    .line 562
    .line 563
    iget-object p1, v0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 564
    .line 565
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 566
    .line 567
    .line 568
    goto :goto_6

    .line 569
    :cond_29
    iget-object p1, v0, Lua/i9;->x:Lx9/g0;

    .line 570
    .line 571
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    if-nez p1, :cond_2b

    .line 576
    .line 577
    iget-object p1, v0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 578
    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    if-nez p1, :cond_2a

    .line 584
    .line 585
    iget-object p1, v0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 586
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 588
    .line 589
    .line 590
    goto :goto_6

    .line 591
    :cond_2a
    invoke-static {v2, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 592
    .line 593
    .line 594
    goto :goto_6

    .line 595
    :cond_2b
    iget-object p1, v0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 596
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 598
    .line 599
    .line 600
    goto :goto_6

    .line 601
    :cond_2c
    const/16 v1, 0x21

    .line 602
    .line 603
    if-ne p1, v1, :cond_2d

    .line 604
    .line 605
    iget-object p1, v0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 606
    .line 607
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 608
    .line 609
    .line 610
    goto :goto_6

    .line 611
    :cond_2d
    const/16 v0, 0x82

    .line 612
    .line 613
    if-ne p1, v0, :cond_2e

    .line 614
    .line 615
    invoke-static {v2, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 616
    .line 617
    .line 618
    goto :goto_6

    .line 619
    :cond_2e
    const/4 v3, 0x0

    .line 620
    :goto_6
    return v3

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/r8;->b:Lua/i9;

    .line 2
    .line 3
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const-string p1, "\u5237\u65b0"

    .line 2
    .line 3
    const-string v0, "\u5207\u6362\u5217\u8868\u663e\u793a\u6a21\u5f0f\uff1a"

    .line 4
    .line 5
    const-string v1, "\u53cc\u5217"

    .line 6
    .line 7
    const-string v2, "\u5355\u5217"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const-string v4, "\u5207\u6362"

    .line 11
    .line 12
    const-string v5, "\u65b0\u5efa"

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    iget-object v8, p0, Lua/r8;->b:Lua/i9;

    .line 17
    .line 18
    iget v9, p0, Lua/r8;->a:I

    .line 19
    .line 20
    sparse-switch v9, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v8, Lua/i9;->q:Lx9/y5;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object p2, v8, Lua/i9;->n:Lx9/a6;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v8, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 47
    .line 48
    iget-object p2, v8, Lua/i9;->n:Lx9/a6;

    .line 49
    .line 50
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    sub-int/2addr p2, v6

    .line 55
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v8, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 61
    .line 62
    .line 63
    iget-object p1, v8, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 64
    .line 65
    iget-object p2, v8, Lua/i9;->n:Lx9/a6;

    .line 66
    .line 67
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    sub-int/2addr p2, v6

    .line 72
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v7}, Lua/i9;->z(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, p3}, Lua/i9;->y(I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :sswitch_0
    iget-object p1, v8, Lua/i9;->n:Lx9/a6;

    .line 87
    .line 88
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sub-int/2addr p1, v6

    .line 93
    if-ne p3, p1, :cond_1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v8, Lua/i9;->n:Lx9/a6;

    .line 103
    .line 104
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    sub-int/2addr p1, v6

    .line 109
    :goto_1
    if-le p1, p3, :cond_2

    .line 110
    .line 111
    iget-object p2, v8, Lua/i9;->n:Lx9/a6;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Lc6/g;->C(I)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 p1, p1, -0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v8, v7}, Lua/i9;->z(Z)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-void

    .line 123
    :sswitch_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, v8, Lua/i9;->n:Lx9/a6;

    .line 130
    .line 131
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-nez p2, :cond_4

    .line 136
    .line 137
    iget-object p1, v8, Lua/i9;->j:Lx9/o5;

    .line 138
    .line 139
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-ne p1, v6, :cond_3

    .line 144
    .line 145
    const-string p1, "\u8bf7\u5148\u6dfb\u52a0\u7f51\u76d8"

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_3
    const-string p1, "\u8bf7\u5148\u9009\u4e2d\u7f51\u76d8"

    .line 149
    .line 150
    :goto_3
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_4
    iget-object p2, v8, Lua/i9;->l:Lx9/s5;

    .line 156
    .line 157
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    if-eqz p3, :cond_6

    .line 168
    .line 169
    iget-object p1, v8, Lua/i9;->n:Lx9/a6;

    .line 170
    .line 171
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-ne p1, v6, :cond_5

    .line 176
    .line 177
    iget-object p1, v8, Lua/i9;->j:Lx9/o5;

    .line 178
    .line 179
    iget p2, v8, Lua/i9;->T:I

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lx9/n5;

    .line 186
    .line 187
    iget p1, p1, Lx9/n5;->a:I

    .line 188
    .line 189
    const/4 p2, 0x3

    .line 190
    if-ne p1, p2, :cond_5

    .line 191
    .line 192
    iget-object p1, v8, Lua/i9;->n:Lx9/a6;

    .line 193
    .line 194
    invoke-virtual {p1, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    const-string p1, "\u5f53\u524d\u4f4d\u7f6e\u65e0\u6cd5\u65b0\u5efa\u76ee\u5f55"

    .line 209
    .line 210
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_5

    .line 214
    .line 215
    :cond_5
    new-instance p1, Lha/z6;

    .line 216
    .line 217
    iget-object v1, v8, Lda/h;->f:Landroid/app/Activity;

    .line 218
    .line 219
    iget-object v2, v8, Lda/h;->e:Landroid/content/Context;

    .line 220
    .line 221
    new-instance p2, Lua/r8;

    .line 222
    .line 223
    const/16 p3, 0xf

    .line 224
    .line 225
    invoke-direct {p2, v8, p3}, Lua/r8;-><init>(Lua/i9;I)V

    .line 226
    .line 227
    .line 228
    const-string v6, "\u786e\u5b9a"

    .line 229
    .line 230
    const-string v7, "\u53d6\u6d88"

    .line 231
    .line 232
    const-string v3, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 233
    .line 234
    const-string v4, ""

    .line 235
    .line 236
    const-string v5, "\u8f93\u5165\u6587\u4ef6\u5939\u540d\u79f0"

    .line 237
    .line 238
    move-object v0, p1

    .line 239
    move-object v8, p2

    .line 240
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p3

    .line 251
    if-eqz p3, :cond_a

    .line 252
    .line 253
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 254
    .line 255
    iget p2, p1, Lcom/yunpan/appmanage/util/w;->I0:I

    .line 256
    .line 257
    add-int/2addr p2, v6

    .line 258
    if-le p2, v6, :cond_7

    .line 259
    .line 260
    const/4 p2, 0x0

    .line 261
    :cond_7
    iput p2, p1, Lcom/yunpan/appmanage/util/w;->I0:I

    .line 262
    .line 263
    const-string p3, "wpFileListMode"

    .line 264
    .line 265
    :try_start_0
    iget-object v4, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 266
    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v4, p3, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    :catch_0
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 275
    .line 276
    .line 277
    if-nez p2, :cond_8

    .line 278
    .line 279
    iget-object p1, v8, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 280
    .line 281
    new-instance p3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 282
    .line 283
    iget-object v3, v8, Lda/h;->e:Landroid/content/Context;

    .line 284
    .line 285
    invoke-direct {p3, v3, v6, v7}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_8
    iget-object p1, v8, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 293
    .line 294
    new-instance p3, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 295
    .line 296
    iget-object v4, v8, Lda/h;->e:Landroid/content/Context;

    .line 297
    .line 298
    invoke-direct {p3, v4, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 302
    .line 303
    .line 304
    :goto_4
    if-nez p2, :cond_9

    .line 305
    .line 306
    move-object v1, v2

    .line 307
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_b

    .line 320
    .line 321
    invoke-virtual {v8, v7}, Lua/i9;->z(Z)V

    .line 322
    .line 323
    .line 324
    :cond_b
    :goto_5
    return-void

    .line 325
    :sswitch_2
    iget-object p1, v8, Lua/i9;->F:Lx9/c6;

    .line 326
    .line 327
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    check-cast p1, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 332
    .line 333
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 334
    .line 335
    const-string v0, "\u505c\u6b62"

    .line 336
    .line 337
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    if-eqz p2, :cond_c

    .line 342
    .line 343
    iput-boolean v6, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 344
    .line 345
    const-string p2, "\u505c\u6b62\u4e2d"

    .line 346
    .line 347
    iput-object p2, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 348
    .line 349
    iget-object p1, v8, Lua/i9;->F:Lx9/c6;

    .line 350
    .line 351
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_c
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 356
    .line 357
    const-string p3, "\u91cd\u65b0"

    .line 358
    .line 359
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    if-eqz p2, :cond_d

    .line 364
    .line 365
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 366
    .line 367
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 368
    .line 369
    iget-object p2, p2, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 370
    .line 371
    new-instance p3, Ly7/b;

    .line 372
    .line 373
    iget-object v0, v8, Lua/i9;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 374
    .line 375
    const/16 v1, 0x14

    .line 376
    .line 377
    invoke-direct {p3, p1, v1, v0}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 381
    .line 382
    .line 383
    :cond_d
    :goto_6
    return-void

    .line 384
    :sswitch_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 388
    .line 389
    .line 390
    iget-object p1, v8, Lua/i9;->z:Lx9/f0;

    .line 391
    .line 392
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    check-cast p1, Lx9/w3;

    .line 397
    .line 398
    iget-boolean v0, p1, Lx9/w3;->c:Z

    .line 399
    .line 400
    if-eqz v0, :cond_e

    .line 401
    .line 402
    iget-object p2, v8, Lua/i9;->x:Lx9/g0;

    .line 403
    .line 404
    new-instance p3, Lx9/w3;

    .line 405
    .line 406
    iget-object v0, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 407
    .line 408
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 409
    .line 410
    invoke-direct {p3, v0, v1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, p3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    iget-object p2, v8, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 417
    .line 418
    iget-object p3, v8, Lua/i9;->x:Lx9/g0;

    .line 419
    .line 420
    invoke-static {p3, v6, p2}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 421
    .line 422
    .line 423
    iget-object p2, v8, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 424
    .line 425
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 426
    .line 427
    .line 428
    invoke-virtual {v8, p1, v7}, Lua/i9;->n(Lx9/w3;Z)V

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_e
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v8, p3}, Lua/i9;->w(I)V

    .line 436
    .line 437
    .line 438
    :goto_7
    return-void

    .line 439
    :sswitch_4
    iget-object p1, v8, Lua/i9;->x:Lx9/g0;

    .line 440
    .line 441
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    sub-int/2addr p1, v6

    .line 446
    if-ne p3, p1, :cond_f

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_f
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 450
    .line 451
    .line 452
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, v8, Lua/i9;->x:Lx9/g0;

    .line 456
    .line 457
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    sub-int/2addr p1, v6

    .line 462
    :goto_8
    if-le p1, p3, :cond_10

    .line 463
    .line 464
    iget-object p2, v8, Lua/i9;->x:Lx9/g0;

    .line 465
    .line 466
    invoke-virtual {p2, p1}, Lc6/g;->C(I)V

    .line 467
    .line 468
    .line 469
    add-int/lit8 p1, p1, -0x1

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_10
    iget-object p1, v8, Lua/i9;->x:Lx9/g0;

    .line 473
    .line 474
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    check-cast p1, Lx9/w3;

    .line 479
    .line 480
    invoke-virtual {v8, p1, v7}, Lua/i9;->n(Lx9/w3;Z)V

    .line 481
    .line 482
    .line 483
    :goto_9
    return-void

    .line 484
    :sswitch_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 488
    .line 489
    .line 490
    iget-object v9, v8, Lua/i9;->x:Lx9/g0;

    .line 491
    .line 492
    invoke-virtual {v9}, Lc6/g;->b()I

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    if-nez v9, :cond_11

    .line 497
    .line 498
    const-string p1, "\u8bf7\u6253\u5f00\u672c\u5730\u5b58\u50a8(SD\u5361\u3001U\u76d8)"

    .line 499
    .line 500
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_b

    .line 504
    .line 505
    :cond_11
    iget-object v9, v8, Lua/i9;->v:Lx9/s5;

    .line 506
    .line 507
    invoke-virtual {v9, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p3

    .line 511
    check-cast p3, Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_12

    .line 518
    .line 519
    new-instance p1, Landroid/widget/PopupMenu;

    .line 520
    .line 521
    iget-object p3, v8, Lda/h;->e:Landroid/content/Context;

    .line 522
    .line 523
    invoke-direct {p1, p3, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 527
    .line 528
    .line 529
    move-result-object p2

    .line 530
    const p3, 0x7f100004

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {p2, p3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 538
    .line 539
    .line 540
    new-instance p2, Lha/y2;

    .line 541
    .line 542
    const/4 p3, 0x4

    .line 543
    invoke-direct {p2, v8, p3}, Lha/y2;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 550
    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_12
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result p2

    .line 557
    if-eqz p2, :cond_16

    .line 558
    .line 559
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 560
    .line 561
    iget p2, p1, Lcom/yunpan/appmanage/util/w;->J0:I

    .line 562
    .line 563
    add-int/2addr p2, v6

    .line 564
    if-le p2, v6, :cond_13

    .line 565
    .line 566
    const/4 p2, 0x0

    .line 567
    :cond_13
    iput p2, p1, Lcom/yunpan/appmanage/util/w;->J0:I

    .line 568
    .line 569
    const-string p3, "bdFileListMode"

    .line 570
    .line 571
    :try_start_1
    iget-object v4, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 572
    .line 573
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-virtual {v4, p3, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    .line 579
    .line 580
    :catch_1
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 581
    .line 582
    .line 583
    if-nez p2, :cond_14

    .line 584
    .line 585
    iget-object p1, v8, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 586
    .line 587
    new-instance p3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 588
    .line 589
    iget-object v3, v8, Lda/h;->e:Landroid/content/Context;

    .line 590
    .line 591
    invoke-direct {p3, v3, v6, v7}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 595
    .line 596
    .line 597
    goto :goto_a

    .line 598
    :cond_14
    iget-object p1, v8, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 599
    .line 600
    new-instance p3, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 601
    .line 602
    iget-object v4, v8, Lda/h;->e:Landroid/content/Context;

    .line 603
    .line 604
    invoke-direct {p3, v4, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 608
    .line 609
    .line 610
    :goto_a
    if-nez p2, :cond_15

    .line 611
    .line 612
    move-object v1, v2

    .line 613
    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 618
    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_16
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    if-eqz p1, :cond_17

    .line 626
    .line 627
    goto :goto_b

    .line 628
    :cond_17
    const-string p1, "\u591a\u9009"

    .line 629
    .line 630
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    :goto_b
    return-void

    .line 634
    :sswitch_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 638
    .line 639
    .line 640
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 641
    .line 642
    .line 643
    iget-object p1, v8, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 644
    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 646
    .line 647
    .line 648
    move-result p1

    .line 649
    if-nez p1, :cond_18

    .line 650
    .line 651
    iget-object p1, v8, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 652
    .line 653
    const/16 p2, 0x8

    .line 654
    .line 655
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 656
    .line 657
    .line 658
    :cond_18
    iget-object p1, v8, Lua/i9;->x:Lx9/g0;

    .line 659
    .line 660
    new-instance p2, Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p1, p2}, Lc6/g;->E(Ljava/util/List;)V

    .line 666
    .line 667
    .line 668
    iget-object p1, v8, Lua/i9;->s:Lx9/h0;

    .line 669
    .line 670
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    check-cast p1, Lx9/w3;

    .line 675
    .line 676
    iget-object p2, v8, Lua/i9;->x:Lx9/g0;

    .line 677
    .line 678
    new-instance p3, Lx9/w3;

    .line 679
    .line 680
    iget-object v0, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 681
    .line 682
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 683
    .line 684
    invoke-direct {p3, v0, v1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {p2, p3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v8, p1, v7}, Lua/i9;->n(Lx9/w3;Z)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    :sswitch_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 698
    .line 699
    .line 700
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 701
    .line 702
    .line 703
    iget-object p1, v8, Lua/i9;->j:Lx9/o5;

    .line 704
    .line 705
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    check-cast p1, Lx9/n5;

    .line 710
    .line 711
    iget p1, p1, Lx9/n5;->a:I

    .line 712
    .line 713
    if-nez p1, :cond_19

    .line 714
    .line 715
    new-instance p1, Lha/te;

    .line 716
    .line 717
    iget-object p2, v8, Lda/h;->f:Landroid/app/Activity;

    .line 718
    .line 719
    iget-object p3, v8, Lda/h;->e:Landroid/content/Context;

    .line 720
    .line 721
    invoke-direct {p1, p2, p3}, Lha/te;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 722
    .line 723
    .line 724
    new-instance p2, Lua/r8;

    .line 725
    .line 726
    const/16 p3, 0x10

    .line 727
    .line 728
    invoke-direct {p2, v8, p3}, Lua/r8;-><init>(Lua/i9;I)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 732
    .line 733
    .line 734
    iput-object p2, p1, Lha/te;->i:Lua/r8;

    .line 735
    .line 736
    iget-object p2, p1, Lha/te;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 737
    .line 738
    invoke-virtual {p2, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 739
    .line 740
    .line 741
    iget-object p1, p1, Lha/te;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 742
    .line 743
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 744
    .line 745
    .line 746
    goto :goto_c

    .line 747
    :cond_19
    iput p3, v8, Lua/i9;->T:I

    .line 748
    .line 749
    invoke-virtual {v8}, Lua/i9;->A()V

    .line 750
    .line 751
    .line 752
    :goto_c
    return-void

    .line 753
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0xe -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method
