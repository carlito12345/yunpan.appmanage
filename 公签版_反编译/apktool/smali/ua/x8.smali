.class public final synthetic Lua/x8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/xe;
.implements Lha/cf;
.implements Lha/af;
.implements Lha/i6;
.implements Lha/ic;
.implements Lha/oc;
.implements Lha/re;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/i9;

.field public final synthetic c:Lx9/n5;


# direct methods
.method public synthetic constructor <init>(Lua/i9;Lx9/n5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/x8;->a:I

    iput-object p1, p0, Lua/x8;->b:Lua/i9;

    iput-object p2, p0, Lua/x8;->c:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Lua/x8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/x8;->b:Lua/i9;

    .line 7
    .line 8
    iget-object v1, p0, Lua/x8;->c:Lx9/n5;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lua/i9;->t(Lx9/n5;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lua/x8;->b:Lua/i9;

    .line 15
    .line 16
    iget-object v1, p0, Lua/x8;->c:Lx9/n5;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lua/i9;->t(Lx9/n5;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lua/x8;->b:Lua/i9;

    .line 23
    .line 24
    iget-object v1, p0, Lua/x8;->c:Lx9/n5;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lua/i9;->t(Lx9/n5;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Lua/x8;->b:Lua/i9;

    .line 31
    .line 32
    iget-object v1, p0, Lua/x8;->c:Lx9/n5;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lua/i9;->t(Lx9/n5;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 6

    .line 1
    iget v0, p0, Lua/x8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/x8;->b:Lua/i9;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lua/x8;->c:Lx9/n5;

    .line 12
    .line 13
    iget-object v2, v1, Lx9/n5;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object v4, v0, Lua/i9;->j:Lx9/o5;

    .line 24
    .line 25
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v2, v4, :cond_1

    .line 30
    .line 31
    iget-object v4, v0, Lua/i9;->j:Lx9/o5;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lx9/n5;

    .line 38
    .line 39
    iget v4, v4, Lx9/n5;->a:I

    .line 40
    .line 41
    iget v5, v1, Lx9/n5;->a:I

    .line 42
    .line 43
    if-ne v4, v5, :cond_0

    .line 44
    .line 45
    iget-object v4, v0, Lua/i9;->j:Lx9/o5;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lx9/n5;

    .line 52
    .line 53
    iget-object v4, v4, Lx9/n5;->e:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v5, v1, Lx9/n5;->e:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    const-string v4, "\u5df2\u5b58\u5728\u8be5\u8d26\u53f7"

    .line 64
    .line 65
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v2, -0x1

    .line 73
    :goto_1
    if-ne v2, v3, :cond_2

    .line 74
    .line 75
    iget-object v2, v0, Lua/i9;->j:Lx9/o5;

    .line 76
    .line 77
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    add-int/lit8 v3, v3, -0x1

    .line 82
    .line 83
    invoke-virtual {v2, v3, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/util/d0;->a(Lx9/n5;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lua/i9;->j:Lx9/o5;

    .line 92
    .line 93
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/lit8 v1, v1, -0x2

    .line 98
    .line 99
    iput v1, v0, Lua/i9;->T:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    iget-object v3, v0, Lua/i9;->j:Lx9/o5;

    .line 103
    .line 104
    invoke-virtual {v3, v2, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v3, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 108
    .line 109
    invoke-virtual {v3, v2, v1}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 110
    .line 111
    .line 112
    iput v2, v0, Lua/i9;->T:I

    .line 113
    .line 114
    :goto_2
    invoke-virtual {v0}, Lua/i9;->A()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_0
    const/4 v0, 0x0

    .line 119
    :goto_3
    iget-object v1, p0, Lua/x8;->b:Lua/i9;

    .line 120
    .line 121
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 122
    .line 123
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iget-object v3, p0, Lua/x8;->c:Lx9/n5;

    .line 128
    .line 129
    const/4 v4, -0x1

    .line 130
    if-ge v0, v2, :cond_4

    .line 131
    .line 132
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Lx9/n5;

    .line 139
    .line 140
    iget v2, v2, Lx9/n5;->a:I

    .line 141
    .line 142
    iget v5, v3, Lx9/n5;->a:I

    .line 143
    .line 144
    if-ne v2, v5, :cond_3

    .line 145
    .line 146
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lx9/n5;

    .line 153
    .line 154
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v5, v3, Lx9/n5;->e:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_3

    .line 163
    .line 164
    const-string v2, "\u5df2\u5b58\u5728\u8be5\u8d26\u53f7"

    .line 165
    .line 166
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    const/4 v0, -0x1

    .line 174
    :goto_4
    if-ne v0, v4, :cond_5

    .line 175
    .line 176
    iget-object v0, v1, Lua/i9;->j:Lx9/o5;

    .line 177
    .line 178
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    add-int/lit8 v2, v2, -0x1

    .line 183
    .line 184
    invoke-virtual {v0, v2, v3}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 188
    .line 189
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/d0;->a(Lx9/n5;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v1, Lua/i9;->j:Lx9/o5;

    .line 193
    .line 194
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    add-int/lit8 v0, v0, -0x2

    .line 199
    .line 200
    iput v0, v1, Lua/i9;->T:I

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_5
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 204
    .line 205
    invoke-virtual {v2, v0, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 209
    .line 210
    invoke-virtual {v2, v0, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 211
    .line 212
    .line 213
    iput v0, v1, Lua/i9;->T:I

    .line 214
    .line 215
    :goto_5
    invoke-virtual {v1}, Lua/i9;->A()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_1
    const/4 v0, 0x0

    .line 220
    :goto_6
    iget-object v1, p0, Lua/x8;->b:Lua/i9;

    .line 221
    .line 222
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 223
    .line 224
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    iget-object v3, p0, Lua/x8;->c:Lx9/n5;

    .line 229
    .line 230
    const/4 v4, -0x1

    .line 231
    if-ge v0, v2, :cond_7

    .line 232
    .line 233
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 234
    .line 235
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Lx9/n5;

    .line 240
    .line 241
    iget v2, v2, Lx9/n5;->a:I

    .line 242
    .line 243
    iget v5, v3, Lx9/n5;->a:I

    .line 244
    .line 245
    if-ne v2, v5, :cond_6

    .line 246
    .line 247
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 248
    .line 249
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Lx9/n5;

    .line 254
    .line 255
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v5, v3, Lx9/n5;->e:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_6

    .line 264
    .line 265
    const-string v2, "\u5df2\u5b58\u5728\u8be5\u8d26\u53f7"

    .line 266
    .line 267
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_7
    const/4 v0, -0x1

    .line 275
    :goto_7
    if-ne v0, v4, :cond_8

    .line 276
    .line 277
    iget-object v0, v1, Lua/i9;->j:Lx9/o5;

    .line 278
    .line 279
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    add-int/lit8 v2, v2, -0x1

    .line 284
    .line 285
    invoke-virtual {v0, v2, v3}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 289
    .line 290
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/d0;->a(Lx9/n5;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v1, Lua/i9;->j:Lx9/o5;

    .line 294
    .line 295
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    add-int/lit8 v0, v0, -0x2

    .line 300
    .line 301
    iput v0, v1, Lua/i9;->T:I

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_8
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 305
    .line 306
    invoke-virtual {v2, v0, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 310
    .line 311
    invoke-virtual {v2, v0, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 312
    .line 313
    .line 314
    iput v0, v1, Lua/i9;->T:I

    .line 315
    .line 316
    :goto_8
    invoke-virtual {v1}, Lua/i9;->A()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
