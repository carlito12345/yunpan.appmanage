.class public final Lq3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/j;


# static fields
.field public static final e:Li3/a;


# instance fields
.field public final a:Lu1/q;

.field public final b:Lu1/q;

.field public final c:Lq3/a;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Li3/a;

    .line 2
    .line 3
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 4
    .line 5
    sget-object v5, Lu7/y0;->e:Lu7/y0;

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    move-object v0, v6

    .line 18
    invoke-direct/range {v0 .. v5}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 19
    .line 20
    .line 21
    sput-object v6, Lq3/b;->e:Li3/a;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lu1/q;

    .line 6
    .line 7
    invoke-direct {v1}, Lu1/q;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lq3/b;->a:Lu1/q;

    .line 11
    .line 12
    new-instance v1, Lu1/q;

    .line 13
    .line 14
    invoke-direct {v1}, Lu1/q;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lq3/b;->b:Lu1/q;

    .line 18
    .line 19
    new-instance v1, Lq3/a;

    .line 20
    .line 21
    invoke-direct {v1}, Lq3/a;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lq3/b;->c:Lq3/a;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [B

    .line 34
    .line 35
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-direct {v2, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "\\r?\\n"

    .line 47
    .line 48
    const/4 v4, -0x1

    .line 49
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    array-length v2, p1

    .line 54
    const/4 v5, 0x0

    .line 55
    :goto_0
    if-ge v5, v2, :cond_3

    .line 56
    .line 57
    aget-object v6, p1, v5

    .line 58
    .line 59
    const-string v7, "palette: "

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_0

    .line 66
    .line 67
    const/16 v7, 0x9

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v7, ","

    .line 74
    .line 75
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    array-length v7, v6

    .line 80
    new-array v7, v7, [I

    .line 81
    .line 82
    iput-object v7, v1, Lq3/a;->f:[I

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    :goto_1
    array-length v8, v6

    .line 86
    if-ge v7, v8, :cond_2

    .line 87
    .line 88
    iget-object v8, v1, Lq3/a;->f:[I

    .line 89
    .line 90
    aget-object v9, v6, v7

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    const/16 v10, 0x10

    .line 97
    .line 98
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception v9

    .line 104
    const-string v10, "Parsing color failed"

    .line 105
    .line 106
    invoke-static {v10, v9}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    :goto_2
    aput v9, v8, v7

    .line 111
    .line 112
    add-int/2addr v7, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_0
    const-string v7, "size: "

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_2

    .line 121
    .line 122
    const/4 v7, 0x6

    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const-string v8, "x"

    .line 132
    .line 133
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    array-length v8, v7

    .line 138
    const/4 v9, 0x2

    .line 139
    if-eq v8, v9, :cond_1

    .line 140
    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v8, "Ignoring malformed IDX size line: \'"

    .line 144
    .line 145
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v6, "\'"

    .line 152
    .line 153
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v6}, Lu1/a;->p(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_1
    :try_start_1
    aget-object v6, v7, v3

    .line 165
    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    iput v6, v1, Lq3/a;->g:I

    .line 171
    .line 172
    aget-object v6, v7, v0

    .line 173
    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    iput v6, v1, Lq3/a;->h:I

    .line 179
    .line 180
    iput-boolean v0, v1, Lq3/a;->d:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :catch_1
    move-exception v6

    .line 184
    const-string v7, "Parsing IDX failed"

    .line 185
    .line 186
    invoke-static {v7, v6}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    :cond_2
    :goto_3
    add-int/2addr v5, v0

    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_3
    return-void
.end method


# virtual methods
.method public final b([BIILi3/i;Lu1/f;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    add-int v3, v1, p3

    .line 7
    .line 8
    iget-object v4, v0, Lq3/b;->a:Lu1/q;

    .line 9
    .line 10
    move-object/from16 v5, p1

    .line 11
    .line 12
    invoke-virtual {v4, v3, v5}, Lu1/q;->M(I[B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, v1}, Lu1/q;->O(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lq3/b;->d:Ljava/util/zip/Inflater;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/util/zip/Inflater;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lq3/b;->d:Ljava/util/zip/Inflater;

    .line 28
    .line 29
    :cond_0
    iget-object v1, v0, Lq3/b;->d:Ljava/util/zip/Inflater;

    .line 30
    .line 31
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-lez v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Lu1/q;->k()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v5, 0x78

    .line 44
    .line 45
    if-ne v3, v5, :cond_1

    .line 46
    .line 47
    iget-object v3, v0, Lq3/b;->b:Lu1/q;

    .line 48
    .line 49
    invoke-static {v4, v3, v1}, Lu1/f0;->A(Lu1/q;Lu1/q;Ljava/util/zip/Inflater;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, v3, Lu1/q;->a:[B

    .line 56
    .line 57
    iget v3, v3, Lu1/q;->c:I

    .line 58
    .line 59
    invoke-virtual {v4, v3, v1}, Lu1/q;->M(I[B)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v1, v0, Lq3/b;->c:Lq3/a;

    .line 63
    .line 64
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    iput-wide v5, v1, Lq3/a;->b:J

    .line 70
    .line 71
    iput-wide v5, v1, Lq3/a;->c:J

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    iput-boolean v3, v1, Lq3/a;->e:Z

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    iput-object v7, v1, Lq3/a;->i:Landroid/graphics/Rect;

    .line 78
    .line 79
    const/4 v8, -0x1

    .line 80
    iput v8, v1, Lq3/a;->j:I

    .line 81
    .line 82
    iput v8, v1, Lq3/a;->k:I

    .line 83
    .line 84
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const/4 v10, 0x2

    .line 89
    if-lt v9, v10, :cond_16

    .line 90
    .line 91
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eq v11, v9, :cond_2

    .line 96
    .line 97
    goto/16 :goto_12

    .line 98
    .line 99
    :cond_2
    iget-object v9, v1, Lq3/a;->f:[I

    .line 100
    .line 101
    const/4 v11, 0x1

    .line 102
    if-nez v9, :cond_3

    .line 103
    .line 104
    const-string v2, "Skipping SPU (no palette)"

    .line 105
    .line 106
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_b

    .line 110
    .line 111
    :cond_3
    iget-boolean v9, v1, Lq3/a;->d:Z

    .line 112
    .line 113
    if-nez v9, :cond_4

    .line 114
    .line 115
    const-string v2, "Skipping SPU (no plane)"

    .line 116
    .line 117
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_b

    .line 121
    .line 122
    :cond_4
    iget v9, v4, Lu1/q;->b:I

    .line 123
    .line 124
    sub-int/2addr v9, v10

    .line 125
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    add-int/2addr v12, v9

    .line 130
    invoke-virtual {v4, v12}, Lu1/q;->O(I)V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-ge v12, v2, :cond_5

    .line 138
    .line 139
    const/4 v12, 0x0

    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_5
    iget v12, v4, Lu1/q;->b:I

    .line 143
    .line 144
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    mul-int/lit16 v13, v13, 0x2710

    .line 149
    .line 150
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    add-int/2addr v14, v9

    .line 155
    if-eq v14, v12, :cond_6

    .line 156
    .line 157
    iget v12, v4, Lu1/q;->c:I

    .line 158
    .line 159
    if-ge v14, v12, :cond_6

    .line 160
    .line 161
    const/4 v12, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_6
    const/4 v12, 0x0

    .line 164
    :goto_1
    if-eqz v12, :cond_7

    .line 165
    .line 166
    move v15, v14

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    iget v15, v4, Lu1/q;->c:I

    .line 169
    .line 170
    :goto_2
    const/16 v16, 0x1

    .line 171
    .line 172
    :goto_3
    iget v7, v4, Lu1/q;->b:I

    .line 173
    .line 174
    if-ge v7, v15, :cond_e

    .line 175
    .line 176
    if-eqz v16, :cond_e

    .line 177
    .line 178
    int-to-long v5, v13

    .line 179
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    const/16 v8, 0xff

    .line 184
    .line 185
    if-eq v7, v8, :cond_8

    .line 186
    .line 187
    iget-object v8, v1, Lq3/a;->a:[I

    .line 188
    .line 189
    const/16 v16, 0x3

    .line 190
    .line 191
    packed-switch v7, :pswitch_data_0

    .line 192
    .line 193
    .line 194
    const-string v5, "Unrecognized command: "

    .line 195
    .line 196
    invoke-static {v7, v5}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_8
    const/16 v16, 0x0

    .line 200
    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :pswitch_0
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-ge v5, v2, :cond_9

    .line 208
    .line 209
    const-string v5, "Incomplete offsets command"

    .line 210
    .line 211
    invoke-static {v5}, Lu1/a;->p(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    goto :goto_4

    .line 216
    :cond_9
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    iput v5, v1, Lq3/a;->j:I

    .line 221
    .line 222
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    iput v5, v1, Lq3/a;->k:I

    .line 227
    .line 228
    const/4 v5, 0x1

    .line 229
    :goto_4
    move/from16 v16, v5

    .line 230
    .line 231
    goto/16 :goto_9

    .line 232
    .line 233
    :pswitch_1
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    const/4 v6, 0x6

    .line 238
    if-ge v5, v6, :cond_a

    .line 239
    .line 240
    const-string v5, "Incomplete area command"

    .line 241
    .line 242
    invoke-static {v5}, Lu1/a;->p(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_a
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    shl-int/2addr v5, v2

    .line 259
    shr-int/lit8 v8, v6, 0x4

    .line 260
    .line 261
    or-int/2addr v5, v8

    .line 262
    and-int/lit8 v6, v6, 0xf

    .line 263
    .line 264
    shl-int/lit8 v6, v6, 0x8

    .line 265
    .line 266
    or-int/2addr v6, v7

    .line 267
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 276
    .line 277
    .line 278
    move-result v16

    .line 279
    shl-int/2addr v7, v2

    .line 280
    shr-int/lit8 v17, v8, 0x4

    .line 281
    .line 282
    or-int v7, v7, v17

    .line 283
    .line 284
    and-int/lit8 v8, v8, 0xf

    .line 285
    .line 286
    shl-int/lit8 v8, v8, 0x8

    .line 287
    .line 288
    or-int v8, v8, v16

    .line 289
    .line 290
    new-instance v3, Landroid/graphics/Rect;

    .line 291
    .line 292
    add-int/2addr v6, v11

    .line 293
    add-int/2addr v8, v11

    .line 294
    invoke-direct {v3, v5, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 295
    .line 296
    .line 297
    iput-object v3, v1, Lq3/a;->i:Landroid/graphics/Rect;

    .line 298
    .line 299
    :goto_5
    const/4 v3, 0x1

    .line 300
    :goto_6
    move/from16 v16, v3

    .line 301
    .line 302
    goto/16 :goto_9

    .line 303
    .line 304
    :pswitch_2
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-ge v3, v10, :cond_b

    .line 309
    .line 310
    const-string v3, "Incomplete alpha command"

    .line 311
    .line 312
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_7
    const/4 v3, 0x0

    .line 316
    goto :goto_6

    .line 317
    :cond_b
    iget-boolean v3, v1, Lq3/a;->e:Z

    .line 318
    .line 319
    if-nez v3, :cond_c

    .line 320
    .line 321
    const-string v3, "Ignoring alpha command before color command"

    .line 322
    .line 323
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_c
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    aget v6, v8, v16

    .line 336
    .line 337
    shr-int/lit8 v7, v3, 0x4

    .line 338
    .line 339
    invoke-static {v6, v7}, Lq3/a;->c(II)I

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    aput v6, v8, v16

    .line 344
    .line 345
    aget v6, v8, v10

    .line 346
    .line 347
    and-int/lit8 v3, v3, 0xf

    .line 348
    .line 349
    invoke-static {v6, v3}, Lq3/a;->c(II)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    aput v3, v8, v10

    .line 354
    .line 355
    aget v3, v8, v11

    .line 356
    .line 357
    shr-int/lit8 v6, v5, 0x4

    .line 358
    .line 359
    invoke-static {v3, v6}, Lq3/a;->c(II)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    aput v3, v8, v11

    .line 364
    .line 365
    const/4 v3, 0x0

    .line 366
    aget v6, v8, v3

    .line 367
    .line 368
    and-int/lit8 v5, v5, 0xf

    .line 369
    .line 370
    invoke-static {v6, v5}, Lq3/a;->c(II)I

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    aput v5, v8, v3

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :pswitch_3
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-ge v3, v10, :cond_d

    .line 382
    .line 383
    const-string v3, "Incomplete color command"

    .line 384
    .line 385
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_d
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    iget-object v6, v1, Lq3/a;->f:[I

    .line 398
    .line 399
    shr-int/lit8 v7, v3, 0x4

    .line 400
    .line 401
    invoke-static {v7, v6}, Lq3/a;->a(I[I)I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    aput v6, v8, v16

    .line 406
    .line 407
    iget-object v6, v1, Lq3/a;->f:[I

    .line 408
    .line 409
    and-int/lit8 v3, v3, 0xf

    .line 410
    .line 411
    invoke-static {v3, v6}, Lq3/a;->a(I[I)I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    aput v3, v8, v10

    .line 416
    .line 417
    iget-object v3, v1, Lq3/a;->f:[I

    .line 418
    .line 419
    shr-int/lit8 v6, v5, 0x4

    .line 420
    .line 421
    invoke-static {v6, v3}, Lq3/a;->a(I[I)I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    aput v3, v8, v11

    .line 426
    .line 427
    iget-object v3, v1, Lq3/a;->f:[I

    .line 428
    .line 429
    and-int/lit8 v5, v5, 0xf

    .line 430
    .line 431
    invoke-static {v5, v3}, Lq3/a;->a(I[I)I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    const/4 v5, 0x0

    .line 436
    aput v3, v8, v5

    .line 437
    .line 438
    iput-boolean v11, v1, Lq3/a;->e:Z

    .line 439
    .line 440
    goto/16 :goto_5

    .line 441
    .line 442
    :pswitch_4
    iput-wide v5, v1, Lq3/a;->c:J

    .line 443
    .line 444
    :goto_8
    :pswitch_5
    const/16 v16, 0x1

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :pswitch_6
    iput-wide v5, v1, Lq3/a;->b:J

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :goto_9
    const/4 v3, 0x0

    .line 451
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    const/4 v8, -0x1

    .line 457
    goto/16 :goto_3

    .line 458
    .line 459
    :cond_e
    if-eqz v12, :cond_f

    .line 460
    .line 461
    invoke-virtual {v4, v14}, Lu1/q;->O(I)V

    .line 462
    .line 463
    .line 464
    :cond_f
    :goto_a
    if-nez v12, :cond_15

    .line 465
    .line 466
    :goto_b
    iget-object v2, v1, Lq3/a;->f:[I

    .line 467
    .line 468
    if-eqz v2, :cond_11

    .line 469
    .line 470
    iget-boolean v2, v1, Lq3/a;->d:Z

    .line 471
    .line 472
    if-eqz v2, :cond_11

    .line 473
    .line 474
    iget-boolean v2, v1, Lq3/a;->e:Z

    .line 475
    .line 476
    if-eqz v2, :cond_11

    .line 477
    .line 478
    iget-object v2, v1, Lq3/a;->i:Landroid/graphics/Rect;

    .line 479
    .line 480
    if-eqz v2, :cond_11

    .line 481
    .line 482
    iget v3, v1, Lq3/a;->j:I

    .line 483
    .line 484
    const/4 v5, -0x1

    .line 485
    if-eq v3, v5, :cond_11

    .line 486
    .line 487
    iget v3, v1, Lq3/a;->k:I

    .line 488
    .line 489
    if-eq v3, v5, :cond_11

    .line 490
    .line 491
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-lt v2, v10, :cond_11

    .line 496
    .line 497
    iget-object v2, v1, Lq3/a;->i:Landroid/graphics/Rect;

    .line 498
    .line 499
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-ge v2, v10, :cond_10

    .line 504
    .line 505
    goto/16 :goto_c

    .line 506
    .line 507
    :cond_10
    iget-object v2, v1, Lq3/a;->i:Landroid/graphics/Rect;

    .line 508
    .line 509
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    mul-int v5, v5, v3

    .line 518
    .line 519
    new-array v3, v5, [I

    .line 520
    .line 521
    new-instance v5, Lj3/f;

    .line 522
    .line 523
    invoke-direct {v5}, Lj3/f;-><init>()V

    .line 524
    .line 525
    .line 526
    iget v6, v1, Lq3/a;->j:I

    .line 527
    .line 528
    invoke-virtual {v4, v6}, Lu1/q;->O(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v5, v4}, Lj3/f;->l(Lu1/q;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v5, v11, v2, v3}, Lq3/a;->b(Lj3/f;ZLandroid/graphics/Rect;[I)V

    .line 535
    .line 536
    .line 537
    iget v6, v1, Lq3/a;->k:I

    .line 538
    .line 539
    invoke-virtual {v4, v6}, Lu1/q;->O(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5, v4}, Lj3/f;->l(Lu1/q;)V

    .line 543
    .line 544
    .line 545
    const/4 v6, 0x0

    .line 546
    invoke-virtual {v1, v5, v6, v2, v3}, Lq3/a;->b(Lj3/f;ZLandroid/graphics/Rect;[I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 558
    .line 559
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 560
    .line 561
    .line 562
    move-result-object v11

    .line 563
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 564
    .line 565
    int-to-float v3, v3

    .line 566
    iget v4, v1, Lq3/a;->g:I

    .line 567
    .line 568
    int-to-float v4, v4

    .line 569
    div-float v15, v3, v4

    .line 570
    .line 571
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 572
    .line 573
    int-to-float v3, v3

    .line 574
    iget v4, v1, Lq3/a;->h:I

    .line 575
    .line 576
    int-to-float v4, v4

    .line 577
    div-float v12, v3, v4

    .line 578
    .line 579
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    int-to-float v3, v3

    .line 584
    iget v4, v1, Lq3/a;->g:I

    .line 585
    .line 586
    int-to-float v4, v4

    .line 587
    div-float v19, v3, v4

    .line 588
    .line 589
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    int-to-float v2, v2

    .line 594
    iget v3, v1, Lq3/a;->h:I

    .line 595
    .line 596
    int-to-float v3, v3

    .line 597
    div-float v20, v2, v3

    .line 598
    .line 599
    new-instance v2, Lt1/b;

    .line 600
    .line 601
    move-object v7, v2

    .line 602
    const/16 v24, 0x0

    .line 603
    .line 604
    const/16 v25, 0x0

    .line 605
    .line 606
    const/4 v8, 0x0

    .line 607
    const/4 v9, 0x0

    .line 608
    move-object v10, v9

    .line 609
    const/4 v13, 0x0

    .line 610
    const/4 v14, 0x0

    .line 611
    const/16 v16, 0x0

    .line 612
    .line 613
    const/high16 v17, -0x80000000

    .line 614
    .line 615
    move/from16 v23, v17

    .line 616
    .line 617
    const v18, -0x800001

    .line 618
    .line 619
    .line 620
    const/16 v21, 0x0

    .line 621
    .line 622
    const/high16 v22, -0x1000000

    .line 623
    .line 624
    invoke-direct/range {v7 .. v25}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 625
    .line 626
    .line 627
    move-object v7, v2

    .line 628
    goto :goto_d

    .line 629
    :cond_11
    :goto_c
    const/4 v7, 0x0

    .line 630
    :goto_d
    iget-wide v2, v1, Lq3/a;->c:J

    .line 631
    .line 632
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    cmp-long v4, v2, v12

    .line 638
    .line 639
    if-eqz v4, :cond_13

    .line 640
    .line 641
    iget-wide v4, v1, Lq3/a;->b:J

    .line 642
    .line 643
    cmp-long v6, v4, v12

    .line 644
    .line 645
    if-eqz v6, :cond_12

    .line 646
    .line 647
    cmp-long v6, v2, v4

    .line 648
    .line 649
    if-lez v6, :cond_12

    .line 650
    .line 651
    sub-long/2addr v2, v4

    .line 652
    :cond_12
    move-wide v11, v2

    .line 653
    goto :goto_e

    .line 654
    :cond_13
    move-wide v11, v12

    .line 655
    :goto_e
    new-instance v2, Li3/a;

    .line 656
    .line 657
    if-eqz v7, :cond_14

    .line 658
    .line 659
    invoke-static {v7}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    :goto_f
    move-object v13, v3

    .line 664
    goto :goto_10

    .line 665
    :cond_14
    sget-object v3, Lu7/y0;->e:Lu7/y0;

    .line 666
    .line 667
    goto :goto_f

    .line 668
    :goto_10
    iget-wide v9, v1, Lq3/a;->b:J

    .line 669
    .line 670
    move-object v8, v2

    .line 671
    invoke-direct/range {v8 .. v13}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 672
    .line 673
    .line 674
    :goto_11
    move-object/from16 v1, p5

    .line 675
    .line 676
    goto :goto_13

    .line 677
    :cond_15
    const/4 v3, 0x0

    .line 678
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    const/4 v7, 0x0

    .line 684
    const/4 v8, -0x1

    .line 685
    goto/16 :goto_0

    .line 686
    .line 687
    :cond_16
    :goto_12
    sget-object v2, Lq3/b;->e:Li3/a;

    .line 688
    .line 689
    goto :goto_11

    .line 690
    :goto_13
    invoke-interface {v1, v2}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    nop

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    return-void
.end method
