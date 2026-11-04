.class public interface abstract Lce/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final U:[I

.field public static final W:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x3e

    .line 3
    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v2, Lce/o;->U:[I

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
    const-string v0, "A device attached to the system is not functioning."

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    const-string v0, "Incorrect function."

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const-string v0, "The parameter is incorrect."

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    aput-object v0, v1, v2

    .line 31
    .line 32
    const-string v2, "Invalid access to memory location."

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    aput-object v2, v1, v3

    .line 36
    .line 37
    const-string v2, "The handle is invalid."

    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    aput-object v0, v1, v3

    .line 44
    .line 45
    const-string v0, "The system cannot find the file specified."

    .line 46
    .line 47
    const/4 v3, 0x7

    .line 48
    aput-object v0, v1, v3

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    aput-object v0, v1, v3

    .line 53
    .line 54
    const-string v3, "More data is available."

    .line 55
    .line 56
    const/16 v4, 0x9

    .line 57
    .line 58
    aput-object v3, v1, v4

    .line 59
    .line 60
    const-string v3, "Access is denied."

    .line 61
    .line 62
    const/16 v4, 0xa

    .line 63
    .line 64
    aput-object v3, v1, v4

    .line 65
    .line 66
    const-string v4, "The data area passed to a system call is too small."

    .line 67
    .line 68
    const/16 v5, 0xb

    .line 69
    .line 70
    aput-object v4, v1, v5

    .line 71
    .line 72
    const-string v4, "The filename, directory name, or volume label syntax is incorrect."

    .line 73
    .line 74
    const/16 v5, 0xc

    .line 75
    .line 76
    aput-object v4, v1, v5

    .line 77
    .line 78
    const/16 v4, 0xd

    .line 79
    .line 80
    aput-object v0, v1, v4

    .line 81
    .line 82
    const-string v0, "Cannot create a file when that file already exists."

    .line 83
    .line 84
    const/16 v4, 0xe

    .line 85
    .line 86
    aput-object v0, v1, v4

    .line 87
    .line 88
    const/16 v0, 0xf

    .line 89
    .line 90
    aput-object v2, v1, v0

    .line 91
    .line 92
    const-string v0, "The specified path is invalid."

    .line 93
    .line 94
    const/16 v2, 0x10

    .line 95
    .line 96
    aput-object v0, v1, v2

    .line 97
    .line 98
    const-string v2, "The system cannot find the path specified."

    .line 99
    .line 100
    const/16 v4, 0x11

    .line 101
    .line 102
    aput-object v2, v1, v4

    .line 103
    .line 104
    const/16 v2, 0x12

    .line 105
    .line 106
    aput-object v0, v1, v2

    .line 107
    .line 108
    const-string v0, "The process cannot access the file because it is being used by another process."

    .line 109
    .line 110
    const/16 v2, 0x13

    .line 111
    .line 112
    aput-object v0, v1, v2

    .line 113
    .line 114
    const/16 v0, 0x14

    .line 115
    .line 116
    aput-object v3, v1, v0

    .line 117
    .line 118
    const-string v0, "There are currently no logon servers available to service the logon request."

    .line 119
    .line 120
    const/16 v2, 0x15

    .line 121
    .line 122
    aput-object v0, v1, v2

    .line 123
    .line 124
    const-string v0, "The specified user already exists."

    .line 125
    .line 126
    const/16 v2, 0x16

    .line 127
    .line 128
    aput-object v0, v1, v2

    .line 129
    .line 130
    const-string v0, "The specified user does not exist."

    .line 131
    .line 132
    const/16 v2, 0x17

    .line 133
    .line 134
    aput-object v0, v1, v2

    .line 135
    .line 136
    const-string v0, "The specified network password is not correct."

    .line 137
    .line 138
    const/16 v2, 0x18

    .line 139
    .line 140
    aput-object v0, v1, v2

    .line 141
    .line 142
    const-string v0, "Logon failure: unknown user name or bad password."

    .line 143
    .line 144
    const/16 v2, 0x19

    .line 145
    .line 146
    aput-object v0, v1, v2

    .line 147
    .line 148
    const-string v0, "Logon failure: user account restriction."

    .line 149
    .line 150
    const/16 v2, 0x1a

    .line 151
    .line 152
    aput-object v0, v1, v2

    .line 153
    .line 154
    const-string v0, "Logon failure: account logon time restriction violation."

    .line 155
    .line 156
    const/16 v2, 0x1b

    .line 157
    .line 158
    aput-object v0, v1, v2

    .line 159
    .line 160
    const-string v0, "Logon failure: user not allowed to log on to this computer."

    .line 161
    .line 162
    const/16 v2, 0x1c

    .line 163
    .line 164
    aput-object v0, v1, v2

    .line 165
    .line 166
    const-string v0, "Logon failure: the specified account password has expired."

    .line 167
    .line 168
    const/16 v2, 0x1d

    .line 169
    .line 170
    aput-object v0, v1, v2

    .line 171
    .line 172
    const-string v0, "Logon failure: account currently disabled."

    .line 173
    .line 174
    const/16 v2, 0x1e

    .line 175
    .line 176
    aput-object v0, v1, v2

    .line 177
    .line 178
    const-string v0, "No mapping between account names and security IDs was done."

    .line 179
    .line 180
    const/16 v2, 0x1f

    .line 181
    .line 182
    aput-object v0, v1, v2

    .line 183
    .line 184
    const-string v0, "The security ID structure is invalid."

    .line 185
    .line 186
    const/16 v2, 0x20

    .line 187
    .line 188
    aput-object v0, v1, v2

    .line 189
    .line 190
    const-string v0, "All pipe instances are busy."

    .line 191
    .line 192
    const/16 v2, 0x21

    .line 193
    .line 194
    aput-object v0, v1, v2

    .line 195
    .line 196
    const/16 v2, 0x22

    .line 197
    .line 198
    aput-object v0, v1, v2

    .line 199
    .line 200
    const-string v2, "The pipe state is invalid."

    .line 201
    .line 202
    const/16 v4, 0x23

    .line 203
    .line 204
    aput-object v2, v1, v4

    .line 205
    .line 206
    const/16 v2, 0x24

    .line 207
    .line 208
    aput-object v0, v1, v2

    .line 209
    .line 210
    const-string v0, "No process is on the other end of the pipe."

    .line 211
    .line 212
    const/16 v2, 0x25

    .line 213
    .line 214
    aput-object v0, v1, v2

    .line 215
    .line 216
    const-string v0, "The pipe is being closed."

    .line 217
    .line 218
    const/16 v2, 0x26

    .line 219
    .line 220
    aput-object v0, v1, v2

    .line 221
    .line 222
    const-string v0, "Waiting for a process to open the other end of the pipe."

    .line 223
    .line 224
    const/16 v2, 0x27

    .line 225
    .line 226
    aput-object v0, v1, v2

    .line 227
    .line 228
    const/16 v0, 0x28

    .line 229
    .line 230
    aput-object v3, v1, v0

    .line 231
    .line 232
    const-string v0, "A duplicate name exists on the network."

    .line 233
    .line 234
    const/16 v2, 0x29

    .line 235
    .line 236
    aput-object v0, v1, v2

    .line 237
    .line 238
    const-string v0, "The specified network name is no longer available."

    .line 239
    .line 240
    const/16 v2, 0x2a

    .line 241
    .line 242
    aput-object v0, v1, v2

    .line 243
    .line 244
    const-string v0, "Network access is denied."

    .line 245
    .line 246
    const/16 v2, 0x2b

    .line 247
    .line 248
    aput-object v0, v1, v2

    .line 249
    .line 250
    const-string v0, "The network name cannot be found."

    .line 251
    .line 252
    const/16 v2, 0x2c

    .line 253
    .line 254
    aput-object v0, v1, v2

    .line 255
    .line 256
    const-string v0, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    .line 257
    .line 258
    const/16 v2, 0x2d

    .line 259
    .line 260
    aput-object v0, v1, v2

    .line 261
    .line 262
    const-string v0, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    .line 263
    .line 264
    const/16 v2, 0x2e

    .line 265
    .line 266
    aput-object v0, v1, v2

    .line 267
    .line 268
    const-string v0, "The specified domain did not exist."

    .line 269
    .line 270
    const/16 v2, 0x2f

    .line 271
    .line 272
    aput-object v0, v1, v2

    .line 273
    .line 274
    const-string v0, "The directory name is invalid."

    .line 275
    .line 276
    const/16 v2, 0x30

    .line 277
    .line 278
    aput-object v0, v1, v2

    .line 279
    .line 280
    const/16 v0, 0x31

    .line 281
    .line 282
    aput-object v3, v1, v0

    .line 283
    .line 284
    const-string v0, "The format of the specified computer name is invalid."

    .line 285
    .line 286
    const/16 v2, 0x32

    .line 287
    .line 288
    aput-object v0, v1, v2

    .line 289
    .line 290
    const-string v0, "The pipe has been ended."

    .line 291
    .line 292
    const/16 v2, 0x33

    .line 293
    .line 294
    aput-object v0, v1, v2

    .line 295
    .line 296
    const-string v0, "The specified local group does not exist."

    .line 297
    .line 298
    const/16 v2, 0x34

    .line 299
    .line 300
    aput-object v0, v1, v2

    .line 301
    .line 302
    const-string v0, "Logon failure: the user has not been granted the requested logon type at this computer."

    .line 303
    .line 304
    const/16 v2, 0x35

    .line 305
    .line 306
    aput-object v0, v1, v2

    .line 307
    .line 308
    const-string v0, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    .line 309
    .line 310
    const/16 v2, 0x36

    .line 311
    .line 312
    aput-object v0, v1, v2

    .line 313
    .line 314
    const-string v0, "The trust relationship between the primary domain and the trusted domain failed."

    .line 315
    .line 316
    const/16 v2, 0x37

    .line 317
    .line 318
    aput-object v0, v1, v2

    .line 319
    .line 320
    const-string v0, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    .line 321
    .line 322
    const/16 v2, 0x38

    .line 323
    .line 324
    aput-object v0, v1, v2

    .line 325
    .line 326
    const-string v0, "The user must change his password before he logs on the first time."

    .line 327
    .line 328
    const/16 v2, 0x39

    .line 329
    .line 330
    aput-object v0, v1, v2

    .line 331
    .line 332
    const-string v0, "NT_STATUS_NOT_FOUND"

    .line 333
    .line 334
    const/16 v2, 0x3a

    .line 335
    .line 336
    aput-object v0, v1, v2

    .line 337
    .line 338
    const-string v0, "The referenced account is currently locked out and may not be logged on to."

    .line 339
    .line 340
    const/16 v2, 0x3b

    .line 341
    .line 342
    aput-object v0, v1, v2

    .line 343
    .line 344
    const-string v0, "The remote system is not reachable by the transport."

    .line 345
    .line 346
    const/16 v2, 0x3c

    .line 347
    .line 348
    aput-object v0, v1, v2

    .line 349
    .line 350
    const-string v0, "NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    .line 351
    .line 352
    const/16 v2, 0x3d

    .line 353
    .line 354
    aput-object v0, v1, v2

    .line 355
    .line 356
    sput-object v1, Lce/o;->W:[Ljava/lang/String;

    .line 357
    .line 358
    return-void

    .line 359
    :array_0
    .array-data 4
        0x0
        -0x3fffffff    # -2.0000002f
        -0x3ffffffe    # -2.0000005f
        -0x3ffffffd    # -2.0000007f
        -0x3ffffffb    # -2.0000012f
        -0x3ffffff8    # -2.000002f
        -0x3ffffff3    # -2.000003f
        -0x3ffffff2    # -2.0000033f
        -0x3ffffff1    # -2.0000036f
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
        -0x3ffffe67    # -2.0000975f
        -0x3ffffddc    # -2.0001307f
        -0x3ffffddb    # -2.000131f
        -0x3ffffdcc    # -2.0001345f
        -0x3ffffda9    # -2.0001428f
        -0x3ffffd87    # -2.000151f
    .end array-data
.end method
