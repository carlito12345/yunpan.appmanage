.class public final Lw1/m;
.super Lw1/c;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Lua/i8;

.field public final h:Lua/i8;

.field public i:Lw1/j;

.field public j:Ljava/net/HttpURLConnection;

.field public k:Ljava/io/InputStream;

.field public l:Z

.field public m:I

.field public n:J

.field public p:J


# direct methods
.method public constructor <init>(IILua/i8;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lw1/c;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lw1/m;->e:I

    .line 6
    .line 7
    iput p2, p0, Lw1/m;->f:I

    .line 8
    .line 9
    iput-object p3, p0, Lw1/m;->g:Lua/i8;

    .line 10
    .line 11
    new-instance p1, Lua/i8;

    .line 12
    .line 13
    const/4 p2, 0x6

    .line 14
    invoke-direct {p1, p2}, Lua/i8;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lw1/m;->h:Lua/i8;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lw1/m;->k:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v2

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v2

    .line 14
    :try_start_2
    new-instance v3, Lw1/q;

    .line 15
    .line 16
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v4, 0x7d0

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    invoke-direct {v3, v2, v4, v5}, Lw1/q;-><init>(Ljava/io/IOException;II)V

    .line 22
    .line 23
    .line 24
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Lw1/m;->k:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-virtual {p0}, Lw1/m;->o()V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lw1/m;->l:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iput-boolean v0, p0, Lw1/m;->l:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lw1/c;->l()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lw1/m;->j:Ljava/net/HttpURLConnection;

    .line 40
    .line 41
    iput-object v1, p0, Lw1/m;->i:Lw1/j;

    .line 42
    .line 43
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    iput-object v1, p0, Lw1/m;->k:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-virtual {p0}, Lw1/m;->o()V

    .line 50
    .line 51
    .line 52
    iget-boolean v3, p0, Lw1/m;->l:Z

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iput-boolean v0, p0, Lw1/m;->l:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lw1/c;->l()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-object v1, p0, Lw1/m;->j:Ljava/net/HttpURLConnection;

    .line 62
    .line 63
    iput-object v1, p0, Lw1/m;->i:Lw1/j;

    .line 64
    .line 65
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 66
    .line 67
    .line 68
    throw v2
.end method

.method public final g()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lw1/m;->j:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lu7/d1;->g:Lu7/d1;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v1, Lw1/l;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {v1, v0}, Lw1/l;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/m;->j:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lw1/m;->i:Lw1/j;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lw1/j;->a:Landroid/net/Uri;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public final j(Lw1/j;)J
    .locals 17

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iput-object v0, v12, Lw1/m;->i:Lw1/j;

    .line 6
    .line 7
    const-wide/16 v13, 0x0

    .line 8
    .line 9
    iput-wide v13, v12, Lw1/m;->p:J

    .line 10
    .line 11
    iput-wide v13, v12, Lw1/m;->n:J

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lw1/c;->m()V

    .line 14
    .line 15
    .line 16
    const/4 v15, 0x1

    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x24

    .line 24
    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->threadId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    :goto_0
    long-to-int v2, v1

    .line 37
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/net/URL;

    .line 41
    .line 42
    iget-object v1, v0, Lw1/j;->a:Landroid/net/Uri;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, v0, Lw1/j;->g:I

    .line 52
    .line 53
    and-int/2addr v1, v15

    .line 54
    if-ne v1, v15, :cond_1

    .line 55
    .line 56
    const/4 v9, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    :goto_1
    iget-object v11, v0, Lw1/j;->d:Ljava/util/Map;

    .line 61
    .line 62
    iget v3, v0, Lw1/j;->b:I

    .line 63
    .line 64
    iget-object v4, v0, Lw1/j;->c:[B

    .line 65
    .line 66
    iget-wide v5, v0, Lw1/j;->e:J

    .line 67
    .line 68
    iget-wide v7, v0, Lw1/j;->f:J

    .line 69
    .line 70
    const/4 v10, 0x1

    .line 71
    move-object/from16 v1, p0

    .line 72
    .line 73
    invoke-virtual/range {v1 .. v11}, Lw1/m;->p(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v12, Lw1/m;->j:Ljava/net/HttpURLConnection;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, v12, Lw1/m;->m:I

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 86
    .line 87
    .line 88
    iget v2, v12, Lw1/m;->m:I

    .line 89
    .line 90
    const-string v3, "Content-Range"

    .line 91
    .line 92
    const/16 v4, 0xc8

    .line 93
    .line 94
    const-wide/16 v5, -0x1

    .line 95
    .line 96
    iget-wide v7, v0, Lw1/j;->e:J

    .line 97
    .line 98
    iget-wide v9, v0, Lw1/j;->f:J

    .line 99
    .line 100
    if-lt v2, v4, :cond_9

    .line 101
    .line 102
    const/16 v11, 0x12b

    .line 103
    .line 104
    if-le v2, v11, :cond_2

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    iget v2, v12, Lw1/m;->m:I

    .line 112
    .line 113
    if-ne v2, v4, :cond_3

    .line 114
    .line 115
    cmp-long v2, v7, v13

    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    move-wide v13, v7

    .line 120
    :cond_3
    const-string v2, "Content-Encoding"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v4, "gzip"

    .line 127
    .line 128
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_6

    .line 133
    .line 134
    cmp-long v4, v9, v5

    .line 135
    .line 136
    if-eqz v4, :cond_4

    .line 137
    .line 138
    iput-wide v9, v12, Lw1/m;->n:J

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const-string v4, "Content-Length"

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v4, v3}, Lw1/t;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    cmp-long v7, v3, v5

    .line 156
    .line 157
    if-eqz v7, :cond_5

    .line 158
    .line 159
    sub-long v5, v3, v13

    .line 160
    .line 161
    :cond_5
    iput-wide v5, v12, Lw1/m;->n:J

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    iput-wide v9, v12, Lw1/m;->n:J

    .line 165
    .line 166
    :goto_2
    const/16 v3, 0x7d0

    .line 167
    .line 168
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v12, Lw1/m;->k:Ljava/io/InputStream;

    .line 173
    .line 174
    if-eqz v2, :cond_7

    .line 175
    .line 176
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .line 177
    .line 178
    iget-object v2, v12, Lw1/m;->k:Ljava/io/InputStream;

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    .line 182
    .line 183
    iput-object v1, v12, Lw1/m;->k:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catch_0
    move-exception v0

    .line 187
    goto :goto_4

    .line 188
    :cond_7
    :goto_3
    iput-boolean v15, v12, Lw1/m;->l:Z

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p1}, Lw1/c;->n(Lw1/j;)V

    .line 191
    .line 192
    .line 193
    :try_start_2
    invoke-virtual {v12, v13, v14}, Lw1/m;->q(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    .line 195
    .line 196
    iget-wide v0, v12, Lw1/m;->n:J

    .line 197
    .line 198
    return-wide v0

    .line 199
    :catch_1
    move-exception v0

    .line 200
    move-object v1, v0

    .line 201
    invoke-virtual/range {p0 .. p0}, Lw1/m;->o()V

    .line 202
    .line 203
    .line 204
    instance-of v0, v1, Lw1/q;

    .line 205
    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    move-object v0, v1

    .line 209
    check-cast v0, Lw1/q;

    .line 210
    .line 211
    throw v0

    .line 212
    :cond_8
    new-instance v0, Lw1/q;

    .line 213
    .line 214
    invoke-direct {v0, v1, v3, v15}, Lw1/q;-><init>(Ljava/io/IOException;II)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lw1/m;->o()V

    .line 219
    .line 220
    .line 221
    new-instance v1, Lw1/q;

    .line 222
    .line 223
    invoke-direct {v1, v0, v3, v15}, Lw1/q;-><init>(Ljava/io/IOException;II)V

    .line 224
    .line 225
    .line 226
    throw v1

    .line 227
    :cond_9
    :goto_5
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget v4, v12, Lw1/m;->m:I

    .line 232
    .line 233
    const/16 v11, 0x1a0

    .line 234
    .line 235
    if-ne v4, v11, :cond_b

    .line 236
    .line 237
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v3}, Lw1/t;->b(Ljava/lang/String;)J

    .line 242
    .line 243
    .line 244
    move-result-wide v3

    .line 245
    cmp-long v16, v7, v3

    .line 246
    .line 247
    if-nez v16, :cond_b

    .line 248
    .line 249
    iput-boolean v15, v12, Lw1/m;->l:Z

    .line 250
    .line 251
    invoke-virtual/range {p0 .. p1}, Lw1/c;->n(Lw1/j;)V

    .line 252
    .line 253
    .line 254
    cmp-long v0, v9, v5

    .line 255
    .line 256
    if-eqz v0, :cond_a

    .line 257
    .line 258
    move-wide v13, v9

    .line 259
    :cond_a
    return-wide v13

    .line 260
    :cond_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_c

    .line 265
    .line 266
    :try_start_3
    invoke-static {v0}, Lv7/g;->c(Ljava/io/InputStream;)[B

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_c
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catch_2
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 274
    .line 275
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lw1/m;->o()V

    .line 276
    .line 277
    .line 278
    iget v0, v12, Lw1/m;->m:I

    .line 279
    .line 280
    if-ne v0, v11, :cond_d

    .line 281
    .line 282
    new-instance v0, Lw1/i;

    .line 283
    .line 284
    const/16 v1, 0x7d8

    .line 285
    .line 286
    invoke-direct {v0, v1}, Lw1/i;-><init>(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_d
    const/4 v0, 0x0

    .line 291
    :goto_7
    new-instance v1, Lw1/s;

    .line 292
    .line 293
    iget v3, v12, Lw1/m;->m:I

    .line 294
    .line 295
    invoke-direct {v1, v3, v0, v2}, Lw1/s;-><init>(ILw1/i;Ljava/util/Map;)V

    .line 296
    .line 297
    .line 298
    throw v1

    .line 299
    :catch_3
    move-exception v0

    .line 300
    invoke-virtual/range {p0 .. p0}, Lw1/m;->o()V

    .line 301
    .line 302
    .line 303
    invoke-static {v0, v15}, Lw1/q;->b(Ljava/io/IOException;I)Lw1/q;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    throw v0
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw1/m;->j:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "Unexpected error while disconnecting"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public final p(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iget v0, p0, Lw1/m;->e:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lw1/m;->f:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lw1/m;->g:Lua/i8;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lua/i8;->t()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lw1/m;->h:Lua/i8;

    .line 34
    .line 35
    invoke-virtual {v1}, Lua/i8;->t()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p10

    .line 49
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p10

    .line 53
    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sget-object p10, Lw1/t;->a:Ljava/util/regex/Pattern;

    .line 82
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    const-wide/16 v2, -0x1

    .line 86
    .line 87
    cmp-long p10, p4, v0

    .line 88
    .line 89
    if-nez p10, :cond_2

    .line 90
    .line 91
    cmp-long p10, p6, v2

    .line 92
    .line 93
    if-nez p10, :cond_2

    .line 94
    .line 95
    const/4 p4, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string p10, "bytes="

    .line 98
    .line 99
    const-string v0, "-"

    .line 100
    .line 101
    invoke-static {p4, p5, p10, v0}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object p10

    .line 105
    cmp-long v0, p6, v2

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    add-long/2addr p4, p6

    .line 110
    const-wide/16 p6, 0x1

    .line 111
    .line 112
    sub-long/2addr p4, p6

    .line 113
    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    :goto_1
    if-eqz p4, :cond_4

    .line 121
    .line 122
    const-string p5, "Range"

    .line 123
    .line 124
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    if-eqz p8, :cond_5

    .line 128
    .line 129
    const-string p4, "gzip"

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    const-string p4, "identity"

    .line 133
    .line 134
    :goto_2
    const-string p5, "Accept-Encoding"

    .line 135
    .line 136
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 140
    .line 141
    .line 142
    const/4 p4, 0x1

    .line 143
    if-eqz p3, :cond_6

    .line 144
    .line 145
    const/4 p5, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    const/4 p5, 0x0

    .line 148
    :goto_3
    invoke-virtual {p1, p5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 149
    .line 150
    .line 151
    sget p5, Lw1/j;->h:I

    .line 152
    .line 153
    if-eq p2, p4, :cond_9

    .line 154
    .line 155
    const/4 p4, 0x2

    .line 156
    if-eq p2, p4, :cond_8

    .line 157
    .line 158
    const/4 p4, 0x3

    .line 159
    if-ne p2, p4, :cond_7

    .line 160
    .line 161
    const-string p2, "HEAD"

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_8
    const-string p2, "POST"

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_9
    const-string p2, "GET"

    .line 174
    .line 175
    :goto_4
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    if-eqz p3, :cond_a

    .line 179
    .line 180
    array-length p2, p3

    .line 181
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_a
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 199
    .line 200
    .line 201
    :goto_5
    return-object p1
.end method

.method public final q(J)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v2, 0x1000

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    :goto_0
    cmp-long v4, p1, v0

    .line 13
    .line 14
    if-lez v4, :cond_3

    .line 15
    .line 16
    int-to-long v4, v2

    .line 17
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    long-to-int v5, v4

    .line 22
    iget-object v4, p0, Lw1/m;->k:Ljava/io/InputStream;

    .line 23
    .line 24
    sget-object v6, Lu1/f0;->a:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    if-eq v4, v5, :cond_1

    .line 43
    .line 44
    int-to-long v5, v4

    .line 45
    sub-long/2addr p1, v5

    .line 46
    invoke-virtual {p0, v4}, Lw1/c;->k(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lw1/q;

    .line 51
    .line 52
    invoke-direct {p1}, Lw1/q;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    new-instance p1, Lw1/q;

    .line 57
    .line 58
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v0, 0x7d0

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-direct {p1, p2, v0, v1}, Lw1/q;-><init>(Ljava/io/IOException;II)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    return-void
.end method

.method public final read([BII)I
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lw1/m;->n:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_2

    .line 13
    .line 14
    iget-wide v2, p0, Lw1/m;->p:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v5, v0, v2

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 p1, -0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    int-to-long v2, p3

    .line 26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int p3, v0

    .line 31
    :cond_2
    iget-object v0, p0, Lw1/m;->k:Ljava/io/InputStream;

    .line 32
    .line 33
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v4, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-wide p2, p0, Lw1/m;->p:J

    .line 43
    .line 44
    int-to-long v0, p1

    .line 45
    add-long/2addr p2, v0

    .line 46
    iput-wide p2, p0, Lw1/m;->p:J

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lw1/c;->k(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :goto_1
    return p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    sget-object p2, Lu1/f0;->a:Ljava/lang/String;

    .line 54
    .line 55
    const/4 p2, 0x2

    .line 56
    invoke-static {p1, p2}, Lw1/q;->b(Ljava/io/IOException;I)Lw1/q;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_3

    .line 61
    :goto_2
    throw p1

    .line 62
    :goto_3
    goto :goto_2
.end method
