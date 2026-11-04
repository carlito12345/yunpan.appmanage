.class public final Lj9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final d:Ljava/nio/charset/Charset;


# instance fields
.field public volatile a:I

.field public b:Ljava/util/logging/Level;

.field public final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lj9/a;->d:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lj9/a;->a:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lj9/a;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public static b(Lokhttp3/MediaType;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "text"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, "x-www-form-urlencoded"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v1, "json"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    const-string v1, "xml"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    const-string v1, "html"

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    :cond_2
    return v2

    .line 68
    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lokhttp3/Request;)V
    .locals 3

    .line 1
    const-string v0, "\tbody:"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lfg/i;

    .line 19
    .line 20
    invoke-direct {v1}, Lfg/i;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lokhttp3/RequestBody;->writeTo(Lfg/j;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v2, Lj9/a;->d:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object p1, v2

    .line 40
    :goto_0
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v2, p1

    .line 44
    :goto_1
    invoke-virtual {v1, v2}, Lfg/i;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lj9/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj9/a;->c:Ljava/util/logging/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lj9/a;->b:Ljava/util/logging/Level;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget v0, p0, Lj9/a;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lj9/a;->a:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string v0, "printLevel == null. Use Level.NONE instead."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "\tbody: maybe [binary body], omitted!"

    .line 6
    .line 7
    const-string v4, " "

    .line 8
    .line 9
    const-string v5, ": "

    .line 10
    .line 11
    const-string v6, "\t"

    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    iget v0, v1, Lj9/a;->a:I

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-ne v0, v8, :cond_0

    .line 21
    .line 22
    invoke-interface {v2, v7}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v9, "--> END "

    .line 32
    .line 33
    const-string v10, "\tContent-Length: "

    .line 34
    .line 35
    const-string v11, "\tContent-Type: "

    .line 36
    .line 37
    const-string v12, "--> "

    .line 38
    .line 39
    iget v13, v1, Lj9/a;->a:I

    .line 40
    .line 41
    const/4 v14, 0x4

    .line 42
    if-ne v13, v14, :cond_1

    .line 43
    .line 44
    const/4 v13, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v13, 0x0

    .line 47
    :goto_0
    iget v8, v1, Lj9/a;->a:I

    .line 48
    .line 49
    const/4 v15, 0x3

    .line 50
    if-eq v8, v14, :cond_3

    .line 51
    .line 52
    iget v8, v1, Lj9/a;->a:I

    .line 53
    .line 54
    if-ne v8, v15, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v8, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    const/4 v8, 0x1

    .line 60
    :goto_2
    invoke-virtual {v7}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 61
    .line 62
    .line 63
    move-result-object v17

    .line 64
    if-eqz v17, :cond_4

    .line 65
    .line 66
    const/16 v18, 0x1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v18, 0x0

    .line 70
    .line 71
    :goto_3
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-interface {v0}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 79
    .line 80
    :goto_4
    const/16 v15, 0x20

    .line 81
    .line 82
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Lj9/a;->c(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    if-eqz v8, :cond_b

    .line 118
    .line 119
    if-eqz v18, :cond_7

    .line 120
    .line 121
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Lj9/a;->c(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto/16 :goto_16

    .line 149
    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_6
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentLength()J

    .line 154
    .line 155
    .line 156
    move-result-wide v11

    .line 157
    const-wide/16 v19, -0x1

    .line 158
    .line 159
    cmp-long v0, v11, v19

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentLength()J

    .line 169
    .line 170
    .line 171
    move-result-wide v10

    .line 172
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v1, v0}, Lj9/a;->c(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    invoke-virtual {v7}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    const/4 v10, 0x0

    .line 191
    :goto_6
    if-ge v10, v8, :cond_9

    .line 192
    .line 193
    invoke-virtual {v0, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const-string v12, "Content-Type"

    .line 198
    .line 199
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-nez v12, :cond_8

    .line 204
    .line 205
    const-string v12, "Content-Length"

    .line 206
    .line 207
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    if-nez v12, :cond_8

    .line 212
    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-virtual {v1, v11}, Lj9/a;->c(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_9
    invoke-virtual {v1, v4}, Lj9/a;->c(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    if-eqz v13, :cond_b

    .line 248
    .line 249
    if-eqz v18, :cond_b

    .line 250
    .line 251
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Lj9/a;->b(Lokhttp3/MediaType;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    invoke-virtual {v1, v7}, Lj9/a;->a(Lokhttp3/Request;)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_a
    invoke-virtual {v1, v3}, Lj9/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    .line 268
    :cond_b
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_8
    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v1, v0}, Lj9/a;->c(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto :goto_a

    .line 288
    :goto_9
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .line 290
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 298
    .line 299
    .line 300
    move-result-wide v8

    .line 301
    :try_start_2
    invoke-interface {v2, v7}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 302
    .line 303
    .line 304
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 306
    .line 307
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 308
    .line 309
    .line 310
    move-result-wide v10

    .line 311
    sub-long/2addr v10, v8

    .line 312
    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 313
    .line 314
    .line 315
    move-result-wide v7

    .line 316
    const-string v9, "<-- END HTTP"

    .line 317
    .line 318
    const-string v0, "<-- "

    .line 319
    .line 320
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    iget v12, v1, Lj9/a;->a:I

    .line 333
    .line 334
    const/4 v13, 0x4

    .line 335
    if-ne v12, v13, :cond_c

    .line 336
    .line 337
    const/4 v12, 0x1

    .line 338
    goto :goto_b

    .line 339
    :cond_c
    const/4 v12, 0x0

    .line 340
    :goto_b
    iget v14, v1, Lj9/a;->a:I

    .line 341
    .line 342
    if-eq v14, v13, :cond_e

    .line 343
    .line 344
    iget v13, v1, Lj9/a;->a:I

    .line 345
    .line 346
    const/4 v14, 0x3

    .line 347
    if-ne v13, v14, :cond_d

    .line 348
    .line 349
    goto :goto_c

    .line 350
    :cond_d
    const/16 v16, 0x0

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :cond_e
    :goto_c
    const/16 v16, 0x1

    .line 354
    .line 355
    :goto_d
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v0, " ("

    .line 392
    .line 393
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v0, "ms\uff09"

    .line 400
    .line 401
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v1, v0}, Lj9/a;->c(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    if-eqz v16, :cond_10

    .line 412
    .line 413
    invoke-virtual {v10}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    const/4 v8, 0x0

    .line 422
    :goto_e
    if-ge v8, v7, :cond_f

    .line 423
    .line 424
    new-instance v13, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v14

    .line 436
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v8}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v13

    .line 453
    invoke-virtual {v1, v13}, Lj9/a;->c(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    add-int/lit8 v8, v8, 0x1

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :catchall_1
    move-exception v0

    .line 460
    goto/16 :goto_15

    .line 461
    .line 462
    :catch_1
    move-exception v0

    .line 463
    goto/16 :goto_13

    .line 464
    .line 465
    :cond_f
    invoke-virtual {v1, v4}, Lj9/a;->c(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    if-eqz v12, :cond_10

    .line 469
    .line 470
    invoke-static {v10}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    .line 471
    .line 472
    .line 473
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 474
    if-eqz v0, :cond_10

    .line 475
    .line 476
    if-nez v11, :cond_11

    .line 477
    .line 478
    :cond_10
    :goto_f
    invoke-virtual {v1, v9}, Lj9/a;->c(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_14

    .line 482
    .line 483
    :cond_11
    :try_start_4
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v0}, Lj9/a;->b(Lokhttp3/MediaType;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_15

    .line 492
    .line 493
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 498
    .line 499
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 500
    .line 501
    .line 502
    const/16 v4, 0x1000

    .line 503
    .line 504
    new-array v4, v4, [B

    .line 505
    .line 506
    :goto_10
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    const/4 v6, -0x1

    .line 511
    if-eq v5, v6, :cond_12

    .line 512
    .line 513
    const/4 v6, 0x0

    .line 514
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 515
    .line 516
    .line 517
    goto :goto_10

    .line 518
    :cond_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    new-instance v4, Ljava/lang/String;

    .line 530
    .line 531
    sget-object v5, Lj9/a;->d:Ljava/nio/charset/Charset;

    .line 532
    .line 533
    if-eqz v3, :cond_13

    .line 534
    .line 535
    invoke-virtual {v3, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    goto :goto_11

    .line 540
    :cond_13
    move-object v3, v5

    .line 541
    :goto_11
    if-nez v3, :cond_14

    .line 542
    .line 543
    goto :goto_12

    .line 544
    :cond_14
    move-object v5, v3

    .line 545
    :goto_12
    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 546
    .line 547
    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    const-string v5, "\tbody:"

    .line 554
    .line 555
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-virtual {v1, v3}, Lj9/a;->c(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-static {v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-virtual {v3, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    goto :goto_f

    .line 589
    :cond_15
    invoke-virtual {v1, v3}, Lj9/a;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 590
    .line 591
    .line 592
    goto :goto_f

    .line 593
    :goto_13
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 594
    .line 595
    .line 596
    goto :goto_f

    .line 597
    :goto_14
    return-object v2

    .line 598
    :goto_15
    invoke-virtual {v1, v9}, Lj9/a;->c(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    :catch_2
    move-exception v0

    .line 603
    move-object v2, v0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    const-string v3, "<-- HTTP FAILED: "

    .line 607
    .line 608
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {v1, v0}, Lj9/a;->c(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v2

    .line 622
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Lj9/a;->c(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto :goto_18

    .line 642
    :goto_17
    throw v0

    .line 643
    :goto_18
    goto :goto_17
.end method
