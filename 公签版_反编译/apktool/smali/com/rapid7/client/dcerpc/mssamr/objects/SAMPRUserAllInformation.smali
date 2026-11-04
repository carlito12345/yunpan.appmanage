.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private accountExpires:J

.field private adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private badPasswordCount:I

.field private codePage:I

.field private countryCode:I

.field private fullName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private homeDirectory:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private homeDirectoryDrive:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private lastLogoff:J

.field private lastLogon:J

.field private lmOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

.field private lmPasswordPresent:C

.field private logonCount:I

.field private logonHours:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

.field private ntOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

.field private ntPasswordPresent:C

.field private parameters:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private passwordCanChange:J

.field private passwordExpired:C

.field private passwordLastSet:J

.field private passwordMustChange:J

.field private primaryGroupId:J

.field private privateData:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private privateDataSensitive:C

.field private profilePath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private scriptPath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private securityDescriptor:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

.field private userAccountControl:J

.field private userComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private userId:J

.field private userName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private whichFields:J

.field private workStations:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;


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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogon()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogon()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogoff()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogoff()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordLastSet()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordLastSet()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAccountExpires()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAccountExpires()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordCanChange()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordCanChange()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordMustChange()J

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordMustChange()J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getFullName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getFullName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_2

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectory()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectory()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_2

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectoryDrive()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectoryDrive()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_2

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getScriptPath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getScriptPath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_2

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getProfilePath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getProfilePath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_2

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_2

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWorkStations()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWorkStations()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_2

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_2

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getParameters()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getParameters()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_2

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_2

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_2

    .line 312
    .line 313
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateData()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateData()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_2

    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getSecurityDescriptor()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getSecurityDescriptor()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_2

    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserId()J

    .line 342
    .line 343
    .line 344
    move-result-wide v3

    .line 345
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserId()J

    .line 350
    .line 351
    .line 352
    move-result-wide v3

    .line 353
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_2

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrimaryGroupId()J

    .line 364
    .line 365
    .line 366
    move-result-wide v3

    .line 367
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrimaryGroupId()J

    .line 372
    .line 373
    .line 374
    move-result-wide v3

    .line 375
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_2

    .line 384
    .line 385
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserAccountControl()J

    .line 386
    .line 387
    .line 388
    move-result-wide v3

    .line 389
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserAccountControl()J

    .line 394
    .line 395
    .line 396
    move-result-wide v3

    .line 397
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_2

    .line 406
    .line 407
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWhichFields()J

    .line 408
    .line 409
    .line 410
    move-result-wide v3

    .line 411
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWhichFields()J

    .line 416
    .line 417
    .line 418
    move-result-wide v3

    .line 419
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_2

    .line 428
    .line 429
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonHours()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonHours()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_2

    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getBadPasswordCount()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getBadPasswordCount()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_2

    .line 464
    .line 465
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonCount()I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonCount()I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_2

    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCountryCode()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCountryCode()I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_2

    .line 508
    .line 509
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCodePage()I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCodePage()I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_2

    .line 530
    .line 531
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmPasswordPresent()C

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmPasswordPresent()C

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_2

    .line 552
    .line 553
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtPasswordPresent()C

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtPasswordPresent()C

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-eqz v1, :cond_2

    .line 574
    .line 575
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordExpired()C

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordExpired()C

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_2

    .line 596
    .line 597
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateDataSensitive()C

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateDataSensitive()C

    .line 606
    .line 607
    .line 608
    move-result p1

    .line 609
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result p1

    .line 617
    if-eqz p1, :cond_2

    .line 618
    .line 619
    goto :goto_0

    .line 620
    :cond_2
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0
.end method

.method public getAccountExpires()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->accountExpires:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBadPasswordCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->badPasswordCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodePage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->codePage:I

    .line 2
    .line 3
    return v0
.end method

.method public getCountryCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->countryCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getFullName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->fullName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHomeDirectory()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectory:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHomeDirectoryDrive()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectoryDrive:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastLogoff()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lastLogoff:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastLogon()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lastLogon:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLmOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLmPasswordPresent()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmPasswordPresent:C

    .line 2
    .line 3
    return v0
.end method

.method public getLogonCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogonHours()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonHours:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNtOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNtPasswordPresent()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntPasswordPresent:C

    .line 2
    .line 3
    return v0
.end method

.method public getParameters()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->parameters:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPasswordCanChange()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordCanChange:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPasswordExpired()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordExpired:C

    .line 2
    .line 3
    return v0
.end method

.method public getPasswordLastSet()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordLastSet:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPasswordMustChange()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordMustChange:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPrimaryGroupId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->primaryGroupId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPrivateData()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateData:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivateDataSensitive()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateDataSensitive:C

    .line 2
    .line 3
    return v0
.end method

