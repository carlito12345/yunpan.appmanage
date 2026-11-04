.class public final Lwc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/f;


# static fields
.field public static final y0:Lorg/slf4j/Logger;

.field public static final z0:Ljava/util/HashMap;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:Ljava/net/InetAddress;

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:I

.field public final M:Z

.field public final N:J

.field public final O:Z

.field public final P:Z

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public final S:Ljava/lang/String;

.field public final T:Ljava/lang/String;

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a:Ljava/util/HashMap;

.field public final a0:Ljava/lang/String;

.field public final b:I

.field public final b0:I

.field public final c:Ljava/security/SecureRandom;

.field public final c0:Ljava/net/InetAddress;

.field public final d:Z

.field public final d0:Ljava/lang/String;

.field public final e:Z

.field public final e0:[Ljava/net/InetAddress;

.field public final f:Z

.field public final f0:Ljava/net/InetAddress;

.field public final g:Z

.field public g0:Ljava/util/ArrayList;

.field public final h:Z

.field public final h0:I

.field public final i:Z

.field public final i0:I

.field public final j:Z

.field public final j0:I

.field public final k:Z

.field public final k0:I

.field public final l:Z

.field public final l0:J

.field public final m:Z

.field public final m0:I

.field public final n:Z

.field public final n0:Z

.field public final o:Z

.field public final o0:Z

.field public final p:Z

.field public final p0:Ljava/util/HashSet;

.field public final q:Z

.field public q0:Lvc/i;

.field public final r:I

.field public r0:Lvc/i;

.field public final s:Z

.field public final s0:Z

.field public final t:Z

.field public final t0:Z

.field public final u:Z

.field public final u0:[B

.field public final v:Z

.field public final v0:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final w0:Ljava/lang/String;

.field public final x:I

.field public final x0:Z

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lwc/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lwc/a;->y0:Lorg/slf4j/Logger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lwc/a;->z0:Ljava/util/HashMap;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "TreeConnectAndX.QueryInformation"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lwc/a;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, v1, Lwc/a;->b:I

    .line 20
    .line 21
    iput-boolean v4, v1, Lwc/a;->d:Z

    .line 22
    .line 23
    iput-boolean v5, v1, Lwc/a;->e:Z

    .line 24
    .line 25
    iput-boolean v4, v1, Lwc/a;->f:Z

    .line 26
    .line 27
    iput-boolean v4, v1, Lwc/a;->g:Z

    .line 28
    .line 29
    iput-boolean v4, v1, Lwc/a;->h:Z

    .line 30
    .line 31
    iput-boolean v5, v1, Lwc/a;->i:Z

    .line 32
    .line 33
    iput-boolean v4, v1, Lwc/a;->j:Z

    .line 34
    .line 35
    iput-boolean v5, v1, Lwc/a;->k:Z

    .line 36
    .line 37
    iput-boolean v5, v1, Lwc/a;->l:Z

    .line 38
    .line 39
    iput-boolean v4, v1, Lwc/a;->m:Z

    .line 40
    .line 41
    iput-boolean v4, v1, Lwc/a;->n:Z

    .line 42
    .line 43
    iput-boolean v4, v1, Lwc/a;->o:Z

    .line 44
    .line 45
    iput-boolean v5, v1, Lwc/a;->p:Z

    .line 46
    .line 47
    iput-boolean v5, v1, Lwc/a;->q:Z

    .line 48
    .line 49
    const/4 v6, 0x3

    .line 50
    iput v6, v1, Lwc/a;->r:I

    .line 51
    .line 52
    iput-boolean v4, v1, Lwc/a;->s:Z

    .line 53
    .line 54
    iput-boolean v4, v1, Lwc/a;->t:Z

    .line 55
    .line 56
    iput-boolean v5, v1, Lwc/a;->u:Z

    .line 57
    .line 58
    iput-boolean v5, v1, Lwc/a;->v:Z

    .line 59
    .line 60
    const-string v7, "Cp850"

    .line 61
    .line 62
    iput-object v7, v1, Lwc/a;->w:Ljava/lang/String;

    .line 63
    .line 64
    iput v4, v1, Lwc/a;->x:I

    .line 65
    .line 66
    iput v4, v1, Lwc/a;->y:I

    .line 67
    .line 68
    const/16 v0, 0xfa

    .line 69
    .line 70
    iput v0, v1, Lwc/a;->z:I

    .line 71
    .line 72
    const/16 v8, 0x7530

    .line 73
    .line 74
    iput v8, v1, Lwc/a;->A:I

    .line 75
    .line 76
    const v9, 0x88b8

    .line 77
    .line 78
    .line 79
    iput v9, v1, Lwc/a;->B:I

    .line 80
    .line 81
    iput v9, v1, Lwc/a;->C:I

    .line 82
    .line 83
    iput v9, v1, Lwc/a;->D:I

    .line 84
    .line 85
    iput v4, v1, Lwc/a;->F:I

    .line 86
    .line 87
    const/16 v10, 0xa

    .line 88
    .line 89
    iput v10, v1, Lwc/a;->G:I

    .line 90
    .line 91
    const v11, 0xffff

    .line 92
    .line 93
    .line 94
    iput v11, v1, Lwc/a;->H:I

    .line 95
    .line 96
    iput v11, v1, Lwc/a;->I:I

    .line 97
    .line 98
    const-string v12, "jCIFS"

    .line 99
    .line 100
    iput-object v12, v1, Lwc/a;->K:Ljava/lang/String;

    .line 101
    .line 102
    iput v5, v1, Lwc/a;->L:I

    .line 103
    .line 104
    iput-boolean v4, v1, Lwc/a;->M:Z

    .line 105
    .line 106
    const-wide/16 v13, 0x12c

    .line 107
    .line 108
    iput-wide v13, v1, Lwc/a;->N:J

    .line 109
    .line 110
    iput-boolean v4, v1, Lwc/a;->O:Z

    .line 111
    .line 112
    const v15, 0x8ca0

    .line 113
    .line 114
    .line 115
    iput v15, v1, Lwc/a;->U:I

    .line 116
    .line 117
    const/16 v15, 0x1388

    .line 118
    .line 119
    iput v15, v1, Lwc/a;->V:I

    .line 120
    .line 121
    const/16 v13, 0x240

    .line 122
    .line 123
    iput v13, v1, Lwc/a;->W:I

    .line 124
    .line 125
    iput v13, v1, Lwc/a;->X:I

    .line 126
    .line 127
    iput v3, v1, Lwc/a;->Y:I

    .line 128
    .line 129
    const/16 v14, 0xbb8

    .line 130
    .line 131
    iput v14, v1, Lwc/a;->Z:I

    .line 132
    .line 133
    iput v4, v1, Lwc/a;->b0:I

    .line 134
    .line 135
    new-array v14, v4, [Ljava/net/InetAddress;

    .line 136
    .line 137
    iput-object v14, v1, Lwc/a;->e0:[Ljava/net/InetAddress;

    .line 138
    .line 139
    const/high16 v14, 0x10000

    .line 140
    .line 141
    iput v14, v1, Lwc/a;->h0:I

    .line 142
    .line 143
    const v14, 0xfdff

    .line 144
    .line 145
    .line 146
    iput v14, v1, Lwc/a;->i0:I

    .line 147
    .line 148
    const/16 v14, 0x10

    .line 149
    .line 150
    iput v14, v1, Lwc/a;->j0:I

    .line 151
    .line 152
    const v14, 0xff9b

    .line 153
    .line 154
    .line 155
    iput v14, v1, Lwc/a;->k0:I

    .line 156
    .line 157
    const-wide/16 v13, 0x1388

    .line 158
    .line 159
    iput-wide v13, v1, Lwc/a;->l0:J

    .line 160
    .line 161
    iput v3, v1, Lwc/a;->m0:I

    .line 162
    .line 163
    iput-boolean v5, v1, Lwc/a;->s0:Z

    .line 164
    .line 165
    iput-boolean v5, v1, Lwc/a;->t0:Z

    .line 166
    .line 167
    const-string v13, "GUEST"

    .line 168
    .line 169
    iput-object v13, v1, Lwc/a;->v0:Ljava/lang/String;

    .line 170
    .line 171
    const-string v13, ""

    .line 172
    .line 173
    iput-object v13, v1, Lwc/a;->w0:Ljava/lang/String;

    .line 174
    .line 175
    iput-boolean v4, v1, Lwc/a;->x0:Z

    .line 176
    .line 177
    const-string v14, "jcifs.smb.client.useBatching"

    .line 178
    .line 179
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    iput-boolean v14, v1, Lwc/a;->d:Z

    .line 184
    .line 185
    const-string v14, "jcifs.smb.client.useUnicode"

    .line 186
    .line 187
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    iput-boolean v14, v1, Lwc/a;->e:Z

    .line 192
    .line 193
    const-string v14, "jcifs.smb.client.useLargeReadWrite"

    .line 194
    .line 195
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    iput-boolean v14, v1, Lwc/a;->q:Z

    .line 200
    .line 201
    const-string v14, "jcifs.smb.client.forceUnicode"

    .line 202
    .line 203
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    iput-boolean v14, v1, Lwc/a;->f:Z

    .line 208
    .line 209
    const-string v14, "jcifs.smb.client.signingPreferred"

    .line 210
    .line 211
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    iput-boolean v14, v1, Lwc/a;->g:Z

    .line 216
    .line 217
    const-string v14, "jcifs.smb.client.signingEnforced"

    .line 218
    .line 219
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    iput-boolean v14, v1, Lwc/a;->h:Z

    .line 224
    .line 225
    const-string v14, "jcifs.smb.client.ipcSigningEnforced"

    .line 226
    .line 227
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    iput-boolean v14, v1, Lwc/a;->i:Z

    .line 232
    .line 233
    const-string v14, "jcifs.smb.client.encryptionEnabled"

    .line 234
    .line 235
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    iput-boolean v14, v1, Lwc/a;->j:Z

    .line 240
    .line 241
    const-string v14, "jcifs.smb.client.requireSecureNegotiate"

    .line 242
    .line 243
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    iput-boolean v14, v1, Lwc/a;->s0:Z

    .line 248
    .line 249
    const-string v14, "jcifs.smb.client.SendNTLMTargetName"

    .line 250
    .line 251
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    iput-boolean v14, v1, Lwc/a;->t0:Z

    .line 256
    .line 257
    const-string v14, "jcifs.smb.lmCompatibility"

    .line 258
    .line 259
    invoke-static {v2, v14, v6}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    iput v14, v1, Lwc/a;->r:I

    .line 264
    .line 265
    const-string v14, "jcifs.smb.allowNTLMFallback"

    .line 266
    .line 267
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 268
    .line 269
    .line 270
    const-string v14, "jcifs.smb.useRawNTLM"

    .line 271
    .line 272
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    iput-boolean v14, v1, Lwc/a;->s:Z

    .line 277
    .line 278
    const-string v14, "jcifs.smb.client.disableSpnegoIntegrity"

    .line 279
    .line 280
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    iput-boolean v14, v1, Lwc/a;->t:Z

    .line 285
    .line 286
    const-string v14, "jcifs.smb.client.enforceSpnegoIntegrity"

    .line 287
    .line 288
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    iput-boolean v14, v1, Lwc/a;->u:Z

    .line 293
    .line 294
    const-string v14, "jcifs.smb.client.disablePlainTextPasswords"

    .line 295
    .line 296
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    iput-boolean v14, v1, Lwc/a;->v:Z

    .line 301
    .line 302
    const-string v14, "jcifs.encoding"

    .line 303
    .line 304
    invoke-virtual {v2, v14, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v14

    .line 308
    iput-object v14, v1, Lwc/a;->w:Ljava/lang/String;

    .line 309
    .line 310
    const-string v14, "jcifs.smb.client.useNtStatus"

    .line 311
    .line 312
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    iput-boolean v14, v1, Lwc/a;->k:Z

    .line 317
    .line 318
    const-string v14, "jcifs.smb.client.useExtendedSecurity"

    .line 319
    .line 320
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    iput-boolean v14, v1, Lwc/a;->l:Z

    .line 325
    .line 326
    const-string v14, "jcifs.smb.client.forceExtendedSecurity"

    .line 327
    .line 328
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 329
    .line 330
    .line 331
    move-result v14

    .line 332
    iput-boolean v14, v1, Lwc/a;->m:Z

    .line 333
    .line 334
    const-string v14, "jcifs.smb.client.useSMB2Negotiation"

    .line 335
    .line 336
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    iput-boolean v14, v1, Lwc/a;->n:Z

    .line 341
    .line 342
    const-string v14, "jcifs.smb.client.port139.enabled"

    .line 343
    .line 344
    invoke-static {v2, v14, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 345
    .line 346
    .line 347
    move-result v14

    .line 348
    iput-boolean v14, v1, Lwc/a;->o:Z

    .line 349
    .line 350
    const-string v14, "jcifs.smb.client.useNTSmbs"

    .line 351
    .line 352
    invoke-static {v2, v14, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    iput-boolean v14, v1, Lwc/a;->p:Z

    .line 357
    .line 358
    const-string v14, "jcifs.smb.client.flags2"

    .line 359
    .line 360
    invoke-static {v2, v14, v4}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 361
    .line 362
    .line 363
    move-result v14

    .line 364
    iput v14, v1, Lwc/a;->x:I

    .line 365
    .line 366
    const-string v14, "jcifs.smb.client.capabilities"

    .line 367
    .line 368
    invoke-static {v2, v14, v4}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 369
    .line 370
    .line 371
    move-result v14

    .line 372
    iput v14, v1, Lwc/a;->y:I

    .line 373
    .line 374
    const-string v14, "jcifs.smb.client.ssnLimit"

    .line 375
    .line 376
    invoke-static {v2, v14, v0}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    iput v0, v1, Lwc/a;->z:I

    .line 381
    .line 382
    const-string v0, "jcifs.smb.client.maxRequestRetries"

    .line 383
    .line 384
    invoke-static {v2, v0, v3}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    iput v0, v1, Lwc/a;->m0:I

    .line 389
    .line 390
    const-string v0, "jcifs.smb.client.tcpNoDelay"

    .line 391
    .line 392
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 393
    .line 394
    .line 395
    const-string v0, "jcifs.smb.client.responseTimeout"

    .line 396
    .line 397
    invoke-static {v2, v0, v8}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iput v0, v1, Lwc/a;->A:I

    .line 402
    .line 403
    const-string v0, "jcifs.smb.client.soTimeout"

    .line 404
    .line 405
    invoke-static {v2, v0, v9}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    iput v0, v1, Lwc/a;->B:I

    .line 410
    .line 411
    const-string v0, "jcifs.smb.client.connTimeout"

    .line 412
    .line 413
    invoke-static {v2, v0, v9}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    iput v0, v1, Lwc/a;->C:I

    .line 418
    .line 419
    const-string v0, "jcifs.smb.client.sessionTimeout"

    .line 420
    .line 421
    invoke-static {v2, v0, v9}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iput v0, v1, Lwc/a;->D:I

    .line 426
    .line 427
    const-string v0, "jcifs.smb.client.disableIdleTimeout"

    .line 428
    .line 429
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 430
    .line 431
    .line 432
    const-string v0, "jcifs.smb.client.laddr"

    .line 433
    .line 434
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    const/4 v9, 0x0

    .line 439
    if-eqz v8, :cond_0

    .line 440
    .line 441
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 442
    .line 443
    .line 444
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    move-object v14, v0

    .line 448
    const-string v0, "Ignoring jcifs.smb.client.laddr address: "

    .line 449
    .line 450
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sget-object v8, Lvc/e;->a:Lorg/slf4j/Logger;

    .line 455
    .line 456
    invoke-interface {v8, v0, v14}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    .line 458
    .line 459
    :cond_0
    move-object v0, v9

    .line 460
    :goto_0
    iput-object v0, v1, Lwc/a;->E:Ljava/net/InetAddress;

    .line 461
    .line 462
    const-string v0, "jcifs.smb.client.lport"

    .line 463
    .line 464
    invoke-static {v2, v0, v4}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    iput v0, v1, Lwc/a;->F:I

    .line 469
    .line 470
    const-string v0, "jcifs.smb.client.maxMpxCount"

    .line 471
    .line 472
    invoke-static {v2, v0, v10}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    iput v0, v1, Lwc/a;->G:I

    .line 477
    .line 478
    const-string v0, "jcifs.smb.client.snd_buf_size"

    .line 479
    .line 480
    invoke-static {v2, v0, v11}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    iput v0, v1, Lwc/a;->H:I

    .line 485
    .line 486
    const-string v0, "jcifs.smb.client.rcv_buf_size"

    .line 487
    .line 488
    invoke-static {v2, v0, v11}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    iput v0, v1, Lwc/a;->I:I

    .line 493
    .line 494
    const-string v0, "jcifs.smb.client.notify_buf_size"

    .line 495
    .line 496
    const/16 v8, 0x400

    .line 497
    .line 498
    invoke-static {v2, v0, v8}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 499
    .line 500
    .line 501
    const-string v8, "os.name"

    .line 502
    .line 503
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const-string v10, "jcifs.smb.client.nativeOs"

    .line 508
    .line 509
    invoke-virtual {v2, v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    iput-object v0, v1, Lwc/a;->J:Ljava/lang/String;

    .line 514
    .line 515
    const-string v0, "jcifs.smb.client.nativeLanMan"

    .line 516
    .line 517
    invoke-virtual {v2, v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    iput-object v0, v1, Lwc/a;->K:Ljava/lang/String;

    .line 522
    .line 523
    iput v5, v1, Lwc/a;->L:I

    .line 524
    .line 525
    const-string v0, "jcifs.smb.client.dfs.disabled"

    .line 526
    .line 527
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    iput-boolean v0, v1, Lwc/a;->M:Z

    .line 532
    .line 533
    const-string v0, "jcifs.smb.client.dfs.ttl"

    .line 534
    .line 535
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const-string v10, "Not a number"

    .line 540
    .line 541
    if-eqz v0, :cond_1

    .line 542
    .line 543
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 544
    .line 545
    .line 546
    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    move-object v14, v7

    .line 548
    move-wide/from16 v6, v16

    .line 549
    .line 550
    goto :goto_1

    .line 551
    :catch_1
    move-exception v0

    .line 552
    move-object v12, v0

    .line 553
    sget-object v0, Lvc/e;->a:Lorg/slf4j/Logger;

    .line 554
    .line 555
    invoke-interface {v0, v10, v12}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    .line 557
    .line 558
    :cond_1
    move-object v14, v7

    .line 559
    const-wide/16 v6, 0x12c

    .line 560
    .line 561
    :goto_1
    iput-wide v6, v1, Lwc/a;->N:J

    .line 562
    .line 563
    const-string v0, "jcifs.smb.client.dfs.strictView"

    .line 564
    .line 565
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    iput-boolean v0, v1, Lwc/a;->O:Z

    .line 570
    .line 571
    const-string v0, "jcifs.smb.client.dfs.convertToFQDN"

    .line 572
    .line 573
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    iput-boolean v0, v1, Lwc/a;->P:Z

    .line 578
    .line 579
    const-string v0, "jcifs.smb.client.logonShare"

    .line 580
    .line 581
    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    const-string v0, "jcifs.smb.client.domain"

    .line 585
    .line 586
    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iput-object v0, v1, Lwc/a;->Q:Ljava/lang/String;

    .line 591
    .line 592
    const-string v0, "jcifs.smb.client.username"

    .line 593
    .line 594
    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    iput-object v0, v1, Lwc/a;->R:Ljava/lang/String;

    .line 599
    .line 600
    const-string v0, "jcifs.smb.client.password"

    .line 601
    .line 602
    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    iput-object v0, v1, Lwc/a;->S:Ljava/lang/String;

    .line 607
    .line 608
    const-string v0, "jcifs.netbios.hostname"

    .line 609
    .line 610
    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    iput-object v0, v1, Lwc/a;->T:Ljava/lang/String;

    .line 615
    .line 616
    const-string v0, "jcifs.netbios.cachePolicy"

    .line 617
    .line 618
    const/16 v6, 0x258

    .line 619
    .line 620
    invoke-static {v2, v0, v6}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    mul-int/lit8 v0, v0, 0x3c

    .line 625
    .line 626
    iput v0, v1, Lwc/a;->U:I

    .line 627
    .line 628
    const-string v0, "jcifs.netbios.soTimeout"

    .line 629
    .line 630
    invoke-static {v2, v0, v15}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    iput v0, v1, Lwc/a;->V:I

    .line 635
    .line 636
    const-string v0, "jcifs.netbios.snd_buf_size"

    .line 637
    .line 638
    const/16 v6, 0x240

    .line 639
    .line 640
    invoke-static {v2, v0, v6}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    iput v0, v1, Lwc/a;->W:I

    .line 645
    .line 646
    const-string v0, "jcifs.netbios.rcv_buf_size"

    .line 647
    .line 648
    invoke-static {v2, v0, v6}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    iput v0, v1, Lwc/a;->X:I

    .line 653
    .line 654
    const-string v0, "jcifs.netbios.retryCount"

    .line 655
    .line 656
    invoke-static {v2, v0, v3}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    iput v0, v1, Lwc/a;->Y:I

    .line 661
    .line 662
    const-string v0, "jcifs.netbios.retryTimeout"

    .line 663
    .line 664
    const/16 v6, 0xbb8

    .line 665
    .line 666
    invoke-static {v2, v0, v6}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    iput v0, v1, Lwc/a;->Z:I

    .line 671
    .line 672
    const-string v0, "jcifs.netbios.scope"

    .line 673
    .line 674
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    iput-object v0, v1, Lwc/a;->a0:Ljava/lang/String;

    .line 679
    .line 680
    const-string v0, "jcifs.netbios.lport"

    .line 681
    .line 682
    invoke-static {v2, v0, v4}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    iput v0, v1, Lwc/a;->b0:I

    .line 687
    .line 688
    const-string v0, "jcifs.netbios.laddr"

    .line 689
    .line 690
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    const-string v7, "Unknown host "

    .line 695
    .line 696
    if-eqz v6, :cond_2

    .line 697
    .line 698
    :try_start_2
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 699
    .line 700
    .line 701
    move-result-object v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 702
    goto :goto_2

    .line 703
    :catch_2
    move-exception v0

    .line 704
    move-object v15, v0

    .line 705
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    sget-object v6, Lvc/e;->a:Lorg/slf4j/Logger;

    .line 710
    .line 711
    invoke-interface {v6, v0, v15}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    .line 713
    .line 714
    :cond_2
    move-object v0, v9

    .line 715
    :goto_2
    iput-object v0, v1, Lwc/a;->c0:Ljava/net/InetAddress;

    .line 716
    .line 717
    const-string v0, "jcifs.netbios.lmhosts"

    .line 718
    .line 719
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    iput-object v0, v1, Lwc/a;->d0:Ljava/lang/String;

    .line 724
    .line 725
    new-array v6, v4, [Ljava/net/InetAddress;

    .line 726
    .line 727
    const-string v0, "jcifs.netbios.wins"

    .line 728
    .line 729
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    const-string v15, ","

    .line 734
    .line 735
    if-eqz v0, :cond_4

    .line 736
    .line 737
    new-instance v12, Ljava/util/StringTokenizer;

    .line 738
    .line 739
    invoke-direct {v12, v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    new-array v3, v0, [Ljava/net/InetAddress;

    .line 747
    .line 748
    const/4 v9, 0x0

    .line 749
    :goto_3
    if-ge v9, v0, :cond_3

    .line 750
    .line 751
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    :try_start_3
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 756
    .line 757
    .line 758
    move-result-object v18

    .line 759
    aput-object v18, v3, v9
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3

    .line 760
    .line 761
    add-int/2addr v9, v5

    .line 762
    const/4 v4, 0x0

    .line 763
    goto :goto_3

    .line 764
    :catch_3
    move-exception v0

    .line 765
    invoke-static {v7, v4}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    sget-object v4, Lvc/e;->a:Lorg/slf4j/Logger;

    .line 770
    .line 771
    invoke-interface {v4, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    .line 773
    .line 774
    goto :goto_4

    .line 775
    :cond_3
    move-object v6, v3

    .line 776
    :cond_4
    :goto_4
    iput-object v6, v1, Lwc/a;->e0:[Ljava/net/InetAddress;

    .line 777
    .line 778
    const-string v0, "jcifs.smb.client.transaction_buf_size"

    .line 779
    .line 780
    invoke-static {v2, v0, v11}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    add-int/lit16 v0, v0, -0x200

    .line 785
    .line 786
    iput v0, v1, Lwc/a;->i0:I

    .line 787
    .line 788
    const-string v0, "jcifs.smb.maxBuffers"

    .line 789
    .line 790
    const/16 v3, 0x10

    .line 791
    .line 792
    invoke-static {v2, v0, v3}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    iput v0, v1, Lwc/a;->j0:I

    .line 797
    .line 798
    const-string v0, "jcifs.smb.client.listSize"

    .line 799
    .line 800
    const v4, 0xff9b

    .line 801
    .line 802
    .line 803
    invoke-static {v2, v0, v4}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    iput v0, v1, Lwc/a;->k0:I

    .line 808
    .line 809
    const-string v0, "jcifs.smb.client.listCount"

    .line 810
    .line 811
    const/16 v4, 0xc8

    .line 812
    .line 813
    invoke-static {v2, v0, v4}, Lvc/e;->b(Ljava/util/Properties;Ljava/lang/String;I)I

    .line 814
    .line 815
    .line 816
    const-string v0, "jcifs.smb.client.attrExpirationPeriod"

    .line 817
    .line 818
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    if-eqz v0, :cond_5

    .line 823
    .line 824
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 825
    .line 826
    .line 827
    move-result-wide v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 828
    goto :goto_5

    .line 829
    :catch_4
    move-exception v0

    .line 830
    move-object v4, v0

    .line 831
    sget-object v0, Lvc/e;->a:Lorg/slf4j/Logger;

    .line 832
    .line 833
    invoke-interface {v0, v10, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    .line 835
    .line 836
    :cond_5
    const-wide/16 v9, 0x1388

    .line 837
    .line 838
    :goto_5
    iput-wide v9, v1, Lwc/a;->l0:J

    .line 839
    .line 840
    const-string v0, "jcifs.smb.client.ignoreCopyToException"

    .line 841
    .line 842
    const/4 v4, 0x0

    .line 843
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 844
    .line 845
    .line 846
    const-string v0, "jcifs.netbios.baddr"

    .line 847
    .line 848
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v4

    .line 852
    if-eqz v4, :cond_6

    .line 853
    .line 854
    :try_start_5
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 855
    .line 856
    .line 857
    move-result-object v0
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_5

    .line 858
    goto :goto_6

    .line 859
    :catch_5
    move-exception v0

    .line 860
    move-object v6, v0

    .line 861
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    sget-object v4, Lvc/e;->a:Lorg/slf4j/Logger;

    .line 866
    .line 867
    invoke-interface {v4, v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    .line 869
    .line 870
    :cond_6
    const/4 v0, 0x0

    .line 871
    :goto_6
    iput-object v0, v1, Lwc/a;->f0:Ljava/net/InetAddress;

    .line 872
    .line 873
    const-string v0, "jcifs.traceResources"

    .line 874
    .line 875
    const/4 v4, 0x0

    .line 876
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    iput-boolean v0, v1, Lwc/a;->n0:Z

    .line 881
    .line 882
    const-string v0, "jcifs.smb.client.strictResourceLifecycle"

    .line 883
    .line 884
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    iput-boolean v0, v1, Lwc/a;->o0:Z

    .line 889
    .line 890
    const-string v0, "jcifs.smb.client.allowGuestFallback"

    .line 891
    .line 892
    invoke-static {v2, v0, v4}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    iput-boolean v0, v1, Lwc/a;->x0:Z

    .line 897
    .line 898
    const-string v0, "jcifs.smb.client.guestUsername"

    .line 899
    .line 900
    const-string v4, "JCIFSGUEST"

    .line 901
    .line 902
    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    iput-object v0, v1, Lwc/a;->v0:Ljava/lang/String;

    .line 907
    .line 908
    const-string v0, "jcifs.smb.client.guestPassword"

    .line 909
    .line 910
    invoke-virtual {v2, v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    iput-object v0, v1, Lwc/a;->w0:Ljava/lang/String;

    .line 915
    .line 916
    const-string v0, "jcifs.smb.client.minVersion"

    .line 917
    .line 918
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    const-string v4, "jcifs.smb.client.maxVersion"

    .line 923
    .line 924
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    if-nez v0, :cond_a

    .line 929
    .line 930
    if-eqz v4, :cond_7

    .line 931
    .line 932
    goto :goto_9

    .line 933
    :cond_7
    const-string v0, "jcifs.smb.client.enableSMB2"

    .line 934
    .line 935
    invoke-static {v2, v0, v5}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    const-string v4, "jcifs.smb.client.disableSMB1"

    .line 940
    .line 941
    const/4 v6, 0x0

    .line 942
    invoke-static {v2, v4, v6}, Lvc/e;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    if-eqz v4, :cond_8

    .line 947
    .line 948
    sget-object v4, Lvc/i;->d:Lvc/i;

    .line 949
    .line 950
    goto :goto_7

    .line 951
    :cond_8
    const/4 v4, 0x0

    .line 952
    :goto_7
    if-nez v0, :cond_9

    .line 953
    .line 954
    sget-object v0, Lvc/i;->c:Lvc/i;

    .line 955
    .line 956
    goto :goto_8

    .line 957
    :cond_9
    const/4 v0, 0x0

    .line 958
    :goto_8
    invoke-virtual {v1, v4, v0}, Lwc/a;->b(Lvc/i;Lvc/i;)V

    .line 959
    .line 960
    .line 961
    goto :goto_c

    .line 962
    :cond_a
    :goto_9
    if-eqz v0, :cond_b

    .line 963
    .line 964
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 965
    .line 966
    .line 967
    move-result v6

    .line 968
    if-nez v6, :cond_b

    .line 969
    .line 970
    invoke-static {v0}, Lvc/i;->valueOf(Ljava/lang/String;)Lvc/i;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    goto :goto_a

    .line 975
    :cond_b
    const/4 v0, 0x0

    .line 976
    :goto_a
    if-eqz v4, :cond_c

    .line 977
    .line 978
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 979
    .line 980
    .line 981
    move-result v6

    .line 982
    if-nez v6, :cond_c

    .line 983
    .line 984
    invoke-static {v4}, Lvc/i;->valueOf(Ljava/lang/String;)Lvc/i;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    goto :goto_b

    .line 989
    :cond_c
    const/4 v4, 0x0

    .line 990
    :goto_b
    invoke-virtual {v1, v0, v4}, Lwc/a;->b(Lvc/i;Lvc/i;)V

    .line 991
    .line 992
    .line 993
    :goto_c
    const-string v0, "jcifs.resolveOrder"

    .line 994
    .line 995
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v1, v0}, Lwc/a;->c(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    const-string v0, "jcifs.smb.client.disallowCompound"

    .line 1003
    .line 1004
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    if-nez v0, :cond_d

    .line 1009
    .line 1010
    :goto_d
    move-object v2, v14

    .line 1011
    goto :goto_f

    .line 1012
    :cond_d
    new-instance v2, Ljava/util/HashSet;

    .line 1013
    .line 1014
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    new-instance v4, Ljava/util/StringTokenizer;

    .line 1018
    .line 1019
    invoke-direct {v4, v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    :goto_e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-eqz v0, :cond_e

    .line 1027
    .line 1028
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    goto :goto_e

    .line 1040
    :cond_e
    iput-object v2, v1, Lwc/a;->p0:Ljava/util/HashSet;

    .line 1041
    .line 1042
    goto :goto_d

    .line 1043
    :goto_f
    :try_start_6
    invoke-virtual {v13, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1044
    .line 1045
    .line 1046
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 1047
    .line 1048
    .line 1049
    move-result-wide v6

    .line 1050
    const-wide/high16 v9, 0x40f0000000000000L    # 65536.0

    .line 1051
    .line 1052
    mul-double v6, v6, v9

    .line 1053
    .line 1054
    double-to-int v0, v6

    .line 1055
    iput v0, v1, Lwc/a;->b:I

    .line 1056
    .line 1057
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 1058
    .line 1059
    .line 1060
    new-instance v0, Ljava/security/SecureRandom;

    .line 1061
    .line 1062
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    iput-object v0, v1, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 1066
    .line 1067
    iget-object v2, v1, Lwc/a;->u0:[B

    .line 1068
    .line 1069
    if-nez v2, :cond_f

    .line 1070
    .line 1071
    const/16 v2, 0x20

    .line 1072
    .line 1073
    new-array v2, v2, [B

    .line 1074
    .line 1075
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1076
    .line 1077
    .line 1078
    iput-object v2, v1, Lwc/a;->u0:[B

    .line 1079
    .line 1080
    :cond_f
    iget-object v0, v1, Lwc/a;->J:Ljava/lang/String;

    .line 1081
    .line 1082
    if-nez v0, :cond_10

    .line 1083
    .line 1084
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    iput-object v0, v1, Lwc/a;->J:Ljava/lang/String;

    .line 1089
    .line 1090
    :cond_10
    iget v0, v1, Lwc/a;->x:I

    .line 1091
    .line 1092
    iget-boolean v2, v1, Lwc/a;->e:Z

    .line 1093
    .line 1094
    iget-boolean v4, v1, Lwc/a;->k:Z

    .line 1095
    .line 1096
    iget-boolean v6, v1, Lwc/a;->l:Z

    .line 1097
    .line 1098
    const v7, 0x8000

    .line 1099
    .line 1100
    .line 1101
    const/16 v8, 0x4000

    .line 1102
    .line 1103
    const/4 v9, 0x4

    .line 1104
    if-nez v0, :cond_16

    .line 1105
    .line 1106
    if-eqz v6, :cond_11

    .line 1107
    .line 1108
    const/16 v0, 0x800

    .line 1109
    .line 1110
    :goto_10
    const/4 v10, 0x3

    .line 1111
    goto :goto_11

    .line 1112
    :cond_11
    const/4 v0, 0x0

    .line 1113
    goto :goto_10

    .line 1114
    :goto_11
    or-int/2addr v0, v10

    .line 1115
    iget-boolean v10, v1, Lwc/a;->g:Z

    .line 1116
    .line 1117
    if-eqz v10, :cond_12

    .line 1118
    .line 1119
    const/4 v10, 0x4

    .line 1120
    goto :goto_12

    .line 1121
    :cond_12
    const/4 v10, 0x0

    .line 1122
    :goto_12
    or-int/2addr v0, v10

    .line 1123
    if-eqz v4, :cond_13

    .line 1124
    .line 1125
    const/16 v10, 0x4000

    .line 1126
    .line 1127
    goto :goto_13

    .line 1128
    :cond_13
    const/4 v10, 0x0

    .line 1129
    :goto_13
    or-int/2addr v0, v10

    .line 1130
    if-nez v2, :cond_15

    .line 1131
    .line 1132
    iget-boolean v10, v1, Lwc/a;->f:Z

    .line 1133
    .line 1134
    if-eqz v10, :cond_14

    .line 1135
    .line 1136
    goto :goto_14

    .line 1137
    :cond_14
    const/4 v10, 0x0

    .line 1138
    goto :goto_15

    .line 1139
    :cond_15
    :goto_14
    const v10, 0x8000

    .line 1140
    .line 1141
    .line 1142
    :goto_15
    or-int/2addr v0, v10

    .line 1143
    iput v0, v1, Lwc/a;->x:I

    .line 1144
    .line 1145
    :cond_16
    iget v0, v1, Lwc/a;->y:I

    .line 1146
    .line 1147
    if-nez v0, :cond_1d

    .line 1148
    .line 1149
    iget-boolean v0, v1, Lwc/a;->p:Z

    .line 1150
    .line 1151
    if-eqz v0, :cond_17

    .line 1152
    .line 1153
    const/16 v14, 0x10

    .line 1154
    .line 1155
    goto :goto_16

    .line 1156
    :cond_17
    const/4 v14, 0x0

    .line 1157
    :goto_16
    if-eqz v4, :cond_18

    .line 1158
    .line 1159
    const/16 v4, 0x40

    .line 1160
    .line 1161
    goto :goto_17

    .line 1162
    :cond_18
    const/4 v4, 0x0

    .line 1163
    :goto_17
    or-int v0, v14, v4

    .line 1164
    .line 1165
    if-eqz v6, :cond_19

    .line 1166
    .line 1167
    const/high16 v4, -0x80000000

    .line 1168
    .line 1169
    goto :goto_18

    .line 1170
    :cond_19
    const/4 v4, 0x0

    .line 1171
    :goto_18
    or-int/2addr v0, v4

    .line 1172
    iget-boolean v3, v1, Lwc/a;->q:Z

    .line 1173
    .line 1174
    if-eqz v3, :cond_1a

    .line 1175
    .line 1176
    const/16 v4, 0x4000

    .line 1177
    .line 1178
    goto :goto_19

    .line 1179
    :cond_1a
    const/4 v4, 0x0

    .line 1180
    :goto_19
    or-int/2addr v0, v4

    .line 1181
    if-eqz v3, :cond_1b

    .line 1182
    .line 1183
    const v4, 0x8000

    .line 1184
    .line 1185
    .line 1186
    goto :goto_1a

    .line 1187
    :cond_1b
    const/4 v4, 0x0

    .line 1188
    :goto_1a
    or-int/2addr v0, v4

    .line 1189
    if-eqz v2, :cond_1c

    .line 1190
    .line 1191
    const/4 v4, 0x4

    .line 1192
    goto :goto_1b

    .line 1193
    :cond_1c
    const/4 v4, 0x0

    .line 1194
    :goto_1b
    or-int/2addr v0, v4

    .line 1195
    iput v0, v1, Lwc/a;->y:I

    .line 1196
    .line 1197
    :cond_1d
    iget-object v0, v1, Lwc/a;->f0:Ljava/net/InetAddress;

    .line 1198
    .line 1199
    if-nez v0, :cond_1e

    .line 1200
    .line 1201
    :try_start_7
    const-string v0, "255.255.255.255"

    .line 1202
    .line 1203
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    iput-object v0, v1, Lwc/a;->f0:Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1208
    .line 1209
    goto :goto_1c

    .line 1210
    :catch_6
    move-exception v0

    .line 1211
    sget-object v2, Lwc/a;->y0:Lorg/slf4j/Logger;

    .line 1212
    .line 1213
    const-string v3, "Failed to get broadcast address"

    .line 1214
    .line 1215
    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    .line 1217
    .line 1218
    :cond_1e
    :goto_1c
    iget-object v0, v1, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 1219
    .line 1220
    const/4 v2, 0x0

    .line 1221
    if-nez v0, :cond_1f

    .line 1222
    .line 1223
    invoke-virtual {v1, v2}, Lwc/a;->c(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    :cond_1f
    iget-object v0, v1, Lwc/a;->q0:Lvc/i;

    .line 1227
    .line 1228
    if-eqz v0, :cond_20

    .line 1229
    .line 1230
    iget-object v0, v1, Lwc/a;->r0:Lvc/i;

    .line 1231
    .line 1232
    if-nez v0, :cond_21

    .line 1233
    .line 1234
    :cond_20
    invoke-virtual {v1, v2, v2}, Lwc/a;->b(Lvc/i;Lvc/i;)V

    .line 1235
    .line 1236
    .line 1237
    :cond_21
    iget-object v0, v1, Lwc/a;->p0:Ljava/util/HashSet;

    .line 1238
    .line 1239
    if-nez v0, :cond_22

    .line 1240
    .line 1241
    new-instance v0, Ljava/util/HashSet;

    .line 1242
    .line 1243
    const/4 v2, 0x2

    .line 1244
    new-array v2, v2, [Ljava/lang/String;

    .line 1245
    .line 1246
    const-string v3, "Smb2SessionSetupRequest"

    .line 1247
    .line 1248
    const/4 v4, 0x0

    .line 1249
    aput-object v3, v2, v4

    .line 1250
    .line 1251
    const-string v3, "Smb2TreeConnectRequest"

    .line 1252
    .line 1253
    aput-object v3, v2, v5

    .line 1254
    .line 1255
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1260
    .line 1261
    .line 1262
    iput-object v0, v1, Lwc/a;->p0:Ljava/util/HashSet;

    .line 1263
    .line 1264
    :cond_22
    return-void

    .line 1265
    :catch_7
    new-instance v0, Lvc/c;

    .line 1266
    .line 1267
    const-string v2, "The default OEM encoding Cp850 does not appear to be supported by this JRE."

    .line 1268
    .line 1269
    invoke-direct {v0, v2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    goto :goto_1e

    .line 1273
    :goto_1d
    throw v0

    .line 1274
    :goto_1e
    goto :goto_1d
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lwc/a;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    sget-object v0, Lwc/a;->z0:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public final b(Lvc/i;Lvc/i;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lvc/i;->c:Lvc/i;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lwc/a;->q0:Lvc/i;

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    sget-object p2, Lvc/i;->e:Lvc/i;

    .line 12
    .line 13
    :goto_1
    iput-object p2, p0, Lwc/a;->r0:Lvc/i;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lvc/i;->a(Lvc/i;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lwc/a;->q0:Lvc/i;

    .line 22
    .line 23
    iput-object p1, p0, Lwc/a;->r0:Lvc/i;

    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 7
    .line 8
    sget-object v0, Lvc/m;->a:Lvc/m;

    .line 9
    .line 10
    iget-object v1, p0, Lwc/a;->e0:[Ljava/net/InetAddress;

    .line 11
    .line 12
    sget-object v2, Lvc/m;->c:Lvc/m;

    .line 13
    .line 14
    sget-object v3, Lvc/m;->b:Lvc/m;

    .line 15
    .line 16
    sget-object v4, Lvc/m;->d:Lvc/m;

    .line 17
    .line 18
    if-eqz p1, :cond_6

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    .line 28
    .line 29
    const-string v6, ","

    .line 30
    .line 31
    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_8

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v6, "LMHOSTS"

    .line 49
    .line 50
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v6, "WINS"

    .line 63
    .line 64
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    sget-object v7, Lwc/a;->y0:Lorg/slf4j/Logger;

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    array-length p1, v1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    const-string p1, "UniAddress resolveOrder specifies WINS however  WINS server has not been configured"

    .line 76
    .line 77
    invoke-interface {v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const-string v6, "BCAST"

    .line 88
    .line 89
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const-string v6, "DNS"

    .line 102
    .line 103
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_5

    .line 108
    .line 109
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    const-string v6, "unknown resolver method: "

    .line 116
    .line 117
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    :goto_1
    array-length p1, v1

    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lwc/a;->g0:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_8
    :goto_2
    return-void
.end method
