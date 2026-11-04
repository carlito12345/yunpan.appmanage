.class public final Lx9/c6;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e0182

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 4
    .line 5
    iget p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->type:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_c

    .line 14
    .line 15
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 16
    .line 17
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p2}, Lif/a;->X(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const v0, 0x7f0b0482

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    const p2, 0x7f08021f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 36
    .line 37
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p2}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    const p2, 0x7f08020f

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 53
    .line 54
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    const p2, 0x7f0802e5

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 70
    .line 71
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p2}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    const p2, 0x7f08029b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 87
    .line 88
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p2}, Lza/g;->g(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    const p2, 0x7f0802b7

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const p2, 0x7f08025d

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 110
    .line 111
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 112
    .line 113
    const v0, 0x7f0b0486

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v0, "\u4e0a\u4f20\u5230\uff1a"

    .line 122
    .line 123
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 127
    .line 128
    iget-object v0, v0, Lx9/n5;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, "   \u5927\u5c0f\uff1a"

    .line 134
    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 139
    .line 140
    iget-wide v0, v0, Lx9/w3;->d:J

    .line 141
    .line 142
    long-to-double v0, v0

    .line 143
    invoke-static {v0, v1}, Lif/a;->D0(D)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    const v0, 0x7f0b05a5

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    const p2, 0x7f0b05a3

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    check-cast p2, Landroid/widget/TextView;

    .line 168
    .line 169
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 170
    .line 171
    const-string v1, "\u4e0a\u4f20\u5b8c\u6210"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 180
    .line 181
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 191
    .line 192
    const-string v1, "\u4e0a\u4f20\u4e2d"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_8

    .line 199
    .line 200
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 201
    .line 202
    const-string v1, "\u4e0b\u8f7d\u4e2d"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 212
    .line 213
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const v1, 0x7f06004b

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_8
    :goto_1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 233
    .line 234
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 235
    .line 236
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const v1, 0x7f060045

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_9
    :goto_2
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 254
    .line 255
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const v1, 0x7f060041

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .line 272
    .line 273
    :goto_3
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    const p2, 0x7f0b03d6

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    check-cast p1, Landroid/widget/TextView;

    .line 286
    .line 287
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    if-eqz p2, :cond_a

    .line 294
    .line 295
    const/16 p2, 0x8

    .line 296
    .line 297
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    if-eqz p2, :cond_b

    .line 306
    .line 307
    const/4 p2, 0x0

    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    :cond_b
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    :cond_c
    :goto_4
    return-void
.end method
