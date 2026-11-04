.class public abstract Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/shizuku/IGjAdbFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_exec:I = 0x5

.field static final TRANSACTION_exit:I = 0x2

.field static final TRANSACTION_file_canRead:I = 0xe

.field static final TRANSACTION_file_canReadAndWrite:I = 0xf

.field static final TRANSACTION_file_delete:I = 0x13

.field static final TRANSACTION_file_exists:I = 0xd

.field static final TRANSACTION_file_length:I = 0x10

.field static final TRANSACTION_file_listFiles:I = 0x11

.field static final TRANSACTION_file_mkdirs:I = 0x12

.field static final TRANSACTION_file_rename:I = 0x14

.field static final TRANSACTION_forceStop:I = 0x9

.field static final TRANSACTION_getGroupMaxVolume:I = 0x15

.field static final TRANSACTION_getNewProcess:I = 0xa

.field static final TRANSACTION_getService:I = 0x1

.field static final TRANSACTION_getUid:I = 0x7

.field static final TRANSACTION_getUserId:I = 0x8

.field static final TRANSACTION_getVersion:I = 0x6

.field static final TRANSACTION_keyCode:I = 0x3

.field static final TRANSACTION_openFileRead:I = 0xc

.field static final TRANSACTION_openFileWrite:I = 0xb

.field static final TRANSACTION_transactRemote:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.yunpan.appmanage.shizuku.IGjAdbFace"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.yunpan.appmanage.shizuku.IGjAdbFace"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "com.yunpan.appmanage.shizuku.IGjAdbFace"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getGroupMaxVolume(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p0, p1, p2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_delete(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_mkdirs(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_listFiles(Ljava/lang/String;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    invoke-static {p3, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$_Parcel;->b(Landroid/os/Parcel;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_length(Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canRead(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->openFileRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    invoke-static {p3, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$_Parcel;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->openFileWrite(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    .line 201
    .line 202
    invoke-static {p3, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$_Parcel;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :pswitch_b
    invoke-interface {p0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    invoke-interface {p0, p1, p2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->forceStop(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :pswitch_d
    invoke-interface {p0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUserId()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :pswitch_e
    invoke-interface {p0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :pswitch_f
    invoke-interface {p0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getVersion()I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 274
    .line 275
    .line 276
    move-result-wide v2

    .line 277
    invoke-interface {p0, p1, v2, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    .line 283
    .line 284
    invoke-static {p3, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$_Parcel;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 293
    .line 294
    .line 295
    move-result p4

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->transactRemote(Ljava/lang/String;I[BI)[B

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_1

    .line 324
    .line 325
    const/4 p2, 0x1

    .line 326
    goto :goto_0

    .line 327
    :cond_1
    const/4 p2, 0x0

    .line 328
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->keyCode(IZ)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :pswitch_13
    invoke-interface {p0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exit()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-interface {p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 358
    .line 359
    .line 360
    :goto_1
    return v1

    .line 361
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    return v1

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
