.class public interface abstract Lce/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a0:Ljava/net/InetAddress;

.field public static final b0:I

.field public static final c0:I

.field public static final d0:I

.field public static final e0:I

.field public static final f0:Z

.field public static final g0:Z

.field public static final i0:Z

.field public static final j0:I

.field public static final k0:I

.field public static final l0:Z

.field public static final m0:Ljava/lang/String;

.field public static final n0:I

.field public static final o0:I

.field public static final p0:I

.field public static final q0:I

.field public static final r0:Ljava/util/LinkedList;

.field public static final s0:I

.field public static final u0:I

.field public static final v0:I

.field public static final w0:Ljava/lang/String;

.field public static final x0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    const-string v1, "jcifs.smb1.smb.client.laddr"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    sget v2, Lde/d;->b:I

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lwd/a;->b:Lde/d;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    sput-object v0, Lce/q0;->a0:Ljava/net/InetAddress;

    .line 32
    .line 33
    const-string v0, "jcifs.smb1.smb.client.lport"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v2, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput v0, Lce/q0;->b0:I

    .line 41
    .line 42
    const-string v0, "jcifs.smb1.smb.client.maxMpxCount"

    .line 43
    .line 44
    const/16 v3, 0xa

    .line 45
    .line 46
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sput v0, Lce/q0;->c0:I

    .line 51
    .line 52
    const-string v0, "jcifs.smb1.smb.client.snd_buf_size"

    .line 53
    .line 54
    const/16 v3, 0x4104

    .line 55
    .line 56
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sput v0, Lce/q0;->d0:I

    .line 61
    .line 62
    const-string v0, "jcifs.smb1.smb.client.rcv_buf_size"

    .line 63
    .line 64
    const v3, 0xec00

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Lce/q0;->e0:I

    .line 72
    .line 73
    const-string v0, "jcifs.smb1.smb.client.useUnicode"

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    invoke-static {v0, v3}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    sput-boolean v4, Lce/q0;->f0:Z

    .line 81
    .line 82
    invoke-static {v0, v2}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sput-boolean v0, Lce/q0;->g0:Z

    .line 87
    .line 88
    const-string v0, "jcifs.smb1.smb.client.useNtStatus"

    .line 89
    .line 90
    invoke-static {v0, v3}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v5, "jcifs.smb1.smb.client.signingPreferred"

    .line 95
    .line 96
    invoke-static {v5, v2}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    sput-boolean v5, Lce/q0;->i0:Z

    .line 101
    .line 102
    const-string v6, "jcifs.smb1.smb.client.useNTSmbs"

    .line 103
    .line 104
    invoke-static {v6, v3}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    const-string v7, "jcifs.smb1.smb.client.useExtendedSecurity"

    .line 109
    .line 110
    invoke-static {v7, v3}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    const-string v8, "jcifs.smb1.netbios.hostname"

    .line 115
    .line 116
    invoke-static {v8}, Lwd/a;->d(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v8, "jcifs.smb1.smb.lmCompatibility"

    .line 120
    .line 121
    const/4 v9, 0x3

    .line 122
    invoke-static {v9, v8}, Lwd/a;->c(ILjava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    sput v8, Lce/q0;->j0:I

    .line 127
    .line 128
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    const-wide/high16 v12, 0x40f0000000000000L    # 65536.0

    .line 133
    .line 134
    mul-double v10, v10, v12

    .line 135
    .line 136
    double-to-int v8, v10

    .line 137
    sput v8, Lce/q0;->k0:I

    .line 138
    .line 139
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 140
    .line 141
    .line 142
    const-string v8, "jcifs.smb1.smb.client.useBatching"

    .line 143
    .line 144
    invoke-static {v8, v3}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    sput-boolean v3, Lce/q0;->l0:Z

    .line 149
    .line 150
    sget-object v3, Lwd/a;->c:Ljava/lang/String;

    .line 151
    .line 152
    sget-object v8, Lwd/a;->a:Ljava/util/Properties;

    .line 153
    .line 154
    const-string v10, "jcifs.smb1.encoding"

    .line 155
    .line 156
    invoke-virtual {v8, v10, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    sput-object v3, Lce/q0;->m0:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v7, :cond_1

    .line 163
    .line 164
    const/16 v3, 0x800

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_1
    const/4 v3, 0x0

    .line 168
    :goto_1
    or-int/2addr v3, v9

    .line 169
    const/4 v7, 0x4

    .line 170
    if-eqz v5, :cond_2

    .line 171
    .line 172
    const/4 v5, 0x4

    .line 173
    goto :goto_2

    .line 174
    :cond_2
    const/4 v5, 0x0

    .line 175
    :goto_2
    or-int/2addr v3, v5

    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    const/16 v5, 0x4000

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_3
    const/4 v5, 0x0

    .line 182
    :goto_3
    or-int/2addr v3, v5

    .line 183
    if-eqz v4, :cond_4

    .line 184
    .line 185
    const v5, 0x8000

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_4
    const/4 v5, 0x0

    .line 190
    :goto_4
    or-int/2addr v3, v5

    .line 191
    sput v3, Lce/q0;->n0:I

    .line 192
    .line 193
    if-eqz v6, :cond_5

    .line 194
    .line 195
    const/16 v5, 0x10

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_5
    const/4 v5, 0x0

    .line 199
    :goto_5
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const/16 v0, 0x40

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_6
    const/4 v0, 0x0

    .line 205
    :goto_6
    or-int/2addr v0, v5

    .line 206
    if-eqz v4, :cond_7

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_7
    const/4 v7, 0x0

    .line 210
    :goto_7
    or-int/2addr v0, v7

    .line 211
    or-int/lit16 v0, v0, 0x1000

    .line 212
    .line 213
    const-string v4, "jcifs.smb1.smb.client.flags2"

    .line 214
    .line 215
    invoke-static {v3, v4}, Lwd/a;->c(ILjava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    sput v3, Lce/q0;->o0:I

    .line 220
    .line 221
    const-string v3, "jcifs.smb1.smb.client.capabilities"

    .line 222
    .line 223
    invoke-static {v0, v3}, Lwd/a;->c(ILjava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    sput v0, Lce/q0;->p0:I

    .line 228
    .line 229
    const-string v0, "jcifs.smb1.smb.client.tcpNoDelay"

    .line 230
    .line 231
    invoke-static {v0, v2}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    const-string v0, "jcifs.smb1.smb.client.responseTimeout"

    .line 235
    .line 236
    const/16 v3, 0x7530

    .line 237
    .line 238
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    sput v0, Lce/q0;->q0:I

    .line 243
    .line 244
    new-instance v0, Ljava/util/LinkedList;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 247
    .line 248
    .line 249
    sput-object v0, Lce/q0;->r0:Ljava/util/LinkedList;

    .line 250
    .line 251
    const-string v0, "jcifs.smb1.smb.client.ssnLimit"

    .line 252
    .line 253
    const/16 v3, 0xfa

    .line 254
    .line 255
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    sput v0, Lce/q0;->s0:I

    .line 260
    .line 261
    const-string v0, "jcifs.smb1.smb.client.soTimeout"

    .line 262
    .line 263
    const v3, 0x88b8

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    sput v0, Lce/q0;->u0:I

    .line 271
    .line 272
    const-string v0, "jcifs.smb1.smb.client.connTimeout"

    .line 273
    .line 274
    invoke-static {v3, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    sput v0, Lce/q0;->v0:I

    .line 279
    .line 280
    const-string v0, "os.name"

    .line 281
    .line 282
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v3, "jcifs.smb1.smb.client.nativeOs"

    .line 287
    .line 288
    invoke-virtual {v8, v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    sput-object v0, Lce/q0;->w0:Ljava/lang/String;

    .line 293
    .line 294
    const-string v0, "jcifs.smb1.smb.client.nativeLanMan"

    .line 295
    .line 296
    const-string v3, "jCIFS"

    .line 297
    .line 298
    invoke-virtual {v8, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    sput-object v0, Lce/q0;->x0:Ljava/lang/String;

    .line 303
    .line 304
    new-instance v0, Lce/b1;

    .line 305
    .line 306
    invoke-direct {v0, v1, v2, v1, v2}, Lce/b1;-><init>(Lwd/c;ILjava/net/InetAddress;I)V

    .line 307
    .line 308
    .line 309
    return-void
.end method
