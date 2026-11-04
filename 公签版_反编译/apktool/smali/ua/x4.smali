.class public final Lua/x4;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lda/g;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissan;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lua/x4;->e:I

    .line 4
    iput-object p1, p0, Lua/x4;->f:Lda/g;

    .line 5
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    const-string p1, "com.szlanyou.otaupdate.aidl.ICallBackDA"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lua/x4;->e:I

    .line 1
    iput-object p1, p0, Lua/x4;->f:Lda/g;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3
    const-string p1, "com.desaysv.ivi.vdb.IVDBusNotify"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget v0, p0, Lua/x4;->e:I

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    .line 1
    iget v0, p0, Lua/x4;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "com.desaysv.ivi.vdb.IVDBusNotify"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p1, Lm6/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lm6/a;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 p3, 0x0

    .line 35
    iput p3, p2, Landroid/os/Message;->what:I

    .line 36
    .line 37
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p1, p0, Lua/x4;->f:Lda/g;

    .line 40
    .line 41
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->G:Lcom/yunpan/appmanage/carsdk/u;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const v2, 0x5f4e5446

    .line 50
    .line 51
    .line 52
    if-ne p1, v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_1
    return v1

    .line 63
    :pswitch_0
    const v0, 0x5f4e5446

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    const-string v2, "com.szlanyou.otaupdate.aidl.ICallBackDA"

    .line 68
    .line 69
    if-ne p1, v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    packed-switch p1, :pswitch_data_1

    .line 77
    .line 78
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string p1, "OTA\u5de5\u5177\u8fde\u63a5\u6210\u529f"

    .line 110
    .line 111
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    sget-object p1, Lp9/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    sget-object p1, Lp9/e;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    .line 156
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lp9/e;

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    const/4 p1, 0x0

    .line 164
    :goto_2
    new-instance p2, Ljava/lang/StringBuffer;

    .line 165
    .line 166
    const-string p4, "\u7248\u672c\uff1a"

    .line 167
    .line 168
    invoke-direct {p2, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p4, p1, Lp9/e;->c:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    const-string p4, "\n\u65f6\u95f4\uff1a"

    .line 177
    .line 178
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    .line 180
    .line 181
    iget-object p4, p1, Lp9/e;->d:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    .line 185
    .line 186
    const-string p4, "\n\u8bf4\u660e\uff1a"

    .line 187
    .line 188
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    .line 190
    .line 191
    iget-object p4, p1, Lp9/e;->e:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    .line 195
    .line 196
    const-string p4, "\n\u72b6\u6001\uff1a"

    .line 197
    .line 198
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    .line 200
    .line 201
    iget p4, p1, Lp9/e;->f:I

    .line 202
    .line 203
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 204
    .line 205
    .line 206
    const-string p4, "\n\u5927\u5c0f\uff1a"

    .line 207
    .line 208
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    .line 210
    .line 211
    iget p4, p1, Lp9/e;->a:I

    .line 212
    .line 213
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 214
    .line 215
    .line 216
    const-string p4, "\n\u7c7b\u578b\uff1a"

    .line 217
    .line 218
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .line 220
    .line 221
    iget-object p1, p1, Lp9/e;->g:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    .line 225
    .line 226
    const-string p1, "\n"

    .line 227
    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    .line 230
    .line 231
    new-instance p1, Lha/z6;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    new-instance v9, Lua/i1;

    .line 238
    .line 239
    const/16 p2, 0xe

    .line 240
    .line 241
    invoke-direct {v9, p2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lua/x4;->f:Lda/g;

    .line 245
    .line 246
    move-object v4, p2

    .line 247
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 248
    .line 249
    const-string v6, ""

    .line 250
    .line 251
    const-string v7, "\u5347\u7ea7\uff08\u4e0d\u8981\u70b9\uff09"

    .line 252
    .line 253
    const-string v8, "\u53d6\u6d88"

    .line 254
    .line 255
    move-object v2, p1

    .line 256
    move-object v3, v4

    .line 257
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 261
    .line 262
    .line 263
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    :goto_4
    return v1

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
