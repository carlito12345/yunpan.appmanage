.class public final Lhf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/l;
.implements Lf5/g;
.implements Lcom/bumptech/glide/load/data/g;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lhf/b;->a:I

    packed-switch p1, :pswitch_data_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    return-void

    .line 11
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 12
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    iput p2, p0, Lhf/b;->a:I

    sparse-switch p2, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    return-void

    .line 6
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 8
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lhf/b;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final i([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    .line 31
    .line 32
    monitor-exit p1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p2
.end method


# virtual methods
.method public a([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    iget v0, p0, Lhf/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Integer;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    :goto_0
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1

    .line 45
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lhf/b;->i([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhf/b;->h()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, Lhf/b;->h()S

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public e(I)S
    .locals 3

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, p1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, -0x1

    .line 17
    :goto_0
    return p1
.end method

.method public f()La9/a;
    .locals 14

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    and-int/lit8 v3, v2, 0x1f

    .line 20
    .line 21
    const/16 v4, 0x80

    .line 22
    .line 23
    const/16 v5, 0x1f

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-ne v3, v5, :cond_4

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const v7, 0xffffff

    .line 40
    .line 41
    .line 42
    if-gt v3, v7, :cond_2

    .line 43
    .line 44
    shl-int/lit8 v3, v3, 0x7

    .line 45
    .line 46
    and-int/lit8 v7, v5, 0x7f

    .line 47
    .line 48
    or-int/2addr v3, v7

    .line 49
    and-int/2addr v5, v4

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Lhf/a;

    .line 54
    .line 55
    const-string v1, "Tag number too large"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_3
    new-instance v0, Lhf/a;

    .line 62
    .line 63
    const-string v1, "Truncated tag number"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_4
    :goto_0
    and-int/lit8 v5, v2, 0x20

    .line 70
    .line 71
    const/4 v7, 0x1

    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const/4 v5, 0x0

    .line 77
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_13

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    and-int/lit16 v9, v8, 0xff

    .line 88
    .line 89
    and-int/lit16 v10, v8, 0x80

    .line 90
    .line 91
    if-nez v10, :cond_6

    .line 92
    .line 93
    and-int/lit8 v4, v8, 0x7f

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    sub-int/2addr v5, v1

    .line 100
    invoke-virtual {p0, v4}, Lhf/b;->g(I)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_6
    if-eq v9, v4, :cond_b

    .line 106
    .line 107
    and-int/lit8 v4, v8, 0x7f

    .line 108
    .line 109
    const/4 v5, 0x4

    .line 110
    if-gt v4, v5, :cond_a

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    :goto_2
    if-ge v6, v4, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_8

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const v8, 0x7fffff

    .line 126
    .line 127
    .line 128
    if-gt v5, v8, :cond_7

    .line 129
    .line 130
    shl-int/lit8 v5, v5, 0x8

    .line 131
    .line 132
    and-int/lit16 v7, v7, 0xff

    .line 133
    .line 134
    or-int/2addr v5, v7

    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    new-instance v0, Lhf/a;

    .line 139
    .line 140
    const-string v1, "Length too large"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_8
    new-instance v0, Lhf/a;

    .line 147
    .line 148
    const-string v1, "Truncated length"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_9
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    sub-int/2addr v4, v1

    .line 159
    invoke-virtual {p0, v5}, Lhf/b;->g(I)V

    .line 160
    .line 161
    .line 162
    :goto_3
    move v13, v5

    .line 163
    move v5, v4

    .line 164
    move v4, v13

    .line 165
    goto/16 :goto_6

    .line 166
    .line 167
    :cond_a
    new-instance v0, Lhf/a;

    .line 168
    .line 169
    const-string v1, "Length too large: "

    .line 170
    .line 171
    const-string v2, " bytes"

    .line 172
    .line 173
    invoke-static {v1, v4, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_b
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    sub-int/2addr v4, v1

    .line 186
    const-string v8, " bytes read"

    .line 187
    .line 188
    const-string v9, "Truncated indefinite-length contents: "

    .line 189
    .line 190
    if-eqz v5, :cond_e

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    :goto_4
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_d

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-le v6, v7, :cond_c

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-nez v6, :cond_c

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    sub-int/2addr v6, v5

    .line 223
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    add-int/lit8 v5, v5, 0x2

    .line 228
    .line 229
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    .line 231
    .line 232
    move v5, v6

    .line 233
    goto :goto_3

    .line 234
    :cond_c
    invoke-virtual {p0}, Lhf/b;->f()La9/a;

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_d
    new-instance v1, Lhf/a;

    .line 239
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    sub-int/2addr v0, v5

    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-direct {v1, v0}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_e
    const/4 v5, 0x0

    .line 265
    const/4 v10, 0x0

    .line 266
    :goto_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    if-eqz v11, :cond_12

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    add-int/lit8 v12, v5, 0x1

    .line 277
    .line 278
    if-ltz v12, :cond_11

    .line 279
    .line 280
    if-nez v11, :cond_10

    .line 281
    .line 282
    if-eqz v10, :cond_f

    .line 283
    .line 284
    add-int/lit8 v5, v5, -0x1

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :goto_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 316
    .line 317
    .line 318
    add-int/2addr v5, v4

    .line 319
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 327
    .line 328
    .line 329
    new-instance v1, La9/a;

    .line 330
    .line 331
    and-int/lit16 v2, v2, 0xff

    .line 332
    .line 333
    shr-int/lit8 v2, v2, 0x6

    .line 334
    .line 335
    invoke-direct {v1, v6, v0, v2, v3}, La9/a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V

    .line 336
    .line 337
    .line 338
    return-object v1

    .line 339
    :cond_f
    const/4 v10, 0x1

    .line 340
    goto :goto_7

    .line 341
    :cond_10
    const/4 v10, 0x0

    .line 342
    :goto_7
    move v5, v12

    .line 343
    goto :goto_5

    .line 344
    :cond_11
    new-instance v0, Lhf/a;

    .line 345
    .line 346
    const-string v1, "Indefinite-length contents too long"

    .line 347
    .line 348
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_12
    new-instance v0, Lhf/a;

    .line 353
    .line 354
    invoke-static {v9, v5, v8}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_13
    new-instance v0, Lhf/a;

    .line 363
    .line 364
    const-string v1, "Missing length"

    .line 365
    .line 366
    invoke-direct {v0, v1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_9

    .line 370
    :goto_8
    throw v0

    .line 371
    :goto_9
    goto :goto_8
.end method

.method public g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, p1

    .line 14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lhf/a;

    .line 19
    .line 20
    const-string v2, "Truncated contents. Need: "

    .line 21
    .line 22
    const-string v3, " bytes, available: "

    .line 23
    .line 24
    invoke-static {v2, p1, v3}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v1, p1}, Lhf/a;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public h()S
    .locals 3

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    int-to-short v0, v0

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Lo5/k;

    .line 19
    .line 20
    invoke-direct {v0}, Lo5/k;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public n(I[B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p2, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    return p1
.end method

.method public skip(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lhf/b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    long-to-int p2, p1

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/2addr p1, p2

    .line 18
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    .line 20
    .line 21
    int-to-long p1, p2

    .line 22
    return-wide p1
.end method
