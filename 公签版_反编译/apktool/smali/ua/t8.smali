.class public final synthetic Lua/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/y6;
.implements Lha/gb;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/i9;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lua/i9;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/t8;->a:I

    iput-object p1, p0, Lua/t8;->b:Lua/i9;

    iput p2, p0, Lua/t8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/t8;->b:Lua/i9;

    .line 2
    .line 3
    iget-object v0, v0, Lua/i9;->z:Lx9/f0;

    .line 4
    .line 5
    iget v1, p0, Lua/t8;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/t8;->b:Lua/i9;

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
    iget-object p2, v0, Lua/i9;->j:Lx9/o5;

    .line 15
    .line 16
    iget v1, v0, Lua/i9;->T:I

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lx9/n5;

    .line 23
    .line 24
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 25
    .line 26
    iget v2, p0, Lua/t8;->c:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 33
    .line 34
    iget v3, p2, Lx9/n5;->a:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    new-instance v3, Lba/e;

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lmc/c;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 52
    .line 53
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_0
    const/4 v4, 0x2

    .line 68
    if-ne v3, v4, :cond_1

    .line 69
    .line 70
    new-instance v3, Lba/e;

    .line 71
    .line 72
    const/4 v4, 0x6

    .line 73
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Lmc/c;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 83
    .line 84
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_1
    const/4 v4, 0x3

    .line 99
    if-ne v3, v4, :cond_2

    .line 100
    .line 101
    new-instance v3, Lba/e;

    .line 102
    .line 103
    const/16 v4, 0xc

    .line 104
    .line 105
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    new-instance p2, Lmc/c;

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 115
    .line 116
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_2
    const/4 v4, 0x4

    .line 131
    if-ne v3, v4, :cond_3

    .line 132
    .line 133
    new-instance v3, Lba/e;

    .line 134
    .line 135
    const/16 v4, 0xa

    .line 136
    .line 137
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    new-instance p2, Lmc/c;

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 147
    .line 148
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_3
    const/4 v4, 0x5

    .line 163
    if-ne v3, v4, :cond_4

    .line 164
    .line 165
    new-instance v3, Lba/e;

    .line 166
    .line 167
    const/16 v4, 0xb

    .line 168
    .line 169
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    new-instance p2, Lmc/c;

    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 179
    .line 180
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_4
    const/4 v4, 0x6

    .line 195
    if-ne v3, v4, :cond_5

    .line 196
    .line 197
    new-instance v3, Lba/f;

    .line 198
    .line 199
    const/16 v4, 0xe

    .line 200
    .line 201
    invoke-direct {v3, p2, v1, p1, v4}, Lba/f;-><init>(Lx9/n5;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    new-instance p2, Lmc/c;

    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 211
    .line 212
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    goto :goto_0

    .line 225
    :cond_5
    const/4 v4, 0x7

    .line 226
    if-ne v3, v4, :cond_6

    .line 227
    .line 228
    new-instance v3, Lba/e;

    .line 229
    .line 230
    const/16 v4, 0xd

    .line 231
    .line 232
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    new-instance p2, Lmc/c;

    .line 236
    .line 237
    const/4 v4, 0x0

    .line 238
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 242
    .line 243
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    goto :goto_0

    .line 256
    :cond_6
    const/16 v4, 0x14

    .line 257
    .line 258
    if-ne v3, v4, :cond_7

    .line 259
    .line 260
    new-instance v3, Lba/e;

    .line 261
    .line 262
    const/16 v4, 0x8

    .line 263
    .line 264
    invoke-direct {v3, p2, v1, p1, v4}, Lba/e;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    new-instance p2, Lmc/c;

    .line 268
    .line 269
    const/4 v4, 0x0

    .line 270
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 274
    .line 275
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    goto :goto_0

    .line 288
    :cond_7
    const/16 v4, 0x15

    .line 289
    .line 290
    if-ne v3, v4, :cond_8

    .line 291
    .line 292
    new-instance v3, Lba/e;

    .line 293
    .line 294
    invoke-direct {v3, v1, p1, p2}, Lba/e;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)V

    .line 295
    .line 296
    .line 297
    new-instance p2, Lmc/c;

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    invoke-direct {p2, v4, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 304
    .line 305
    invoke-virtual {p2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {p2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    :goto_0
    new-instance v3, Lua/b9;

    .line 318
    .line 319
    invoke-direct {v3, v0, v1, p1, v2}, Lua/b9;-><init>(Lua/i9;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2, v3}, Lec/b;->b(Lec/e;)V

    .line 323
    .line 324
    .line 325
    :cond_8
    return-void
.end method
