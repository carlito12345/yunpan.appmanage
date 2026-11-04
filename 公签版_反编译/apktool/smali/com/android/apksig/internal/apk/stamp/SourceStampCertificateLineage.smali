.class public Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final FIRST_VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static readSigningCertificateLineage(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v1, " when parsing SourceStampCertificateLineage object"

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz p0, :cond_9

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_c

    .line 18
    .line 19
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    const-string v4, "X.509"

    .line 23
    .line 24
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_10

    .line 28
    const/4 v5, 0x0

    .line 29
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 30
    .line 31
    .line 32
    move-result v6
    :try_end_1
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7

    .line 33
    const/4 v7, 0x1

    .line 34
    if-ne v6, v7, :cond_8

    .line 35
    .line 36
    :try_start_2
    new-instance v6, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_7

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 63
    .line 64
    .line 65
    move-result v16

    .line 66
    invoke-static {v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v14
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_7

    .line 74
    const-string v11, " when verifying SourceStampCertificateLineage object"

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v10}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {v12}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    check-cast v12, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v10}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v10}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Ljava/security/spec/AlgorithmParameterSpec;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/apksig/internal/util/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 99
    .line 100
    .line 101
    move-result-object v13
    :try_end_3
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_7

    .line 102
    move-object/from16 v17, v1

    .line 103
    .line 104
    :try_start_4
    invoke-static {v12}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 109
    .line 110
    .line 111
    if-eqz v10, :cond_1

    .line 112
    .line 113
    invoke-virtual {v1, v10}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :goto_1
    move-object v1, v0

    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :catch_1
    move-exception v0

    .line 122
    :goto_2
    move-object v1, v0

    .line 123
    move-object/from16 v4, v17

    .line 124
    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :catch_2
    move-exception v0

    .line 128
    goto :goto_2

    .line 129
    :catch_3
    move-exception v0

    .line 130
    goto :goto_2

    .line 131
    :catch_4
    move-exception v0

    .line 132
    goto :goto_2

    .line 133
    :catch_5
    move-exception v0

    .line 134
    :goto_3
    move-object v1, v0

    .line 135
    goto/16 :goto_b

    .line 136
    .line 137
    :catch_6
    move-exception v0

    .line 138
    goto :goto_3

    .line 139
    :cond_1
    :goto_4
    invoke-virtual {v1, v9}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v14}, Ljava/security/Signature;->verify([B)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "Unable to verify signature of certificate #"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v3, " using "

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v1

    .line 183
    :catch_7
    move-exception v0

    .line 184
    move-object/from16 v17, v1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catch_8
    move-exception v0

    .line 188
    :goto_5
    move-object/from16 v17, v1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catch_9
    move-exception v0

    .line 192
    goto :goto_5

    .line 193
    :catch_a
    move-exception v0

    .line 194
    goto :goto_5

    .line 195
    :catch_b
    move-exception v0

    .line 196
    goto :goto_5

    .line 197
    :cond_3
    move-object/from16 v17, v1

    .line 198
    .line 199
    :goto_6
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 200
    .line 201
    .line 202
    invoke-static {v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v3, :cond_5

    .line 211
    .line 212
    if-ne v7, v9, :cond_4

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "Signing algorithm ID mismatch for certificate #"

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v1

    .line 241
    :cond_5
    :goto_7
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 242
    .line 243
    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 251
    .line 252
    new-instance v7, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    .line 253
    .line 254
    invoke-direct {v7, v3, v1}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_6

    .line 262
    .line 263
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    new-instance v1, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;

    .line 267
    .line 268
    invoke-static {v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-static/range {v16 .. v16}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    move-object v10, v1

    .line 277
    move-object v11, v7

    .line 278
    invoke-direct/range {v10 .. v15}, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;-><init>(Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/SignatureAlgorithm;Lcom/android/apksig/internal/apk/SignatureAlgorithm;[BI)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-object v3, v7

    .line 285
    move/from16 v7, v16

    .line 286
    .line 287
    move-object/from16 v1, v17

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v3, "Encountered duplicate entries in SigningCertificateLineage at certificate #"

    .line 299
    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v3, ".  All signing certificates should be unique"

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v1

    .line 319
    :cond_7
    return-object v2

    .line 320
    :cond_8
    move-object/from16 v17, v1

    .line 321
    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 323
    .line 324
    const-string v2, "Encoded SigningCertificateLineage has a version different than any of which we are aware"

    .line 325
    .line 326
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v1
    :try_end_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 330
    :goto_8
    new-instance v2, Ljava/lang/SecurityException;

    .line 331
    .line 332
    const-string v3, "Failed to decode certificate #"

    .line 333
    .line 334
    move-object/from16 v4, v17

    .line 335
    .line 336
    invoke-static {v3, v5, v4}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    throw v2

    .line 344
    :catch_c
    move-exception v0

    .line 345
    :goto_9
    move-object v4, v1

    .line 346
    move-object v1, v0

    .line 347
    goto :goto_a

    .line 348
    :catch_d
    move-exception v0

    .line 349
    goto :goto_9

    .line 350
    :catch_e
    move-exception v0

    .line 351
    goto :goto_9

    .line 352
    :catch_f
    move-exception v0

    .line 353
    goto :goto_9

    .line 354
    :goto_a
    new-instance v2, Ljava/lang/SecurityException;

    .line 355
    .line 356
    const-string v3, "Failed to verify signature over signed data for certificate #"

    .line 357
    .line 358
    invoke-static {v3, v5, v4}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    throw v2

    .line 366
    :goto_b
    new-instance v2, Ljava/io/IOException;

    .line 367
    .line 368
    const-string v3, "Failed to parse SourceStampCertificateLineage object"

    .line 369
    .line 370
    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    throw v2

    .line 374
    :catch_10
    move-exception v0

    .line 375
    move-object v1, v0

    .line 376
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 377
    .line 378
    const-string v3, "Failed to obtain X.509 CertificateFactory"

    .line 379
    .line 380
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .line 382
    .line 383
    throw v2

    .line 384
    :cond_9
    :goto_c
    return-object v3
.end method
