.class public final synthetic Lha/b9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/e;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/e9;


# direct methods
.method public synthetic constructor <init>(Lha/e9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/b9;->a:I

    iput-object p1, p0, Lha/b9;->b:Lha/e9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/b9;->b:Lha/e9;

    .line 2
    .line 3
    iget-object v0, v0, Lha/e9;->w:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x3

    .line 2
    iget-object p2, p0, Lha/b9;->b:Lha/e9;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    iget v3, p0, Lha/b9;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v3, p2, Lha/e9;->w:Lx9/t2;

    .line 13
    .line 14
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lz7/s;

    .line 19
    .line 20
    const-string v4, "gnType"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v3, p1, :cond_1

    .line 31
    .line 32
    new-instance p1, Lha/fa;

    .line 33
    .line 34
    new-array v3, v1, [Ljava/lang/String;

    .line 35
    .line 36
    const-string v4, "\u5220\u9664"

    .line 37
    .line 38
    aput-object v4, v3, v0

    .line 39
    .line 40
    const-string v4, "\u7f16\u8f91"

    .line 41
    .line 42
    aput-object v4, v3, v2

    .line 43
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-ge v0, v1, :cond_0

    .line 50
    .line 51
    aget-object v5, v3, v0

    .line 52
    .line 53
    invoke-static {v5, v4, v5, v0, v2}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    new-instance v9, Lha/c9;

    .line 63
    .line 64
    invoke-direct {v9, p2, p3}, Lha/c9;-><init>(Lha/e9;I)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p2, Lha/a4;->b:Landroid/content/Context;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    iget-object v5, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 71
    .line 72
    move-object v4, p1

    .line 73
    invoke-direct/range {v4 .. v9}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p2, Lha/e9;->w:Lx9/t2;

    .line 81
    .line 82
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v2, :cond_2

    .line 87
    .line 88
    iget-object p1, p2, Lha/e9;->n:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p2, Lha/e9;->w:Lx9/t2;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :pswitch_0
    iget-object v3, p2, Lha/e9;->G:Lx9/y0;

    .line 100
    .line 101
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lx9/x0;

    .line 106
    .line 107
    iget-object v4, p2, Lha/e9;->G:Lx9/y0;

    .line 108
    .line 109
    invoke-virtual {v4, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lx9/x0;

    .line 114
    .line 115
    iget-boolean v4, v4, Lx9/x0;->b:Z

    .line 116
    .line 117
    xor-int/2addr v4, v2

    .line 118
    iput-boolean v4, v3, Lx9/x0;->b:Z

    .line 119
    .line 120
    iget-object v3, p2, Lha/e9;->G:Lx9/y0;

    .line 121
    .line 122
    invoke-virtual {v3, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 123
    .line 124
    .line 125
    if-nez p3, :cond_3

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_3
    iget-object v3, p2, Lha/a4;->b:Landroid/content/Context;

    .line 130
    .line 131
    iget-object v4, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 132
    .line 133
    if-ne p3, v2, :cond_4

    .line 134
    .line 135
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 136
    .line 137
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lx9/x0;

    .line 142
    .line 143
    iget-boolean p1, p1, Lx9/x0;->b:Z

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    new-instance p1, Lha/z6;

    .line 148
    .line 149
    const-string p2, "\u7b49\u5230\u677e\u5f00\u65e5\u5fd7\uff1a\u8fd9\u4e2a\u9009\u9879\u662f\u5e72\u561b\u7684\u5462\uff0c\u6709\u4e9b\u65b9\u5411\u76d8\u6309\u952e\u6309\u4f4f\u65f6\u7cfb\u7edf\u4f1a\u4e00\u76f4\u53d1\u6309\u4e0b\u7684\u65e5\u5fd7\uff0c\u8fd9\u5c31\u4f1a\u4ea7\u751f\u591a\u6b21\u6309\u4e0b(\u5355\u51fb\u64cd\u4f5c\u6216\u53cc\u51fb\u64cd\u4f5c)\uff01\u9664\u975e\u6362\u4e00\u6761\u6309\u4e0b\u65e5\u5fd7\uff0c\u53c8\u6216\u8005\u52fe\u9009\u8fd9\u4e2a\uff0c\u7b49\u5230\u677e\u5f00\u65e5\u5fd7\u51fa\u73b0\u65f6\u518d\u5224\u65ad\uff0c\u5982\u679c\u4e0d\u9700\u8981\u957f\u6309\u64cd\u4f5c\u7684\u8bdd\u52fe\u4e0d\u52fe\u90fd\u65e0\u6240\u8c13\uff01"

    .line 150
    .line 151
    const-string p3, "\u9884\u9632\u6ca1\u76d1\u542c\u5230\u677e\u5f00\u65e5\u5fd7\uff0c\u8d85\u8fc73\u79d2\u65f6\u653e\u5f03\u7b49\u5f85"

    .line 152
    .line 153
    invoke-direct {p1, v4, v3, p2, p3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_2

    .line 160
    .line 161
    :cond_4
    if-ne p3, v1, :cond_5

    .line 162
    .line 163
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 164
    .line 165
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lx9/x0;

    .line 170
    .line 171
    iget-boolean p1, p1, Lx9/x0;->b:Z

    .line 172
    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    new-instance p1, Lha/z6;

    .line 176
    .line 177
    const-string p2, "\u8bbe\u7f6e\u6b64\u6620\u5c04\uff1a\u81ea\u52a8\u5316\u4efb\u52a1\u5f00\u59cb\u540e\u6b64\u65e5\u5fd7\u6620\u5c04\u4ec5\u89e6\u53d1\u4e00\u6b21"

    .line 178
    .line 179
    const-string p3, "\u7279\u6b8a\u7528\u9014\uff0c\u4e00\u822c\u4e0d\u8981\u52fe\u9009\u6b64\u529f\u80fd"

    .line 180
    .line 181
    invoke-direct {p1, v4, v3, p2, p3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    if-ne p3, p1, :cond_7

    .line 189
    .line 190
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 191
    .line 192
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lx9/x0;

    .line 197
    .line 198
    iget-boolean p1, p1, Lx9/x0;->b:Z

    .line 199
    .line 200
    if-eqz p1, :cond_6

    .line 201
    .line 202
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 203
    .line 204
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lx9/x0;

    .line 209
    .line 210
    iget-object v0, p2, Lha/e9;->G:Lx9/y0;

    .line 211
    .line 212
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lx9/x0;

    .line 217
    .line 218
    iget-boolean v0, v0, Lx9/x0;->b:Z

    .line 219
    .line 220
    xor-int/2addr v0, v2

    .line 221
    iput-boolean v0, p1, Lx9/x0;->b:Z

    .line 222
    .line 223
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 224
    .line 225
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Lha/o1;

    .line 229
    .line 230
    new-instance v0, Lha/c9;

    .line 231
    .line 232
    invoke-direct {v0, p2, p3}, Lha/c9;-><init>(Lha/e9;I)V

    .line 233
    .line 234
    .line 235
    const/16 p2, 0xa

    .line 236
    .line 237
    invoke-direct {p1, v4, v3, v0, p2}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_6
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 245
    .line 246
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Lx9/x0;

    .line 251
    .line 252
    const-string p3, "N\u79d2\u5185\u4ec5\u89e6\u53d1\u4e00\u6b21"

    .line 253
    .line 254
    iput-object p3, p1, Lx9/x0;->a:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object p2, p2, Lha/e9;->A:Lz7/s;

    .line 261
    .line 262
    const-string p3, "OutTimeOneMap"

    .line 263
    .line 264
    invoke-virtual {p2, p3, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_7
    const/4 p1, 0x4

    .line 269
    if-ne p3, p1, :cond_8

    .line 270
    .line 271
    iget-object p1, p2, Lha/e9;->G:Lx9/y0;

    .line 272
    .line 273
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lx9/x0;

    .line 278
    .line 279
    iget-boolean p1, p1, Lx9/x0;->b:Z

    .line 280
    .line 281
    if-eqz p1, :cond_8

    .line 282
    .line 283
    new-instance p1, Lha/z6;

    .line 284
    .line 285
    const-string p2, "\u4e00\u822c\u4e0d\u8981\u52fe\u9009\u8fd9\u4e2a\uff01\u610f\u601d\u662f\uff1a\u6574\u6761\u65e5\u5fd7\u767e\u5206\u767e\u4e00\u81f4\u65b9\u53ef\u89e6\u53d1\uff01(\u6ce8\uff1a\u4e0d\u80fd\u5220\u9664\u548c\u66f4\u6539\u539f\u672c\u7684\u65e5\u5fd7)"

    .line 286
    .line 287
    const-string p3, "\u6ce8\uff1a\u6b64\u529f\u80fd\u4ec5\u76f8\u5bf9\u4e8e\uff08\u5355\u51fb\u64cd\u4f5c\uff09"

    .line 288
    .line 289
    invoke-direct {p1, v4, v3, p2, p3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 293
    .line 294
    .line 295
    :cond_8
    :goto_2
    return-void

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
