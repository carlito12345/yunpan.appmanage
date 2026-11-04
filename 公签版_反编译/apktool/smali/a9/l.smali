.class public final La9/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/Hashtable;

.field public static final f:Lgf/g;


# instance fields
.field public final a:Lm7/e;

.field public final b:Ljava/util/Vector;

.field public c:La9/j;

.field public d:La9/y;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "6"

    .line 2
    .line 3
    const-string v1, "jsch.lang"

    .line 4
    .line 5
    const-string v2, "jsch.compression"

    .line 6
    .line 7
    const-string v3, "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1"

    .line 8
    .line 9
    const-string v4, "jsch.mac"

    .line 10
    .line 11
    const-string v5, "aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm@openssh.com,aes256-gcm@openssh.com"

    .line 12
    .line 13
    const-string v6, "jsch.cipher"

    .line 14
    .line 15
    const-string v7, "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256"

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    const-string v9, "none"

    .line 20
    .line 21
    const-string v10, "no"

    .line 22
    .line 23
    const-string v11, "yes"

    .line 24
    .line 25
    new-instance v12, Ljava/util/Hashtable;

    .line 26
    .line 27
    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 31
    .line 32
    const-string v13, "jsch.kex"

    .line 33
    .line 34
    const-string v14, "curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256"

    .line 35
    .line 36
    sget-object v15, La9/h0;->a:[B

    .line 37
    .line 38
    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    const-string v13, "kex"

    .line 43
    .line 44
    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 48
    .line 49
    const-string v13, "jsch.server_host_key"

    .line 50
    .line 51
    :try_start_1
    invoke-static {v13, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-object v13, v7

    .line 57
    :goto_0
    const-string v14, "server_host_key"

    .line 58
    .line 59
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 63
    .line 64
    const-string v13, "jsch.prefer_known_host_key_types"

    .line 65
    .line 66
    :try_start_2
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    goto :goto_1

    .line 71
    :catch_2
    move-object v13, v11

    .line 72
    :goto_1
    const-string v14, "prefer_known_host_key_types"

    .line 73
    .line 74
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 78
    .line 79
    const-string v13, "jsch.enable_strict_kex"

    .line 80
    .line 81
    :try_start_3
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 85
    goto :goto_2

    .line 86
    :catch_3
    move-object v13, v11

    .line 87
    :goto_2
    const-string v14, "enable_strict_kex"

    .line 88
    .line 89
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 93
    .line 94
    const-string v13, "jsch.require_strict_kex"

    .line 95
    .line 96
    :try_start_4
    invoke-static {v13, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .line 100
    goto :goto_3

    .line 101
    :catch_4
    move-object v13, v10

    .line 102
    :goto_3
    const-string v14, "require_strict_kex"

    .line 103
    .line 104
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 108
    .line 109
    const-string v13, "jsch.enable_server_sig_algs"

    .line 110
    .line 111
    :try_start_5
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v13
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    .line 115
    goto :goto_4

    .line 116
    :catch_5
    move-object v13, v11

    .line 117
    :goto_4
    const-string v14, "enable_server_sig_algs"

    .line 118
    .line 119
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 123
    .line 124
    const-string v13, "jsch.enable_ext_info_in_auth"

    .line 125
    .line 126
    :try_start_6
    invoke-static {v13, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_6

    .line 130
    goto :goto_5

    .line 131
    :catch_6
    move-object v13, v11

    .line 132
    :goto_5
    const-string v14, "enable_ext_info_in_auth"

    .line 133
    .line 134
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 138
    .line 139
    :try_start_7
    invoke-static {v6, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v13
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_7

    .line 143
    goto :goto_6

    .line 144
    :catch_7
    move-object v13, v5

    .line 145
    :goto_6
    const-string v14, "cipher.s2c"

    .line 146
    .line 147
    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    sget-object v12, La9/l;->e:Ljava/util/Hashtable;

    .line 151
    .line 152
    :try_start_8
    invoke-static {v6, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_8

    .line 156
    :catch_8
    const-string v6, "cipher.c2s"

    .line 157
    .line 158
    invoke-virtual {v12, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    sget-object v5, La9/l;->e:Ljava/util/Hashtable;

    .line 162
    .line 163
    :try_start_9
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_9

    .line 167
    goto :goto_7

    .line 168
    :catch_9
    move-object v6, v3

    .line 169
    :goto_7
    const-string v12, "mac.s2c"

    .line 170
    .line 171
    invoke-virtual {v5, v12, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    sget-object v5, La9/l;->e:Ljava/util/Hashtable;

    .line 175
    .line 176
    :try_start_a
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_a

    .line 180
    :catch_a
    const-string v4, "mac.c2s"

    .line 181
    .line 182
    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    sget-object v3, La9/l;->e:Ljava/util/Hashtable;

    .line 186
    .line 187
    :try_start_b
    invoke-static {v2, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_b

    .line 191
    goto :goto_8

    .line 192
    :catch_b
    move-object v4, v9

    .line 193
    :goto_8
    const-string v5, "compression.s2c"

    .line 194
    .line 195
    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    sget-object v3, La9/l;->e:Ljava/util/Hashtable;

    .line 199
    .line 200
    :try_start_c
    invoke-static {v2, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_c

    .line 204
    goto :goto_9

    .line 205
    :catch_c
    move-object v2, v9

    .line 206
    :goto_9
    const-string v4, "compression.c2s"

    .line 207
    .line 208
    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    sget-object v2, La9/l;->e:Ljava/util/Hashtable;

    .line 212
    .line 213
    :try_start_d
    invoke-static {v1, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_d

    .line 217
    goto :goto_a

    .line 218
    :catch_d
    move-object v3, v8

    .line 219
    :goto_a
    const-string v4, "lang.s2c"

    .line 220
    .line 221
    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    sget-object v2, La9/l;->e:Ljava/util/Hashtable;

    .line 225
    .line 226
    :try_start_e
    invoke-static {v1, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_e

    .line 230
    goto :goto_b

    .line 231
    :catch_e
    move-object v1, v8

    .line 232
    :goto_b
    const-string v3, "lang.c2s"

    .line 233
    .line 234
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 238
    .line 239
    const-string v2, "jsch.dhgex_min"

    .line 240
    .line 241
    const-string v3, "2048"

    .line 242
    .line 243
    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_f

    .line 247
    :catch_f
    const-string v2, "dhgex_min"

    .line 248
    .line 249
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 253
    .line 254
    const-string v2, "jsch.dhgex_max"

    .line 255
    .line 256
    const-string v3, "8192"

    .line 257
    .line 258
    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_10

    .line 262
    :catch_10
    const-string v2, "dhgex_max"

    .line 263
    .line 264
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 268
    .line 269
    const-string v2, "jsch.dhgex_preferred"

    .line 270
    .line 271
    const-string v3, "3072"

    .line 272
    .line 273
    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_11

    .line 277
    :catch_11
    const-string v2, "dhgex_preferred"

    .line 278
    .line 279
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 283
    .line 284
    const-string v2, "jsch.compression_level"

    .line 285
    .line 286
    :try_start_12
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_12

    .line 290
    goto :goto_c

    .line 291
    :catch_12
    move-object v2, v0

    .line 292
    :goto_c
    const-string v3, "compression_level"

    .line 293
    .line 294
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 298
    .line 299
    const-string v2, "diffie-hellman-group-exchange-sha1"

    .line 300
    .line 301
    const-string v3, "com.jcraft.jsch.DHGEX1"

    .line 302
    .line 303
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const-string v2, "diffie-hellman-group1-sha1"

    .line 307
    .line 308
    const-string v3, "com.jcraft.jsch.DHG1"

    .line 309
    .line 310
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    const-string v2, "diffie-hellman-group14-sha1"

    .line 314
    .line 315
    const-string v3, "com.jcraft.jsch.DHG14"

    .line 316
    .line 317
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    const-string v2, "diffie-hellman-group-exchange-sha256"

    .line 321
    .line 322
    const-string v3, "com.jcraft.jsch.DHGEX256"

    .line 323
    .line 324
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    const-string v2, "diffie-hellman-group-exchange-sha224@ssh.com"

    .line 328
    .line 329
    const-string v3, "com.jcraft.jsch.DHGEX224"

    .line 330
    .line 331
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    const-string v2, "diffie-hellman-group-exchange-sha384@ssh.com"

    .line 335
    .line 336
    const-string v3, "com.jcraft.jsch.DHGEX384"

    .line 337
    .line 338
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const-string v2, "diffie-hellman-group-exchange-sha512@ssh.com"

    .line 342
    .line 343
    const-string v3, "com.jcraft.jsch.DHGEX512"

    .line 344
    .line 345
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const-string v2, "diffie-hellman-group14-sha256"

    .line 349
    .line 350
    const-string v3, "com.jcraft.jsch.DHG14256"

    .line 351
    .line 352
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const-string v2, "diffie-hellman-group15-sha512"

    .line 356
    .line 357
    const-string v4, "com.jcraft.jsch.DHG15"

    .line 358
    .line 359
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    const-string v2, "diffie-hellman-group16-sha512"

    .line 363
    .line 364
    const-string v4, "com.jcraft.jsch.DHG16"

    .line 365
    .line 366
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    const-string v2, "diffie-hellman-group17-sha512"

    .line 370
    .line 371
    const-string v5, "com.jcraft.jsch.DHG17"

    .line 372
    .line 373
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    const-string v2, "diffie-hellman-group18-sha512"

    .line 377
    .line 378
    const-string v5, "com.jcraft.jsch.DHG18"

    .line 379
    .line 380
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    const-string v2, "diffie-hellman-group14-sha256@ssh.com"

    .line 384
    .line 385
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    const-string v2, "diffie-hellman-group14-sha224@ssh.com"

    .line 389
    .line 390
    const-string v3, "com.jcraft.jsch.DHG14224"

    .line 391
    .line 392
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    const-string v2, "diffie-hellman-group15-sha256@ssh.com"

    .line 396
    .line 397
    const-string v3, "com.jcraft.jsch.DHG15256"

    .line 398
    .line 399
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    const-string v2, "diffie-hellman-group15-sha384@ssh.com"

    .line 403
    .line 404
    const-string v3, "com.jcraft.jsch.DHG15384"

    .line 405
    .line 406
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    const-string v2, "diffie-hellman-group16-sha512@ssh.com"

    .line 410
    .line 411
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    const-string v2, "diffie-hellman-group16-sha384@ssh.com"

    .line 415
    .line 416
    const-string v3, "com.jcraft.jsch.DHG16384"

    .line 417
    .line 418
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    const-string v2, "diffie-hellman-group18-sha512@ssh.com"

    .line 422
    .line 423
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    const-string v2, "ecdsa-sha2-nistp256"

    .line 427
    .line 428
    const-string v3, "com.jcraft.jsch.jce.SignatureECDSA256"

    .line 429
    .line 430
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    const-string v2, "ecdsa-sha2-nistp384"

    .line 434
    .line 435
    const-string v3, "com.jcraft.jsch.jce.SignatureECDSA384"

    .line 436
    .line 437
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    const-string v2, "ecdsa-sha2-nistp521"

    .line 441
    .line 442
    const-string v3, "com.jcraft.jsch.jce.SignatureECDSA521"

    .line 443
    .line 444
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    const-string v2, "ecdh-sha2-nistp256"

    .line 448
    .line 449
    const-string v3, "com.jcraft.jsch.DHEC256"

    .line 450
    .line 451
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    const-string v2, "ecdh-sha2-nistp384"

    .line 455
    .line 456
    const-string v3, "com.jcraft.jsch.DHEC384"

    .line 457
    .line 458
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    const-string v2, "ecdh-sha2-nistp521"

    .line 462
    .line 463
    const-string v3, "com.jcraft.jsch.DHEC521"

    .line 464
    .line 465
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    const-string v2, "ecdh-sha2-nistp"

    .line 469
    .line 470
    const-string v3, "com.jcraft.jsch.jce.ECDHN"

    .line 471
    .line 472
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    const-string v2, "curve25519-sha256"

    .line 476
    .line 477
    const-string v3, "com.jcraft.jsch.DH25519"

    .line 478
    .line 479
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    const-string v2, "curve25519-sha256@libssh.org"

    .line 483
    .line 484
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    const-string v2, "curve448-sha512"

    .line 488
    .line 489
    const-string v3, "com.jcraft.jsch.DH448"

    .line 490
    .line 491
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    const-string v2, "sntrup761x25519-sha512@openssh.com"

    .line 495
    .line 496
    const-string v3, "com.jcraft.jsch.DH25519SNTRUP761"

    .line 497
    .line 498
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    const-string v2, "sntrup761"

    .line 502
    .line 503
    const-string v3, "com.jcraft.jsch.bc.SNTRUP761"

    .line 504
    .line 505
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    const-string v2, "dh"

    .line 509
    .line 510
    const-string v3, "com.jcraft.jsch.jce.DH"

    .line 511
    .line 512
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    const-string v2, "3des-cbc"

    .line 516
    .line 517
    const-string v3, "com.jcraft.jsch.jce.TripleDESCBC"

    .line 518
    .line 519
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    const-string v2, "blowfish-cbc"

    .line 523
    .line 524
    const-string v3, "com.jcraft.jsch.jce.BlowfishCBC"

    .line 525
    .line 526
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    const-string v2, "hmac-sha1"

    .line 530
    .line 531
    const-string v3, "com.jcraft.jsch.jce.HMACSHA1"

    .line 532
    .line 533
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    const-string v2, "hmac-sha1-96"

    .line 537
    .line 538
    const-string v3, "com.jcraft.jsch.jce.HMACSHA196"

    .line 539
    .line 540
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    const-string v2, "hmac-sha2-256"

    .line 544
    .line 545
    const-string v3, "com.jcraft.jsch.jce.HMACSHA256"

    .line 546
    .line 547
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    const-string v2, "hmac-sha2-512"

    .line 551
    .line 552
    const-string v3, "com.jcraft.jsch.jce.HMACSHA512"

    .line 553
    .line 554
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    const-string v2, "hmac-md5"

    .line 558
    .line 559
    const-string v3, "com.jcraft.jsch.jce.HMACMD5"

    .line 560
    .line 561
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    const-string v2, "hmac-md5-96"

    .line 565
    .line 566
    const-string v3, "com.jcraft.jsch.jce.HMACMD596"

    .line 567
    .line 568
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    const-string v2, "hmac-sha1-etm@openssh.com"

    .line 572
    .line 573
    const-string v3, "com.jcraft.jsch.jce.HMACSHA1ETM"

    .line 574
    .line 575
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    const-string v2, "hmac-sha1-96-etm@openssh.com"

    .line 579
    .line 580
    const-string v3, "com.jcraft.jsch.jce.HMACSHA196ETM"

    .line 581
    .line 582
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    const-string v2, "hmac-sha2-256-etm@openssh.com"

    .line 586
    .line 587
    const-string v3, "com.jcraft.jsch.jce.HMACSHA256ETM"

    .line 588
    .line 589
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    const-string v2, "hmac-sha2-512-etm@openssh.com"

    .line 593
    .line 594
    const-string v3, "com.jcraft.jsch.jce.HMACSHA512ETM"

    .line 595
    .line 596
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    const-string v2, "hmac-md5-etm@openssh.com"

    .line 600
    .line 601
    const-string v3, "com.jcraft.jsch.jce.HMACMD5ETM"

    .line 602
    .line 603
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    const-string v2, "hmac-md5-96-etm@openssh.com"

    .line 607
    .line 608
    const-string v3, "com.jcraft.jsch.jce.HMACMD596ETM"

    .line 609
    .line 610
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    const-string v2, "hmac-sha256-2@ssh.com"

    .line 614
    .line 615
    const-string v3, "com.jcraft.jsch.jce.HMACSHA2562SSHCOM"

    .line 616
    .line 617
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    const-string v2, "hmac-sha224@ssh.com"

    .line 621
    .line 622
    const-string v3, "com.jcraft.jsch.jce.HMACSHA224SSHCOM"

    .line 623
    .line 624
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    const-string v2, "hmac-sha256@ssh.com"

    .line 628
    .line 629
    const-string v3, "com.jcraft.jsch.jce.HMACSHA256SSHCOM"

    .line 630
    .line 631
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    const-string v2, "hmac-sha384@ssh.com"

    .line 635
    .line 636
    const-string v3, "com.jcraft.jsch.jce.HMACSHA384SSHCOM"

    .line 637
    .line 638
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    const-string v2, "hmac-sha512@ssh.com"

    .line 642
    .line 643
    const-string v3, "com.jcraft.jsch.jce.HMACSHA512SSHCOM"

    .line 644
    .line 645
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    const-string v2, "sha-1"

    .line 649
    .line 650
    const-string v3, "com.jcraft.jsch.jce.SHA1"

    .line 651
    .line 652
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    const-string v2, "sha-224"

    .line 656
    .line 657
    const-string v4, "com.jcraft.jsch.jce.SHA224"

    .line 658
    .line 659
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    const-string v2, "sha-256"

    .line 663
    .line 664
    const-string v5, "com.jcraft.jsch.jce.SHA256"

    .line 665
    .line 666
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    const-string v2, "sha-384"

    .line 670
    .line 671
    const-string v6, "com.jcraft.jsch.jce.SHA384"

    .line 672
    .line 673
    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    const-string v2, "sha-512"

    .line 677
    .line 678
    const-string v12, "com.jcraft.jsch.jce.SHA512"

    .line 679
    .line 680
    invoke-virtual {v1, v2, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    const-string v2, "md5"

    .line 684
    .line 685
    const-string v13, "com.jcraft.jsch.jce.MD5"

    .line 686
    .line 687
    invoke-virtual {v1, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    const-string v2, "sha1"

    .line 691
    .line 692
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    const-string v2, "sha224"

    .line 696
    .line 697
    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    const-string v2, "sha256"

    .line 701
    .line 702
    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    const-string v3, "sha384"

    .line 706
    .line 707
    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    const-string v3, "sha512"

    .line 711
    .line 712
    invoke-virtual {v1, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    const-string v3, "signature.dss"

    .line 716
    .line 717
    const-string v4, "com.jcraft.jsch.jce.SignatureDSA"

    .line 718
    .line 719
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    const-string v3, "ssh-rsa"

    .line 723
    .line 724
    const-string v4, "com.jcraft.jsch.jce.SignatureRSA"

    .line 725
    .line 726
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    const-string v3, "rsa-sha2-256"

    .line 730
    .line 731
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA256"

    .line 732
    .line 733
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    const-string v3, "rsa-sha2-512"

    .line 737
    .line 738
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA512"

    .line 739
    .line 740
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    const-string v3, "ssh-rsa-sha224@ssh.com"

    .line 744
    .line 745
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA224SSHCOM"

    .line 746
    .line 747
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    const-string v3, "ssh-rsa-sha256@ssh.com"

    .line 751
    .line 752
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA256SSHCOM"

    .line 753
    .line 754
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    const-string v3, "ssh-rsa-sha384@ssh.com"

    .line 758
    .line 759
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA384SSHCOM"

    .line 760
    .line 761
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    const-string v3, "ssh-rsa-sha512@ssh.com"

    .line 765
    .line 766
    const-string v4, "com.jcraft.jsch.jce.SignatureRSASHA512SSHCOM"

    .line 767
    .line 768
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    const-string v3, "keypairgen.dsa"

    .line 772
    .line 773
    const-string v4, "com.jcraft.jsch.jce.KeyPairGenDSA"

    .line 774
    .line 775
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    const-string v3, "keypairgen.rsa"

    .line 779
    .line 780
    const-string v4, "com.jcraft.jsch.jce.KeyPairGenRSA"

    .line 781
    .line 782
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    const-string v3, "keypairgen.ecdsa"

    .line 786
    .line 787
    const-string v4, "com.jcraft.jsch.jce.KeyPairGenECDSA"

    .line 788
    .line 789
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    const-string v3, "random"

    .line 793
    .line 794
    const-string v4, "com.jcraft.jsch.jce.Random"

    .line 795
    .line 796
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    const-string v3, "hmac-ripemd160"

    .line 800
    .line 801
    const-string v4, "com.jcraft.jsch.bc.HMACRIPEMD160"

    .line 802
    .line 803
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    const-string v3, "hmac-ripemd160@openssh.com"

    .line 807
    .line 808
    const-string v4, "com.jcraft.jsch.bc.HMACRIPEMD160OpenSSH"

    .line 809
    .line 810
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    const-string v3, "hmac-ripemd160-etm@openssh.com"

    .line 814
    .line 815
    const-string v4, "com.jcraft.jsch.bc.HMACRIPEMD160ETM"

    .line 816
    .line 817
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    const-string v3, "com.jcraft.jsch.CipherNone"

    .line 821
    .line 822
    invoke-virtual {v1, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    const-string v3, "aes128-gcm@openssh.com"

    .line 826
    .line 827
    const-string v4, "com.jcraft.jsch.jce.AES128GCM"

    .line 828
    .line 829
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    const-string v3, "aes256-gcm@openssh.com"

    .line 833
    .line 834
    const-string v4, "com.jcraft.jsch.jce.AES256GCM"

    .line 835
    .line 836
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    const-string v3, "aes128-cbc"

    .line 840
    .line 841
    const-string v4, "com.jcraft.jsch.jce.AES128CBC"

    .line 842
    .line 843
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    const-string v3, "aes192-cbc"

    .line 847
    .line 848
    const-string v4, "com.jcraft.jsch.jce.AES192CBC"

    .line 849
    .line 850
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    const-string v3, "aes256-cbc"

    .line 854
    .line 855
    const-string v4, "com.jcraft.jsch.jce.AES256CBC"

    .line 856
    .line 857
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    const-string v3, "rijndael-cbc@lysator.liu.se"

    .line 861
    .line 862
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    const-string v3, "com.jcraft.jsch.bc.ChaCha20Poly1305"

    .line 866
    .line 867
    const-string v4, "chacha20-poly1305@openssh.com"

    .line 868
    .line 869
    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    const-string v3, "cast128-cbc"

    .line 873
    .line 874
    const-string v5, "com.jcraft.jsch.bc.CAST128CBC"

    .line 875
    .line 876
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    const-string v3, "cast128-ctr"

    .line 880
    .line 881
    const-string v5, "com.jcraft.jsch.bc.CAST128CTR"

    .line 882
    .line 883
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    const-string v3, "twofish128-cbc"

    .line 887
    .line 888
    const-string v5, "com.jcraft.jsch.bc.Twofish128CBC"

    .line 889
    .line 890
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    const-string v3, "twofish192-cbc"

    .line 894
    .line 895
    const-string v5, "com.jcraft.jsch.bc.Twofish192CBC"

    .line 896
    .line 897
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    const-string v3, "twofish256-cbc"

    .line 901
    .line 902
    const-string v5, "com.jcraft.jsch.bc.Twofish256CBC"

    .line 903
    .line 904
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    const-string v3, "twofish-cbc"

    .line 908
    .line 909
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    const-string v3, "twofish128-ctr"

    .line 913
    .line 914
    const-string v5, "com.jcraft.jsch.bc.Twofish128CTR"

    .line 915
    .line 916
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    const-string v3, "twofish192-ctr"

    .line 920
    .line 921
    const-string v5, "com.jcraft.jsch.bc.Twofish192CTR"

    .line 922
    .line 923
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    const-string v3, "twofish256-ctr"

    .line 927
    .line 928
    const-string v5, "com.jcraft.jsch.bc.Twofish256CTR"

    .line 929
    .line 930
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    const-string v3, "seed-cbc@ssh.com"

    .line 934
    .line 935
    const-string v5, "com.jcraft.jsch.bc.SEEDCBC"

    .line 936
    .line 937
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    const-string v3, "aes128-ctr"

    .line 941
    .line 942
    const-string v5, "com.jcraft.jsch.jce.AES128CTR"

    .line 943
    .line 944
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    const-string v3, "aes192-ctr"

    .line 948
    .line 949
    const-string v5, "com.jcraft.jsch.jce.AES192CTR"

    .line 950
    .line 951
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    const-string v3, "aes256-ctr"

    .line 955
    .line 956
    const-string v5, "com.jcraft.jsch.jce.AES256CTR"

    .line 957
    .line 958
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    const-string v3, "3des-ctr"

    .line 962
    .line 963
    const-string v5, "com.jcraft.jsch.jce.TripleDESCTR"

    .line 964
    .line 965
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    const-string v3, "blowfish-ctr"

    .line 969
    .line 970
    const-string v5, "com.jcraft.jsch.jce.BlowfishCTR"

    .line 971
    .line 972
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    const-string v3, "arcfour"

    .line 976
    .line 977
    const-string v5, "com.jcraft.jsch.jce.ARCFOUR"

    .line 978
    .line 979
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    const-string v3, "arcfour128"

    .line 983
    .line 984
    const-string v5, "com.jcraft.jsch.jce.ARCFOUR128"

    .line 985
    .line 986
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    const-string v3, "arcfour256"

    .line 990
    .line 991
    const-string v5, "com.jcraft.jsch.jce.ARCFOUR256"

    .line 992
    .line 993
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    const-string v3, "userauth.none"

    .line 997
    .line 998
    const-string v5, "com.jcraft.jsch.UserAuthNone"

    .line 999
    .line 1000
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    const-string v3, "userauth.password"

    .line 1004
    .line 1005
    const-string v5, "com.jcraft.jsch.UserAuthPassword"

    .line 1006
    .line 1007
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    const-string v3, "userauth.keyboard-interactive"

    .line 1011
    .line 1012
    const-string v5, "com.jcraft.jsch.UserAuthKeyboardInteractive"

    .line 1013
    .line 1014
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    const-string v3, "userauth.publickey"

    .line 1018
    .line 1019
    const-string v5, "com.jcraft.jsch.UserAuthPublicKey"

    .line 1020
    .line 1021
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    const-string v3, "userauth.gssapi-with-mic"

    .line 1025
    .line 1026
    const-string v5, "com.jcraft.jsch.UserAuthGSSAPIWithMIC"

    .line 1027
    .line 1028
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    const-string v3, "gssapi-with-mic.krb5"

    .line 1032
    .line 1033
    const-string v5, "com.jcraft.jsch.jgss.GSSContextKrb5"

    .line 1034
    .line 1035
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    const-string v3, "zlib"

    .line 1039
    .line 1040
    const-string v5, "com.jcraft.jsch.jzlib.Compression"

    .line 1041
    .line 1042
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    const-string v3, "zlib@openssh.com"

    .line 1046
    .line 1047
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    const-string v3, "pbkdf"

    .line 1051
    .line 1052
    const-string v5, "com.jcraft.jsch.jce.PBKDF"

    .line 1053
    .line 1054
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    const-string v3, "pbkdf2-hmac-sha1"

    .line 1058
    .line 1059
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA1"

    .line 1060
    .line 1061
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    const-string v3, "pbkdf2-hmac-sha224"

    .line 1065
    .line 1066
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA224"

    .line 1067
    .line 1068
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    const-string v3, "pbkdf2-hmac-sha256"

    .line 1072
    .line 1073
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA256"

    .line 1074
    .line 1075
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    const-string v3, "pbkdf2-hmac-sha384"

    .line 1079
    .line 1080
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA384"

    .line 1081
    .line 1082
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    const-string v3, "pbkdf2-hmac-sha512"

    .line 1086
    .line 1087
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA512"

    .line 1088
    .line 1089
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    const-string v3, "pbkdf2-hmac-sha512-224"

    .line 1093
    .line 1094
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA512224"

    .line 1095
    .line 1096
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    const-string v3, "pbkdf2-hmac-sha512-256"

    .line 1100
    .line 1101
    const-string v5, "com.jcraft.jsch.jce.PBKDF2HMACSHA512256"

    .line 1102
    .line 1103
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    const-string v3, "bcrypt"

    .line 1107
    .line 1108
    const-string v5, "com.jcraft.jsch.jbcrypt.JBCrypt"

    .line 1109
    .line 1110
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    const-string v3, "argon2"

    .line 1114
    .line 1115
    const-string v5, "com.jcraft.jsch.bc.Argon2"

    .line 1116
    .line 1117
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    const-string v3, "scrypt"

    .line 1121
    .line 1122
    const-string v5, "com.jcraft.jsch.bc.SCrypt"

    .line 1123
    .line 1124
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    const-string v3, "xdh"

    .line 1128
    .line 1129
    const-string v5, "com.jcraft.jsch.bc.XDH"

    .line 1130
    .line 1131
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    const-string v3, "keypairgen.eddsa"

    .line 1135
    .line 1136
    const-string v5, "com.jcraft.jsch.bc.KeyPairGenEdDSA"

    .line 1137
    .line 1138
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    const-string v3, "ssh-ed25519"

    .line 1142
    .line 1143
    const-string v6, "com.jcraft.jsch.bc.SignatureEd25519"

    .line 1144
    .line 1145
    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    const-string v3, "ssh-ed448"

    .line 1149
    .line 1150
    const-string v6, "com.jcraft.jsch.bc.SignatureEd448"

    .line 1151
    .line 1152
    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    const-string v3, "keypairgen_fromprivate.eddsa"

    .line 1156
    .line 1157
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    const-string v3, "StrictHostKeyChecking"

    .line 1161
    .line 1162
    const-string v5, "ask"

    .line 1163
    .line 1164
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    const-string v3, "HashKnownHosts"

    .line 1168
    .line 1169
    invoke-virtual {v1, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    const-string v3, "jsch.preferred_authentications"

    .line 1173
    .line 1174
    const-string v5, "gssapi-with-mic,publickey,keyboard-interactive,password"

    .line 1175
    .line 1176
    :try_start_13
    invoke-static {v3, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v5
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_13

    .line 1180
    :catch_13
    const-string v3, "PreferredAuthentications"

    .line 1181
    .line 1182
    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1186
    .line 1187
    const-string v3, "jsch.client_pubkey"

    .line 1188
    .line 1189
    :try_start_14
    invoke-static {v3, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v7
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_14

    .line 1193
    :catch_14
    const-string v3, "PubkeyAcceptedAlgorithms"

    .line 1194
    .line 1195
    invoke-virtual {v1, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1199
    .line 1200
    const-string v3, "jsch.enable_pubkey_auth_query"

    .line 1201
    .line 1202
    :try_start_15
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v3
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_15

    .line 1206
    goto :goto_d

    .line 1207
    :catch_15
    move-object v3, v11

    .line 1208
    :goto_d
    const-string v5, "enable_pubkey_auth_query"

    .line 1209
    .line 1210
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1214
    .line 1215
    const-string v3, "jsch.try_additional_pubkey_algorithms"

    .line 1216
    .line 1217
    :try_start_16
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_16

    .line 1221
    goto :goto_e

    .line 1222
    :catch_16
    move-object v3, v11

    .line 1223
    :goto_e
    const-string v5, "try_additional_pubkey_algorithms"

    .line 1224
    .line 1225
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1229
    .line 1230
    const-string v3, "jsch.enable_auth_none"

    .line 1231
    .line 1232
    :try_start_17
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v3
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_17

    .line 1236
    goto :goto_f

    .line 1237
    :catch_17
    move-object v3, v11

    .line 1238
    :goto_f
    const-string v5, "enable_auth_none"

    .line 1239
    .line 1240
    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1244
    .line 1245
    const-string v3, "jsch.use_sftp_write_flush_workaround"

    .line 1246
    .line 1247
    :try_start_18
    invoke-static {v3, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v11
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_18

    .line 1251
    :catch_18
    const-string v3, "use_sftp_write_flush_workaround"

    .line 1252
    .line 1253
    invoke-virtual {v1, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1257
    .line 1258
    const-string v3, "jsch.check_ciphers"

    .line 1259
    .line 1260
    :try_start_19
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v4
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_19} :catch_19

    .line 1264
    :catch_19
    const-string v3, "CheckCiphers"

    .line 1265
    .line 1266
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1270
    .line 1271
    const-string v3, "jsch.check_macs"

    .line 1272
    .line 1273
    :try_start_1a
    invoke-static {v3, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v8
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1277
    :catch_1a
    const-string v3, "CheckMacs"

    .line 1278
    .line 1279
    invoke-virtual {v1, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1283
    .line 1284
    const-string v3, "jsch.check_kexes"

    .line 1285
    .line 1286
    const-string v4, "sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512"

    .line 1287
    .line 1288
    :try_start_1b
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v4
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1292
    :catch_1b
    const-string v3, "CheckKexes"

    .line 1293
    .line 1294
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1298
    .line 1299
    const-string v3, "jsch.check_signatures"

    .line 1300
    .line 1301
    const-string v4, "ssh-ed25519,ssh-ed448"

    .line 1302
    .line 1303
    :try_start_1c
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1307
    :catch_1c
    const-string v3, "CheckSignatures"

    .line 1308
    .line 1309
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1313
    .line 1314
    const-string v3, "jsch.fingerprint_hash"

    .line 1315
    .line 1316
    :try_start_1d
    invoke-static {v3, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1320
    :catch_1d
    const-string v3, "FingerprintHash"

    .line 1321
    .line 1322
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    sget-object v1, La9/l;->e:Ljava/util/Hashtable;

    .line 1326
    .line 1327
    const-string v2, "jsch.max_auth_tries"

    .line 1328
    .line 1329
    :try_start_1e
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1333
    :catch_1e
    const-string v2, "MaxAuthTries"

    .line 1334
    .line 1335
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    sget-object v0, La9/l;->e:Ljava/util/Hashtable;

    .line 1339
    .line 1340
    const-string v1, "ClearAllForwardings"

    .line 1341
    .line 1342
    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    new-instance v0, Lgf/g;

    .line 1346
    .line 1347
    const/4 v1, 0x1

    .line 1348
    invoke-direct {v0, v1}, Lgf/g;-><init>(I)V

    .line 1349
    .line 1350
    .line 1351
    sput-object v0, La9/l;->f:Lgf/g;

    .line 1352
    .line 1353
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm7/e;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, La9/l;->a:Lm7/e;

    .line 11
    .line 12
    new-instance v1, Ljava/util/Vector;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, La9/l;->b:Ljava/util/Vector;

    .line 18
    .line 19
    new-instance v1, La9/z;

    .line 20
    .line 21
    invoke-direct {v1, v0}, La9/z;-><init>(Lm7/e;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, La9/l;->c:La9/j;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, La9/l;->d:La9/y;

    .line 28
    .line 29
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, La9/l;->e:Ljava/util/Hashtable;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "PubkeyAcceptedKeyTypes"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p0, "PubkeyAcceptedAlgorithms"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)V
    .locals 4

    .line 1
    iget-object v0, p0, La9/l;->a:Lm7/e;

    .line 2
    .line 3
    sget-object v1, La9/r;->g:[B

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, La9/h0;->h(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    const-string v2, ".pub"

    .line 10
    .line 11
    invoke-static {p1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :try_start_1
    invoke-static {v2}, La9/h0;->h(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    :try_start_2
    invoke-static {v0, v1, v2}, La9/r;->j(Lm7/e;[B[B)La9/r;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 25
    invoke-static {v1}, La9/h0;->d([B)V

    .line 26
    .line 27
    .line 28
    new-instance v1, La9/i;

    .line 29
    .line 30
    invoke-direct {v1, p1, v0}, La9/i;-><init>(Ljava/lang/String;La9/r;)V

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    :try_start_3
    array-length p1, p2

    .line 36
    new-array p1, p1, [B

    .line 37
    .line 38
    array-length v0, p2

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_4
    iget-object p2, v1, La9/i;->a:La9/r;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, La9/r;->c([B)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, La9/h0;->d([B)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    move-object v3, p2

    .line 56
    move-object p2, p1

    .line 57
    move-object p1, v3

    .line 58
    :goto_1
    invoke-static {p1}, La9/h0;->d([B)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_0
    :goto_2
    iget-object p1, p0, La9/l;->c:La9/j;

    .line 63
    .line 64
    instance-of p2, p1, La9/z;

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    check-cast p1, La9/z;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, La9/z;->b(La9/i;)V

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_1
    iget-object p2, v1, La9/i;->a:La9/r;

    .line 75
    .line 76
    iget-boolean v0, p2, La9/r;->d:Z

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {p2}, La9/r;->e()[B

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p1, p2}, La9/j;->a([B)Z

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_2
    monitor-enter p0

    .line 89
    :try_start_5
    iget-object p1, p0, La9/l;->c:La9/j;

    .line 90
    .line 91
    instance-of p2, p1, La9/k;

    .line 92
    .line 93
    if-nez p2, :cond_3

    .line 94
    .line 95
    new-instance p2, La9/k;

    .line 96
    .line 97
    invoke-direct {p2, p1}, La9/k;-><init>(La9/j;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p2}, La9/l;->e(La9/k;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catchall_2
    move-exception p1

    .line 105
    goto :goto_5

    .line 106
    :cond_3
    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    iget-object p1, p0, La9/l;->c:La9/j;

    .line 108
    .line 109
    check-cast p1, La9/k;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object p2, v1, La9/i;->a:La9/r;

    .line 115
    .line 116
    iget-boolean v0, p2, La9/r;->d:Z

    .line 117
    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    :try_start_6
    iget-object p1, p1, La9/k;->a:La9/j;

    .line 121
    .line 122
    invoke-virtual {p2}, La9/r;->e()[B

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p1, p2}, La9/j;->a([B)Z
    :try_end_6
    .catch La9/n; {:try_start_6 .. :try_end_6} :catch_1

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    iget-object p1, p1, La9/k;->b:Ljava/util/Vector;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :catch_1
    :goto_4
    return-void

    .line 136
    :goto_5
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 137
    throw p1

    .line 138
    :catchall_3
    move-exception p1

    .line 139
    invoke-static {v1}, La9/h0;->d([B)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :catch_2
    move-exception p1

    .line 144
    new-instance p2, La9/n;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {p2, v0, p1}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw p2
.end method

.method public final c()Lgf/g;
    .locals 1

    .line 1
    iget-object v0, p0, La9/l;->a:Lm7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, La9/l;->f:Lgf/g;

    .line 7
    .line 8
    return-object v0
.end method

.method public final d(La9/f0;)V
    .locals 2

    .line 1
    iget-object v0, p0, La9/l;->b:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, La9/l;->b:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final declared-synchronized e(La9/k;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, La9/l;->c:La9/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
