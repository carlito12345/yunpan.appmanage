.class public final Lw1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lw1/h;

.field public d:Lw1/o;

.field public e:Lw1/b;

.field public f:Lw1/e;

.field public g:Lw1/h;

.field public h:Lw1/z;

.field public i:Lw1/f;

.field public j:Lw1/v;

.field public k:Lw1/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lw1/k;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lw1/k;->c:Lw1/h;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lw1/k;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method

.method public static l(Lw1/h;Lw1/x;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lw1/h;->f(Lw1/x;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lw1/h;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lw1/k;->k:Lw1/h;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lw1/k;->k:Lw1/h;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public final f(Lw1/x;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw1/k;->c:Lw1/h;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lw1/h;->f(Lw1/x;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lw1/k;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lw1/k;->d:Lw1/o;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lw1/k;->f:Lw1/e;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lw1/k;->g:Lw1/h;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lw1/k;->h:Lw1/z;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lw1/k;->i:Lw1/f;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lw1/k;->j:Lw1/v;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lw1/k;->l(Lw1/h;Lw1/x;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Lw1/h;->g()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lw1/h;->getUri()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final j(Lw1/j;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lw1/j;->a:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lw1/j;->a:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lw1/k;->a:Landroid/content/Context;

    .line 30
    .line 31
    if-nez v3, :cond_f

    .line 32
    .line 33
    const-string v3, "file"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    const-string v1, "asset"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    new-instance v0, Lw1/b;

    .line 56
    .line 57
    invoke-direct {v0, v4}, Lw1/b;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 66
    .line 67
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_3
    const-string v1, "content"

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lw1/k;->f:Lw1/e;

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    new-instance v0, Lw1/e;

    .line 84
    .line 85
    invoke-direct {v0, v4}, Lw1/e;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lw1/k;->f:Lw1/e;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v0, p0, Lw1/k;->f:Lw1/e;

    .line 94
    .line 95
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_5
    const-string v1, "rtmp"

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iget-object v2, p0, Lw1/k;->c:Lw1/h;

    .line 106
    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lw1/k;->g:Lw1/h;

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lw1/h;

    .line 129
    .line 130
    iput-object v0, p0, Lw1/k;->g:Lw1/h;

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    .line 138
    .line 139
    const-string v1, "Error instantiating RTMP extension"

    .line 140
    .line 141
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :catch_1
    const-string v0, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 146
    .line 147
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    iget-object v0, p0, Lw1/k;->g:Lw1/h;

    .line 151
    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    iput-object v2, p0, Lw1/k;->g:Lw1/h;

    .line 155
    .line 156
    :cond_6
    iget-object v0, p0, Lw1/k;->g:Lw1/h;

    .line 157
    .line 158
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 159
    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :cond_7
    const-string v1, "udp"

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_9

    .line 169
    .line 170
    iget-object v0, p0, Lw1/k;->h:Lw1/z;

    .line 171
    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    new-instance v0, Lw1/z;

    .line 175
    .line 176
    invoke-direct {v0}, Lw1/z;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lw1/k;->h:Lw1/z;

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    iget-object v0, p0, Lw1/k;->h:Lw1/z;

    .line 185
    .line 186
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :cond_9
    const-string v1, "data"

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_b

    .line 197
    .line 198
    iget-object v0, p0, Lw1/k;->i:Lw1/f;

    .line 199
    .line 200
    if-nez v0, :cond_a

    .line 201
    .line 202
    new-instance v0, Lw1/f;

    .line 203
    .line 204
    invoke-direct {v0}, Lw1/f;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v0, p0, Lw1/k;->i:Lw1/f;

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget-object v0, p0, Lw1/k;->i:Lw1/f;

    .line 213
    .line 214
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_b
    const-string v1, "rawresource"

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_d

    .line 224
    .line 225
    const-string v1, "android.resource"

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_c

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_c
    iput-object v2, p0, Lw1/k;->k:Lw1/h;

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_d
    :goto_2
    iget-object v0, p0, Lw1/k;->j:Lw1/v;

    .line 238
    .line 239
    if-nez v0, :cond_e

    .line 240
    .line 241
    new-instance v0, Lw1/v;

    .line 242
    .line 243
    invoke-direct {v0, v4}, Lw1/v;-><init>(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lw1/k;->j:Lw1/v;

    .line 247
    .line 248
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 249
    .line 250
    .line 251
    :cond_e
    iget-object v0, p0, Lw1/k;->j:Lw1/v;

    .line 252
    .line 253
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_f
    :goto_3
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    const-string v1, "/android_asset/"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_11

    .line 269
    .line 270
    iget-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 271
    .line 272
    if-nez v0, :cond_10

    .line 273
    .line 274
    new-instance v0, Lw1/b;

    .line 275
    .line 276
    invoke-direct {v0, v4}, Lw1/b;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    iput-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 280
    .line 281
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 282
    .line 283
    .line 284
    :cond_10
    iget-object v0, p0, Lw1/k;->e:Lw1/b;

    .line 285
    .line 286
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_11
    iget-object v0, p0, Lw1/k;->d:Lw1/o;

    .line 290
    .line 291
    if-nez v0, :cond_12

    .line 292
    .line 293
    new-instance v0, Lw1/o;

    .line 294
    .line 295
    invoke-direct {v0}, Lw1/o;-><init>()V

    .line 296
    .line 297
    .line 298
    iput-object v0, p0, Lw1/k;->d:Lw1/o;

    .line 299
    .line 300
    invoke-virtual {p0, v0}, Lw1/k;->k(Lw1/h;)V

    .line 301
    .line 302
    .line 303
    :cond_12
    iget-object v0, p0, Lw1/k;->d:Lw1/o;

    .line 304
    .line 305
    iput-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 306
    .line 307
    :goto_4
    iget-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 308
    .line 309
    invoke-interface {v0, p1}, Lw1/h;->j(Lw1/j;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v0

    .line 313
    return-wide v0
.end method

.method public final k(Lw1/h;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lw1/k;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lw1/x;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lw1/h;->f(Lw1/x;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/k;->k:Lw1/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr1/h;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
