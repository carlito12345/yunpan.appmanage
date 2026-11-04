.class public interface abstract Lvd/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final E0:[I

.field public static final F0:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x47

    .line 3
    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v2, Lvd/h;->E0:[I

    .line 10
    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "The operation completed successfully."

    .line 14
    .line 15
    aput-object v2, v1, v0

    .line 16
    .line 17
    const-string v0, "Request is pending"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    const-string v0, "A notify change request is being completed."

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const-string v0, "The data was too large to fit into the specified buffer."

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    aput-object v0, v1, v2

    .line 31
    .line 32
    const-string v0, "A device attached to the system is not functioning."

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    const-string v0, "Incorrect function."

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    aput-object v0, v1, v2

    .line 41
    .line 42
    const-string v0, "The parameter is incorrect."

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v0, v1, v2

    .line 46
    .line 47
    const-string v2, "Invalid access to memory location."

    .line 48
    .line 49
    const/4 v3, 0x7

    .line 50
    aput-object v2, v1, v3

    .line 51
    .line 52
    const-string v2, "The handle is invalid."

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    const/16 v3, 0x9

    .line 59
    .line 60
    aput-object v0, v1, v3

    .line 61
    .line 62
    const-string v0, "The system cannot find the file specified."

    .line 63
    .line 64
    const/16 v3, 0xa

    .line 65
    .line 66
    aput-object v0, v1, v3

    .line 67
    .line 68
    const/16 v3, 0xb

    .line 69
    .line 70
    aput-object v0, v1, v3

    .line 71
    .line 72
    const-string v3, "End of file"

    .line 73
    .line 74
    const/16 v4, 0xc

    .line 75
    .line 76
    aput-object v3, v1, v4

    .line 77
    .line 78
    const-string v3, "More data is available."

    .line 79
    .line 80
    const/16 v4, 0xd

    .line 81
    .line 82
    aput-object v3, v1, v4

    .line 83
    .line 84
    const-string v3, "Access is denied."

    .line 85
    .line 86
    const/16 v4, 0xe

    .line 87
    .line 88
    aput-object v3, v1, v4

    .line 89
    .line 90
    const-string v4, "The data area passed to a system call is too small."

    .line 91
    .line 92
    const/16 v5, 0xf

    .line 93
    .line 94
    aput-object v4, v1, v5

    .line 95
    .line 96
    const-string v4, "The filename, directory name, or volume label syntax is incorrect."

    .line 97
    .line 98
    const/16 v5, 0x10

    .line 99
    .line 100
    aput-object v4, v1, v5

    .line 101
    .line 102
    const/16 v4, 0x11

    .line 103
    .line 104
    aput-object v0, v1, v4

    .line 105
    .line 106
    const-string v0, "Cannot create a file when that file already exists."

    .line 107
    .line 108
    const/16 v4, 0x12

    .line 109
    .line 110
    aput-object v0, v1, v4

    .line 111
    .line 112
    const/16 v0, 0x13

    .line 113
    .line 114
    aput-object v2, v1, v0

    .line 115
    .line 116
    const-string v0, "The specified path is invalid."

    .line 117
    .line 118
    const/16 v2, 0x14

    .line 119
    .line 120
    aput-object v0, v1, v2

    .line 121
    .line 122
    const-string v2, "The system cannot find the path specified."

    .line 123
    .line 124
    const/16 v4, 0x15

    .line 125
    .line 126
    aput-object v2, v1, v4

    .line 127
    .line 128
    const/16 v2, 0x16

    .line 129
    .line 130
    aput-object v0, v1, v2

    .line 131
    .line 132
    const-string v0, "The process cannot access the file because it is being used by another process."

    .line 133
    .line 134
    const/16 v2, 0x17

    .line 135
    .line 136
    aput-object v0, v1, v2

    .line 137
    .line 138
    const/16 v0, 0x18

    .line 139
    .line 140
    aput-object v3, v1, v0

    .line 141
    .line 142
    const-string v0, "There are currently no logon servers available to service the logon request."

    .line 143
    .line 144
    const/16 v2, 0x19

    .line 145
    .line 146
    aput-object v0, v1, v2

    .line 147
    .line 148
    const-string v0, "The specified user already exists."

    .line 149
    .line 150
    const/16 v2, 0x1a

    .line 151
    .line 152
    aput-object v0, v1, v2

    .line 153
    .line 154
    const-string v0, "The specified user does not exist."

    .line 155
    .line 156
    const/16 v2, 0x1b

    .line 157
    .line 158
    aput-object v0, v1, v2

    .line 159
    .line 160
    const-string v0, "The specified network password is not correct."

    .line 161
    .line 162
    const/16 v2, 0x1c

    .line 163
    .line 164
    aput-object v0, v1, v2

    .line 165
    .line 166
    const-string v0, "Logon failure: unknown user name or bad password."

    .line 167
    .line 168
    const/16 v2, 0x1d

    .line 169
    .line 170
    aput-object v0, v1, v2

    .line 171
    .line 172
    const-string v0, "Logon failure: user account restriction."

    .line 173
    .line 174
    const/16 v2, 0x1e

    .line 175
    .line 176
    aput-object v0, v1, v2

    .line 177
    .line 178
    const-string v0, "Logon failure: account logon time restriction violation."

    .line 179
    .line 180
    const/16 v2, 0x1f

    .line 181
    .line 182
    aput-object v0, v1, v2

    .line 183
    .line 184
    const-string v0, "Logon failure: user not allowed to log on to this computer."

    .line 185
    .line 186
    const/16 v2, 0x20

    .line 187
    .line 188
    aput-object v0, v1, v2

    .line 189
    .line 190
    const-string v0, "Logon failure: the specified account password has expired."

    .line 191
    .line 192
    const/16 v2, 0x21

    .line 193
    .line 194
    aput-object v0, v1, v2

    .line 195
    .line 196
    const-string v0, "Logon failure: account currently disabled."

    .line 197
    .line 198
    const/16 v2, 0x22

    .line 199
    .line 200
    aput-object v0, v1, v2

    .line 201
    .line 202
    const-string v0, "No mapping between account names and security IDs was done."

    .line 203
    .line 204
    const/16 v2, 0x23

    .line 205
    .line 206
    aput-object v0, v1, v2

    .line 207
    .line 208
    const-string v0, "The security ID structure is invalid."

    .line 209
    .line 210
    const/16 v2, 0x24

    .line 211
    .line 212
    aput-object v0, v1, v2

    .line 213
    .line 214
    const-string v0, "The file system is full."

    .line 215
    .line 216
    const/16 v2, 0x25

    .line 217
    .line 218
    aput-object v0, v1, v2

    .line 219
    .line 220
    const-string v0, "All pipe instances are busy."

    .line 221
    .line 222
    const/16 v2, 0x26

    .line 223
    .line 224
    aput-object v0, v1, v2

    .line 225
    .line 226
    const/16 v2, 0x27

    .line 227
    .line 228
    aput-object v0, v1, v2

    .line 229
    .line 230
    const-string v2, "The pipe state is invalid."

    .line 231
    .line 232
    const/16 v4, 0x28

    .line 233
    .line 234
    aput-object v2, v1, v4

    .line 235
    .line 236
    const/16 v2, 0x29

    .line 237
    .line 238
    aput-object v0, v1, v2

    .line 239
    .line 240
    const-string v0, "No process is on the other end of the pipe."

    .line 241
    .line 242
    const/16 v2, 0x2a

    .line 243
    .line 244
    aput-object v0, v1, v2

    .line 245
    .line 246
    const-string v0, "The pipe is being closed."

    .line 247
    .line 248
    const/16 v2, 0x2b

    .line 249
    .line 250
    aput-object v0, v1, v2

    .line 251
    .line 252
    const-string v0, "Waiting for a process to open the other end of the pipe."

    .line 253
    .line 254
    const/16 v2, 0x2c

    .line 255
    .line 256
    aput-object v0, v1, v2

    .line 257
    .line 258
    const-string v0, "File is a directory."

    .line 259
    .line 260
    const/16 v2, 0x2d

    .line 261
    .line 262
    aput-object v0, v1, v2

    .line 263
    .line 264
    const-string v0, "A duplicate name exists on the network."

    .line 265
    .line 266
    const/16 v2, 0x2e

    .line 267
    .line 268
    aput-object v0, v1, v2

    .line 269
    .line 270
    const-string v0, "The specified network name is no longer available."

    .line 271
    .line 272
    const/16 v2, 0x2f

    .line 273
    .line 274
    aput-object v0, v1, v2

    .line 275
    .line 276
    const-string v0, "Network access is denied."

    .line 277
    .line 278
    const/16 v2, 0x30

    .line 279
    .line 280
    aput-object v0, v1, v2

    .line 281
    .line 282
    const-string v0, "Bad device type"

    .line 283
    .line 284
    const/16 v2, 0x31

    .line 285
    .line 286
    aput-object v0, v1, v2

    .line 287
    .line 288
    const-string v0, "The network name cannot be found."

    .line 289
    .line 290
    const/16 v2, 0x32

    .line 291
    .line 292
    aput-object v0, v1, v2

    .line 293
    .line 294
    const-string v0, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    .line 295
    .line 296
    const/16 v2, 0x33

    .line 297
    .line 298
    aput-object v0, v1, v2

    .line 299
    .line 300
    const-string v0, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    .line 301
    .line 302
    const/16 v2, 0x34

    .line 303
    .line 304
    aput-object v0, v1, v2

    .line 305
    .line 306
    const-string v0, "The specified domain did not exist."

    .line 307
    .line 308
    const/16 v2, 0x35

    .line 309
    .line 310
    aput-object v0, v1, v2

    .line 311
    .line 312
    const-string v0, "The directory name is invalid."

    .line 313
    .line 314
    const/16 v2, 0x36

    .line 315
    .line 316
    aput-object v0, v1, v2

    .line 317
    .line 318
    const/16 v0, 0x37

    .line 319
    .line 320
    aput-object v3, v1, v0

    .line 321
    .line 322
    const-string v0, "The format of the specified computer name is invalid."

    .line 323
    .line 324
    const/16 v2, 0x38

    .line 325
    .line 326
    aput-object v0, v1, v2

    .line 327
    .line 328
    const-string v0, "The pipe has been ended."

    .line 329
    .line 330
    const/16 v2, 0x39

    .line 331
    .line 332
    aput-object v0, v1, v2

    .line 333
    .line 334
    const-string v0, "The specified local group does not exist."

    .line 335
    .line 336
    const/16 v2, 0x3a

    .line 337
    .line 338
    aput-object v0, v1, v2

    .line 339
    .line 340
    const-string v0, "Logon failure: the user has not been granted the requested logon type at this computer."

    .line 341
    .line 342
    const/16 v2, 0x3b

    .line 343
    .line 344
    aput-object v0, v1, v2

    .line 345
    .line 346
    const-string v0, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    .line 347
    .line 348
    const/16 v2, 0x3c

    .line 349
    .line 350
    aput-object v0, v1, v2

    .line 351
    .line 352
    const-string v0, "The logon request failed because the trust relationship between the primary domain and the trusted domain failed."

    .line 353
    .line 354
    const/16 v2, 0x3d

    .line 355
    .line 356
    aput-object v0, v1, v2

    .line 357
    .line 358
    const-string v0, "The logon request failed because the trust relationship between this workstation and the primary domain failed."

    .line 359
    .line 360
    const/16 v2, 0x3e

    .line 361
    .line 362
    aput-object v0, v1, v2

    .line 363
    .line 364
    const-string v0, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    .line 365
    .line 366
    const/16 v2, 0x3f

    .line 367
    .line 368
    aput-object v0, v1, v2

    .line 369
    .line 370
    const-string v0, "The user must change his password before he logs on the first time."

    .line 371
    .line 372
    const/16 v2, 0x40

    .line 373
    .line 374
    aput-object v0, v1, v2

    .line 375
    .line 376
    const-string v0, "The object was not found."

    .line 377
    .line 378
    const/16 v2, 0x41

    .line 379
    .line 380
    aput-object v0, v1, v2

    .line 381
    .line 382
    const-string v0, "The referenced account is currently locked out and may not be logged on to."

    .line 383
    .line 384
    const/16 v2, 0x42

    .line 385
    .line 386
    aput-object v0, v1, v2

    .line 387
    .line 388
    const-string v0, "Connection refused"

    .line 389
    .line 390
    const/16 v2, 0x43

    .line 391
    .line 392
    aput-object v0, v1, v2

    .line 393
    .line 394
    const-string v0, "The remote system is not reachable by the transport."

    .line 395
    .line 396
    const/16 v2, 0x44

    .line 397
    .line 398
    aput-object v0, v1, v2

    .line 399
    .line 400
    const-string v0, "The layered file system driver for this I/O tag did not handle it when needed."

    .line 401
    .line 402
    const/16 v2, 0x45

    .line 403
    .line 404
    aput-object v0, v1, v2

    .line 405
    .line 406
    const-string v0, "No more files were found that match the file specification."

    .line 407
    .line 408
    const/16 v2, 0x46

    .line 409
    .line 410
    aput-object v0, v1, v2

    .line 411
    .line 412
    sput-object v1, Lvd/h;->F0:[Ljava/lang/String;

    .line 413
    .line 414
    return-void

    .line 415
    :array_0
    .array-data 4
        0x0
        0x103
        0x10c
        -0x7ffffffb
        -0x3fffffff    # -2.0000002f
        -0x3ffffffe    # -2.0000005f
        -0x3ffffffd    # -2.0000007f
        -0x3ffffffb    # -2.0000012f
        -0x3ffffff8    # -2.000002f
        -0x3ffffff3    # -2.000003f
        -0x3ffffff2    # -2.0000033f
        -0x3ffffff1    # -2.0000036f
        -0x3fffffef    # -2.000004f
        -0x3fffffea    # -2.0000052f
        -0x3fffffde    # -2.000008f
        -0x3fffffdd    # -2.0000083f
        -0x3fffffcd    # -2.0000122f
        -0x3fffffcc    # -2.0000124f
        -0x3fffffcb    # -2.0000126f
        -0x3fffffc9    # -2.000013f
        -0x3fffffc7    # -2.0000136f
        -0x3fffffc6    # -2.0000138f
        -0x3fffffc5    # -2.000014f
        -0x3fffffbd    # -2.000016f
        -0x3fffffaa    # -2.0000205f
        -0x3fffffa2    # -2.0000224f
        -0x3fffff9d    # -2.0000236f
        -0x3fffff9c    # -2.0000238f
        -0x3fffff96    # -2.0000253f
        -0x3fffff93    # -2.000026f
        -0x3fffff92    # -2.0000262f
        -0x3fffff91    # -2.0000265f
        -0x3fffff90    # -2.0000267f
        -0x3fffff8f    # -2.000027f
        -0x3fffff8e    # -2.0000272f
        -0x3fffff8d    # -2.0000274f
        -0x3fffff88    # -2.0000286f
        -0x3fffff81    # -2.0000303f
        -0x3fffff55    # -2.0000408f
        -0x3fffff54    # -2.000041f
        -0x3fffff53    # -2.0000412f
        -0x3fffff52    # -2.0000415f
        -0x3fffff50    # -2.000042f
        -0x3fffff4f    # -2.0000422f
        -0x3fffff4d    # -2.0000427f
        -0x3fffff46    # -2.0000443f
        -0x3fffff43    # -2.000045f
        -0x3fffff37    # -2.000048f
        -0x3fffff36    # -2.0000482f
        -0x3fffff35    # -2.0000484f
        -0x3fffff34    # -2.0000486f
        -0x3fffff30    # -2.0000496f
        -0x3fffff26    # -2.000052f
        -0x3fffff21    # -2.0000532f
        -0x3ffffefd    # -2.0000618f
        -0x3ffffedf    # -2.000069f
        -0x3ffffede    # -2.0000691f
        -0x3ffffeb5    # -2.000079f
        -0x3ffffeaf    # -2.0000803f
        -0x3ffffea5    # -2.0000827f
        -0x3ffffe75    # -2.0000942f
        -0x3ffffe74    # -2.0000944f
        -0x3ffffe73    # -2.0000947f
        -0x3ffffe67    # -2.0000975f
        -0x3ffffddc    # -2.0001307f
        -0x3ffffddb    # -2.000131f
        -0x3ffffdcc    # -2.0001345f
        -0x3ffffdca    # -2.000135f
        -0x3ffffda9    # -2.0001428f
        -0x3ffffd87    # -2.000151f
        -0x7ffffffa
    .end array-data
.end method
