.class public final Lha/ze;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/ze;->b:I

    iput-object p1, p0, Lha/ze;->c:Ljava/lang/Object;

    iput-object p2, p0, Lha/ze;->d:Ljava/lang/Object;

    iput-object p3, p0, Lha/ze;->e:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lha/ze;->b:I

    iput-object p1, p0, Lha/ze;->e:Ljava/lang/Object;

    iput-object p2, p0, Lha/ze;->c:Ljava/lang/Object;

    iput-object p3, p0, Lha/ze;->d:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/ze;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    const-string p1, "\u83b7\u53d6\u83b7\u53d6\u63cf\u8ff0"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_2
    iget-object v0, p0, Lha/ze;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lha/v9;

    .line 16
    .line 17
    invoke-virtual {v0}, Lha/v9;->dismiss()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lha/ze;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string p1, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 47
    .line 48
    :cond_0
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, ""

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lha/ze;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Lha/bf;

    .line 77
    .line 78
    invoke-virtual {p1}, Lha/bf;->dismiss()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, ""

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lha/ze;->e:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Lha/bf;

    .line 107
    .line 108
    invoke-virtual {p1}, Lha/bf;->dismiss()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "\u5df2\u626b\u7801\uff0c\u5f85\u786e\u8ba4"

    .line 6
    .line 7
    const-string v3, "\u8bf7\u626b\u7801"

    .line 8
    .line 9
    const/16 v4, 0xc8

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v8, "file://"

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    iget-object v10, v0, Lha/ze;->c:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v11, v0, Lha/ze;->e:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    iget-object v13, v0, Lha/ze;->d:Ljava/lang/Object;

    .line 24
    .line 25
    iget v14, v0, Lha/ze;->b:I

    .line 26
    .line 27
    packed-switch v14, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    :pswitch_0
    return-void

    .line 31
    :pswitch_1
    check-cast v11, Lx9/f2;

    .line 32
    .line 33
    iget-object v2, v11, Lx9/f2;->h:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v10, Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/bumptech/glide/n;

    .line 45
    .line 46
    invoke-direct {v3, v10}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v11, Lx9/f2;->h:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 75
    .line 76
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 77
    .line 78
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 79
    .line 80
    invoke-virtual {v1, v2, v2}, Lw5/a;->o(II)Lw5/a;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/bumptech/glide/m;

    .line 85
    .line 86
    invoke-virtual {v1, v10}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 87
    .line 88
    .line 89
    check-cast v13, Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_2
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 96
    .line 97
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 98
    .line 99
    iget v3, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 100
    .line 101
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 102
    .line 103
    iget v4, v4, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 104
    .line 105
    if-eq v4, v5, :cond_1

    .line 106
    .line 107
    const/4 v5, 0x5

    .line 108
    if-ne v4, v5, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move v2, v3

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    iget v3, v2, Lcom/yunpan/appmanage/util/k;->S:I

    .line 114
    .line 115
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->T:I

    .line 116
    .line 117
    :goto_1
    check-cast v11, Lx9/n;

    .line 118
    .line 119
    iget-object v4, v11, Lx9/n;->j:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v4}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v10, Landroid/widget/ImageView;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-instance v5, Lcom/bumptech/glide/n;

    .line 131
    .line 132
    invoke-direct {v5, v10}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 136
    .line 137
    .line 138
    iget-object v4, v11, Lx9/n;->j:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {v4}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, v3, v2}, Lw5/a;->o(II)Lw5/a;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/bumptech/glide/m;

    .line 165
    .line 166
    invoke-virtual {v1, v10}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 167
    .line 168
    .line 169
    check-cast v13, Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_3
    check-cast v11, Lx9/f0;

    .line 176
    .line 177
    iget-object v2, v11, Lx9/f0;->h:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v10, Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v3, Lcom/bumptech/glide/n;

    .line 189
    .line 190
    invoke-direct {v3, v10}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, v11, Lx9/f0;->h:Landroid/content/Context;

    .line 197
    .line 198
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 219
    .line 220
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 221
    .line 222
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 223
    .line 224
    invoke-virtual {v1, v2, v2}, Lw5/a;->o(II)Lw5/a;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/bumptech/glide/m;

    .line 229
    .line 230
    invoke-virtual {v1, v10}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 231
    .line 232
    .line 233
    check-cast v13, Landroid/widget/ImageView;

    .line 234
    .line 235
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_4
    new-instance v2, Lha/f7;

    .line 240
    .line 241
    check-cast v11, Lua/i9;

    .line 242
    .line 243
    iget-object v3, v11, Lda/h;->f:Landroid/app/Activity;

    .line 244
    .line 245
    iget-object v4, v11, Lda/h;->e:Landroid/content/Context;

    .line 246
    .line 247
    invoke-direct {v2, v3, v4}, Lha/f7;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    check-cast v1, Ljava/lang/String;

    .line 251
    .line 252
    new-instance v3, Lcom/hjq/permissions/b;

    .line 253
    .line 254
    check-cast v10, Lx9/n5;

    .line 255
    .line 256
    check-cast v13, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 257
    .line 258
    const/16 v4, 0x11

    .line 259
    .line 260
    invoke-direct {v3, v0, v10, v13, v4}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 264
    .line 265
    .line 266
    iput-object v3, v2, Lha/f7;->k:Ljava/lang/Object;

    .line 267
    .line 268
    iget-object v3, v2, Lha/f7;->i:Landroid/widget/TextView;

    .line 269
    .line 270
    const-string v4, "\u4fee\u6539\u63cf\u8ff0"

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v2, Lha/f7;->h:Landroid/widget/EditText;

    .line 276
    .line 277
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v2, Lha/f7;->h:Landroid/widget/EditText;

    .line 281
    .line 282
    const-string v2, "\u63cf\u8ff0(\u53ef\u7559\u7a7a\uff0c\u5efa\u8bae160\u5b57\u6570\u4ee5\u5185)"

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const-string v2, ".gj"

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_3

    .line 299
    .line 300
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 301
    .line 302
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 303
    .line 304
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 305
    .line 306
    if-nez v2, :cond_2

    .line 307
    .line 308
    new-instance v14, Lha/z6;

    .line 309
    .line 310
    const-string v18, ""

    .line 311
    .line 312
    const-string v19, "\u597d\u7684"

    .line 313
    .line 314
    move-object v15, v10

    .line 315
    check-cast v15, Landroid/app/Activity;

    .line 316
    .line 317
    move-object/from16 v16, v13

    .line 318
    .line 319
    check-cast v16, Landroid/content/Context;

    .line 320
    .line 321
    const-string v17, "\u5b89\u88c5\u6b64\u5e94\u7528\u9700\u8981\u6709root\u7cfb\u7edf\u5199\u5165\u6743\uff0c\u5426\u5219\u65e0\u6cd5\u5b89\u88c5"

    .line 322
    .line 323
    const-string v20, ""

    .line 324
    .line 325
    const/16 v21, 0x0

    .line 326
    .line 327
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 333
    .line 334
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    new-instance v1, Lma/a;

    .line 338
    .line 339
    invoke-direct {v1, v2, v12}, Lma/a;-><init>(Ljava/io/File;I)V

    .line 340
    .line 341
    .line 342
    new-instance v2, Lmc/c;

    .line 343
    .line 344
    invoke-direct {v2, v12, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 348
    .line 349
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    new-instance v2, Lma/d;

    .line 362
    .line 363
    invoke-direct {v2, v0, v12}, Lma/d;-><init>(Lha/ze;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 367
    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_3
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 371
    .line 372
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->T:I

    .line 373
    .line 374
    const/4 v4, 0x2

    .line 375
    if-eq v3, v4, :cond_7

    .line 376
    .line 377
    if-ne v3, v5, :cond_4

    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_4
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 381
    .line 382
    check-cast v13, Landroid/content/Context;

    .line 383
    .line 384
    const-string v4, "\u5b89\u88c5\u4e2d"

    .line 385
    .line 386
    check-cast v11, Lha/u9;

    .line 387
    .line 388
    if-nez v3, :cond_5

    .line 389
    .line 390
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-static {}, La2/w0;->Q()Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_5

    .line 400
    .line 401
    invoke-virtual {v11, v4}, Lha/u9;->c(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    new-instance v2, Lcom/hjq/permissions/b;

    .line 405
    .line 406
    invoke-direct {v2, v11, v1, v13, v6}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 407
    .line 408
    .line 409
    iput-object v2, v3, La2/w0;->d:Ljava/lang/Object;

    .line 410
    .line 411
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 412
    .line 413
    new-instance v4, Lfa/u;

    .line 414
    .line 415
    invoke-direct {v4, v3, v1, v9}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_5
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 423
    .line 424
    if-nez v2, :cond_6

    .line 425
    .line 426
    invoke-virtual {v11, v4}, Lha/u9;->c(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    sget-object v2, Lma/h;->a:Lma/i;

    .line 430
    .line 431
    new-instance v3, Lma/c;

    .line 432
    .line 433
    invoke-direct {v3, v11, v12}, Lma/c;-><init>(Lha/u9;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v1, v3}, Lma/i;->c(Ljava/lang/String;Lma/g;)V

    .line 437
    .line 438
    .line 439
    goto :goto_3

    .line 440
    :cond_6
    invoke-static {v13, v1}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto :goto_3

    .line 444
    :cond_7
    :goto_2
    new-instance v2, Lma/b;

    .line 445
    .line 446
    invoke-direct {v2, v0, v12, v1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    new-instance v1, Lmc/c;

    .line 450
    .line 451
    invoke-direct {v1, v12, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 455
    .line 456
    invoke-virtual {v1, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    new-instance v2, Lma/d;

    .line 469
    .line 470
    invoke-direct {v2, v0, v9}, Lma/d;-><init>(Lha/ze;I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 474
    .line 475
    .line 476
    :goto_3
    return-void

    .line 477
    :pswitch_6
    if-nez v1, :cond_8

    .line 478
    .line 479
    goto :goto_4

    .line 480
    :cond_8
    instance-of v5, v1, Ljava/lang/String;

    .line 481
    .line 482
    check-cast v13, Landroid/widget/TextView;

    .line 483
    .line 484
    if-eqz v5, :cond_9

    .line 485
    .line 486
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 487
    .line 488
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 489
    .line 490
    check-cast v11, Lha/bf;

    .line 491
    .line 492
    iget-object v5, v11, Lha/a4;->b:Landroid/content/Context;

    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-static {v5, v4}, Lcom/yunpan/appmanage/util/k;->d(Landroid/content/Context;I)I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    check-cast v1, Ljava/lang/String;

    .line 502
    .line 503
    invoke-static {v2, v2, v1}, La9/o;->J(IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v10, Landroid/widget/ImageView;

    .line 508
    .line 509
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .line 517
    .line 518
    goto :goto_4

    .line 519
    :cond_9
    instance-of v3, v1, Ljava/lang/Integer;

    .line 520
    .line 521
    if-eqz v3, :cond_a

    .line 522
    .line 523
    check-cast v1, Ljava/lang/Integer;

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-ne v1, v9, :cond_a

    .line 530
    .line 531
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .line 536
    .line 537
    :cond_a
    :goto_4
    return-void

    .line 538
    :pswitch_7
    if-nez v1, :cond_b

    .line 539
    .line 540
    goto :goto_5

    .line 541
    :cond_b
    instance-of v5, v1, Ljava/lang/String;

    .line 542
    .line 543
    check-cast v13, Landroid/widget/TextView;

    .line 544
    .line 545
    if-eqz v5, :cond_c

    .line 546
    .line 547
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 548
    .line 549
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 550
    .line 551
    check-cast v11, Lha/bf;

    .line 552
    .line 553
    iget-object v5, v11, Lha/a4;->b:Landroid/content/Context;

    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    invoke-static {v5, v4}, Lcom/yunpan/appmanage/util/k;->d(Landroid/content/Context;I)I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    check-cast v1, Ljava/lang/String;

    .line 563
    .line 564
    invoke-static {v2, v2, v1}, La9/o;->J(IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    check-cast v10, Landroid/widget/ImageView;

    .line 569
    .line 570
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    goto :goto_5

    .line 580
    :cond_c
    instance-of v3, v1, Ljava/lang/Integer;

    .line 581
    .line 582
    if-eqz v3, :cond_d

    .line 583
    .line 584
    check-cast v1, Ljava/lang/Integer;

    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-ne v1, v9, :cond_d

    .line 591
    .line 592
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    :cond_d
    :goto_5
    return-void

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onComplete()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "\u767b\u5f55\u6210\u529f"

    .line 3
    .line 4
    iget-object v2, p0, Lha/ze;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lha/ze;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lha/ze;->e:Ljava/lang/Object;

    .line 9
    .line 10
    iget v5, p0, Lha/ze;->b:I

    .line 11
    .line 12
    sparse-switch v5, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_0
    check-cast v3, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 23
    .line 24
    iget-object v1, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    check-cast v4, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :sswitch_1
    check-cast v3, Lha/v9;

    .line 43
    .line 44
    invoke-virtual {v3}, Lha/v9;->dismiss()V

    .line 45
    .line 46
    .line 47
    check-cast v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 48
    .line 49
    iget-boolean v0, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v0, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 54
    .line 55
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v0, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-lez v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v1, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 89
    .line 90
    new-instance v3, Lx9/w3;

    .line 91
    .line 92
    iget-object v5, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v6, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v3, v5, v6}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v2, v3, Lx9/w3;->j:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance v1, Lha/r5;

    .line 108
    .line 109
    check-cast v4, Lua/i9;

    .line 110
    .line 111
    iget-object v2, v4, Lda/h;->f:Landroid/app/Activity;

    .line 112
    .line 113
    iget-object v3, v4, Lda/h;->e:Landroid/content/Context;

    .line 114
    .line 115
    invoke-direct {v1, v2, v3, v0}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-string v0, "\u62f7\u8d1d\u6210\u529f"

    .line 123
    .line 124
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void

    .line 128
    :sswitch_2
    check-cast v4, Lha/gf;

    .line 129
    .line 130
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 131
    .line 132
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 135
    .line 136
    if-nez v0, :cond_4

    .line 137
    .line 138
    const-string v0, "\u65e0\u6cd5\u8fde\u63a5smb\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 139
    .line 140
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 145
    .line 146
    const-string v1, "android.intent.action.VIEW"

    .line 147
    .line 148
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "android.intent.category.DEFAULT"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    const/high16 v1, 0x4000000

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    iget-object v1, v4, Lha/gf;->i:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v5, v4, Lha/gf;->j:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    new-instance v1, Landroid/content/ComponentName;

    .line 173
    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    check-cast v2, Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    iget-object v1, v4, Lha/a4;->b:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catch_0
    const-string v0, "\u65e0\u6cd5\u8c03\u7528\u7b2c\u4e09\u65b9\u6253\u5f00"

    .line 191
    .line 192
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    return-void

    .line 196
    :sswitch_3
    check-cast v4, Lha/bf;

    .line 197
    .line 198
    invoke-virtual {v4}, Lha/bf;->dismiss()V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v4, Lha/bf;->j:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Lha/cf;

    .line 207
    .line 208
    invoke-interface {v0}, Lha/cf;->c()V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :sswitch_4
    check-cast v4, Lha/bf;

    .line 213
    .line 214
    invoke-virtual {v4}, Lha/bf;->dismiss()V

    .line 215
    .line 216
    .line 217
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 218
    .line 219
    .line 220
    iget-object v0, v4, Lha/bf;->j:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Lha/af;

    .line 223
    .line 224
    invoke-interface {v0}, Lha/af;->c()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    nop

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
