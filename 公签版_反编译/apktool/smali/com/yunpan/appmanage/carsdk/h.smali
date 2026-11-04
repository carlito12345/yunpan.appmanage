.class public final Lcom/yunpan/appmanage/carsdk/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/carsdk/h;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p1, "com.baidu.naviauto.imaplbs.IEventListener"

    .line 10
    .line 11
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string p1, "com.iflytek.autofly.voicecore.aidl.platform.IAudioFocusManager"

    .line 19
    .line 20
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p1, "moe.shizuku.server.IShizukuApplication"

    .line 28
    .line 29
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/h;->e:I

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const v2, 0xffffff

    .line 4
    .line 5
    .line 6
    const v3, 0x5f4e5446

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget v5, p0, Lcom/yunpan/appmanage/carsdk/h;->e:I

    .line 11
    .line 12
    packed-switch v5, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    const-string v5, "com.iflytek.autofly.voicecore.aidl.platform.IAudioFocusManager"

    .line 16
    .line 17
    if-lt p1, v4, :cond_0

    .line 18
    .line 19
    if-gt p1, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eq p1, v3, :cond_3

    .line 25
    .line 26
    if-eq p1, v4, :cond_2

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return v4

    .line 59
    :pswitch_0
    const-string v2, "moe.shizuku.server.IShizukuApplication"

    .line 60
    .line 61
    const/4 v5, -0x1

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eq p1, v0, :cond_b

    .line 64
    .line 65
    const/4 v0, 0x3

    .line 66
    if-eq p1, v0, :cond_6

    .line 67
    .line 68
    const/16 v0, 0x2711

    .line 69
    .line 70
    if-eq p1, v0, :cond_5

    .line 71
    .line 72
    if-eq p1, v3, :cond_4

    .line 73
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    if-eqz p3, :cond_7

    .line 117
    .line 118
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    .line 120
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    move-object v6, p2

    .line 125
    check-cast v6, Landroid/os/Bundle;

    .line 126
    .line 127
    :cond_7
    const-string p2, "shizuku:request-permission-reply-allowed"

    .line 128
    .line 129
    invoke-virtual {v6, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_8

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    const/4 v1, -0x1

    .line 137
    :goto_1
    sget-object p3, Lhi/b;->k:Ljava/util/ArrayList;

    .line 138
    .line 139
    monitor-enter p3

    .line 140
    :try_start_0
    sget-object p2, Lhi/b;->m:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result p4

    .line 150
    if-eqz p4, :cond_a

    .line 151
    .line 152
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p4

    .line 156
    check-cast p4, Lhi/a;

    .line 157
    .line 158
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-ne v0, v2, :cond_9

    .line 170
    .line 171
    iget-object p4, p4, Lhi/a;->a:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p4, Lfa/l0;

    .line 174
    .line 175
    invoke-virtual {p4, p1, v1}, Lfa/l0;->a(II)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :catchall_0
    move-exception p1

    .line 180
    goto :goto_3

    .line 181
    :cond_9
    sget-object v0, Lhi/b;->n:Landroid/os/Handler;

    .line 182
    .line 183
    new-instance v2, Lcom/yunpan/appmanage/carsdk/a;

    .line 184
    .line 185
    invoke-direct {v2, p4, p1, v1, v4}, Lcom/yunpan/appmanage/carsdk/a;-><init>(Ljava/lang/Object;III)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_a
    monitor-exit p3

    .line 193
    goto :goto_4

    .line 194
    :goto_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    throw p1

    .line 196
    :cond_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_c

    .line 204
    .line 205
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    .line 207
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    move-object v6, p1

    .line 212
    check-cast v6, Landroid/os/Bundle;

    .line 213
    .line 214
    :cond_c
    const-string p1, "shizuku:attach-reply-uid"

    .line 215
    .line 216
    invoke-virtual {v6, p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    sput p1, Lhi/b;->c:I

    .line 221
    .line 222
    const-string p1, "shizuku:attach-reply-version"

    .line 223
    .line 224
    invoke-virtual {v6, p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    sput p1, Lhi/b;->d:I

    .line 229
    .line 230
    const-string p1, "shizuku:attach-reply-patch-version"

    .line 231
    .line 232
    invoke-virtual {v6, p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 233
    .line 234
    .line 235
    sget-object p1, Lhi/b;->a:Landroid/os/IBinder;

    .line 236
    .line 237
    const-string p1, "shizuku:attach-reply-secontext"

    .line 238
    .line 239
    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    const-string p1, "shizuku:attach-reply-permission-granted"

    .line 243
    .line 244
    invoke-virtual {v6, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    sput-boolean p1, Lhi/b;->e:Z

    .line 249
    .line 250
    const-string p1, "shizuku:attach-reply-should-show-request-permission-rationale"

    .line 251
    .line 252
    invoke-virtual {v6, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    sput-boolean p1, Lhi/b;->f:Z

    .line 257
    .line 258
    invoke-static {}, Lhi/b;->k()V

    .line 259
    .line 260
    .line 261
    :goto_4
    return v4

    .line 262
    :pswitch_1
    const-string v0, "com.baidu.naviauto.imaplbs.IEventListener"

    .line 263
    .line 264
    if-lt p1, v4, :cond_d

    .line 265
    .line 266
    if-gt p1, v2, :cond_d

    .line 267
    .line 268
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_d
    if-eq p1, v3, :cond_f

    .line 272
    .line 273
    if-eq p1, v4, :cond_e

    .line 274
    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    goto :goto_5

    .line 280
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_5
    return v4

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
