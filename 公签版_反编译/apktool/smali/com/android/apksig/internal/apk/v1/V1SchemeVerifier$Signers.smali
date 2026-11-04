.class Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signers"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signers;->verify(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static verify(Lcom/android/apksig/util/DataSource;JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    const/4 v10, 0x2

    .line 4
    const/4 v11, 0x0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v12, 0x1

    .line 8
    invoke-direct {v1, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v13, 0x0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const-string v6, ".SF"

    .line 26
    .line 27
    const-string v14, "META-INF/"

    .line 28
    .line 29
    if-eqz v5, :cond_5

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-nez v13, :cond_2

    .line 49
    .line 50
    const-string v8, "META-INF/MANIFEST.MF"

    .line 51
    .line 52
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    move-object v13, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-string v6, ".RSA"

    .line 71
    .line 72
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    const-string v6, ".DSA"

    .line 79
    .line 80
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    const-string v6, ".EC"

    .line 87
    .line 88
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_0

    .line 93
    .line 94
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    if-nez v13, :cond_6

    .line 99
    .line 100
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_MANIFEST:Lcom/android/apksig/ApkVerifier$Issue;

    .line 101
    .line 102
    new-array v2, v11, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    move-object/from16 v9, p0

    .line 109
    .line 110
    move-wide/from16 v7, p1

    .line 111
    .line 112
    :try_start_0
    invoke-static {v9, v13, v7, v8}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    .line 113
    .line 114
    .line 115
    move-result-object v15
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    move-object/from16 v3, p4

    .line 117
    .line 118
    invoke-static {v15, v3, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseManifest([BLjava/util/Set;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Lcom/android/apksig/internal/util/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_7

    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    move-object/from16 v23, v5

    .line 134
    .line 135
    check-cast v23, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    move-object/from16 v24, v3

    .line 142
    .line 143
    check-cast v24, Ljava/util/Map;

    .line 144
    .line 145
    new-instance v5, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_a

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    move-object/from16 v18, v3

    .line 169
    .line 170
    check-cast v18, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 171
    .line 172
    invoke-virtual/range {v18 .. v18}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    const/16 v4, 0x2e

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    const/4 v12, -0x1

    .line 183
    if-eq v4, v12, :cond_9

    .line 184
    .line 185
    new-instance v12, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    move-object/from16 v19, v12

    .line 209
    .line 210
    check-cast v19, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 211
    .line 212
    if-nez v19, :cond_8

    .line 213
    .line 214
    sget-object v12, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING_FILE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 215
    .line 216
    move-object/from16 v25, v1

    .line 217
    .line 218
    new-array v1, v10, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object v3, v1, v11

    .line 221
    .line 222
    const/4 v3, 0x1

    .line 223
    aput-object v4, v1, v3

    .line 224
    .line 225
    invoke-static {v0, v12, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$300(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    move-object/from16 v1, v25

    .line 229
    .line 230
    :goto_2
    const/4 v12, 0x1

    .line 231
    goto :goto_1

    .line 232
    :cond_8
    move-object/from16 v25, v1

    .line 233
    .line 234
    const/16 v1, 0x9

    .line 235
    .line 236
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 241
    .line 242
    invoke-virtual/range {v19 .. v19}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    const/4 v10, 0x0

    .line 247
    invoke-direct {v4, v1, v3, v12, v10}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V

    .line 248
    .line 249
    .line 250
    new-instance v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    .line 251
    .line 252
    const/16 v21, 0x0

    .line 253
    .line 254
    move-object/from16 v16, v3

    .line 255
    .line 256
    move-object/from16 v17, v1

    .line 257
    .line 258
    move-object/from16 v20, v4

    .line 259
    .line 260
    invoke-direct/range {v16 .. v21}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;-><init>(Ljava/lang/String;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-object/from16 v1, v25

    .line 267
    .line 268
    const/4 v10, 0x2

    .line 269
    goto :goto_2

    .line 270
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 271
    .line 272
    const-string v1, "Signature block file name does not contain extension: "

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_b

    .line 287
    .line 288
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    .line 289
    .line 290
    new-array v2, v11, [Ljava/lang/Object;

    .line 291
    .line 292
    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_d

    .line 305
    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    .line 311
    .line 312
    move-object v3, v2

    .line 313
    move-object/from16 v4, p0

    .line 314
    .line 315
    move-object v10, v5

    .line 316
    move-wide/from16 v5, p1

    .line 317
    .line 318
    move/from16 v7, p7

    .line 319
    .line 320
    move/from16 v8, p8

    .line 321
    .line 322
    invoke-virtual/range {v3 .. v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifySigBlockAgainstSigFile(Lcom/android/apksig/util/DataSource;JII)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-static {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_c

    .line 334
    .line 335
    iget-object v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :cond_c
    move-wide/from16 v7, p1

    .line 345
    .line 346
    move-object v5, v10

    .line 347
    goto :goto_3

    .line 348
    :cond_d
    move-object v10, v5

    .line 349
    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_e

    .line 354
    .line 355
    return-void

    .line 356
    :cond_e
    new-instance v12, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_11

    .line 374
    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    .line 380
    .line 381
    move-object v3, v15

    .line 382
    move-object v15, v2

    .line 383
    move-object/from16 v16, v3

    .line 384
    .line 385
    move-object/from16 v17, v23

    .line 386
    .line 387
    move-object/from16 v18, v24

    .line 388
    .line 389
    move-object/from16 v19, p5

    .line 390
    .line 391
    move-object/from16 v20, p6

    .line 392
    .line 393
    move/from16 v21, p7

    .line 394
    .line 395
    move/from16 v22, p8

    .line 396
    .line 397
    invoke-virtual/range {v15 .. v22}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->verifySigFileAgainstManifest([BLcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;II)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->isIgnored()Z

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    if-eqz v4, :cond_f

    .line 405
    .line 406
    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    .line 407
    .line 408
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_f
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-static {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->access$600(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-eqz v4, :cond_10

    .line 425
    .line 426
    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    .line 427
    .line 428
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_10
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    :goto_5
    move-object v15, v3

    .line 440
    goto :goto_4

    .line 441
    :cond_11
    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_12

    .line 446
    .line 447
    return-void

    .line 448
    :cond_12
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_13

    .line 453
    .line 454
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    .line 455
    .line 456
    new-array v2, v11, [Ljava/lang/Object;

    .line 457
    .line 458
    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$200(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :cond_13
    move-object/from16 v1, p0

    .line 463
    .line 464
    move-wide/from16 v2, p1

    .line 465
    .line 466
    move-object/from16 v4, p3

    .line 467
    .line 468
    move-object/from16 v5, v24

    .line 469
    .line 470
    move-object v6, v12

    .line 471
    move/from16 v7, p7

    .line 472
    .line 473
    move/from16 v8, p8

    .line 474
    .line 475
    move-object/from16 v9, p9

    .line 476
    .line 477
    invoke-static/range {v1 .. v9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->access$700(Lcom/android/apksig/util/DataSource;JLjava/util/Collection;Ljava/util/Map;Ljava/util/List;IILcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Ljava/util/Set;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-static/range {p9 .. p9}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$000(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-eqz v2, :cond_14

    .line 486
    .line 487
    return-void

    .line 488
    :cond_14
    new-instance v2, Ljava/util/HashSet;

    .line 489
    .line 490
    iget-object v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    .line 491
    .line 492
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    const/4 v4, 0x2

    .line 497
    mul-int/lit8 v3, v3, 0x2

    .line 498
    .line 499
    const/4 v4, 0x1

    .line 500
    add-int/2addr v3, v4

    .line 501
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v13}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-eqz v4, :cond_15

    .line 520
    .line 521
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    check-cast v4, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    .line 526
    .line 527
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getSignatureBlockEntryName()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getSignatureFileEntryName()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    goto :goto_6

    .line 542
    :cond_15
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    :cond_16
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    if-eqz v4, :cond_17

    .line 551
    .line 552
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 557
    .line 558
    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_16

    .line 567
    .line 568
    const-string v5, "/"

    .line 569
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v5

    .line 574
    if-nez v5, :cond_16

    .line 575
    .line 576
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    if-nez v5, :cond_16

    .line 581
    .line 582
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_UNPROTECTED_ZIP_ENTRY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 583
    .line 584
    const/4 v6, 0x1

    .line 585
    new-array v7, v6, [Ljava/lang/Object;

    .line 586
    .line 587
    aput-object v4, v7, v11

    .line 588
    .line 589
    invoke-static {v0, v5, v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->access$300(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    goto :goto_7

    .line 593
    :cond_17
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-eqz v3, :cond_19

    .line 602
    .line 603
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    check-cast v3, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;

    .line 608
    .line 609
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-eqz v4, :cond_18

    .line 614
    .line 615
    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    .line 616
    .line 617
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    goto :goto_8

    .line 625
    :cond_18
    iget-object v4, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    .line 626
    .line 627
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Signer;->getResult()Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    goto :goto_8

    .line 635
    :cond_19
    const/4 v3, 0x1

    .line 636
    iput-boolean v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->verified:Z

    .line 637
    .line 638
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    move-object v1, v0

    .line 641
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    .line 642
    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string v3, "Malformed ZIP entry: "

    .line 646
    .line 647
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v13}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    .line 663
    .line 664
    goto :goto_a

    .line 665
    :goto_9
    throw v0

    .line 666
    :goto_a
    goto :goto_9
.end method
