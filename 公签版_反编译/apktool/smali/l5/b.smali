.class public final Ll5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/q;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/emoji2/text/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll5/b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Ll5/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ll5/q;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ll5/b;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Ll5/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ll5/q;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ll5/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ll5/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ll5/b;->a:I

    iput-object p1, p0, Ll5/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll5/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Ll5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.resource"

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    return p1

    .line 42
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :pswitch_1
    iget-object v0, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ll5/q;

    .line 65
    .line 66
    invoke-interface {v1, p1}, Ll5/q;->a(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 p1, 0x0

    .line 75
    :goto_1
    return p1

    .line 76
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :pswitch_3
    check-cast p1, Landroid/net/Uri;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "file"

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v1, 0x0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v0, "android_asset"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    :cond_3
    return v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILf5/i;)Ll5/p;
    .locals 8

    .line 1
    iget v0, p0, Ll5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ll5/q;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x5

    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v6, "ResourceUriLoader"

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-ne v1, v7, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    nop

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v2, v0, p2, p3, p4}, Ll5/q;->b(Ljava/lang/Object;IILf5/i;)Ll5/p;

    .line 61
    .line 62
    .line 63
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_1

    .line 65
    :goto_0
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    invoke-static {p1}, Landroid/support/v4/media/session/a;->A(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x2

    .line 80
    if-ne v0, v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v7, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {v2, p1, p2, p3, p4}, Ll5/q;->b(Ljava/lang/Object;IILf5/i;)Ll5/p;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_4

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_1
    return-object v5

    .line 145
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 146
    .line 147
    iget-object v0, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Landroid/content/res/Resources;

    .line 150
    .line 151
    const-string v1, "android.resource://"

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/16 v1, 0x2f

    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 205
    .line 206
    .line 207
    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    goto :goto_2

    .line 209
    :catch_1
    nop

    .line 210
    const-string v0, "ResourceLoader"

    .line 211
    .line 212
    const/4 v1, 0x5

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_5

    .line 218
    .line 219
    invoke-static {p1}, Landroid/support/v4/media/session/a;->A(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_5
    move-object p1, v2

    .line 223
    :goto_2
    if-nez p1, :cond_6

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_6
    iget-object v0, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Ll5/q;

    .line 229
    .line 230
    invoke-interface {v0, p1, p2, p3, p4}, Ll5/q;->b(Ljava/lang/Object;IILf5/i;)Ll5/p;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    :goto_3
    return-object v2

    .line 235
    :pswitch_1
    iget-object v0, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    const/4 v4, 0x0

    .line 250
    move-object v5, v3

    .line 251
    :goto_4
    if-ge v4, v1, :cond_8

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    check-cast v6, Ll5/q;

    .line 258
    .line 259
    invoke-interface {v6, p1}, Ll5/q;->a(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-eqz v7, :cond_7

    .line 264
    .line 265
    invoke-interface {v6, p1, p2, p3, p4}, Ll5/q;->b(Ljava/lang/Object;IILf5/i;)Ll5/p;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    if-eqz v6, :cond_7

    .line 270
    .line 271
    iget-object v5, v6, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 272
    .line 273
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v5, v6, Ll5/p;->a:Lf5/f;

    .line 277
    .line 278
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-nez p1, :cond_9

    .line 286
    .line 287
    if-eqz v5, :cond_9

    .line 288
    .line 289
    new-instance v3, Ll5/p;

    .line 290
    .line 291
    new-instance p1, Ll5/u;

    .line 292
    .line 293
    iget-object p2, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast p2, Lv3/f;

    .line 296
    .line 297
    invoke-direct {p1, v2, p2}, Ll5/u;-><init>(Ljava/util/ArrayList;Lv3/f;)V

    .line 298
    .line 299
    .line 300
    invoke-direct {v3, v5, p1}, Ll5/p;-><init>(Lf5/f;Lcom/bumptech/glide/load/data/e;)V

    .line 301
    .line 302
    .line 303
    :cond_9
    return-object v3

    .line 304
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 305
    .line 306
    sget-object p2, Lq5/c;->b:Lf5/h;

    .line 307
    .line 308
    invoke-virtual {p4, p2}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    check-cast p2, Landroid/content/res/Resources$Theme;

    .line 313
    .line 314
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 315
    .line 316
    const/16 p4, 0x15

    .line 317
    .line 318
    if-lt p3, p4, :cond_a

    .line 319
    .line 320
    if-eqz p2, :cond_a

    .line 321
    .line 322
    invoke-static {p2}, Lg7/d;->h(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object p3

    .line 326
    goto :goto_5

    .line 327
    :cond_a
    iget-object p3, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast p3, Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    :goto_5
    new-instance p4, Ll5/p;

    .line 336
    .line 337
    new-instance v0, Lz5/d;

    .line 338
    .line 339
    invoke-direct {v0, p1}, Lz5/d;-><init>(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    new-instance v1, Ll5/e;

    .line 343
    .line 344
    iget-object v2, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    check-cast v2, Landroidx/emoji2/text/n;

    .line 351
    .line 352
    invoke-direct {v1, p2, p3, v2, p1}, Ll5/e;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroidx/emoji2/text/n;I)V

    .line 353
    .line 354
    .line 355
    invoke-direct {p4, v0, v1}, Ll5/p;-><init>(Lf5/f;Lcom/bumptech/glide/load/data/e;)V

    .line 356
    .line 357
    .line 358
    return-object p4

    .line 359
    :pswitch_3
    check-cast p1, Landroid/net/Uri;

    .line 360
    .line 361
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    const/16 p3, 0x16

    .line 366
    .line 367
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    new-instance p3, Ll5/p;

    .line 372
    .line 373
    new-instance p4, Lz5/d;

    .line 374
    .line 375
    invoke-direct {p4, p1}, Lz5/d;-><init>(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 379
    .line 380
    iget-object v0, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Landroid/content/res/AssetManager;

    .line 383
    .line 384
    check-cast p1, Ll5/a;

    .line 385
    .line 386
    iget p1, p1, Ll5/a;->a:I

    .line 387
    .line 388
    packed-switch p1, :pswitch_data_1

    .line 389
    .line 390
    .line 391
    new-instance p1, Lcom/bumptech/glide/load/data/k;

    .line 392
    .line 393
    const/4 v1, 0x1

    .line 394
    invoke-direct {p1, v0, p2, v1}, Lcom/bumptech/glide/load/data/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    .line 395
    .line 396
    .line 397
    goto :goto_6

    .line 398
    :pswitch_4
    new-instance p1, Lcom/bumptech/glide/load/data/k;

    .line 399
    .line 400
    const/4 v1, 0x0

    .line 401
    invoke-direct {p1, v0, p2, v1}, Lcom/bumptech/glide/load/data/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    :goto_6
    invoke-direct {p3, p4, p1}, Ll5/p;-><init>(Lf5/f;Lcom/bumptech/glide/load/data/e;)V

    .line 405
    .line 406
    .line 407
    return-object p3

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ll5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "MultiModelLoader{modelLoaders="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ll5/b;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
