.class public final synthetic Lha/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lha/y6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ff;


# direct methods
.method public synthetic constructor <init>(Lha/ff;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ef;->a:I

    iput-object p1, p0, Lha/ef;->b:Lha/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/ef;->b:Lha/ff;

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
    iget-object p1, v0, Lha/ff;->i:Lx9/a6;

    .line 22
    .line 23
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    sub-int/2addr v1, v2

    .line 29
    invoke-virtual {p1, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 34
    .line 35
    iget-object v1, v0, Lha/ff;->s:Lx9/n5;

    .line 36
    .line 37
    iget v3, v1, Lx9/n5;->a:I

    .line 38
    .line 39
    if-ne v3, v2, :cond_0

    .line 40
    .line 41
    new-instance v2, Lba/d;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lmc/c;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    const/4 v2, 0x2

    .line 70
    if-ne v3, v2, :cond_1

    .line 71
    .line 72
    new-instance v2, Lba/d;

    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lmc/c;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_1
    const/16 v2, 0x14

    .line 101
    .line 102
    if-ne v3, v2, :cond_2

    .line 103
    .line 104
    new-instance v2, Lba/d;

    .line 105
    .line 106
    const/4 v3, 0x4

    .line 107
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lmc/c;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :cond_2
    const/16 v2, 0x15

    .line 133
    .line 134
    if-ne v3, v2, :cond_3

    .line 135
    .line 136
    new-instance v2, Lba/d;

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Lmc/c;

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_3
    const/4 v2, 0x3

    .line 165
    if-ne v3, v2, :cond_4

    .line 166
    .line 167
    new-instance v2, Lba/d;

    .line 168
    .line 169
    invoke-direct {v2, p2, p1, v1}, Lba/d;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lmc/c;

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_4
    const/4 v2, 0x4

    .line 195
    if-ne v3, v2, :cond_5

    .line 196
    .line 197
    new-instance v2, Lba/d;

    .line 198
    .line 199
    const/4 v3, 0x5

    .line 200
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Lmc/c;

    .line 204
    .line 205
    const/4 v1, 0x0

    .line 206
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 210
    .line 211
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    goto :goto_0

    .line 224
    :cond_5
    const/4 v2, 0x5

    .line 225
    if-ne v3, v2, :cond_6

    .line 226
    .line 227
    new-instance v2, Lba/d;

    .line 228
    .line 229
    const/4 v3, 0x6

    .line 230
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 231
    .line 232
    .line 233
    new-instance p1, Lmc/c;

    .line 234
    .line 235
    const/4 v1, 0x0

    .line 236
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    goto :goto_0

    .line 254
    :cond_6
    const/4 v2, 0x6

    .line 255
    if-ne v3, v2, :cond_7

    .line 256
    .line 257
    new-instance v2, Lba/b;

    .line 258
    .line 259
    invoke-direct {v2, p1, p2, v1}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 260
    .line 261
    .line 262
    new-instance p1, Lmc/c;

    .line 263
    .line 264
    const/4 v1, 0x0

    .line 265
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    goto :goto_0

    .line 283
    :cond_7
    const/4 v2, 0x7

    .line 284
    if-ne v3, v2, :cond_8

    .line 285
    .line 286
    new-instance v2, Lba/d;

    .line 287
    .line 288
    const/16 v3, 0xb

    .line 289
    .line 290
    invoke-direct {v2, v1, p1, p2, v3}, Lba/d;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 291
    .line 292
    .line 293
    new-instance p1, Lmc/c;

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    invoke-direct {p1, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 300
    .line 301
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    :goto_0
    new-instance v1, Lha/h3;

    .line 314
    .line 315
    const/16 v2, 0x8

    .line 316
    .line 317
    invoke-direct {v1, v0, v2, p2}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 321
    .line 322
    .line 323
    :cond_8
    return-void
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget p2, p0, Lha/ef;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p2, 0x82

    .line 7
    .line 8
    iget-object v0, p0, Lha/ef;->b:Lha/ff;

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, v0, Lha/ff;->l:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1

    .line 24
    :pswitch_0
    const/16 p2, 0x82

    .line 25
    .line 26
    iget-object v0, p0, Lha/ef;->b:Lha/ff;

    .line 27
    .line 28
    if-ne p1, p2, :cond_2

    .line 29
    .line 30
    iget-object p1, v0, Lha/ff;->k:Lx9/q5;

    .line 31
    .line 32
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, v0, Lha/ff;->l:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    :goto_1
    const/4 p1, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    :goto_2
    return p1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget p1, p0, Lha/ef;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/ef;->b:Lha/ff;

    .line 7
    .line 8
    iget-object p2, p1, Lha/ff;->k:Lx9/q5;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 15
    .line 16
    iget-object p3, p1, Lha/ff;->i:Lx9/a6;

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lha/ff;->a()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object p1, p0, Lha/ef;->b:Lha/ff;

    .line 26
    .line 27
    iget-object p2, p1, Lha/ff;->i:Lx9/a6;

    .line 28
    .line 29
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-eq p3, v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    :goto_0
    if-le v0, p3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lc6/g;->C(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lha/ff;->a()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
