.class public Lorg/bouncycastle/asn1/util/ASN1Dump;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SAMPLE_SIZE:I = 0x20

.field private static final TAB:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Null;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p0, "NULL"

    .line 13
    .line 14
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    goto/16 :goto_11

    .line 21
    .line 22
    :cond_0
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "    "

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    instance-of v1, p2, Lorg/bouncycastle/asn1/BERSequence;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "BER Sequence"

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERSequence;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string v1, "DER Sequence"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "Sequence"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 53
    .line 54
    invoke-static {p0, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    :goto_2
    if-ge v2, v0, :cond_25

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {p0, p1, v1, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Set;

    .line 79
    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    instance-of v1, p2, Lorg/bouncycastle/asn1/BERSet;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const-string v1, "BER Set"

    .line 87
    .line 88
    :goto_3
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERSet;

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const-string v1, "DER Set"

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const-string v1, "Set"

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :goto_4
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Set;

    .line 106
    .line 107
    invoke-static {p0, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_5
    if-ge v2, v0, :cond_25

    .line 116
    .line 117
    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {p0, p1, v1, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 132
    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    instance-of v1, p2, Lorg/bouncycastle/asn1/BERTaggedObject;

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    const-string v1, "BER Tagged "

    .line 140
    .line 141
    :goto_6
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_7
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    const-string v1, "DER Tagged "

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_8
    const-string v1, "Tagged "

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :goto_7
    check-cast p2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 156
    .line 157
    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    const-string v1, " IMPLICIT"

    .line 171
    .line 172
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    .line 174
    .line 175
    :cond_9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_11

    .line 205
    .line 206
    :cond_a
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 207
    .line 208
    const-string v2, ")"

    .line 209
    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string p1, "ObjectIdentifier("

    .line 215
    .line 216
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    check-cast p2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 220
    .line 221
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :goto_9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .line 240
    .line 241
    goto/16 :goto_11

    .line 242
    .line 243
    :cond_b
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 244
    .line 245
    if-eqz v1, :cond_c

    .line 246
    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string p1, "RelativeOID("

    .line 250
    .line 251
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    check-cast p2, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 255
    .line 256
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    goto :goto_8

    .line 261
    :cond_c
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 262
    .line 263
    if-eqz v1, :cond_d

    .line 264
    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string p1, "Boolean("

    .line 268
    .line 269
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 273
    .line 274
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_d
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 283
    .line 284
    if-eqz v1, :cond_e

    .line 285
    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string p1, "Integer("

    .line 289
    .line 290
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 294
    .line 295
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_e
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 304
    .line 305
    const-string v4, "]"

    .line 306
    .line 307
    if-eqz v1, :cond_10

    .line 308
    .line 309
    move-object v1, p2

    .line 310
    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 311
    .line 312
    instance-of p2, p2, Lorg/bouncycastle/asn1/BEROctetString;

    .line 313
    .line 314
    if-eqz p2, :cond_f

    .line 315
    .line 316
    const-string p2, "BER Constructed Octet String["

    .line 317
    .line 318
    :goto_c
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_f
    const-string p2, "DER Octet String["

    .line 323
    .line 324
    goto :goto_c

    .line 325
    :goto_d
    new-instance p2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctetsLength()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    .line 349
    .line 350
    if-eqz p1, :cond_25

    .line 351
    .line 352
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-static {p3, p0, p1}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_11

    .line 360
    .line 361
    :cond_10
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1BitString;

    .line 362
    .line 363
    if-eqz v1, :cond_13

    .line 364
    .line 365
    check-cast p2, Lorg/bouncycastle/asn1/ASN1BitString;

    .line 366
    .line 367
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERBitString;

    .line 368
    .line 369
    if-eqz v1, :cond_11

    .line 370
    .line 371
    const-string v1, "DER Bit String["

    .line 372
    .line 373
    :goto_e
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    .line 375
    .line 376
    goto :goto_f

    .line 377
    :cond_11
    instance-of v1, p2, Lorg/bouncycastle/asn1/DLBitString;

    .line 378
    .line 379
    if-eqz v1, :cond_12

    .line 380
    .line 381
    const-string v1, "DL Bit String["

    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_12
    const-string v1, "BER Bit String["

    .line 385
    .line 386
    goto :goto_e

    .line 387
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytesLength()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v2, ", "

    .line 400
    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    .line 423
    .line 424
    if-eqz p1, :cond_25

    .line 425
    .line 426
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-static {p3, p0, p1}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_11

    .line 434
    .line 435
    :cond_13
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 436
    .line 437
    const-string v4, ") "

    .line 438
    .line 439
    if-eqz v1, :cond_14

    .line 440
    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    const-string p1, "IA5String("

    .line 444
    .line 445
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    check-cast p2, Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 449
    .line 450
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    :goto_10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    goto/16 :goto_a

    .line 461
    .line 462
    :cond_14
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 463
    .line 464
    if-eqz v1, :cond_15

    .line 465
    .line 466
    new-instance p0, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string p1, "UTF8String("

    .line 469
    .line 470
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    check-cast p2, Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 474
    .line 475
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    goto :goto_10

    .line 480
    :cond_15
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1NumericString;

    .line 481
    .line 482
    if-eqz v1, :cond_16

    .line 483
    .line 484
    new-instance p0, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    const-string p1, "NumericString("

    .line 487
    .line 488
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    check-cast p2, Lorg/bouncycastle/asn1/ASN1NumericString;

    .line 492
    .line 493
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1NumericString;->getString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    goto :goto_10

    .line 498
    :cond_16
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 499
    .line 500
    if-eqz v1, :cond_17

    .line 501
    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    const-string p1, "PrintableString("

    .line 505
    .line 506
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    check-cast p2, Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 510
    .line 511
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    goto :goto_10

    .line 516
    :cond_17
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1VisibleString;

    .line 517
    .line 518
    if-eqz v1, :cond_18

    .line 519
    .line 520
    new-instance p0, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string p1, "VisibleString("

    .line 523
    .line 524
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    check-cast p2, Lorg/bouncycastle/asn1/ASN1VisibleString;

    .line 528
    .line 529
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1VisibleString;->getString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    goto :goto_10

    .line 534
    :cond_18
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 535
    .line 536
    if-eqz v1, :cond_19

    .line 537
    .line 538
    new-instance p0, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    const-string p1, "BMPString("

    .line 541
    .line 542
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    check-cast p2, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 546
    .line 547
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    goto :goto_10

    .line 552
    :cond_19
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1T61String;

    .line 553
    .line 554
    if-eqz v1, :cond_1a

    .line 555
    .line 556
    new-instance p0, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string p1, "T61String("

    .line 559
    .line 560
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    check-cast p2, Lorg/bouncycastle/asn1/ASN1T61String;

    .line 564
    .line 565
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1T61String;->getString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    goto :goto_10

    .line 570
    :cond_1a
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 571
    .line 572
    if-eqz v1, :cond_1b

    .line 573
    .line 574
    new-instance p0, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string p1, "GraphicString("

    .line 577
    .line 578
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    check-cast p2, Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 582
    .line 583
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1GraphicString;->getString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    goto/16 :goto_10

    .line 588
    .line 589
    :cond_1b
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1VideotexString;

    .line 590
    .line 591
    if-eqz v1, :cond_1c

    .line 592
    .line 593
    new-instance p0, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    const-string p1, "VideotexString("

    .line 596
    .line 597
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    check-cast p2, Lorg/bouncycastle/asn1/ASN1VideotexString;

    .line 601
    .line 602
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1VideotexString;->getString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    goto/16 :goto_10

    .line 607
    .line 608
    :cond_1c
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 609
    .line 610
    if-eqz v1, :cond_1d

    .line 611
    .line 612
    new-instance p0, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string p1, "UTCTime("

    .line 615
    .line 616
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    check-cast p2, Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 620
    .line 621
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    goto/16 :goto_10

    .line 626
    .line 627
    :cond_1d
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 628
    .line 629
    if-eqz v1, :cond_1e

    .line 630
    .line 631
    new-instance p0, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    const-string p1, "GeneralizedTime("

    .line 634
    .line 635
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    check-cast p2, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 639
    .line 640
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    goto/16 :goto_10

    .line 645
    .line 646
    :cond_1e
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 647
    .line 648
    if-eqz v1, :cond_1f

    .line 649
    .line 650
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 651
    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string p1, "DER Enumerated("

    .line 655
    .line 656
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    goto/16 :goto_b

    .line 664
    .line 665
    :cond_1f
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 666
    .line 667
    if-eqz v1, :cond_20

    .line 668
    .line 669
    check-cast p2, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 670
    .line 671
    new-instance p0, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string p1, "ObjectDescriptor("

    .line 674
    .line 675
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->getBaseGraphicString()Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1GraphicString;->getString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object p1

    .line 686
    goto/16 :goto_10

    .line 687
    .line 688
    :cond_20
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1External;

    .line 689
    .line 690
    if-eqz v1, :cond_24

    .line 691
    .line 692
    check-cast p2, Lorg/bouncycastle/asn1/ASN1External;

    .line 693
    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    const-string v2, "External "

    .line 697
    .line 698
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    .line 710
    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p0

    .line 726
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDirectReference()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    if-eqz v1, :cond_21

    .line 731
    .line 732
    const-string v1, "Direct Reference: "

    .line 733
    .line 734
    invoke-static {p0, v1}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDirectReference()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    .line 758
    .line 759
    :cond_21
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getIndirectReference()Lorg/bouncycastle/asn1/ASN1Integer;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    if-eqz v1, :cond_22

    .line 764
    .line 765
    const-string v1, "Indirect Reference: "

    .line 766
    .line 767
    invoke-static {p0, v1}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getIndirectReference()Lorg/bouncycastle/asn1/ASN1Integer;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    .line 791
    .line 792
    :cond_22
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDataValueDescriptor()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    if-eqz v1, :cond_23

    .line 797
    .line 798
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDataValueDescriptor()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-static {p0, p1, v1, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 803
    .line 804
    .line 805
    :cond_23
    const-string v1, "Encoding: "

    .line 806
    .line 807
    invoke-static {p0, v1}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getEncoding()I

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    .line 827
    .line 828
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getExternalContent()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 829
    .line 830
    .line 831
    move-result-object p2

    .line 832
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    .line 834
    .line 835
    goto :goto_11

    .line 836
    :catchall_0
    move-exception p0

    .line 837
    throw p0

    .line 838
    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 839
    .line 840
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .line 842
    .line 843
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object p1

    .line 847
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    goto/16 :goto_a

    .line 851
    .line 852
    :cond_25
    :goto_11
    return-void
.end method

.method private static appendAscString(Ljava/lang/StringBuffer;[BII)V
    .locals 3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-eq v0, v1, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_0

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static dumpAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    .line 2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-static {v1, p1, p0, v0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown object type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dumpBinaryDataAsString(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "    "

    .line 11
    .line 12
    invoke-static {p1, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p2

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    array-length v3, p2

    .line 21
    sub-int/2addr v3, v2

    .line 22
    const/16 v4, 0x20

    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v2, v3}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    move v5, v3

    .line 39
    :goto_1
    if-ge v5, v4, :cond_1

    .line 40
    .line 41
    const-string v6, "  "

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p2, v2, v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->appendAscString(Ljava/lang/StringBuffer;[BII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x20

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method