.method public getProfilePath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->profilePath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScriptPath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->scriptPath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecurityDescriptor()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->securityDescriptor:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserAccountControl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userAccountControl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUserComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUserName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWhichFields()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->whichFields:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getWorkStations()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->workStations:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 35

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogon()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogoff()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordLastSet()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAccountExpires()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordCanChange()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordMustChange()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getFullName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectory()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectoryDrive()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getScriptPath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getProfilePath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWorkStations()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getParameters()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 94
    .line 95
    .line 96
    move-result-object v17

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateData()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 98
    .line 99
    .line 100
    move-result-object v18

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getSecurityDescriptor()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 102
    .line 103
    .line 104
    move-result-object v19

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserId()J

    .line 106
    .line 107
    .line 108
    move-result-wide v20

    .line 109
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v20

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrimaryGroupId()J

    .line 114
    .line 115
    .line 116
    move-result-wide v21

    .line 117
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v21

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserAccountControl()J

    .line 122
    .line 123
    .line 124
    move-result-wide v22

    .line 125
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v22

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWhichFields()J

    .line 130
    .line 131
    .line 132
    move-result-wide v23

    .line 133
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v23

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonHours()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 138
    .line 139
    .line 140
    move-result-object v24

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getBadPasswordCount()I

    .line 142
    .line 143
    .line 144
    move-result v25

    .line 145
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v25

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonCount()I

    .line 150
    .line 151
    .line 152
    move-result v26

    .line 153
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v26

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCountryCode()I

    .line 158
    .line 159
    .line 160
    move-result v27

    .line 161
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v27

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCodePage()I

    .line 166
    .line 167
    .line 168
    move-result v28

    .line 169
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v28

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmPasswordPresent()C

    .line 174
    .line 175
    .line 176
    move-result v29

    .line 177
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 178
    .line 179
    .line 180
    move-result-object v29

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtPasswordPresent()C

    .line 182
    .line 183
    .line 184
    move-result v30

    .line 185
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 186
    .line 187
    .line 188
    move-result-object v30

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordExpired()C

    .line 190
    .line 191
    .line 192
    move-result v31

    .line 193
    invoke-static/range {v31 .. v31}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 194
    .line 195
    .line 196
    move-result-object v31

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateDataSensitive()C

    .line 198
    .line 199
    .line 200
    move-result v32

    .line 201
    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 202
    .line 203
    .line 204
    move-result-object v32

    .line 205
    move-object/from16 v33, v15

    .line 206
    .line 207
    const/16 v15, 0x21

    .line 208
    .line 209
    new-array v15, v15, [Ljava/lang/Object;

    .line 210
    .line 211
    const/16 v34, 0x0

    .line 212
    .line 213
    aput-object v0, v15, v34

    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    aput-object v1, v15, v0

    .line 217
    .line 218
    const/4 v0, 0x2

    .line 219
    aput-object v2, v15, v0

    .line 220
    .line 221
    const/4 v0, 0x3

    .line 222
    aput-object v3, v15, v0

    .line 223
    .line 224
    const/4 v0, 0x4

    .line 225
    aput-object v4, v15, v0

    .line 226
    .line 227
    const/4 v0, 0x5

    .line 228
    aput-object v5, v15, v0

    .line 229
    .line 230
    const/4 v0, 0x6

    .line 231
    aput-object v6, v15, v0

    .line 232
    .line 233
    const/4 v0, 0x7

    .line 234
    aput-object v7, v15, v0

    .line 235
    .line 236
    const/16 v0, 0x8

    .line 237
    .line 238
    aput-object v8, v15, v0

    .line 239
    .line 240
    const/16 v0, 0x9

    .line 241
    .line 242
    aput-object v9, v15, v0

    .line 243
    .line 244
    const/16 v0, 0xa

    .line 245
    .line 246
    aput-object v10, v15, v0

    .line 247
    .line 248
    const/16 v0, 0xb

    .line 249
    .line 250
    aput-object v11, v15, v0

    .line 251
    .line 252
    const/16 v0, 0xc

    .line 253
    .line 254
    aput-object v12, v15, v0

    .line 255
    .line 256
    const/16 v0, 0xd

    .line 257
    .line 258
    aput-object v13, v15, v0

    .line 259
    .line 260
    const/16 v0, 0xe

    .line 261
    .line 262
    aput-object v14, v15, v0

    .line 263
    .line 264
    const/16 v0, 0xf

    .line 265
    .line 266
    aput-object v33, v15, v0

    .line 267
    .line 268
    const/16 v0, 0x10

    .line 269
    .line 270
    aput-object v16, v15, v0

    .line 271
    .line 272
    const/16 v0, 0x11

    .line 273
    .line 274
    aput-object v17, v15, v0

    .line 275
    .line 276
    const/16 v0, 0x12

    .line 277
    .line 278
    aput-object v18, v15, v0

    .line 279
    .line 280
    const/16 v0, 0x13

    .line 281
    .line 282
    aput-object v19, v15, v0

    .line 283
    .line 284
    const/16 v0, 0x14

    .line 285
    .line 286
    aput-object v20, v15, v0

    .line 287
    .line 288
    const/16 v0, 0x15

    .line 289
    .line 290
    aput-object v21, v15, v0

    .line 291
    .line 292
    const/16 v0, 0x16

    .line 293
    .line 294
    aput-object v22, v15, v0

    .line 295
    .line 296
    const/16 v0, 0x17

    .line 297
    .line 298
    aput-object v23, v15, v0

    .line 299
    .line 300
    const/16 v0, 0x18

    .line 301
    .line 302
    aput-object v24, v15, v0

    .line 303
    .line 304
    const/16 v0, 0x19

    .line 305
    .line 306
    aput-object v25, v15, v0

    .line 307
    .line 308
    const/16 v0, 0x1a

    .line 309
    .line 310
    aput-object v26, v15, v0

    .line 311
    .line 312
    const/16 v0, 0x1b

    .line 313
    .line 314
    aput-object v27, v15, v0

    .line 315
    .line 316
    const/16 v0, 0x1c

    .line 317
    .line 318
    aput-object v28, v15, v0

    .line 319
    .line 320
    const/16 v0, 0x1d

    .line 321
    .line 322
    aput-object v29, v15, v0

    .line 323
    .line 324
    const/16 v0, 0x1e

    .line 325
    .line 326
    aput-object v30, v15, v0

    .line 327
    .line 328
    const/16 v0, 0x1f

    .line 329
    .line 330
    aput-object v31, v15, v0

    .line 331
    .line 332
    const/16 v0, 0x20

    .line 333
    .line 334
    aput-object v32, v15, v0

    .line 335
    .line 336
    invoke-static {v15}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    return v0
.end method

.method public setAccountExpires(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->accountExpires:J

    .line 2
    .line 3
    return-void
.end method

.method public setAdminComment(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setBadPasswordCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->badPasswordCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setCodePage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->codePage:I

    .line 2
    .line 3
    return-void
.end method

.method public setCountryCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->countryCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setFullName(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->fullName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setHomeDirectory(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectory:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setHomeDirectoryDrive(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectoryDrive:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setLastLogoff(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lastLogoff:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastLogon(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lastLogon:J

    .line 2
    .line 3
    return-void
.end method

.method public setLmOwfPassword(Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 2
    .line 3
    return-void
.end method

.method public setLmPasswordPresent(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmPasswordPresent:C

    .line 2
    .line 3
    return-void
.end method

.method public setLogonCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setLogonHours(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonHours:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 2
    .line 3
    return-void
.end method

.method public setNtOwfPassword(Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 2
    .line 3
    return-void
.end method

.method public setNtPasswordPresent(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntPasswordPresent:C

    .line 2
    .line 3
    return-void
.end method

.method public setParameters(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->parameters:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setPasswordCanChange(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordCanChange:J

    .line 2
    .line 3
    return-void
.end method

.method public setPasswordExpired(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordExpired:C

    .line 2
    .line 3
    return-void
.end method

.method public setPasswordLastSet(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordLastSet:J

    .line 2
    .line 3
    return-void
.end method

.method public setPasswordMustChange(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordMustChange:J

    .line 2
    .line 3
    return-void
.end method

.method public setPrimaryGroupId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->primaryGroupId:J

    .line 2
    .line 3
    return-void
.end method

.method public setPrivateData(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateData:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setPrivateDataSensitive(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateDataSensitive:C

    .line 2
    .line 3
    return-void
.end method

.method public setProfilePath(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->profilePath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setScriptPath(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->scriptPath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setSecurityDescriptor(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->securityDescriptor:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 2
    .line 3
    return-void
.end method

.method public setUserAccountControl(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userAccountControl:J

    .line 2
    .line 3
    return-void
.end method

.method public setUserComment(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userId:J

    .line 2
    .line 3
    return-void
.end method

.method public setUserName(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setWhichFields(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->whichFields:J

    .line 2
    .line 3
    return-void
.end method

.method public setWorkStations(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->workStations:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrimaryGroupId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getFullName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v0, v4, v5

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v4, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v4, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v4, v0

    .line 39
    .line 40
    const-string v0, "SAMPR_USER_ALL_INFORMATION{UserId:%d, PrimaryGroupId:%d, UserName:%s, FullName:%s}"

    .line 41
    .line 42
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->fullName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectory:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectoryDrive:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->scriptPath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->profilePath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->workStations:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->parameters:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateData:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->securityDescriptor:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonHours:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->EIGHT:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lastLogon:J

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lastLogoff:J

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordLastSet:J

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->accountExpires:J

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordCanChange:J

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordMustChange:J

    .line 41
    .line 42
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->fullName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectory:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectoryDrive:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->scriptPath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->profilePath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->workStations:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->parameters:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateData:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->securityDescriptor:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userId:J

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->primaryGroupId:J

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userAccountControl:J

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->whichFields:J

    .line 135
    .line 136
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonHours:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->TWO:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->badPasswordCount:I

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonCount:I

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->countryCode:I

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->codePage:I

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedByte()C

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmPasswordPresent:C

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedByte()C

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iput-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntPasswordPresent:C

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedByte()C

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput-char v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->passwordExpired:C

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedByte()C

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput-char p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateDataSensitive:C

    .line 193
    .line 194
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->fullName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectory:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->homeDirectoryDrive:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->scriptPath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->profilePath:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->adminComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->workStations:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->userComment:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->parameters:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->lmOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->ntOwfPassword:Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->privateData:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 132
    .line 133
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->securityDescriptor:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 142
    .line 143
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->logonHours:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
