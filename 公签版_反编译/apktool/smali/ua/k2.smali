.class public final synthetic Lua/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityImage2;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/k2;->a:I

    iput-object p1, p0, Lua/k2;->b:Lcom/yunpan/appmanage/ui/ActivityImage2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lua/k2;->b:Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 2
    .line 3
    iget v1, p0, Lua/k2;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v7, Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Y:F

    .line 20
    .line 21
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/4 v8, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/io/FileOutputStream;

    .line 40
    .line 41
    new-instance v3, Ljava/io/File;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "/rotation.ming"

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 73
    .line 74
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 77
    .line 78
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 79
    .line 80
    iget v0, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 81
    .line 82
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v3, ".jpg"

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/16 v4, 0x64

    .line 101
    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    const-string v3, ".jpeg"

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 114
    .line 115
    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 120
    .line 121
    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 140
    .line 141
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 142
    .line 143
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 144
    .line 145
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 146
    .line 147
    iget v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 148
    .line 149
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 154
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 161
    .line 162
    invoke-virtual {v4}, Lx9/n5;->b()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v4, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v3}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const-string v5, "\u52a0\u8f7d\u5931\u8d25"

    .line 187
    .line 188
    if-eqz v4, :cond_3

    .line 189
    .line 190
    :cond_2
    invoke-static {v5, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v6, v1, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v6, v1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 205
    .line 206
    iget-object v6, v6, Lx9/n5;->g:Ljava/lang/String;

    .line 207
    .line 208
    const-string v7, "/"

    .line 209
    .line 210
    invoke-static {v4, v6, v7, v3}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    iput-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-nez v4, :cond_8

    .line 221
    .line 222
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 223
    .line 224
    iget v6, v1, Lx9/n5;->a:I

    .line 225
    .line 226
    const/4 v7, 0x3

    .line 227
    if-ne v6, v7, :cond_4

    .line 228
    .line 229
    invoke-static {v2, v3, v1}, Lqa/f;->a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    goto :goto_2

    .line 234
    :cond_4
    const/4 v7, 0x4

    .line 235
    if-ne v6, v7, :cond_5

    .line 236
    .line 237
    invoke-static {v2, v3, v1}, Lcom/bumptech/glide/c;->a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    goto :goto_2

    .line 242
    :cond_5
    const/4 v7, 0x5

    .line 243
    if-ne v6, v7, :cond_6

    .line 244
    .line 245
    invoke-static {v2, v3, v1}, Lcom/bumptech/glide/d;->d(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    goto :goto_2

    .line 250
    :cond_6
    const/4 v7, 0x6

    .line 251
    if-ne v6, v7, :cond_7

    .line 252
    .line 253
    invoke-static {v1}, Lif/a;->f(Lx9/n5;)V

    .line 254
    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    goto :goto_2

    .line 258
    :cond_7
    const/4 v7, 0x7

    .line 259
    if-ne v6, v7, :cond_8

    .line 260
    .line 261
    invoke-static {v2, v3, v1}, Lqa/g;->a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    :cond_8
    :goto_2
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_9

    .line 272
    .line 273
    const-string v0, "\u8df3\u8fc7"

    .line 274
    .line 275
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_9
    if-eqz v4, :cond_2

    .line 280
    .line 281
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 282
    .line 283
    .line 284
    :goto_3
    return-void

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
