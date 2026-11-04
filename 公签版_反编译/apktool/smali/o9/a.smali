.class public final Lo9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field public static final d:Lokhttp3/MediaType;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public b:Lokhttp3/HttpUrl;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/dns-message"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo9/a;->d:Lokhttp3/MediaType;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/room/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lokhttp3/HttpUrl;

    .line 13
    .line 14
    iput-object v1, p0, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 15
    .line 16
    iget-boolean v1, p1, Landroidx/room/i;->a:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lo9/a;->c:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p1, p1, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lokhttp3/Dns;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lo9/a;->a:Lokhttp3/OkHttpClient;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 40
    .line 41
    const-string v0, "client not set"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public static b(Lokhttp3/Response;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p0}, Lo9/a;->c(Ljava/lang/String;Lokhttp3/Response;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit p2

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    monitor-enter p3

    .line 16
    :try_start_3
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    monitor-exit p3

    .line 20
    :goto_0
    return-void

    .line 21
    :catchall_1
    move-exception p0

    .line 22
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    throw p0
.end method

.method public static c(Ljava/lang/String;Lokhttp3/Response;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string v0, "response size exceeds limit (65536 bytes): "

    .line 2
    .line 3
    const-string v1, "response: "

    .line 4
    .line 5
    invoke-virtual {p1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "Incorrect protocol: "

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x5

    .line 43
    invoke-virtual {v2, v5, v3, v4}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const-wide/32 v4, 0x10000

    .line 61
    .line 62
    .line 63
    cmp-long v6, v2, v4

    .line 64
    .line 65
    if-gtz v6, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lfg/k;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Lfg/k;->v()Lfg/l;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p0}, Lo9/b;->a(Lfg/l;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " bytes"

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, " "

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 147
    .line 148
    .line 149
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    new-instance v4, Lokhttp3/Request$Builder;

    .line 7
    .line 8
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v5, Lo9/a;->d:Lokhttp3/MediaType;

    .line 12
    .line 13
    invoke-virtual {v5}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v6, "Accept"

    .line 18
    .line 19
    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget v5, Lo9/b;->a:I

    .line 24
    .line 25
    new-instance v5, Lfg/i;

    .line 26
    .line 27
    invoke-direct {v5}, Lfg/i;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v5, v6}, Lfg/i;->b0(I)V

    .line 32
    .line 33
    .line 34
    const/16 v7, 0x100

    .line 35
    .line 36
    invoke-virtual {v5, v7}, Lfg/i;->b0(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v3}, Lfg/i;->b0(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lfg/i;->b0(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Lfg/i;->b0(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Lfg/i;->b0(I)V

    .line 49
    .line 50
    .line 51
    new-instance v7, Lfg/i;

    .line 52
    .line 53
    invoke-direct {v7}, Lfg/i;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v8, "\\."

    .line 57
    .line 58
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    array-length v9, v8

    .line 63
    const/4 v10, 0x0

    .line 64
    :goto_0
    if-ge v10, v9, :cond_b

    .line 65
    .line 66
    aget-object v11, v8, v10

    .line 67
    .line 68
    const-string v12, "<this>"

    .line 69
    .line 70
    invoke-static {v11, v12}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-ltz v12, :cond_a

    .line 78
    .line 79
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-gt v12, v13, :cond_9

    .line 84
    .line 85
    const-wide/16 v13, 0x0

    .line 86
    .line 87
    const/4 v15, 0x0

    .line 88
    :goto_1
    if-ge v15, v12, :cond_7

    .line 89
    .line 90
    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/16 v2, 0x80

    .line 95
    .line 96
    const-wide/16 v16, 0x1

    .line 97
    .line 98
    if-ge v6, v2, :cond_0

    .line 99
    .line 100
    add-long v13, v13, v16

    .line 101
    .line 102
    add-int/2addr v15, v3

    .line 103
    :goto_2
    const/4 v6, 0x0

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    const/16 v2, 0x800

    .line 106
    .line 107
    if-ge v6, v2, :cond_1

    .line 108
    .line 109
    move-object/from16 v18, v8

    .line 110
    .line 111
    move/from16 v19, v9

    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    int-to-long v8, v2

    .line 115
    add-long/2addr v13, v8

    .line 116
    :goto_3
    add-int/2addr v15, v3

    .line 117
    move-object/from16 v8, v18

    .line 118
    .line 119
    move/from16 v9, v19

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    move-object/from16 v18, v8

    .line 123
    .line 124
    move/from16 v19, v9

    .line 125
    .line 126
    const v2, 0xd800

    .line 127
    .line 128
    .line 129
    if-lt v6, v2, :cond_2

    .line 130
    .line 131
    const v2, 0xdfff

    .line 132
    .line 133
    .line 134
    if-le v6, v2, :cond_3

    .line 135
    .line 136
    :cond_2
    const/4 v2, 0x2

    .line 137
    goto :goto_7

    .line 138
    :cond_3
    add-int/lit8 v8, v15, 0x1

    .line 139
    .line 140
    if-ge v8, v12, :cond_4

    .line 141
    .line 142
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    goto :goto_4

    .line 147
    :cond_4
    const/4 v9, 0x0

    .line 148
    :goto_4
    const v3, 0xdbff

    .line 149
    .line 150
    .line 151
    if-gt v6, v3, :cond_5

    .line 152
    .line 153
    const v3, 0xdc00

    .line 154
    .line 155
    .line 156
    if-lt v9, v3, :cond_5

    .line 157
    .line 158
    if-le v9, v2, :cond_6

    .line 159
    .line 160
    :cond_5
    const/4 v2, 0x2

    .line 161
    goto :goto_6

    .line 162
    :cond_6
    const/4 v2, 0x4

    .line 163
    int-to-long v2, v2

    .line 164
    add-long/2addr v13, v2

    .line 165
    const/4 v2, 0x2

    .line 166
    add-int/2addr v15, v2

    .line 167
    :goto_5
    move-object/from16 v8, v18

    .line 168
    .line 169
    move/from16 v9, v19

    .line 170
    .line 171
    const/4 v3, 0x1

    .line 172
    goto :goto_2

    .line 173
    :goto_6
    add-long v13, v13, v16

    .line 174
    .line 175
    move v15, v8

    .line 176
    goto :goto_5

    .line 177
    :goto_7
    const/4 v3, 0x3

    .line 178
    int-to-long v8, v3

    .line 179
    add-long/2addr v13, v8

    .line 180
    const/4 v3, 0x1

    .line 181
    goto :goto_3

    .line 182
    :cond_7
    move-object/from16 v18, v8

    .line 183
    .line 184
    move/from16 v19, v9

    .line 185
    .line 186
    const/4 v2, 0x2

    .line 187
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    int-to-long v8, v6

    .line 192
    cmp-long v6, v13, v8

    .line 193
    .line 194
    if-nez v6, :cond_8

    .line 195
    .line 196
    long-to-int v6, v13

    .line 197
    int-to-byte v6, v6

    .line 198
    invoke-virtual {v7, v6}, Lfg/i;->W(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v11}, Lfg/i;->e0(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    add-int/2addr v10, v3

    .line 205
    move-object/from16 v8, v18

    .line 206
    .line 207
    move/from16 v9, v19

    .line 208
    .line 209
    const/4 v6, 0x0

    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    const-string v3, "non-ascii hostname: "

    .line 215
    .line 216
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v2

    .line 224
    :cond_9
    const-string v1, "endIndex > string.length: "

    .line 225
    .line 226
    const-string v2, " > "

    .line 227
    .line 228
    invoke-static {v1, v12, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v2

    .line 253
    :cond_a
    const-string v1, "endIndex < beginIndex: "

    .line 254
    .line 255
    const-string v2, " < 0"

    .line 256
    .line 257
    invoke-static {v1, v12, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v2

    .line 271
    :cond_b
    const/4 v2, 0x0

    .line 272
    invoke-virtual {v7, v2}, Lfg/i;->W(I)V

    .line 273
    .line 274
    .line 275
    iget-wide v10, v7, Lfg/i;->b:J

    .line 276
    .line 277
    const-wide/16 v2, 0x0

    .line 278
    .line 279
    move-object v6, v7

    .line 280
    move-wide v7, v2

    .line 281
    move-object v9, v5

    .line 282
    invoke-virtual/range {v6 .. v11}, Lfg/i;->K(JLfg/i;J)V

    .line 283
    .line 284
    .line 285
    move/from16 v2, p5

    .line 286
    .line 287
    invoke-virtual {v5, v2}, Lfg/i;->b0(I)V

    .line 288
    .line 289
    .line 290
    const/4 v2, 0x1

    .line 291
    invoke-virtual {v5, v2}, Lfg/i;->b0(I)V

    .line 292
    .line 293
    .line 294
    iget-wide v2, v5, Lfg/i;->b:J

    .line 295
    .line 296
    invoke-virtual {v5, v2, v3}, Lfg/i;->c(J)Lfg/l;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lfg/l;->b()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    const-string v3, "="

    .line 305
    .line 306
    const-string v5, ""

    .line 307
    .line 308
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    iget-object v3, v0, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 313
    .line 314
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    const-string v5, "dns"

    .line 319
    .line 320
    invoke-virtual {v3, v5, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    iget-object v3, v0, Lo9/a;->a:Lokhttp3/OkHttpClient;

    .line 337
    .line 338
    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    if-eqz v4, :cond_c

    .line 343
    .line 344
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    sget-object v5, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 349
    .line 350
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    .line 367
    .line 368
    .line 369
    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const/16 v6, 0x1f8

    .line 371
    .line 372
    if-eq v5, v6, :cond_c

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :catch_0
    :cond_c
    const/4 v4, 0x0

    .line 376
    :goto_8
    if-eqz v4, :cond_d

    .line 377
    .line 378
    move-object/from16 v5, p3

    .line 379
    .line 380
    move-object/from16 v6, p4

    .line 381
    .line 382
    invoke-static {v4, v1, v5, v6}, Lo9/a;->b(Lokhttp3/Response;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_d
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    move-object/from16 v2, p2

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    :goto_9
    return-void
.end method

.method public final lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    .line 1
    iget-object v0, p0, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_6

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-boolean v0, p0, Lo9/a;->c:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    new-instance p1, Ljava/net/UnknownHostException;

    .line 35
    .line 36
    const-string v0, "public hosts not resolved"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    new-instance v9, Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    move-object v1, p0

    .line 61
    move-object v2, p1

    .line 62
    move-object v3, v0

    .line 63
    move-object v4, v9

    .line 64
    move-object v5, v8

    .line 65
    invoke-virtual/range {v1 .. v6}, Lo9/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 66
    .line 67
    .line 68
    const/16 v6, 0x1c

    .line 69
    .line 70
    move-object v1, p0

    .line 71
    move-object v2, p1

    .line 72
    move-object v3, v0

    .line 73
    move-object v4, v9

    .line 74
    move-object v5, v8

    .line 75
    invoke-virtual/range {v1 .. v6}, Lo9/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    move-object v10, v2

    .line 102
    check-cast v10, Lokhttp3/Call;

    .line 103
    .line 104
    new-instance v11, Lkf/b;

    .line 105
    .line 106
    move-object v2, v11

    .line 107
    move-object v3, p0

    .line 108
    move-object v4, v8

    .line 109
    move-object v5, v1

    .line 110
    move-object v6, p1

    .line 111
    move-object v7, v9

    .line 112
    invoke-direct/range {v2 .. v7}, Lkf/b;-><init>(Lo9/a;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v10, v11}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 135
    .line 136
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    :goto_4
    return-object v9

    .line 141
    :cond_6
    new-instance p1, Ljava/net/UnknownHostException;

    .line 142
    .line 143
    const-string v0, "private hosts not resolved"

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :goto_5
    throw p1

    .line 150
    :goto_6
    goto :goto_5
.end method
