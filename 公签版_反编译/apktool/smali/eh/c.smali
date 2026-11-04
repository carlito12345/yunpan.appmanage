.class public final Leh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Leh/c;->a:Ljava/util/regex/Pattern;

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
    return-void
.end method

.method public static a(Ljava/lang/String;Ldh/f;)Ldh/h;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v4, " does not implement the interface org.apache.commons.net.ftp.FTPFileEntryParser."

    .line 6
    .line 7
    sget-object v5, Leh/c;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 24
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Ldh/h;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :catch_0
    move-exception v4

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v4

    .line 38
    goto :goto_0

    .line 39
    :catch_2
    move-exception v7

    .line 40
    goto :goto_1

    .line 41
    :goto_0
    :try_start_2
    new-instance v5, Landroidx/fragment/app/b0;

    .line 42
    .line 43
    const-string v7, "Error initializing parser"

    .line 44
    .line 45
    invoke-direct {v5, v3, v7, v4}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v5

    .line 49
    :catch_3
    nop

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    new-instance v8, Landroidx/fragment/app/b0;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-direct {v8, v3, v4, v7}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v8
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 65
    :cond_0
    :goto_2
    move-object v7, v6

    .line 66
    :goto_3
    if-nez v7, :cond_12

    .line 67
    .line 68
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 69
    .line 70
    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "UNIX_LTRIM"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_1

    .line 81
    .line 82
    new-instance v7, Leh/i;

    .line 83
    .line 84
    invoke-direct {v7, p1, v3}, Leh/i;-><init>(Ldh/f;Z)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_1
    const-string v7, "UNIX"

    .line 90
    .line 91
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    new-instance v7, Leh/i;

    .line 98
    .line 99
    invoke-direct {v7, p1, v2}, Leh/i;-><init>(Ldh/f;Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :cond_2
    const-string v7, "VMS"

    .line 105
    .line 106
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_3

    .line 111
    .line 112
    new-instance v7, Leh/k;

    .line 113
    .line 114
    invoke-direct {v7, p1}, Leh/k;-><init>(Ldh/f;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_3
    const-string v7, "WINDOWS"

    .line 120
    .line 121
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_7

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    iget-object p0, p1, Ldh/f;->a:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    new-instance p0, Leh/g;

    .line 138
    .line 139
    invoke-direct {p0, p1}, Leh/g;-><init>(Ldh/f;)V

    .line 140
    .line 141
    .line 142
    :goto_4
    move-object v7, p0

    .line 143
    goto/16 :goto_8

    .line 144
    .line 145
    :cond_4
    if-eqz p1, :cond_5

    .line 146
    .line 147
    new-instance v6, Ldh/f;

    .line 148
    .line 149
    invoke-direct {v6, p1}, Ldh/f;-><init>(Ldh/f;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    new-instance p0, Leh/a;

    .line 153
    .line 154
    new-instance v0, Leh/g;

    .line 155
    .line 156
    invoke-direct {v0, p1}, Leh/g;-><init>(Ldh/f;)V

    .line 157
    .line 158
    .line 159
    new-instance v4, Leh/i;

    .line 160
    .line 161
    if-eqz v6, :cond_6

    .line 162
    .line 163
    iget-object v7, v6, Ldh/f;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    const/4 v5, 0x0

    .line 174
    :goto_5
    invoke-direct {v4, v6, v5}, Leh/i;-><init>(Ldh/f;Z)V

    .line 175
    .line 176
    .line 177
    new-array v1, v1, [Ldh/h;

    .line 178
    .line 179
    aput-object v0, v1, v2

    .line 180
    .line 181
    aput-object v4, v1, v3

    .line 182
    .line 183
    invoke-direct {p0, v1}, Leh/a;-><init>([Ldh/h;)V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    const-string v7, "OS/2"

    .line 188
    .line 189
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eqz v7, :cond_8

    .line 194
    .line 195
    new-instance v7, Leh/f;

    .line 196
    .line 197
    invoke-direct {v7, p1, v1}, Leh/f;-><init>(Ldh/f;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_8

    .line 201
    .line 202
    :cond_8
    const-string v7, "OS/400"

    .line 203
    .line 204
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_e

    .line 209
    .line 210
    const-string v8, "AS/400"

    .line 211
    .line 212
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_9

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_9
    const-string v0, "MVS"

    .line 220
    .line 221
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    new-instance v7, Leh/e;

    .line 228
    .line 229
    invoke-direct {v7}, Leh/e;-><init>()V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_8

    .line 233
    .line 234
    :cond_a
    const-string v0, "NETWARE"

    .line 235
    .line 236
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_b

    .line 241
    .line 242
    new-instance v7, Leh/f;

    .line 243
    .line 244
    invoke-direct {v7, p1, v3}, Leh/f;-><init>(Ldh/f;I)V

    .line 245
    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_b
    const-string v0, "MACOS PETER"

    .line 249
    .line 250
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_c

    .line 255
    .line 256
    new-instance v7, Leh/f;

    .line 257
    .line 258
    invoke-direct {v7, p1, v2}, Leh/f;-><init>(Ldh/f;I)V

    .line 259
    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_c
    const-string v0, "TYPE: L8"

    .line 263
    .line 264
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_d

    .line 269
    .line 270
    new-instance v7, Leh/i;

    .line 271
    .line 272
    invoke-direct {v7, p1, v2}, Leh/i;-><init>(Ldh/f;Z)V

    .line 273
    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_d
    new-instance p1, Landroidx/fragment/app/b0;

    .line 277
    .line 278
    const-string v0, "Unknown parser type: "

    .line 279
    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-direct {p1, p0, v3}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    throw p1

    .line 288
    :cond_e
    :goto_6
    if-eqz p1, :cond_f

    .line 289
    .line 290
    iget-object p0, p1, Ldh/f;->a:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-eqz p0, :cond_f

    .line 297
    .line 298
    new-instance p0, Leh/f;

    .line 299
    .line 300
    invoke-direct {p0, p1, v0}, Leh/f;-><init>(Ldh/f;I)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_4

    .line 304
    .line 305
    :cond_f
    if-eqz p1, :cond_10

    .line 306
    .line 307
    new-instance v6, Ldh/f;

    .line 308
    .line 309
    invoke-direct {v6, p1}, Ldh/f;-><init>(Ldh/f;)V

    .line 310
    .line 311
    .line 312
    :cond_10
    new-instance p0, Leh/a;

    .line 313
    .line 314
    new-instance v4, Leh/f;

    .line 315
    .line 316
    invoke-direct {v4, p1, v0}, Leh/f;-><init>(Ldh/f;I)V

    .line 317
    .line 318
    .line 319
    new-instance v0, Leh/i;

    .line 320
    .line 321
    if-eqz v6, :cond_11

    .line 322
    .line 323
    iget-object v7, v6, Ldh/f;->a:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_11

    .line 330
    .line 331
    const/4 v5, 0x1

    .line 332
    goto :goto_7

    .line 333
    :cond_11
    const/4 v5, 0x0

    .line 334
    :goto_7
    invoke-direct {v0, v6, v5}, Leh/i;-><init>(Ldh/f;Z)V

    .line 335
    .line 336
    .line 337
    new-array v1, v1, [Ldh/h;

    .line 338
    .line 339
    aput-object v4, v1, v2

    .line 340
    .line 341
    aput-object v0, v1, v3

    .line 342
    .line 343
    invoke-direct {p0, v1}, Leh/a;-><init>([Ldh/h;)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :cond_12
    :goto_8
    instance-of p0, v7, Ldh/a;

    .line 349
    .line 350
    if-eqz p0, :cond_13

    .line 351
    .line 352
    move-object p0, v7

    .line 353
    check-cast p0, Ldh/a;

    .line 354
    .line 355
    invoke-interface {p0, p1}, Ldh/a;->a(Ldh/f;)V

    .line 356
    .line 357
    .line 358
    :cond_13
    return-object v7
.end method
