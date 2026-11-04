.class public final Lha/z6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Z

.field public final m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lba/o;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lha/z6;->g:I

    const v0, 0x7f0e0100

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 35
    const-string p1, ""

    iput-object p1, p0, Lha/z6;->h:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lha/z6;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/y6;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lha/z6;->g:I

    const v0, 0x7f0e00b0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lha/z6;->l:Z

    .line 28
    const-string p1, "\u663e\u793a\u63d0\u793a"

    iput-object p1, p0, Lha/z6;->h:Ljava/lang/String;

    .line 29
    const-string p1, ""

    iput-object p1, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 31
    const-string p2, "\u786e\u5b9a"

    iput-object p2, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 33
    iput-object p4, p0, Lha/z6;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/z6;->g:I

    const v0, 0x7f0e00fd

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lha/z6;->l:Z

    .line 39
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/16 v0, 0xa

    invoke-direct {p1, p0, p2, v0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 40
    iput-object p3, p0, Lha/z6;->h:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 42
    const-string p1, "\u597d\u7684"

    iput-object p1, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 43
    const-string p1, ""

    iput-object p1, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 44
    new-instance p1, Lha/l2;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lha/l2;-><init>(I)V

    iput-object p1, p0, Lha/z6;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/z6;->g:I

    const v0, 0x7f0e00fd

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lha/z6;->l:Z

    .line 3
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/16 v0, 0xa

    invoke-direct {p1, p0, p2, v0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lha/z6;->h:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 7
    iput-object p6, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 8
    iput-object p7, p0, Lha/z6;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;I)V
    .locals 0

    const/4 p8, 0x1

    iput p8, p0, Lha/z6;->g:I

    const p8, 0x7f0e00fd

    .line 17
    invoke-direct {p0, p1, p2, p8}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lha/z6;->l:Z

    .line 19
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/16 p8, 0xa

    invoke-direct {p1, p0, p2, p8}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lha/z6;->h:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 22
    iput-object p5, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 23
    iput-object p6, p0, Lha/z6;->k:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lha/z6;->l:Z

    .line 25
    iput-object p7, p0, Lha/z6;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lha/z6;->g:I

    const v0, 0x7f0e00b0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lha/z6;->l:Z

    .line 11
    iput-object p3, p0, Lha/z6;->h:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 13
    iput-object p5, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 14
    iput-object p6, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 15
    iput-object p7, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 16
    iput-object p8, p0, Lha/z6;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/z6;->g:I

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
    const p1, 0x7f0b041c

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iput-object p1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Lha/le;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lha/le;-><init>(Lha/z6;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lha/z6;->m:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lba/o;

    .line 32
    .line 33
    iget-object v0, p1, Lba/o;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const v0, 0x7f0b05fd

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    iget-object v1, p1, Lba/o;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const v0, 0x7f0b0424

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "\u5f53\u524d\u7248\u672c\uff1av"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p1, Lba/o;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "_"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v3, p1, Lba/o;->a:I

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, "\n\u6700\u65b0\u7248\u672c\uff1av"

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v3, p1, Lba/o;->d:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget p1, p1, Lba/o;->c:I

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    const p1, 0x7f0b0423

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p1, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 121
    .line 122
    const/16 v0, 0x8

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    const p1, 0x7f0b0422

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 135
    .line 136
    iput-object p1, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 137
    .line 138
    const/high16 v1, 0x42c80000    # 100.0f

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setMaxCount(F)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    const p1, 0x7f0b041e

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/LinearLayout;

    .line 166
    .line 167
    iput-object p1, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 168
    .line 169
    new-instance v0, Lha/le;

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    invoke-direct {v0, p0, v1}, Lha/le;-><init>(Lha/z6;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    iget-boolean p1, p0, Lha/z6;->l:Z

    .line 183
    .line 184
    iget-object v0, p0, Lha/z6;->h:Ljava/lang/String;

    .line 185
    .line 186
    const/4 v1, 0x3

    .line 187
    if-eqz v0, :cond_2

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_2

    .line 194
    .line 195
    const v2, 0x7f0b059f

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Landroid/widget/TextView;

    .line 203
    .line 204
    if-eqz p1, :cond_1

    .line 205
    .line 206
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    .line 208
    .line 209
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    :cond_2
    iget-object v0, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Ljava/lang/String;

    .line 215
    .line 216
    const/4 v2, 0x0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_4

    .line 224
    .line 225
    const v3, 0x7f0b05aa

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Landroid/widget/TextView;

    .line 233
    .line 234
    if-eqz p1, :cond_3

    .line 235
    .line 236
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    .line 238
    .line 239
    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    :cond_4
    const p1, 0x7f0b03f3

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/TextView;

    .line 253
    .line 254
    iget-object v0, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Ljava/lang/String;

    .line 257
    .line 258
    const/16 v1, 0x8

    .line 259
    .line 260
    if-eqz v0, :cond_5

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_5

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    :goto_0
    const v0, 0x7f0b0397

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroid/widget/TextView;

    .line 283
    .line 284
    iget-object v3, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v3, Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v3, :cond_6

    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-nez v4, :cond_6

    .line 295
    .line 296
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    :goto_1
    iget-object v1, p0, Lha/z6;->m:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v1, Lha/wd;

    .line 306
    .line 307
    if-eqz v1, :cond_7

    .line 308
    .line 309
    new-instance v1, Lha/vd;

    .line 310
    .line 311
    const/4 v2, 0x0

    .line 312
    invoke-direct {v1, p0, v2}, Lha/vd;-><init>(Lha/z6;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    new-instance p1, Lha/vd;

    .line 319
    .line 320
    const/4 v1, 0x1

    .line 321
    invoke-direct {p1, p0, v1}, Lha/vd;-><init>(Lha/z6;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_7
    iget-object p1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 331
    .line 332
    const-wide/16 v0, 0xbb8

    .line 333
    .line 334
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 335
    .line 336
    .line 337
    :goto_2
    return-void

    .line 338
    :pswitch_1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 339
    .line 340
    .line 341
    const p1, 0x7f0b05ba

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Landroid/widget/TextView;

    .line 349
    .line 350
    iget-object v0, p0, Lha/z6;->h:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    const p1, 0x7f0b039c

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    check-cast p1, Landroid/widget/TextView;

    .line 363
    .line 364
    iget-object v0, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 372
    .line 373
    .line 374
    const v0, 0x7f0b03ea

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Landroid/widget/TextView;

    .line 382
    .line 383
    iget-object v1, p0, Lha/z6;->n:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v1, Ljava/lang/String;

    .line 386
    .line 387
    if-eqz v1, :cond_9

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_8

    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_9
    :goto_3
    const/16 v1, 0x8

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    :goto_4
    const v1, 0x7f0b0428

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Landroid/widget/EditText;

    .line 413
    .line 414
    iget-object v2, p0, Lha/z6;->i:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v2, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    iget-object v2, p0, Lha/z6;->j:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v2, Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    new-instance v2, Lha/x6;

    .line 429
    .line 430
    const/4 v3, 0x0

    .line 431
    invoke-direct {v2, p1, v3}, Lha/x6;-><init>(Landroid/widget/TextView;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 435
    .line 436
    .line 437
    new-instance v2, Lc6/c;

    .line 438
    .line 439
    const/16 v3, 0xb

    .line 440
    .line 441
    invoke-direct {v2, p0, v3, v1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    .line 446
    .line 447
    new-instance p1, Lcom/google/android/material/datepicker/l;

    .line 448
    .line 449
    const/16 v1, 0x14

    .line 450
    .line 451
    invoke-direct {p1, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .line 1
    iget v0, p0, Lha/z6;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lha/a4;->show()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0}, Lha/a4;->show()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lha/z6;->k:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
