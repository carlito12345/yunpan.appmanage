.class public Lio/github/muntashirakon/adb/LocalServices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/LocalServices$Services;
    }
.end annotation


# static fields
.field public static final BACKUP:I = 0xe

.field public static final CONNECT_JDWP:I = 0xa

.field public static final FILE:I = 0x3

.field public static final FRAMEBUFFER:I = 0x9

.field public static final LOCAL_UNIX_SOCKET:I = 0x5

.field public static final LOCAL_UNIX_SOCKET_ABSTRACT:I = 0x7

.field public static final LOCAL_UNIX_SOCKET_FILE_SYSTEM:I = 0x8

.field public static final LOCAL_UNIX_SOCKET_RESERVED:I = 0x6

.field public static final REMOUNT:I = 0x2

.field public static final RESTORE:I = 0xf

.field public static final REVERSE:I = 0xd

.field static final SERVICE_FIRST:I = 0x1

.field static final SERVICE_LAST:I = 0xf

.field public static final SHELL:I = 0x1

.field public static final SYNC:I = 0xc

.field public static final TCP_CONNECT:I = 0x4

.field public static final TRACK_JDWP:I = 0xb


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

.method public static varargs getDestination(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lio/github/muntashirakon/adb/LocalServices;->getServiceName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, " "

    .line 11
    .line 12
    const-string v2, " supplied."

    .line 13
    .line 14
    const-string v3, "Service expects exactly one argument, "

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :pswitch_0
    array-length p0, p1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p1, "At least one package must be specified or use -shared/-all."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :pswitch_1
    array-length p0, p1

    .line 37
    if-eqz p0, :cond_7

    .line 38
    .line 39
    array-length p0, p1

    .line 40
    if-ne p0, v4, :cond_6

    .line 41
    .line 42
    aget-object p0, p1, v5

    .line 43
    .line 44
    if-eqz p0, :cond_5

    .line 45
    .line 46
    const-string v0, "list-forward"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_4

    .line 53
    .line 54
    const-string p0, "killforward-all"

    .line 55
    .line 56
    aget-object v0, p1, v5

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    aget-object p0, p1, v5

    .line 66
    .line 67
    const-string v0, "forward:"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    aget-object p0, p1, v5

    .line 76
    .line 77
    const-string v0, "killforward:"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string p1, "Invalid forward command."

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    :goto_0
    aget-object p0, p1, v5

    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_4
    :goto_1
    aget-object p0, p1, v5

    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string p1, "Forward command is empty"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    array-length p1, p1

    .line 124
    invoke-static {v0, p1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string p1, "Forward command must be specified."

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :pswitch_2
    array-length p0, p1

    .line 141
    if-eqz p0, :cond_9

    .line 142
    .line 143
    array-length p0, p1

    .line 144
    if-ne p0, v4, :cond_8

    .line 145
    .line 146
    aget-object p0, p1, v5

    .line 147
    .line 148
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    array-length p1, p1

    .line 164
    invoke-static {v0, p1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string p1, "PID must be specified."

    .line 175
    .line 176
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :pswitch_3
    array-length p0, p1

    .line 181
    if-nez p0, :cond_a

    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string p1, "Service expects no arguments."

    .line 188
    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :pswitch_4
    array-length p0, p1

    .line 194
    if-eqz p0, :cond_c

    .line 195
    .line 196
    array-length p0, p1

    .line 197
    if-ne p0, v4, :cond_b

    .line 198
    .line 199
    aget-object p0, p1, v5

    .line 200
    .line 201
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    array-length p1, p1

    .line 217
    invoke-static {v0, p1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p0

    .line 225
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 226
    .line 227
    const-string p1, "Path must be specified."

    .line 228
    .line 229
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p0

    .line 233
    :pswitch_5
    array-length p0, p1

    .line 234
    if-eqz p0, :cond_f

    .line 235
    .line 236
    array-length p0, p1

    .line 237
    if-ne p0, v4, :cond_d

    .line 238
    .line 239
    aget-object p0, p1, v5

    .line 240
    .line 241
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_d
    array-length p0, p1

    .line 247
    const/4 v0, 0x2

    .line 248
    if-ne p0, v0, :cond_e

    .line 249
    .line 250
    aget-object p0, p1, v5

    .line 251
    .line 252
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const/16 p0, 0x3a

    .line 259
    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    aget-object p0, p1, v4

    .line 264
    .line 265
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 273
    .line 274
    const-string p1, "Invalid number of arguments supplied."

    .line 275
    .line 276
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 281
    .line 282
    const-string p1, "Port number must be specified."

    .line 283
    .line 284
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0

    .line 288
    :pswitch_6
    array-length p0, p1

    .line 289
    if-eqz p0, :cond_11

    .line 290
    .line 291
    array-length p0, p1

    .line 292
    if-ne p0, v4, :cond_10

    .line 293
    .line 294
    aget-object p0, p1, v5

    .line 295
    .line 296
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    array-length p1, p1

    .line 311
    invoke-static {v0, p1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p0

    .line 319
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 320
    .line 321
    const-string p1, "File name must be specified."

    .line 322
    .line 323
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p0

    .line 327
    :goto_2
    :pswitch_7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :pswitch_8
    array-length p0, p1

    .line 336
    :goto_3
    if-ge v5, p0, :cond_14

    .line 337
    .line 338
    aget-object v2, p1, v5

    .line 339
    .line 340
    const-string v3, "\""

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-nez v4, :cond_13

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_12

    .line 353
    .line 354
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 371
    .line 372
    const-string p1, "Arguments for inline shell cannot contain double quotations."

    .line 373
    .line 374
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw p0

    .line 378
    :cond_14
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getServiceName(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "Invalid service: "

    .line 7
    .line 8
    invoke-static {p0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    const-string p0, "restore:"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    const-string p0, "backup:"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    const-string p0, "reverse:"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    const-string p0, "sync:"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    const-string p0, "track-jdwp"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_5
    const-string p0, "jdwp:"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_6
    const-string p0, "framebuffer:"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_7
    const-string p0, "localfilesystem:"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_8
    const-string p0, "localabstract:"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_9
    const-string p0, "localreserved:"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_a
    const-string p0, "local:"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_b
    const-string p0, "tcp:"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_c
    const-string p0, "dev:"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_d
    const-string p0, "remount:"

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_e
    const-string p0, "shell:"

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
