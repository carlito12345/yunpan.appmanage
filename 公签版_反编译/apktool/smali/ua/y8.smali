.class public final synthetic Lua/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lua/i9;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lua/i9;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/y8;->a:Lua/i9;

    iput p2, p0, Lua/y8;->b:I

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lua/y8;->a:Lua/i9;

    .line 4
    .line 5
    iget-object v2, v1, Lua/i9;->j:Lx9/o5;

    .line 6
    .line 7
    iget v3, v0, Lua/y8;->b:I

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v7, v2

    .line 14
    check-cast v7, Lx9/n5;

    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v4, 0x7f0b020a

    .line 21
    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    if-ne v2, v4, :cond_0

    .line 25
    .line 26
    new-instance v2, Lha/z6;

    .line 27
    .line 28
    iget-object v12, v1, Lda/h;->f:Landroid/app/Activity;

    .line 29
    .line 30
    iget-object v13, v1, Lda/h;->e:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v15, v7, Lx9/n5;->b:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Lua/w8;

    .line 35
    .line 36
    invoke-direct {v4, v1, v7, v3}, Lua/w8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 37
    .line 38
    .line 39
    const-string v17, "\u786e\u5b9a"

    .line 40
    .line 41
    const-string v18, "\u53d6\u6d88"

    .line 42
    .line 43
    const-string v14, "\u4fee\u6539\u540d\u79f0"

    .line 44
    .line 45
    const-string v16, "\u8bf7\u8f93\u5165\u540d\u79f0"

    .line 46
    .line 47
    move-object v11, v2

    .line 48
    move-object/from16 v19, v4

    .line 49
    .line 50
    invoke-direct/range {v11 .. v19}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const v4, 0x7f0b0209

    .line 63
    .line 64
    .line 65
    if-ne v2, v4, :cond_9

    .line 66
    .line 67
    iget v2, v7, Lx9/n5;->a:I

    .line 68
    .line 69
    if-eq v2, v10, :cond_8

    .line 70
    .line 71
    const/16 v4, 0x14

    .line 72
    .line 73
    if-ne v2, v4, :cond_1

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_1
    const/4 v4, 0x2

    .line 78
    if-ne v2, v4, :cond_2

    .line 79
    .line 80
    new-instance v2, Lha/bf;

    .line 81
    .line 82
    iget-object v5, v1, Lda/h;->f:Landroid/app/Activity;

    .line 83
    .line 84
    iget-object v6, v1, Lda/h;->e:Landroid/content/Context;

    .line 85
    .line 86
    new-instance v8, Lua/w8;

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    invoke-direct {v8, v1, v3, v7, v4}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 90
    .line 91
    .line 92
    const/4 v9, 0x1

    .line 93
    move-object v4, v2

    .line 94
    invoke-direct/range {v4 .. v9}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_2
    const/16 v4, 0x15

    .line 103
    .line 104
    if-ne v2, v4, :cond_3

    .line 105
    .line 106
    new-instance v2, Lha/bf;

    .line 107
    .line 108
    iget-object v5, v1, Lda/h;->f:Landroid/app/Activity;

    .line 109
    .line 110
    iget-object v6, v1, Lda/h;->e:Landroid/content/Context;

    .line 111
    .line 112
    new-instance v8, Lua/w8;

    .line 113
    .line 114
    const/4 v4, 0x3

    .line 115
    invoke-direct {v8, v1, v3, v7, v4}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 116
    .line 117
    .line 118
    const/4 v9, 0x1

    .line 119
    move-object v4, v2

    .line 120
    invoke-direct/range {v4 .. v9}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_3
    const/4 v4, 0x4

    .line 129
    if-eq v2, v4, :cond_7

    .line 130
    .line 131
    const/4 v4, 0x5

    .line 132
    if-ne v2, v4, :cond_4

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    const/4 v4, 0x6

    .line 136
    if-ne v2, v4, :cond_5

    .line 137
    .line 138
    new-instance v2, Lha/w;

    .line 139
    .line 140
    iget-object v4, v1, Lda/h;->f:Landroid/app/Activity;

    .line 141
    .line 142
    iget-object v5, v1, Lda/h;->e:Landroid/content/Context;

    .line 143
    .line 144
    new-instance v6, Lua/w8;

    .line 145
    .line 146
    const/4 v8, 0x5

    .line 147
    invoke-direct {v6, v1, v3, v7, v8}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v2, v4, v5, v7, v6}, Lha/w;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/ic;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_5
    const/4 v4, 0x3

    .line 159
    if-ne v2, v4, :cond_6

    .line 160
    .line 161
    new-instance v2, Lha/s5;

    .line 162
    .line 163
    iget-object v4, v1, Lda/h;->f:Landroid/app/Activity;

    .line 164
    .line 165
    iget-object v5, v1, Lda/h;->e:Landroid/content/Context;

    .line 166
    .line 167
    new-instance v6, Lua/w8;

    .line 168
    .line 169
    const/4 v8, 0x6

    .line 170
    invoke-direct {v6, v1, v3, v7, v8}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 171
    .line 172
    .line 173
    invoke-direct {v2, v4, v5, v7, v6}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/oc;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_6
    const/4 v4, 0x7

    .line 182
    if-ne v2, v4, :cond_b

    .line 183
    .line 184
    new-instance v2, Lha/se;

    .line 185
    .line 186
    iget-object v4, v1, Lda/h;->f:Landroid/app/Activity;

    .line 187
    .line 188
    iget-object v5, v1, Lda/h;->e:Landroid/content/Context;

    .line 189
    .line 190
    new-instance v6, Lua/w8;

    .line 191
    .line 192
    const/4 v8, 0x7

    .line 193
    invoke-direct {v6, v1, v3, v7, v8}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v2, v4, v5, v7, v6}, Lha/se;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/re;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_7
    :goto_0
    new-instance v2, Lha/s5;

    .line 204
    .line 205
    iget-object v4, v1, Lda/h;->f:Landroid/app/Activity;

    .line 206
    .line 207
    iget-object v5, v1, Lda/h;->e:Landroid/content/Context;

    .line 208
    .line 209
    new-instance v6, Lua/w8;

    .line 210
    .line 211
    const/4 v8, 0x4

    .line 212
    invoke-direct {v6, v1, v3, v7, v8}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 213
    .line 214
    .line 215
    invoke-direct {v2, v4, v5, v7, v6}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/i6;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    :goto_1
    new-instance v2, Lha/ye;

    .line 223
    .line 224
    iget-object v4, v1, Lda/h;->f:Landroid/app/Activity;

    .line 225
    .line 226
    iget-object v5, v1, Lda/h;->e:Landroid/content/Context;

    .line 227
    .line 228
    new-instance v6, Lua/w8;

    .line 229
    .line 230
    const/4 v8, 0x1

    .line 231
    invoke-direct {v6, v1, v3, v7, v8}, Lua/w8;-><init>(Lua/i9;ILx9/n5;I)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v2, v4, v5, v7, v6}, Lha/ye;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/xe;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    const v4, 0x7f0b0208

    .line 246
    .line 247
    .line 248
    if-ne v2, v4, :cond_b

    .line 249
    .line 250
    iget v2, v1, Lua/i9;->T:I

    .line 251
    .line 252
    if-ne v3, v2, :cond_a

    .line 253
    .line 254
    iget-object v2, v1, Lua/i9;->n:Lx9/a6;

    .line 255
    .line 256
    new-instance v4, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v4}, Lc6/g;->E(Ljava/util/List;)V

    .line 262
    .line 263
    .line 264
    iget-object v2, v1, Lua/i9;->q:Lx9/y5;

    .line 265
    .line 266
    new-instance v4, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v4}, Lc6/g;->E(Ljava/util/List;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    const-string v4, "wpList"

    .line 280
    .line 281
    :try_start_0
    iget-object v5, v2, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 282
    .line 283
    invoke-virtual {v5, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v5}, Lz7/p;->f()Lz7/o;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v5, v3}, Lz7/o;->n(I)V

    .line 292
    .line 293
    .line 294
    iget-object v6, v2, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 295
    .line 296
    invoke-virtual {v6, v4, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/d0;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    :catch_0
    iget-object v1, v1, Lua/i9;->j:Lx9/o5;

    .line 303
    .line 304
    invoke-virtual {v1, v3}, Lc6/g;->C(I)V

    .line 305
    .line 306
    .line 307
    :cond_b
    :goto_2
    return v10
.end method
