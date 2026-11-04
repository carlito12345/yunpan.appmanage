.class public final Lmf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v3, "/r_styles.ini"

    .line 9
    .line 10
    new-instance v4, Ljava/io/BufferedReader;

    .line 11
    .line 12
    new-instance v5, Ljava/io/InputStreamReader;

    .line 13
    .line 14
    const-class v6, Lqf/c;

    .line 15
    .line 16
    invoke-virtual {v6, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v5, "="

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    array-length v5, v3

    .line 43
    const/4 v6, 0x2

    .line 44
    if-eq v5, v6, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    aget-object v5, v3, v1

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    aget-object v3, v3, v0

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .line 71
    .line 72
    sput-object v2, Lmf/h;->b:Ljava/util/HashMap;

    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_3

    .line 77
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :catchall_1
    move-exception v3

    .line 79
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_2
    move-exception v4

    .line 84
    :try_start_5
    const-class v5, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 85
    .line 86
    :try_start_6
    const-string v6, "addSuppressed"

    .line 87
    .line 88
    new-array v7, v1, [Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v5, v7, v0

    .line 91
    .line 92
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v4, v1, v0

    .line 99
    .line 100
    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 101
    .line 102
    .line 103
    :catch_1
    :goto_2
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 104
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :goto_4
    throw v1

    .line 111
    :goto_5
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmf/h;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 16

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0xff

    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    long-to-int v1, v0

    .line 9
    int-to-short v0, v1

    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    shr-long v4, p1, v1

    .line 13
    .line 14
    and-long/2addr v2, v4

    .line 15
    long-to-int v1, v2

    .line 16
    int-to-short v1, v1

    .line 17
    const-wide/32 v2, 0xffff

    .line 18
    .line 19
    .line 20
    and-long v2, p1, v2

    .line 21
    .line 22
    long-to-int v3, v2

    .line 23
    move-object/from16 v2, p0

    .line 24
    .line 25
    iget-object v4, v2, Lmf/h;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lmf/f;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    iget-object v4, v0, Lmf/f;->d:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lmf/l;

    .line 55
    .line 56
    iget-object v0, v0, Lmf/f;->e:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/List;

    .line 67
    .line 68
    if-eqz v4, :cond_b

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_1
    iget-object v1, v4, Lmf/l;->a:[J

    .line 75
    .line 76
    array-length v1, v1

    .line 77
    if-ge v3, v1, :cond_a

    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_9

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lmf/j;

    .line 99
    .line 100
    iget-object v6, v5, Lmf/j;->f:[J

    .line 101
    .line 102
    array-length v7, v6

    .line 103
    const-wide v8, 0xffffffffL

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    if-lt v3, v7, :cond_2

    .line 110
    .line 111
    goto/16 :goto_2

    .line 112
    .line 113
    :cond_2
    aget-wide v11, v6, v3

    .line 114
    .line 115
    cmp-long v6, v11, v8

    .line 116
    .line 117
    if-nez v6, :cond_3

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_3
    iget-object v6, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    invoke-static {v6, v11, v12}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 124
    .line 125
    .line 126
    iget-object v6, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    int-to-long v6, v6

    .line 133
    new-instance v10, La9/a;

    .line 134
    .line 135
    const/4 v11, 0x6

    .line 136
    const/4 v12, 0x0

    .line 137
    invoke-direct {v10, v11, v12}, La9/a;-><init>(IC)V

    .line 138
    .line 139
    .line 140
    iget-object v11, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    invoke-static {v11}, Ls1/g;->R(Ljava/nio/ByteBuffer;)I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    iput v11, v10, La9/a;->b:I

    .line 147
    .line 148
    iget-object v11, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    invoke-static {v11}, Ls1/g;->R(Ljava/nio/ByteBuffer;)I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    iput v11, v10, La9/a;->c:I

    .line 155
    .line 156
    iget-object v11, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    int-to-long v11, v11

    .line 163
    iget-object v13, v5, Lmf/j;->d:Ll2/l0;

    .line 164
    .line 165
    long-to-int v12, v11

    .line 166
    iget-object v11, v13, Ll2/l0;->a:[Ljava/lang/String;

    .line 167
    .line 168
    aget-object v11, v11, v12

    .line 169
    .line 170
    iput-object v11, v10, La9/a;->d:Ljava/lang/Object;

    .line 171
    .line 172
    iget v11, v10, La9/a;->c:I

    .line 173
    .line 174
    and-int/lit8 v11, v11, 0x1

    .line 175
    .line 176
    if-eqz v11, :cond_5

    .line 177
    .line 178
    new-instance v11, Lmf/e;

    .line 179
    .line 180
    invoke-direct {v11, v10}, Lmf/e;-><init>(La9/a;)V

    .line 181
    .line 182
    .line 183
    iget-object v12, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    invoke-static {v12}, Ls1/g;->Q(Ljava/nio/ByteBuffer;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v12

    .line 189
    iput-wide v12, v11, Lmf/e;->f:J

    .line 190
    .line 191
    iget-object v12, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    invoke-static {v12}, Ls1/g;->Q(Ljava/nio/ByteBuffer;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v12

    .line 197
    iput-wide v12, v11, Lmf/e;->g:J

    .line 198
    .line 199
    iget-object v12, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    iget v10, v10, La9/a;->b:I

    .line 202
    .line 203
    int-to-long v13, v10

    .line 204
    add-long/2addr v6, v13

    .line 205
    invoke-static {v12, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 206
    .line 207
    .line 208
    iget-wide v6, v11, Lmf/e;->g:J

    .line 209
    .line 210
    long-to-int v7, v6

    .line 211
    new-array v6, v7, [Lha/j2;

    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    :goto_1
    int-to-long v12, v7

    .line 215
    iget-wide v14, v11, Lmf/e;->g:J

    .line 216
    .line 217
    cmp-long v10, v12, v14

    .line 218
    .line 219
    if-gez v10, :cond_4

    .line 220
    .line 221
    new-instance v10, Lha/j2;

    .line 222
    .line 223
    const/16 v12, 0x16

    .line 224
    .line 225
    invoke-direct {v10, v12}, Lha/j2;-><init>(I)V

    .line 226
    .line 227
    .line 228
    iget-object v12, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 229
    .line 230
    invoke-static {v12}, Ls1/g;->Q(Ljava/nio/ByteBuffer;)J

    .line 231
    .line 232
    .line 233
    iget-object v12, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 234
    .line 235
    iget-object v13, v5, Lmf/j;->g:Ll2/l0;

    .line 236
    .line 237
    invoke-static {v12, v13}, Lqf/b;->b(Ljava/nio/ByteBuffer;Ll2/l0;)Lab/a;

    .line 238
    .line 239
    .line 240
    aput-object v10, v6, v7

    .line 241
    .line 242
    add-int/lit8 v7, v7, 0x1

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    iput-object v6, v11, Lmf/e;->h:[Lha/j2;

    .line 246
    .line 247
    move-object v10, v11

    .line 248
    goto :goto_2

    .line 249
    :cond_5
    iget-object v11, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 250
    .line 251
    iget v12, v10, La9/a;->b:I

    .line 252
    .line 253
    int-to-long v12, v12

    .line 254
    add-long/2addr v6, v12

    .line 255
    invoke-static {v11, v6, v7}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v5, Lmf/j;->e:Ljava/nio/ByteBuffer;

    .line 259
    .line 260
    iget-object v7, v5, Lmf/j;->g:Ll2/l0;

    .line 261
    .line 262
    invoke-static {v6, v7}, Lqf/b;->b(Ljava/nio/ByteBuffer;Ll2/l0;)Lab/a;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    iput-object v6, v10, La9/a;->e:Ljava/lang/Object;

    .line 267
    .line 268
    :goto_2
    if-nez v10, :cond_6

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_6
    iget-object v6, v10, La9/a;->e:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v6, Lab/a;

    .line 275
    .line 276
    if-nez v6, :cond_7

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_7
    instance-of v7, v6, Llf/e;

    .line 281
    .line 282
    if-eqz v7, :cond_8

    .line 283
    .line 284
    check-cast v6, Llf/e;

    .line 285
    .line 286
    iget v6, v6, Lab/a;->b:I

    .line 287
    .line 288
    int-to-long v6, v6

    .line 289
    and-long/2addr v6, v8

    .line 290
    cmp-long v8, p1, v6

    .line 291
    .line 292
    if-nez v8, :cond_8

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_8
    new-instance v6, Lmf/g;

    .line 297
    .line 298
    invoke-direct {v6, v4, v5, v10}, Lmf/g;-><init>(Lmf/l;Lmf/j;La9/a;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_9
    return-object v1

    .line 307
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    return-object v0

    .line 312
    :cond_b
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    return-object v0
.end method
