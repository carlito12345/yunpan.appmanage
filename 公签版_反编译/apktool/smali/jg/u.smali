.class public final enum Ljg/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Ljg/u;

.field public static final enum c:Ljg/u;

.field public static final enum d:Ljg/u;

.field public static final enum e:Ljg/u;

.field public static final enum f:Ljg/u;

.field public static final enum g:Ljg/u;

.field public static final enum h:Ljg/u;

.field public static final enum i:Ljg/u;

.field public static final enum j:Ljg/u;

.field public static final enum k:Ljg/u;

.field public static final enum l:Ljg/u;

.field public static final enum m:Ljg/u;

.field public static final enum n:Ljg/u;

.field public static final enum p:Ljg/u;

.field public static final synthetic q:[Ljg/u;


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljg/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [B

    .line 6
    .line 7
    aput-byte v1, v3, v1

    .line 8
    .line 9
    const-string v4, "COPY"

    .line 10
    .line 11
    invoke-direct {v0, v4, v1, v3}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ljg/u;->b:Ljg/u;

    .line 15
    .line 16
    new-instance v3, Ljg/u;

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    new-array v5, v4, [B

    .line 20
    .line 21
    fill-array-data v5, :array_0

    .line 22
    .line 23
    .line 24
    const-string v6, "LZMA"

    .line 25
    .line 26
    invoke-direct {v3, v6, v2, v5}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Ljg/u;->c:Ljg/u;

    .line 30
    .line 31
    new-instance v5, Ljg/u;

    .line 32
    .line 33
    new-array v6, v2, [B

    .line 34
    .line 35
    const/16 v7, 0x21

    .line 36
    .line 37
    aput-byte v7, v6, v1

    .line 38
    .line 39
    const-string v7, "LZMA2"

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    invoke-direct {v5, v7, v8, v6}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 43
    .line 44
    .line 45
    sput-object v5, Ljg/u;->d:Ljg/u;

    .line 46
    .line 47
    new-instance v6, Ljg/u;

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    const/16 v9, 0x8

    .line 51
    .line 52
    new-array v10, v4, [B

    .line 53
    .line 54
    fill-array-data v10, :array_1

    .line 55
    .line 56
    .line 57
    const-string v11, "DEFLATE"

    .line 58
    .line 59
    invoke-direct {v6, v11, v4, v10}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 60
    .line 61
    .line 62
    sput-object v6, Ljg/u;->e:Ljg/u;

    .line 63
    .line 64
    new-instance v10, Ljg/u;

    .line 65
    .line 66
    const/16 v11, 0x9

    .line 67
    .line 68
    new-array v12, v4, [B

    .line 69
    .line 70
    fill-array-data v12, :array_2

    .line 71
    .line 72
    .line 73
    const-string v13, "DEFLATE64"

    .line 74
    .line 75
    invoke-direct {v10, v13, v7, v12}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 76
    .line 77
    .line 78
    sput-object v10, Ljg/u;->f:Ljg/u;

    .line 79
    .line 80
    new-instance v12, Ljg/u;

    .line 81
    .line 82
    new-array v13, v4, [B

    .line 83
    .line 84
    fill-array-data v13, :array_3

    .line 85
    .line 86
    .line 87
    const-string v14, "BZIP2"

    .line 88
    .line 89
    const/4 v15, 0x5

    .line 90
    invoke-direct {v12, v14, v15, v13}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 91
    .line 92
    .line 93
    sput-object v12, Ljg/u;->g:Ljg/u;

    .line 94
    .line 95
    new-instance v13, Ljg/u;

    .line 96
    .line 97
    const/4 v14, 0x6

    .line 98
    const/4 v15, 0x7

    .line 99
    new-array v8, v7, [B

    .line 100
    .line 101
    fill-array-data v8, :array_4

    .line 102
    .line 103
    .line 104
    const-string v1, "AES256SHA256"

    .line 105
    .line 106
    invoke-direct {v13, v1, v14, v8}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 107
    .line 108
    .line 109
    sput-object v13, Ljg/u;->h:Ljg/u;

    .line 110
    .line 111
    new-instance v1, Ljg/u;

    .line 112
    .line 113
    const-string v8, "BCJ_X86_FILTER"

    .line 114
    .line 115
    new-array v14, v7, [B

    .line 116
    .line 117
    fill-array-data v14, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v8, v15, v14}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 121
    .line 122
    .line 123
    sput-object v1, Ljg/u;->i:Ljg/u;

    .line 124
    .line 125
    new-instance v8, Ljg/u;

    .line 126
    .line 127
    const-string v14, "BCJ_PPC_FILTER"

    .line 128
    .line 129
    new-array v15, v7, [B

    .line 130
    .line 131
    fill-array-data v15, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v8, v14, v9, v15}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 135
    .line 136
    .line 137
    sput-object v8, Ljg/u;->j:Ljg/u;

    .line 138
    .line 139
    new-instance v14, Ljg/u;

    .line 140
    .line 141
    const-string v15, "BCJ_IA64_FILTER"

    .line 142
    .line 143
    new-array v9, v7, [B

    .line 144
    .line 145
    fill-array-data v9, :array_7

    .line 146
    .line 147
    .line 148
    invoke-direct {v14, v15, v11, v9}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 149
    .line 150
    .line 151
    sput-object v14, Ljg/u;->k:Ljg/u;

    .line 152
    .line 153
    new-instance v9, Ljg/u;

    .line 154
    .line 155
    new-array v15, v7, [B

    .line 156
    .line 157
    fill-array-data v15, :array_8

    .line 158
    .line 159
    .line 160
    const-string v11, "BCJ_ARM_FILTER"

    .line 161
    .line 162
    const/16 v4, 0xa

    .line 163
    .line 164
    invoke-direct {v9, v11, v4, v15}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 165
    .line 166
    .line 167
    sput-object v9, Ljg/u;->l:Ljg/u;

    .line 168
    .line 169
    new-instance v11, Ljg/u;

    .line 170
    .line 171
    new-array v15, v7, [B

    .line 172
    .line 173
    fill-array-data v15, :array_9

    .line 174
    .line 175
    .line 176
    const-string v4, "BCJ_ARM_THUMB_FILTER"

    .line 177
    .line 178
    const/16 v2, 0xb

    .line 179
    .line 180
    invoke-direct {v11, v4, v2, v15}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 181
    .line 182
    .line 183
    sput-object v11, Ljg/u;->m:Ljg/u;

    .line 184
    .line 185
    new-instance v4, Ljg/u;

    .line 186
    .line 187
    new-array v15, v7, [B

    .line 188
    .line 189
    fill-array-data v15, :array_a

    .line 190
    .line 191
    .line 192
    const-string v2, "BCJ_SPARC_FILTER"

    .line 193
    .line 194
    const/16 v7, 0xc

    .line 195
    .line 196
    invoke-direct {v4, v2, v7, v15}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 197
    .line 198
    .line 199
    sput-object v4, Ljg/u;->n:Ljg/u;

    .line 200
    .line 201
    new-instance v2, Ljg/u;

    .line 202
    .line 203
    const/4 v15, 0x1

    .line 204
    new-array v7, v15, [B

    .line 205
    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    const/16 v17, 0x3

    .line 209
    .line 210
    aput-byte v17, v7, v16

    .line 211
    .line 212
    const-string v15, "DELTA_FILTER"

    .line 213
    .line 214
    move-object/from16 v18, v4

    .line 215
    .line 216
    const/16 v4, 0xd

    .line 217
    .line 218
    invoke-direct {v2, v15, v4, v7}, Ljg/u;-><init>(Ljava/lang/String;I[B)V

    .line 219
    .line 220
    .line 221
    sput-object v2, Ljg/u;->p:Ljg/u;

    .line 222
    .line 223
    const/16 v7, 0xe

    .line 224
    .line 225
    new-array v7, v7, [Ljg/u;

    .line 226
    .line 227
    aput-object v0, v7, v16

    .line 228
    .line 229
    const/4 v0, 0x1

    .line 230
    aput-object v3, v7, v0

    .line 231
    .line 232
    const/4 v0, 0x2

    .line 233
    aput-object v5, v7, v0

    .line 234
    .line 235
    aput-object v6, v7, v17

    .line 236
    .line 237
    const/4 v0, 0x4

    .line 238
    aput-object v10, v7, v0

    .line 239
    .line 240
    const/4 v0, 0x5

    .line 241
    aput-object v12, v7, v0

    .line 242
    .line 243
    const/4 v0, 0x6

    .line 244
    aput-object v13, v7, v0

    .line 245
    .line 246
    const/4 v0, 0x7

    .line 247
    aput-object v1, v7, v0

    .line 248
    .line 249
    const/16 v0, 0x8

    .line 250
    .line 251
    aput-object v8, v7, v0

    .line 252
    .line 253
    const/16 v0, 0x9

    .line 254
    .line 255
    aput-object v14, v7, v0

    .line 256
    .line 257
    const/16 v0, 0xa

    .line 258
    .line 259
    aput-object v9, v7, v0

    .line 260
    .line 261
    const/16 v0, 0xb

    .line 262
    .line 263
    aput-object v11, v7, v0

    .line 264
    .line 265
    const/16 v0, 0xc

    .line 266
    .line 267
    aput-object v18, v7, v0

    .line 268
    .line 269
    aput-object v2, v7, v4

    .line 270
    .line 271
    sput-object v7, Ljg/u;->q:[Ljg/u;

    .line 272
    .line 273
    return-void

    .line 274
    nop

    .line 275
    :array_0
    .array-data 1
        0x3t
        0x1t
        0x1t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_1
    .array-data 1
        0x4t
        0x1t
        0x8t
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_2
    .array-data 1
        0x4t
        0x1t
        0x9t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_3
    .array-data 1
        0x4t
        0x2t
        0x2t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_4
    .array-data 1
        0x6t
        -0xft
        0x7t
        0x1t
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_5
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x3t
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_6
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x5t
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_7
    .array-data 1
        0x3t
        0x3t
        0x4t
        0x1t
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_8
    .array-data 1
        0x3t
        0x3t
        0x5t
        0x1t
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_9
    .array-data 1
        0x3t
        0x3t
        0x7t
        0x1t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_a
    .array-data 1
        0x3t
        0x3t
        0x8t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ljg/u;->a:[B

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljg/u;
    .locals 1

    .line 1
    const-class v0, Ljg/u;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljg/u;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ljg/u;
    .locals 1

    .line 1
    sget-object v0, Ljg/u;->q:[Ljg/u;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljg/u;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljg/u;

    .line 8
    .line 9
    return-object v0
.end method
