.class public final Lbd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd/b;


# static fields
.field public static final n:Lorg/slf4j/Logger;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:I

.field public i:Lbd/a;

.field public j:Lj$/util/concurrent/ConcurrentHashMap;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lbd/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lbd/a;->n:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lbd/a;->i:Lbd/a;

    .line 5
    .line 6
    return-void
.end method

.method public static d(Lbd/e;Ljava/lang/String;JI)Lbd/a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    new-instance v3, Lbd/a;

    .line 8
    .line 9
    invoke-direct {v3}, Lbd/a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x4

    .line 13
    new-array v5, v4, [Ljava/lang/String;

    .line 14
    .line 15
    iget v6, v0, Lbd/e;->g:I

    .line 16
    .line 17
    int-to-long v6, v6

    .line 18
    iput-wide v6, v3, Lbd/a;->b:J

    .line 19
    .line 20
    iget v6, v0, Lbd/e;->e:I

    .line 21
    .line 22
    iput v6, v3, Lbd/a;->h:I

    .line 23
    .line 24
    move-wide/from16 v7, p2

    .line 25
    .line 26
    iput-wide v7, v3, Lbd/a;->g:J

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    and-int/2addr v6, v7

    .line 30
    const-string v8, " path consumed "

    .line 31
    .line 32
    const-string v9, " remain "

    .line 33
    .line 34
    const-string v10, " path "

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    sget-object v12, Lbd/a;->n:Lorg/slf4j/Logger;

    .line 38
    .line 39
    const/4 v13, 0x1

    .line 40
    if-ne v6, v7, :cond_2

    .line 41
    .line 42
    iget-object v4, v0, Lbd/e;->l:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, [Ljava/lang/String;

    .line 45
    .line 46
    array-length v5, v4

    .line 47
    if-lez v5, :cond_0

    .line 48
    .line 49
    aget-object v0, v4, v11

    .line 50
    .line 51
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, v3, Lbd/a;->c:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, v0, Lbd/e;->k:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, v3, Lbd/a;->c:Ljava/lang/String;

    .line 75
    .line 76
    :goto_0
    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v4, "Server "

    .line 85
    .line 86
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v4, v3, Lbd/a;->c:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v0, v4, v10, v1, v9}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v12, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    iput v2, v3, Lbd/a;->a:I

    .line 115
    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_2
    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_3

    .line 123
    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v14, "Node "

    .line 127
    .line 128
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v14, v0, Lbd/e;->j:Ljava/io/Serializable;

    .line 132
    .line 133
    check-cast v14, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v6, v14, v10, v1, v9}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-interface {v12, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    iget-object v0, v0, Lbd/e;->j:Ljava/io/Serializable;

    .line 159
    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    const/4 v8, 0x0

    .line 167
    const/4 v9, 0x0

    .line 168
    const/4 v10, 0x0

    .line 169
    :goto_1
    const/16 v14, 0x5c

    .line 170
    .line 171
    const/4 v15, 0x3

    .line 172
    if-ne v8, v15, :cond_4

    .line 173
    .line 174
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    aput-object v4, v5, v15

    .line 179
    .line 180
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    aput-object v0, v5, v15

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    if-eq v9, v6, :cond_5

    .line 188
    .line 189
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-ne v11, v14, :cond_6

    .line 194
    .line 195
    :cond_5
    add-int/lit8 v11, v8, 0x1

    .line 196
    .line 197
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    aput-object v10, v5, v8

    .line 202
    .line 203
    add-int/lit8 v10, v9, 0x1

    .line 204
    .line 205
    move v8, v11

    .line 206
    :cond_6
    add-int/lit8 v11, v9, 0x1

    .line 207
    .line 208
    if-lt v9, v6, :cond_b

    .line 209
    .line 210
    :goto_2
    if-ge v8, v4, :cond_7

    .line 211
    .line 212
    add-int/lit8 v0, v8, 0x1

    .line 213
    .line 214
    const-string v6, ""

    .line 215
    .line 216
    aput-object v6, v5, v8

    .line 217
    .line 218
    move v8, v0

    .line 219
    goto :goto_2

    .line 220
    :cond_7
    :goto_3
    aget-object v0, v5, v13

    .line 221
    .line 222
    iput-object v0, v3, Lbd/a;->c:Ljava/lang/String;

    .line 223
    .line 224
    aget-object v0, v5, v7

    .line 225
    .line 226
    iput-object v0, v3, Lbd/a;->d:Ljava/lang/String;

    .line 227
    .line 228
    aget-object v0, v5, v15

    .line 229
    .line 230
    iput-object v0, v3, Lbd/a;->f:Ljava/lang/String;

    .line 231
    .line 232
    iput v2, v3, Lbd/a;->a:I

    .line 233
    .line 234
    add-int/lit8 v0, v2, -0x1

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-ne v0, v14, :cond_9

    .line 241
    .line 242
    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    const-string v0, "Server consumed trailing slash of request path, adjusting"

    .line 249
    .line 250
    invoke-interface {v12, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_8
    iget v0, v3, Lbd/a;->a:I

    .line 254
    .line 255
    sub-int/2addr v0, v13

    .line 256
    iput v0, v3, Lbd/a;->a:I

    .line 257
    .line 258
    :cond_9
    invoke-interface {v12}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_a

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v2, "Request "

    .line 270
    .line 271
    const-string v4, " ref path "

    .line 272
    .line 273
    invoke-static {v2, v1, v4}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iget-object v2, v3, Lbd/a;->f:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v2, " consumed "

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget v2, v3, Lbd/a;->a:I

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v2, ": "

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-interface {v12, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_a
    :goto_4
    return-object v3

    .line 308
    :cond_b
    move v9, v11

    .line 309
    const/4 v11, 0x0

    .line 310
    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lbd/b;)Lbd/a;
    .locals 3

    .line 1
    new-instance v0, Lbd/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbd/a;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lbd/a;

    .line 7
    .line 8
    iget-object v1, p1, Lbd/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lbd/a;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lbd/a;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lbd/a;->d:Ljava/lang/String;

    .line 15
    .line 16
    iget-wide v1, p1, Lbd/a;->g:J

    .line 17
    .line 18
    iput-wide v1, v0, Lbd/a;->g:J

    .line 19
    .line 20
    iget-object v1, p1, Lbd/a;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Lbd/a;->f:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, p0, Lbd/a;->a:I

    .line 25
    .line 26
    iget v2, p1, Lbd/a;->a:I

    .line 27
    .line 28
    add-int/2addr v1, v2

    .line 29
    iput v1, v0, Lbd/a;->a:I

    .line 30
    .line 31
    iget-object v2, p0, Lbd/a;->f:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    sub-int/2addr v1, v2

    .line 42
    iput v1, v0, Lbd/a;->a:I

    .line 43
    .line 44
    :cond_0
    iget-object p1, p1, Lbd/a;->l:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, v0, Lbd/a;->l:Ljava/lang/String;

    .line 47
    .line 48
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lbd/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gez v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "."

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v1, Lbd/a;->n:Lorg/slf4j/Logger;

    .line 30
    .line 31
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const-string v2, "Applying DFS netbios name hack "

    .line 38
    .line 39
    const-string v3, " -> "

    .line 40
    .line 41
    const-string v4, " "

    .line 42
    .line 43
    invoke-static {v2, v0, v3, p1, v4}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iput-object p1, p0, Lbd/a;->c:Ljava/lang/String;

    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbd/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gez v1, :cond_2

    .line 10
    .line 11
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "."

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sget-object v2, Lbd/a;->n:Lorg/slf4j/Logger;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "Adjusting server name "

    .line 61
    .line 62
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " to "

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iput-object p1, p0, Lbd/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string p1, "Have unmappable netbios name "

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()Lbd/a;
    .locals 2

    .line 1
    const-class v0, Lbd/b;

    .line 2
    .line 3
    const-class v1, Lbd/a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lbd/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lbd/b;

    .line 8
    .line 9
    iget-object v0, p0, Lbd/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    check-cast v2, Lbd/a;

    .line 13
    .line 14
    iget-object v2, v2, Lbd/a;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lbd/a;->d:Ljava/lang/String;

    .line 23
    .line 24
    check-cast p1, Lbd/a;

    .line 25
    .line 26
    iget-object v2, p1, Lbd/a;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lbd/a;->f:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p1, Lbd/a;->f:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget v0, p0, Lbd/a;->a:I

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget p1, p1, Lbd/a;->a:I

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lbd/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lbd/a;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lbd/a;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lbd/a;->a:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x4

    .line 14
    new-array v4, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v0, v4, v5

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v4, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-object v2, v4, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput-object v3, v4, v0

    .line 27
    .line 28
    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DfsReferralData[pathConsumed="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lbd/a;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",server="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lbd/a;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",share="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lbd/a;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",link="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lbd/a;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",path="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lbd/a;->f:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",ttl="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lbd/a;->b:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",expiration="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lbd/a;->g:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ",remain="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lbd/a;->g:J

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    sub-long/2addr v1, v3

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, "]"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
