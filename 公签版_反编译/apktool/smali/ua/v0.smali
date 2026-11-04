.class public final synthetic Lua/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;
.implements Lec/d;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lfa/w;
.implements Lfa/z;
.implements Lfa/y;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lua/v0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa/x;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lfa/x;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lua/v0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string p1, "\u64cd\u4f5c\u6210\u529f"

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "\u5931\u8d25\uff1a"

    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_0
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const-string p1, "\u64cd\u4f5c\u6210\u529f"

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "\u5931\u8d25\uff1a"

    .line 45
    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lfa/a0;)V
    .locals 5

    .line 1
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff1a"

    .line 2
    .line 3
    const-string v1, "\u65e0\u6743\u9650,\u8bf7\u5148\u63d0\u6743"

    .line 4
    .line 5
    const-string v2, "Permission"

    .line 6
    .line 7
    const-string v3, "\u8bbe\u7f6e\u6210\u529f"

    .line 8
    .line 9
    iget v4, p0, Lua/v0;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v4, p1, Lfa/a0;->a:I

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, p1

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :pswitch_0
    sget v4, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 43
    .line 44
    iget v4, p1, Lfa/a0;->a:I

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move-object v1, p1

    .line 64
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 31

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v0, "error"

    .line 4
    .line 5
    const-string v2, "\u6b64\u7cfb\u7edf\u6709\u9501\uff0c\u9700\u5148\u89e3\u9501"

    .line 6
    .line 7
    const-string v3, "Device is locked"

    .line 8
    .line 9
    const-string v4, "Operation not supported"

    .line 10
    .line 11
    const-string v5, "Operation not permitted"

    .line 12
    .line 13
    const-string v6, "\u65e0\u6743\u9650"

    .line 14
    .line 15
    const-string v7, "verity cannot be"

    .line 16
    .line 17
    const-string v8, "\u6b64\u7cfb\u7edfADB\u65e0\u6743\u9650"

    .line 18
    .line 19
    const-string v9, "\u4fee\u6539\u5931\u8d25"

    .line 20
    .line 21
    const-string v10, "/system/bin/su_guanjia"

    .line 22
    .line 23
    const-string v11, "/system/bin/su"

    .line 24
    .line 25
    const-string v12, "adb\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u672c\u5e94\u7528"

    .line 26
    .line 27
    const-string v13, "restarting adbd as root"

    .line 28
    .line 29
    const-string v14, "already running"

    .line 30
    .line 31
    const-string v15, "adbd is already running as root"

    .line 32
    .line 33
    move-object/from16 v16, v10

    .line 34
    .line 35
    const-string v10, "adbd cannot run as root in production builds"

    .line 36
    .line 37
    move-object/from16 v17, v11

    .line 38
    .line 39
    const-string v11, "root:"

    .line 40
    .line 41
    move-object/from16 v18, v0

    .line 42
    .line 43
    const-string v0, "\u4e0d\u9002\u5408\u6b64\u7cfb\u7edf"

    .line 44
    .line 45
    move-object/from16 v19, v2

    .line 46
    .line 47
    const-string v2, "uid=0(root)"

    .line 48
    .line 49
    move-object/from16 v20, v3

    .line 50
    .line 51
    const-string v3, "id"

    .line 52
    .line 53
    move-object/from16 v21, v4

    .line 54
    .line 55
    move-object/from16 v4, p0

    .line 56
    .line 57
    move-object/from16 v23, v5

    .line 58
    .line 59
    iget v5, v4, Lua/v0;->a:I

    .line 60
    .line 61
    packed-switch v5, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 65
    .line 66
    :try_start_0
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 67
    .line 68
    invoke-virtual {v0}, Lfa/o0;->g()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    :cond_0
    const-wide/16 v5, 0x3e8

    .line 76
    .line 77
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    sub-long/2addr v5, v2

    .line 85
    const-wide/16 v7, 0x2710

    .line 86
    .line 87
    cmp-long v0, v5, v7

    .line 88
    .line 89
    if-lez v0, :cond_1

    .line 90
    .line 91
    new-instance v0, Ljava/lang/Exception;

    .line 92
    .line 93
    const-string v2, "shizuku\u8fde\u63a5\u8d85\u65f6"

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 105
    .line 106
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 107
    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :goto_0
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void

    .line 118
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->G:I

    .line 119
    .line 120
    :try_start_1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 121
    .line 122
    invoke-virtual {v0}, Lfa/h0;->h()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    const-string v0, "\u63d0\u6743\u6210\u529f"

    .line 129
    .line 130
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const-string v0, "\u63d0\u6743\u5931\u8d25\uff0c\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 135
    .line 136
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    .line 139
    :catch_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    new-array v0, v0, [Ljava/lang/String;

    .line 147
    .line 148
    const-string v2, "echo a0 > /dev/hsaeio"

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aput-object v2, v0, v3

    .line 152
    .line 153
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget v0, v0, Landroidx/room/s;->b:I

    .line 162
    .line 163
    if-nez v0, :cond_3

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_3
    invoke-static {v9, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    return-void

    .line 173
    :pswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezha;->F:I

    .line 174
    .line 175
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 179
    .line 180
    :try_start_2
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 181
    .line 182
    const-string v3, "NezhaAutoOpenAdb"

    .line 183
    .line 184
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v2, v3, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    .line 188
    .line 189
    :catch_2
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_4
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 197
    .line 198
    const/4 v0, 0x1

    .line 199
    new-array v2, v0, [Ljava/lang/String;

    .line 200
    .line 201
    const-string v0, "getenforce"

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    aput-object v0, v2, v3

    .line 205
    .line 206
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v2, "Permissive"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    .line 241
    const/4 v0, 0x1

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_4
    const/4 v0, 0x0

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_5
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 263
    .line 264
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 265
    .line 266
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    const-string v3, "/\u7cfb\u7edf\u91cd\u8981\u914d\u7f6e\u5907\u4efd/"

    .line 275
    .line 276
    const-string v5, "/."

    .line 277
    .line 278
    if-eqz v2, :cond_5

    .line 279
    .line 280
    new-instance v0, Ljava/io/File;

    .line 281
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 288
    .line 289
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 290
    .line 291
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 292
    .line 293
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object v5, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v5, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_5
    new-instance v2, Ljava/io/File;

    .line 314
    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 331
    .line 332
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 333
    .line 334
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v0, v3, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    move-object v0, v2

    .line 344
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_6

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 351
    .line 352
    .line 353
    :cond_6
    new-instance v2, Ljava/io/File;

    .line 354
    .line 355
    const-string v3, "getprop.txt"

    .line 356
    .line 357
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    const/16 v5, 0xa

    .line 365
    .line 366
    if-nez v3, :cond_7

    .line 367
    .line 368
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 369
    .line 370
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    const-string v3, "getprop"

    .line 374
    .line 375
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iget v6, v3, Lfa/a0;->a:I

    .line 380
    .line 381
    if-nez v6, :cond_7

    .line 382
    .line 383
    iget-object v6, v3, Lfa/a0;->b:Ljava/util/List;

    .line 384
    .line 385
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-le v6, v5, :cond_7

    .line 390
    .line 391
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-static {v2, v3}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    :cond_7
    new-instance v2, Ljava/io/File;

    .line 399
    .line 400
    const-string v3, "settings-secure.txt"

    .line 401
    .line 402
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v3, :cond_8

    .line 410
    .line 411
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 412
    .line 413
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    const-string v3, "settings list secure"

    .line 417
    .line 418
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    iget v6, v3, Lfa/a0;->a:I

    .line 423
    .line 424
    if-nez v6, :cond_8

    .line 425
    .line 426
    iget-object v6, v3, Lfa/a0;->b:Ljava/util/List;

    .line 427
    .line 428
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    if-le v6, v5, :cond_8

    .line 433
    .line 434
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-static {v2, v3}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    :cond_8
    new-instance v2, Ljava/io/File;

    .line 442
    .line 443
    const-string v3, "settings-system.txt"

    .line 444
    .line 445
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-nez v3, :cond_9

    .line 453
    .line 454
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    const-string v3, "settings list system"

    .line 460
    .line 461
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    iget v6, v3, Lfa/a0;->a:I

    .line 466
    .line 467
    if-nez v6, :cond_9

    .line 468
    .line 469
    iget-object v6, v3, Lfa/a0;->b:Ljava/util/List;

    .line 470
    .line 471
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    if-le v6, v5, :cond_9

    .line 476
    .line 477
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-static {v2, v3}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    :cond_9
    new-instance v2, Ljava/io/File;

    .line 485
    .line 486
    const-string v3, "settings-global.txt"

    .line 487
    .line 488
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-nez v0, :cond_a

    .line 496
    .line 497
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    const-string v0, "settings list global"

    .line 503
    .line 504
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    iget v3, v0, Lfa/a0;->a:I

    .line 509
    .line 510
    if-nez v3, :cond_a

    .line 511
    .line 512
    iget-object v3, v0, Lfa/a0;->b:Ljava/util/List;

    .line 513
    .line 514
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    if-le v3, v5, :cond_a

    .line 519
    .line 520
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-static {v2, v0}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 528
    .line 529
    .line 530
    return-void

    .line 531
    :pswitch_6
    sget v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 532
    .line 533
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 534
    .line 535
    invoke-virtual {v5}, Lfa/h0;->f()Z

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    const-string v6, "rm -rf /system/bin/111222"

    .line 540
    .line 541
    const-string v7, "touch /system/bin/111222"

    .line 542
    .line 543
    const-string v8, "rm -rf /system/app/111222"

    .line 544
    .line 545
    const-string v9, "mount -o remount,rw /"

    .line 546
    .line 547
    const-string v10, "mount -o remount,rw /system"

    .line 548
    .line 549
    const-string v12, " (r"

    .line 550
    .line 551
    const-string v13, "/"

    .line 552
    .line 553
    const-string v14, " / "

    .line 554
    .line 555
    const-string v15, "/vendor"

    .line 556
    .line 557
    const-string v11, " /vendor "

    .line 558
    .line 559
    const-string v17, "/system"

    .line 560
    .line 561
    const-string v4, " /system "

    .line 562
    .line 563
    const-string v18, "mount"

    .line 564
    .line 565
    const-string v19, "setenforce 0"

    .line 566
    .line 567
    move-object/from16 v20, v13

    .line 568
    .line 569
    const-string v13, "mount -o remount,rw -t "

    .line 570
    .line 571
    move-object/from16 v21, v15

    .line 572
    .line 573
    const-string v15, "  "

    .line 574
    .line 575
    move-object/from16 v24, v0

    .line 576
    .line 577
    const-string v0, " "

    .line 578
    .line 579
    const-string v25, "touch /system/app/111222"

    .line 580
    .line 581
    if-eqz v5, :cond_16

    .line 582
    .line 583
    const/4 v5, 0x1

    .line 584
    new-array v2, v5, [Ljava/lang/String;

    .line 585
    .line 586
    const/4 v3, 0x0

    .line 587
    aput-object v19, v2, v3

    .line 588
    .line 589
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 594
    .line 595
    .line 596
    new-array v2, v5, [Ljava/lang/String;

    .line 597
    .line 598
    aput-object v25, v2, v3

    .line 599
    .line 600
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    iget v3, v2, Landroidx/room/s;->b:I

    .line 609
    .line 610
    if-eqz v3, :cond_13

    .line 611
    .line 612
    new-array v2, v5, [Ljava/lang/String;

    .line 613
    .line 614
    const/4 v3, 0x0

    .line 615
    aput-object v18, v2, v3

    .line 616
    .line 617
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    invoke-virtual {v2}, Landroidx/room/s;->k()Ljava/util/List;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-eqz v3, :cond_12

    .line 638
    .line 639
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    check-cast v3, Ljava/lang/String;

    .line 644
    .line 645
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 646
    .line 647
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    if-eqz v5, :cond_c

    .line 655
    .line 656
    move-object/from16 v5, v17

    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_c
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    if-eqz v5, :cond_d

    .line 664
    .line 665
    move-object/from16 v5, v21

    .line 666
    .line 667
    goto :goto_7

    .line 668
    :cond_d
    const-string v5, " /oem "

    .line 669
    .line 670
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 671
    .line 672
    .line 673
    move-result v5

    .line 674
    if-eqz v5, :cond_e

    .line 675
    .line 676
    const-string v5, "/oem"

    .line 677
    .line 678
    goto :goto_7

    .line 679
    :cond_e
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    if-eqz v5, :cond_b

    .line 684
    .line 685
    move-object/from16 v5, v20

    .line 686
    .line 687
    :goto_7
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 688
    .line 689
    .line 690
    move-result v18

    .line 691
    if-eqz v18, :cond_f

    .line 692
    .line 693
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v3, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    goto :goto_7

    .line 702
    :cond_f
    move-object/from16 v18, v2

    .line 703
    .line 704
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    move-object/from16 v26, v15

    .line 709
    .line 710
    array-length v15, v2

    .line 711
    move-object/from16 v27, v14

    .line 712
    .line 713
    const/4 v14, 0x4

    .line 714
    if-ge v15, v14, :cond_10

    .line 715
    .line 716
    :goto_8
    move-object/from16 v2, v18

    .line 717
    .line 718
    move-object/from16 v15, v26

    .line 719
    .line 720
    move-object/from16 v14, v27

    .line 721
    .line 722
    goto :goto_6

    .line 723
    :cond_10
    :try_start_3
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-eqz v3, :cond_11

    .line 728
    .line 729
    aget-object v2, v2, v14

    .line 730
    .line 731
    goto :goto_9

    .line 732
    :cond_11
    const/4 v3, 0x2

    .line 733
    aget-object v2, v2, v3

    .line 734
    .line 735
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    const/4 v3, 0x1

    .line 757
    new-array v5, v3, [Ljava/lang/String;

    .line 758
    .line 759
    const/4 v3, 0x0

    .line 760
    aput-object v2, v5, v3

    .line 761
    .line 762
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 767
    .line 768
    .line 769
    goto :goto_8

    .line 770
    :catch_3
    nop

    .line 771
    goto :goto_8

    .line 772
    :cond_12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    const/4 v0, 0x1

    .line 778
    new-array v2, v0, [Ljava/lang/String;

    .line 779
    .line 780
    const/4 v3, 0x0

    .line 781
    aput-object v25, v2, v3

    .line 782
    .line 783
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    iget v4, v2, Landroidx/room/s;->b:I

    .line 792
    .line 793
    if-eqz v4, :cond_13

    .line 794
    .line 795
    new-array v4, v0, [Ljava/lang/String;

    .line 796
    .line 797
    aput-object v10, v4, v3

    .line 798
    .line 799
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 804
    .line 805
    .line 806
    new-array v4, v0, [Ljava/lang/String;

    .line 807
    .line 808
    aput-object v9, v4, v3

    .line 809
    .line 810
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 815
    .line 816
    .line 817
    new-array v4, v0, [Ljava/lang/String;

    .line 818
    .line 819
    aput-object v25, v4, v3

    .line 820
    .line 821
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 826
    .line 827
    .line 828
    :cond_13
    iget v0, v2, Landroidx/room/s;->b:I

    .line 829
    .line 830
    if-nez v0, :cond_14

    .line 831
    .line 832
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 833
    .line 834
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 835
    .line 836
    const/4 v2, 0x1

    .line 837
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 838
    .line 839
    new-array v3, v2, [Ljava/lang/String;

    .line 840
    .line 841
    const/4 v4, 0x0

    .line 842
    aput-object v8, v3, v4

    .line 843
    .line 844
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 849
    .line 850
    .line 851
    new-array v3, v2, [Ljava/lang/String;

    .line 852
    .line 853
    aput-object v7, v3, v4

    .line 854
    .line 855
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    iget v3, v3, Landroidx/room/s;->b:I

    .line 864
    .line 865
    if-nez v3, :cond_14

    .line 866
    .line 867
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 868
    .line 869
    new-array v0, v2, [Ljava/lang/String;

    .line 870
    .line 871
    aput-object v6, v0, v4

    .line 872
    .line 873
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 878
    .line 879
    .line 880
    :cond_14
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 881
    .line 882
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 883
    .line 884
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 885
    .line 886
    if-eqz v0, :cond_15

    .line 887
    .line 888
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 889
    .line 890
    .line 891
    goto/16 :goto_14

    .line 892
    .line 893
    :cond_15
    const-string v0, "\u6709root\u6743\u9650\uff0c\u4f46\u65e0\u6cd5\u6302\u8f7d\u5199\u5165"

    .line 894
    .line 895
    goto/16 :goto_13

    .line 896
    .line 897
    :cond_16
    move-object/from16 v27, v14

    .line 898
    .line 899
    move-object/from16 v26, v15

    .line 900
    .line 901
    new-instance v5, Ljava/lang/Thread;

    .line 902
    .line 903
    new-instance v14, Lcom/gj/server/a;

    .line 904
    .line 905
    const/4 v15, 0x5

    .line 906
    invoke-direct {v14, v15}, Lcom/gj/server/a;-><init>(I)V

    .line 907
    .line 908
    .line 909
    invoke-direct {v5, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 910
    .line 911
    .line 912
    const/4 v14, 0x1

    .line 913
    invoke-virtual {v5, v14}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 917
    .line 918
    .line 919
    const-wide/16 v14, 0xd05

    .line 920
    .line 921
    :try_start_4
    invoke-virtual {v5, v14, v15}, Ljava/lang/Thread;->join(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 922
    .line 923
    .line 924
    :catch_4
    sget-object v5, Lfa/l;->a:Lfa/m;

    .line 925
    .line 926
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 927
    .line 928
    .line 929
    move-result v14

    .line 930
    if-eqz v14, :cond_17

    .line 931
    .line 932
    invoke-virtual {v5}, Lfa/m;->V()V

    .line 933
    .line 934
    .line 935
    goto :goto_a

    .line 936
    :cond_17
    sget-object v5, Lfa/h;->a:Lfa/j;

    .line 937
    .line 938
    invoke-virtual {v5}, Lfa/j;->i()Z

    .line 939
    .line 940
    .line 941
    move-result v14

    .line 942
    if-eqz v14, :cond_18

    .line 943
    .line 944
    invoke-virtual {v5}, Lfa/j;->o()V

    .line 945
    .line 946
    .line 947
    :cond_18
    :goto_a
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 948
    .line 949
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    .line 951
    .line 952
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    if-nez v2, :cond_19

    .line 965
    .line 966
    move-object/from16 v5, v24

    .line 967
    .line 968
    invoke-static {v5, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_14

    .line 972
    .line 973
    :cond_19
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 974
    .line 975
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    if-eqz v3, :cond_1a

    .line 980
    .line 981
    iget-object v2, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 982
    .line 983
    invoke-interface {v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 984
    .line 985
    .line 986
    move-result v2

    .line 987
    if-eqz v2, :cond_1b

    .line 988
    .line 989
    :cond_1a
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 990
    .line 991
    invoke-static {v2}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 996
    .line 997
    .line 998
    :cond_1b
    invoke-static/range {v19 .. v19}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 999
    .line 1000
    .line 1001
    invoke-static/range {v25 .. v25}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    iget v3, v2, Lfa/a0;->a:I

    .line 1006
    .line 1007
    if-eqz v3, :cond_24

    .line 1008
    .line 1009
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    iget-object v2, v2, Lfa/a0;->b:Ljava/util/List;

    .line 1014
    .line 1015
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    const-string v3, ""

    .line 1020
    .line 1021
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v5

    .line 1025
    if-eqz v5, :cond_22

    .line 1026
    .line 1027
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v5

    .line 1031
    check-cast v5, Ljava/lang/String;

    .line 1032
    .line 1033
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v14

    .line 1037
    if-eqz v14, :cond_1c

    .line 1038
    .line 1039
    move-object/from16 v18, v2

    .line 1040
    .line 1041
    move-object/from16 v2, v17

    .line 1042
    .line 1043
    :goto_c
    move-object/from16 v15, v26

    .line 1044
    .line 1045
    move-object/from16 v14, v27

    .line 1046
    .line 1047
    goto :goto_d

    .line 1048
    :cond_1c
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result v14

    .line 1052
    if-eqz v14, :cond_1d

    .line 1053
    .line 1054
    move-object/from16 v18, v2

    .line 1055
    .line 1056
    move-object/from16 v2, v21

    .line 1057
    .line 1058
    goto :goto_c

    .line 1059
    :cond_1d
    move-object/from16 v14, v27

    .line 1060
    .line 1061
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v15

    .line 1065
    move-object/from16 v18, v2

    .line 1066
    .line 1067
    if-eqz v15, :cond_21

    .line 1068
    .line 1069
    move-object/from16 v2, v20

    .line 1070
    .line 1071
    move-object/from16 v15, v26

    .line 1072
    .line 1073
    :goto_d
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v19

    .line 1077
    if-eqz v19, :cond_1e

    .line 1078
    .line 1079
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v5

    .line 1083
    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v5

    .line 1087
    goto :goto_d

    .line 1088
    :cond_1e
    move-object/from16 v19, v4

    .line 1089
    .line 1090
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v4

    .line 1094
    move-object/from16 v22, v11

    .line 1095
    .line 1096
    array-length v11, v4

    .line 1097
    move-object/from16 v27, v14

    .line 1098
    .line 1099
    const/4 v14, 0x4

    .line 1100
    if-ge v11, v14, :cond_1f

    .line 1101
    .line 1102
    goto :goto_e

    .line 1103
    :cond_1f
    :try_start_5
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 1107
    if-eqz v5, :cond_20

    .line 1108
    .line 1109
    :try_start_6
    aget-object v3, v4, v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1110
    .line 1111
    const/4 v5, 0x2

    .line 1112
    goto :goto_f

    .line 1113
    :catch_5
    nop

    .line 1114
    :goto_e
    const/4 v5, 0x2

    .line 1115
    goto :goto_11

    .line 1116
    :cond_20
    const/4 v5, 0x2

    .line 1117
    :try_start_7
    aget-object v3, v4, v5

    .line 1118
    .line 1119
    :goto_f
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 1120
    .line 1121
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v2

    .line 1142
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1143
    .line 1144
    .line 1145
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1146
    .line 1147
    .line 1148
    goto :goto_11

    .line 1149
    :catch_6
    :goto_10
    nop

    .line 1150
    goto :goto_11

    .line 1151
    :catch_7
    const/4 v5, 0x2

    .line 1152
    goto :goto_10

    .line 1153
    :goto_11
    move-object/from16 v26, v15

    .line 1154
    .line 1155
    move-object/from16 v2, v18

    .line 1156
    .line 1157
    move-object/from16 v4, v19

    .line 1158
    .line 1159
    move-object/from16 v11, v22

    .line 1160
    .line 1161
    goto/16 :goto_b

    .line 1162
    .line 1163
    :cond_21
    move-object/from16 v19, v4

    .line 1164
    .line 1165
    move-object/from16 v22, v11

    .line 1166
    .line 1167
    move-object/from16 v27, v14

    .line 1168
    .line 1169
    move-object/from16 v15, v26

    .line 1170
    .line 1171
    const/4 v5, 0x2

    .line 1172
    const/4 v14, 0x4

    .line 1173
    goto :goto_11

    .line 1174
    :cond_22
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1175
    .line 1176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    .line 1178
    .line 1179
    invoke-static/range {v25 .. v25}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v2

    .line 1183
    iget v0, v2, Lfa/a0;->a:I

    .line 1184
    .line 1185
    if-eqz v0, :cond_24

    .line 1186
    .line 1187
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    if-eqz v0, :cond_23

    .line 1192
    .line 1193
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v9}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1197
    .line 1198
    .line 1199
    goto :goto_12

    .line 1200
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    const-string v2, " /system"

    .line 1209
    .line 1210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1218
    .line 1219
    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    const-string v2, " /"

    .line 1229
    .line 1230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1238
    .line 1239
    .line 1240
    :goto_12
    invoke-static/range {v25 .. v25}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v2

    .line 1244
    :cond_24
    iget v0, v2, Lfa/a0;->a:I

    .line 1245
    .line 1246
    if-eqz v0, :cond_25

    .line 1247
    .line 1248
    const-string v0, "\u63d0\u6743\u5931\u8d25\uff0c\u53ef\u5c1d\u8bd5\u5173\u95ed\u5206\u533a\u68c0\u6d4b"

    .line 1249
    .line 1250
    :goto_13
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1251
    .line 1252
    .line 1253
    goto :goto_14

    .line 1254
    :cond_25
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1255
    .line 1256
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1257
    .line 1258
    const/4 v2, 0x1

    .line 1259
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 1260
    .line 1261
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 1262
    .line 1263
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v8}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1267
    .line 1268
    .line 1269
    invoke-static {v7}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v3

    .line 1273
    iget v3, v3, Lfa/a0;->a:I

    .line 1274
    .line 1275
    if-nez v3, :cond_26

    .line 1276
    .line 1277
    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 1278
    .line 1279
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1280
    .line 1281
    .line 1282
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1283
    .line 1284
    .line 1285
    :goto_14
    return-void

    .line 1286
    :pswitch_7
    move-object v5, v0

    .line 1287
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 1288
    .line 1289
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1290
    .line 1291
    iget-boolean v4, v0, Lfa/j;->g:Z

    .line 1292
    .line 1293
    if-nez v4, :cond_2b

    .line 1294
    .line 1295
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 1296
    .line 1297
    iget-boolean v9, v4, Lfa/m;->c:Z

    .line 1298
    .line 1299
    if-nez v9, :cond_2b

    .line 1300
    .line 1301
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1302
    .line 1303
    .line 1304
    move-result v9

    .line 1305
    if-eqz v9, :cond_27

    .line 1306
    .line 1307
    invoke-virtual {v4, v11}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v9

    .line 1311
    const/16 v22, 0x0

    .line 1312
    .line 1313
    goto :goto_15

    .line 1314
    :cond_27
    invoke-virtual {v0, v11}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v9

    .line 1318
    const/16 v22, 0x1

    .line 1319
    .line 1320
    :goto_15
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1321
    .line 1322
    .line 1323
    move-result v10

    .line 1324
    if-eqz v10, :cond_28

    .line 1325
    .line 1326
    invoke-static {v5, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1327
    .line 1328
    .line 1329
    goto/16 :goto_1a

    .line 1330
    .line 1331
    :cond_28
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1332
    .line 1333
    .line 1334
    move-result v5

    .line 1335
    if-nez v5, :cond_29

    .line 1336
    .line 1337
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1338
    .line 1339
    .line 1340
    move-result v5

    .line 1341
    if-nez v5, :cond_29

    .line 1342
    .line 1343
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1344
    .line 1345
    .line 1346
    :cond_29
    if-eqz v22, :cond_2a

    .line 1347
    .line 1348
    :try_start_8
    invoke-virtual {v0}, Lfa/j;->m()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1349
    .line 1350
    .line 1351
    goto :goto_16

    .line 1352
    :catch_8
    invoke-static {v12, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1353
    .line 1354
    .line 1355
    goto/16 :goto_1a

    .line 1356
    .line 1357
    :cond_2a
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1358
    .line 1359
    .line 1360
    move-result v5

    .line 1361
    if-nez v5, :cond_2b

    .line 1362
    .line 1363
    :try_start_9
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1364
    .line 1365
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1366
    .line 1367
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1368
    .line 1369
    invoke-virtual {v4, v5}, Lfa/m;->M(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1370
    .line 1371
    .line 1372
    :cond_2b
    :goto_16
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 1373
    .line 1374
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1375
    .line 1376
    .line 1377
    move-result v5

    .line 1378
    if-eqz v5, :cond_2c

    .line 1379
    .line 1380
    invoke-virtual {v4, v3}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v3

    .line 1384
    invoke-virtual {v3}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v3

    .line 1388
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v2

    .line 1392
    if-nez v2, :cond_2d

    .line 1393
    .line 1394
    :goto_17
    invoke-static {v8, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1395
    .line 1396
    .line 1397
    goto/16 :goto_1a

    .line 1398
    .line 1399
    :cond_2c
    invoke-virtual {v0, v3}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v3

    .line 1403
    invoke-virtual {v3}, Lfa/i;->a()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v3

    .line 1407
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v2

    .line 1411
    if-nez v2, :cond_2d

    .line 1412
    .line 1413
    goto :goto_17

    .line 1414
    :cond_2d
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1415
    .line 1416
    .line 1417
    move-result v2

    .line 1418
    const-string v3, "disable-verity:"

    .line 1419
    .line 1420
    if-eqz v2, :cond_2e

    .line 1421
    .line 1422
    invoke-virtual {v4, v3}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    goto :goto_18

    .line 1427
    :cond_2e
    invoke-virtual {v0, v3}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    :goto_18
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v2

    .line 1435
    if-eqz v2, :cond_2f

    .line 1436
    .line 1437
    :goto_19
    invoke-static {v6, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_1a

    .line 1441
    :cond_2f
    move-object/from16 v4, v23

    .line 1442
    .line 1443
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v2

    .line 1447
    if-eqz v2, :cond_30

    .line 1448
    .line 1449
    goto :goto_19

    .line 1450
    :cond_30
    move-object/from16 v9, v21

    .line 1451
    .line 1452
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1453
    .line 1454
    .line 1455
    move-result v2

    .line 1456
    if-eqz v2, :cond_31

    .line 1457
    .line 1458
    goto :goto_19

    .line 1459
    :cond_31
    move-object/from16 v2, v20

    .line 1460
    .line 1461
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result v2

    .line 1465
    if-eqz v2, :cond_32

    .line 1466
    .line 1467
    move-object/from16 v2, v19

    .line 1468
    .line 1469
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_1a

    .line 1473
    :cond_32
    move-object/from16 v2, v18

    .line 1474
    .line 1475
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v2

    .line 1479
    if-eqz v2, :cond_33

    .line 1480
    .line 1481
    const-string v2, "closed"

    .line 1482
    .line 1483
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1484
    .line 1485
    .line 1486
    move-result v0

    .line 1487
    if-eqz v0, :cond_33

    .line 1488
    .line 1489
    const-string v0, "\u9519\u8bef\uff1aclosed"

    .line 1490
    .line 1491
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1492
    .line 1493
    .line 1494
    goto :goto_1a

    .line 1495
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1496
    .line 1497
    .line 1498
    :goto_1a
    return-void

    .line 1499
    :pswitch_8
    move-object v5, v0

    .line 1500
    move-object/from16 v29, v18

    .line 1501
    .line 1502
    move-object/from16 v28, v19

    .line 1503
    .line 1504
    move-object/from16 v0, v20

    .line 1505
    .line 1506
    move-object/from16 v9, v21

    .line 1507
    .line 1508
    move-object/from16 v4, v23

    .line 1509
    .line 1510
    sget v16, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 1511
    .line 1512
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1513
    .line 1514
    move-object/from16 v21, v9

    .line 1515
    .line 1516
    iget-boolean v9, v0, Lfa/j;->g:Z

    .line 1517
    .line 1518
    if-nez v9, :cond_38

    .line 1519
    .line 1520
    sget-object v9, Lfa/l;->a:Lfa/m;

    .line 1521
    .line 1522
    move-object/from16 v18, v6

    .line 1523
    .line 1524
    iget-boolean v6, v9, Lfa/m;->c:Z

    .line 1525
    .line 1526
    if-nez v6, :cond_39

    .line 1527
    .line 1528
    invoke-virtual {v9}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1529
    .line 1530
    .line 1531
    move-result v6

    .line 1532
    if-eqz v6, :cond_34

    .line 1533
    .line 1534
    invoke-virtual {v9, v11}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v6

    .line 1538
    const/16 v22, 0x0

    .line 1539
    .line 1540
    goto :goto_1b

    .line 1541
    :cond_34
    invoke-virtual {v0, v11}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v6

    .line 1545
    const/16 v22, 0x1

    .line 1546
    .line 1547
    :goto_1b
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1548
    .line 1549
    .line 1550
    move-result v10

    .line 1551
    if-eqz v10, :cond_35

    .line 1552
    .line 1553
    invoke-static {v5, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1554
    .line 1555
    .line 1556
    goto/16 :goto_23

    .line 1557
    .line 1558
    :cond_35
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v5

    .line 1562
    if-nez v5, :cond_36

    .line 1563
    .line 1564
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v5

    .line 1568
    if-nez v5, :cond_36

    .line 1569
    .line 1570
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1571
    .line 1572
    .line 1573
    :cond_36
    if-eqz v22, :cond_37

    .line 1574
    .line 1575
    :try_start_a
    invoke-virtual {v0}, Lfa/j;->m()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1576
    .line 1577
    .line 1578
    goto :goto_1c

    .line 1579
    :catch_9
    invoke-static {v12, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1580
    .line 1581
    .line 1582
    goto/16 :goto_23

    .line 1583
    .line 1584
    :cond_37
    invoke-virtual {v9}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1585
    .line 1586
    .line 1587
    move-result v5

    .line 1588
    if-nez v5, :cond_39

    .line 1589
    .line 1590
    :try_start_b
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1591
    .line 1592
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1593
    .line 1594
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1595
    .line 1596
    invoke-virtual {v9, v5}, Lfa/m;->M(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1597
    .line 1598
    .line 1599
    goto :goto_1c

    .line 1600
    :cond_38
    move-object/from16 v18, v6

    .line 1601
    .line 1602
    :cond_39
    :goto_1c
    sget-object v5, Lfa/l;->a:Lfa/m;

    .line 1603
    .line 1604
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1605
    .line 1606
    .line 1607
    move-result v6

    .line 1608
    if-eqz v6, :cond_3a

    .line 1609
    .line 1610
    invoke-virtual {v5, v3}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v3

    .line 1614
    invoke-virtual {v3}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v3

    .line 1618
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v2

    .line 1622
    if-nez v2, :cond_3b

    .line 1623
    .line 1624
    :goto_1d
    invoke-static {v8, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1625
    .line 1626
    .line 1627
    goto/16 :goto_23

    .line 1628
    .line 1629
    :cond_3a
    invoke-virtual {v0, v3}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v3

    .line 1633
    invoke-virtual {v3}, Lfa/i;->a()Ljava/lang/String;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v3

    .line 1637
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1638
    .line 1639
    .line 1640
    move-result v2

    .line 1641
    if-nez v2, :cond_3b

    .line 1642
    .line 1643
    goto :goto_1d

    .line 1644
    :cond_3b
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1645
    .line 1646
    .line 1647
    move-result v2

    .line 1648
    const-string v3, "enable-verity:"

    .line 1649
    .line 1650
    if-eqz v2, :cond_3c

    .line 1651
    .line 1652
    invoke-virtual {v5, v3}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v0

    .line 1656
    goto :goto_1e

    .line 1657
    :cond_3c
    invoke-virtual {v0, v3}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    :goto_1e
    const-string v2, "reboot your device"

    .line 1662
    .line 1663
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v2

    .line 1667
    if-nez v2, :cond_45

    .line 1668
    .line 1669
    const-string v2, "Reboot required"

    .line 1670
    .line 1671
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v2

    .line 1675
    if-nez v2, :cond_45

    .line 1676
    .line 1677
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v2

    .line 1681
    const-string v3, "reboot "

    .line 1682
    .line 1683
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v2

    .line 1687
    if-eqz v2, :cond_3d

    .line 1688
    .line 1689
    goto :goto_22

    .line 1690
    :cond_3d
    const-string v2, "No action needed"

    .line 1691
    .line 1692
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v2

    .line 1696
    if-eqz v2, :cond_3f

    .line 1697
    .line 1698
    const-string v0, "\u672c\u8eab\u5c31\u5df2\u5f00\u542f\uff0c\u65e0\u9700\u91cd\u590d\u64cd\u4f5c"

    .line 1699
    .line 1700
    :cond_3e
    :goto_1f
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1701
    .line 1702
    .line 1703
    goto :goto_23

    .line 1704
    :cond_3f
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v2

    .line 1708
    if-nez v2, :cond_41

    .line 1709
    .line 1710
    const-string v2, "Permission denied"

    .line 1711
    .line 1712
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1713
    .line 1714
    .line 1715
    move-result v2

    .line 1716
    if-eqz v2, :cond_40

    .line 1717
    .line 1718
    goto :goto_20

    .line 1719
    :cond_40
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v2

    .line 1723
    if-eqz v2, :cond_42

    .line 1724
    .line 1725
    :cond_41
    :goto_20
    move-object/from16 v2, v18

    .line 1726
    .line 1727
    :goto_21
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1728
    .line 1729
    .line 1730
    goto :goto_23

    .line 1731
    :cond_42
    move-object/from16 v2, v18

    .line 1732
    .line 1733
    move-object/from16 v3, v21

    .line 1734
    .line 1735
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1736
    .line 1737
    .line 1738
    move-result v3

    .line 1739
    if-eqz v3, :cond_43

    .line 1740
    .line 1741
    goto :goto_21

    .line 1742
    :cond_43
    move-object/from16 v2, v20

    .line 1743
    .line 1744
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1745
    .line 1746
    .line 1747
    move-result v2

    .line 1748
    if-eqz v2, :cond_44

    .line 1749
    .line 1750
    move-object/from16 v2, v28

    .line 1751
    .line 1752
    goto :goto_21

    .line 1753
    :cond_44
    move-object/from16 v2, v29

    .line 1754
    .line 1755
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1756
    .line 1757
    .line 1758
    move-result v2

    .line 1759
    if-eqz v2, :cond_3e

    .line 1760
    .line 1761
    const-string v2, "closed"

    .line 1762
    .line 1763
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v2

    .line 1767
    if-eqz v2, :cond_3e

    .line 1768
    .line 1769
    const-string v2, "not found"

    .line 1770
    .line 1771
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1772
    .line 1773
    .line 1774
    move-result v2

    .line 1775
    if-eqz v2, :cond_3e

    .line 1776
    .line 1777
    const-string v0, "\u9519\u8bef\uff1aclosed"

    .line 1778
    .line 1779
    goto :goto_1f

    .line 1780
    :cond_45
    :goto_22
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1781
    .line 1782
    .line 1783
    :goto_23
    return-void

    .line 1784
    :pswitch_9
    move-object v5, v0

    .line 1785
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 1786
    .line 1787
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1788
    .line 1789
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1790
    .line 1791
    .line 1792
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v0

    .line 1804
    if-eqz v0, :cond_46

    .line 1805
    .line 1806
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1807
    .line 1808
    .line 1809
    goto/16 :goto_29

    .line 1810
    .line 1811
    :cond_46
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 1812
    .line 1813
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1814
    .line 1815
    .line 1816
    move-result v2

    .line 1817
    if-eqz v2, :cond_47

    .line 1818
    .line 1819
    invoke-virtual {v0, v11}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v2

    .line 1823
    const/4 v4, 0x0

    .line 1824
    goto :goto_24

    .line 1825
    :cond_47
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 1826
    .line 1827
    invoke-virtual {v2, v11}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v2

    .line 1831
    const/4 v4, 0x1

    .line 1832
    :goto_24
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1833
    .line 1834
    .line 1835
    move-result v6

    .line 1836
    if-eqz v6, :cond_49

    .line 1837
    .line 1838
    const-string v6, "setprop ro.debuggable 1"

    .line 1839
    .line 1840
    const/4 v7, 0x1

    .line 1841
    new-array v8, v7, [Ljava/lang/String;

    .line 1842
    .line 1843
    const/4 v9, 0x0

    .line 1844
    aput-object v6, v8, v9

    .line 1845
    .line 1846
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v8

    .line 1850
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1851
    .line 1852
    .line 1853
    const-string v8, "setprop service.adb.root 1"

    .line 1854
    .line 1855
    new-array v11, v7, [Ljava/lang/String;

    .line 1856
    .line 1857
    aput-object v8, v11, v9

    .line 1858
    .line 1859
    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v11

    .line 1863
    invoke-virtual {v11}, Lv9/e;->l0()Landroidx/room/s;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v11

    .line 1867
    invoke-virtual {v11}, Landroidx/room/s;->q()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v11

    .line 1871
    const-string v16, "\u91cd\u65b0\u8fde\u63a5"

    .line 1872
    .line 1873
    const-string v9, "setprop ctl.restart adbd"

    .line 1874
    .line 1875
    move-object/from16 v17, v2

    .line 1876
    .line 1877
    move-object/from16 v18, v3

    .line 1878
    .line 1879
    const-wide/16 v2, 0xbb8

    .line 1880
    .line 1881
    if-eqz v11, :cond_48

    .line 1882
    .line 1883
    new-array v6, v7, [Ljava/lang/String;

    .line 1884
    .line 1885
    const/4 v7, 0x0

    .line 1886
    aput-object v9, v6, v7

    .line 1887
    .line 1888
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1889
    .line 1890
    .line 1891
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1892
    .line 1893
    .line 1894
    :goto_25
    move-object/from16 v2, v16

    .line 1895
    .line 1896
    goto :goto_26

    .line 1897
    :cond_48
    const-wide/16 v2, 0x7d0

    .line 1898
    .line 1899
    invoke-static {v2, v3, v6}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 1900
    .line 1901
    .line 1902
    invoke-static {v2, v3, v8}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v2

    .line 1906
    iget v2, v2, Lfa/a0;->a:I

    .line 1907
    .line 1908
    if-nez v2, :cond_4a

    .line 1909
    .line 1910
    const-wide/16 v2, 0xbb8

    .line 1911
    .line 1912
    invoke-static {v2, v3, v9}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 1913
    .line 1914
    .line 1915
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1916
    .line 1917
    .line 1918
    goto :goto_25

    .line 1919
    :cond_49
    move-object/from16 v17, v2

    .line 1920
    .line 1921
    move-object/from16 v18, v3

    .line 1922
    .line 1923
    :cond_4a
    move-object/from16 v2, v17

    .line 1924
    .line 1925
    :goto_26
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1926
    .line 1927
    .line 1928
    move-result v3

    .line 1929
    if-eqz v3, :cond_4b

    .line 1930
    .line 1931
    :goto_27
    invoke-static {v5, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1932
    .line 1933
    .line 1934
    goto :goto_29

    .line 1935
    :cond_4b
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1936
    .line 1937
    .line 1938
    move-result v3

    .line 1939
    if-nez v3, :cond_4c

    .line 1940
    .line 1941
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1942
    .line 1943
    .line 1944
    move-result v3

    .line 1945
    if-nez v3, :cond_4c

    .line 1946
    .line 1947
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1948
    .line 1949
    .line 1950
    :cond_4c
    if-eqz v4, :cond_4d

    .line 1951
    .line 1952
    :try_start_c
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1953
    .line 1954
    invoke-virtual {v0}, Lfa/j;->m()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 1955
    .line 1956
    .line 1957
    goto :goto_28

    .line 1958
    :catch_a
    invoke-static {v12, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1959
    .line 1960
    .line 1961
    goto :goto_29

    .line 1962
    :cond_4d
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1963
    .line 1964
    .line 1965
    move-result v2

    .line 1966
    if-nez v2, :cond_4e

    .line 1967
    .line 1968
    :try_start_d
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1969
    .line 1970
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1971
    .line 1972
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1973
    .line 1974
    invoke-virtual {v0, v2}, Lfa/m;->M(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 1975
    .line 1976
    .line 1977
    :cond_4e
    :goto_28
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v0

    .line 1981
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v0

    .line 1985
    const-string v2, "uid=0("

    .line 1986
    .line 1987
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1988
    .line 1989
    .line 1990
    move-result v0

    .line 1991
    if-nez v0, :cond_4f

    .line 1992
    .line 1993
    goto :goto_27

    .line 1994
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1995
    .line 1996
    .line 1997
    :goto_29
    return-void

    .line 1998
    :pswitch_a
    sget v0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 1999
    .line 2000
    invoke-static/range {v17 .. v17}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2001
    .line 2002
    .line 2003
    move-result v0

    .line 2004
    if-nez v0, :cond_51

    .line 2005
    .line 2006
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2007
    .line 2008
    .line 2009
    move-result v0

    .line 2010
    if-eqz v0, :cond_50

    .line 2011
    .line 2012
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2013
    .line 2014
    .line 2015
    goto :goto_2a

    .line 2016
    :cond_50
    const-string v0, "\u672aroot"

    .line 2017
    .line 2018
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 2019
    .line 2020
    .line 2021
    goto :goto_2a

    .line 2022
    :cond_51
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2023
    .line 2024
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2025
    .line 2026
    .line 2027
    const-string v0, "mv /system/bin/su /system/bin/su_guanjia"

    .line 2028
    .line 2029
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    iget v0, v0, Lfa/a0;->a:I

    .line 2034
    .line 2035
    if-eqz v0, :cond_52

    .line 2036
    .line 2037
    invoke-static {v9, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 2038
    .line 2039
    .line 2040
    goto :goto_2a

    .line 2041
    :cond_52
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2042
    .line 2043
    .line 2044
    :goto_2a
    return-void

    .line 2045
    :pswitch_b
    sget v0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 2046
    .line 2047
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2048
    .line 2049
    .line 2050
    move-result v0

    .line 2051
    if-nez v0, :cond_54

    .line 2052
    .line 2053
    invoke-static/range {v17 .. v17}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2054
    .line 2055
    .line 2056
    move-result v0

    .line 2057
    if-eqz v0, :cond_53

    .line 2058
    .line 2059
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2060
    .line 2061
    .line 2062
    goto :goto_2c

    .line 2063
    :cond_53
    const-string v0, "\u672a\u627e\u5230su\u6587\u4ef6\uff0c\u7cfb\u7edf\u672aroot"

    .line 2064
    .line 2065
    :goto_2b
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 2066
    .line 2067
    .line 2068
    goto :goto_2c

    .line 2069
    :cond_54
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2070
    .line 2071
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2072
    .line 2073
    .line 2074
    const-string v0, "mv /system/bin/su_guanjia/system/bin/su"

    .line 2075
    .line 2076
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v0

    .line 2080
    iget v0, v0, Lfa/a0;->a:I

    .line 2081
    .line 2082
    if-eqz v0, :cond_55

    .line 2083
    .line 2084
    const-string v0, "\u64a4\u9500\u5931\u8d25"

    .line 2085
    .line 2086
    goto :goto_2b

    .line 2087
    :cond_55
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2088
    .line 2089
    .line 2090
    :goto_2c
    return-void

    .line 2091
    :pswitch_c
    sget v0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 2092
    .line 2093
    invoke-static/range {v17 .. v17}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2094
    .line 2095
    .line 2096
    move-result v0

    .line 2097
    const-string v2, "\u5220\u9664\u5931\u8d25"

    .line 2098
    .line 2099
    if-eqz v0, :cond_56

    .line 2100
    .line 2101
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2102
    .line 2103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2104
    .line 2105
    .line 2106
    const-string v0, "rm -rf /system/bin/su"

    .line 2107
    .line 2108
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v0

    .line 2112
    iget v0, v0, Lfa/a0;->a:I

    .line 2113
    .line 2114
    if-eqz v0, :cond_56

    .line 2115
    .line 2116
    :goto_2d
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 2117
    .line 2118
    .line 2119
    goto :goto_2e

    .line 2120
    :cond_56
    const-string v0, "/system/xbin/su"

    .line 2121
    .line 2122
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2123
    .line 2124
    .line 2125
    move-result v0

    .line 2126
    if-eqz v0, :cond_57

    .line 2127
    .line 2128
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2129
    .line 2130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2131
    .line 2132
    .line 2133
    const-string v0, "rm -rf /system/xbin/su"

    .line 2134
    .line 2135
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v0

    .line 2139
    iget v0, v0, Lfa/a0;->a:I

    .line 2140
    .line 2141
    if-eqz v0, :cond_57

    .line 2142
    .line 2143
    goto :goto_2d

    .line 2144
    :cond_57
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2145
    .line 2146
    .line 2147
    move-result v0

    .line 2148
    if-eqz v0, :cond_58

    .line 2149
    .line 2150
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2151
    .line 2152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2153
    .line 2154
    .line 2155
    const-string v0, "rm -rf /system/bin/su_guanjia"

    .line 2156
    .line 2157
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v0

    .line 2161
    iget v0, v0, Lfa/a0;->a:I

    .line 2162
    .line 2163
    if-eqz v0, :cond_58

    .line 2164
    .line 2165
    goto :goto_2d

    .line 2166
    :cond_58
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2167
    .line 2168
    .line 2169
    :goto_2e
    return-void

    .line 2170
    :pswitch_d
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 2171
    .line 2172
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2173
    .line 2174
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2175
    .line 2176
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 2177
    .line 2178
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 2179
    .line 2180
    iget v0, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 2181
    .line 2182
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v0

    .line 2186
    check-cast v0, Lx9/w3;

    .line 2187
    .line 2188
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 2189
    .line 2190
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 2191
    .line 2192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2193
    .line 2194
    .line 2195
    invoke-static {v0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 2196
    .line 2197
    .line 2198
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 2199
    .line 2200
    .line 2201
    move-result v2

    .line 2202
    if-eqz v2, :cond_59

    .line 2203
    .line 2204
    const-string v0, "\u5220\u9664\u5931\u8d25"

    .line 2205
    .line 2206
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 2207
    .line 2208
    .line 2209
    new-instance v2, Ljava/lang/Exception;

    .line 2210
    .line 2211
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v1, v2}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 2215
    .line 2216
    .line 2217
    goto :goto_2f

    .line 2218
    :cond_59
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v2

    .line 2222
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v2

    .line 2226
    invoke-interface {v2, v0}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 2227
    .line 2228
    .line 2229
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2230
    .line 2231
    .line 2232
    :goto_2f
    return-void

    .line 2233
    :pswitch_e
    const/4 v7, 0x1

    .line 2234
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 2235
    .line 2236
    new-instance v0, Ljava/util/HashMap;

    .line 2237
    .line 2238
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2239
    .line 2240
    .line 2241
    new-instance v2, Landroid/content/Intent;

    .line 2242
    .line 2243
    const-string v3, "android.intent.action.MAIN"

    .line 2244
    .line 2245
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2246
    .line 2247
    .line 2248
    const-string v3, "android.intent.category.HOME"

    .line 2249
    .line 2250
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    .line 2252
    .line 2253
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2254
    .line 2255
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2256
    .line 2257
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 2258
    .line 2259
    const/high16 v5, 0x10000

    .line 2260
    .line 2261
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v4

    .line 2265
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2266
    .line 2267
    const/16 v6, 0x2000

    .line 2268
    .line 2269
    const/16 v8, 0x18

    .line 2270
    .line 2271
    if-lt v5, v8, :cond_5a

    .line 2272
    .line 2273
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 2274
    .line 2275
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v3

    .line 2279
    goto :goto_30

    .line 2280
    :cond_5a
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 2281
    .line 2282
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v3

    .line 2286
    :goto_30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v3

    .line 2290
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2291
    .line 2292
    .line 2293
    move-result v5

    .line 2294
    const-string v6, "language"

    .line 2295
    .line 2296
    const-string v9, "select"

    .line 2297
    .line 2298
    const-string v10, "Google Play"

    .line 2299
    .line 2300
    const-string v11, "DeviceLockController"

    .line 2301
    .line 2302
    const-string v12, "\u8bbe\u7f6e"

    .line 2303
    .line 2304
    const-string v13, "Settings"

    .line 2305
    .line 2306
    const-string v14, ".settings"

    .line 2307
    .line 2308
    const-string v15, "launcher"

    .line 2309
    .line 2310
    const-string v7, "com.android."

    .line 2311
    .line 2312
    const-string v8, "android"

    .line 2313
    .line 2314
    if-eqz v5, :cond_65

    .line 2315
    .line 2316
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v5

    .line 2320
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2321
    .line 2322
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v17

    .line 2326
    move-object/from16 v18, v3

    .line 2327
    .line 2328
    invoke-virtual/range {v17 .. v17}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v3

    .line 2332
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2333
    .line 2334
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2335
    .line 2336
    invoke-interface {v3, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v1

    .line 2340
    if-nez v1, :cond_5b

    .line 2341
    .line 2342
    move-object/from16 v1, p1

    .line 2343
    .line 2344
    :goto_32
    move-object/from16 v3, v18

    .line 2345
    .line 2346
    const/4 v7, 0x1

    .line 2347
    const/16 v8, 0x18

    .line 2348
    .line 2349
    goto :goto_31

    .line 2350
    :cond_5b
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2351
    .line 2352
    move-object/from16 v17, v2

    .line 2353
    .line 2354
    iget-boolean v2, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 2355
    .line 2356
    if-nez v2, :cond_5d

    .line 2357
    .line 2358
    :cond_5c
    :goto_33
    move-object/from16 v1, p1

    .line 2359
    .line 2360
    move-object/from16 v2, v17

    .line 2361
    .line 2362
    goto :goto_32

    .line 2363
    :cond_5d
    iget-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2364
    .line 2365
    if-nez v2, :cond_5e

    .line 2366
    .line 2367
    goto :goto_33

    .line 2368
    :cond_5e
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2369
    .line 2370
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v2

    .line 2374
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v2

    .line 2378
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2379
    .line 2380
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2381
    .line 2382
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2383
    .line 2384
    .line 2385
    move-result-object v3

    .line 2386
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v3

    .line 2390
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2391
    .line 2392
    .line 2393
    move-result v8

    .line 2394
    if-eqz v8, :cond_5f

    .line 2395
    .line 2396
    goto :goto_33

    .line 2397
    :cond_5f
    iget-boolean v8, v1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 2398
    .line 2399
    if-eqz v8, :cond_60

    .line 2400
    .line 2401
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2402
    .line 2403
    .line 2404
    move-result v7

    .line 2405
    if-eqz v7, :cond_60

    .line 2406
    .line 2407
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2408
    .line 2409
    .line 2410
    move-result v7

    .line 2411
    if-nez v7, :cond_60

    .line 2412
    .line 2413
    goto :goto_33

    .line 2414
    :cond_60
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2415
    .line 2416
    .line 2417
    move-result v2

    .line 2418
    if-nez v2, :cond_5c

    .line 2419
    .line 2420
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2421
    .line 2422
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2423
    .line 2424
    .line 2425
    move-result v2

    .line 2426
    if-nez v2, :cond_5c

    .line 2427
    .line 2428
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2429
    .line 2430
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2431
    .line 2432
    .line 2433
    move-result v2

    .line 2434
    if-nez v2, :cond_5c

    .line 2435
    .line 2436
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2437
    .line 2438
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2439
    .line 2440
    .line 2441
    move-result v2

    .line 2442
    if-nez v2, :cond_5c

    .line 2443
    .line 2444
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2445
    .line 2446
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2447
    .line 2448
    .line 2449
    move-result v2

    .line 2450
    if-eqz v2, :cond_61

    .line 2451
    .line 2452
    goto :goto_33

    .line 2453
    :cond_61
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2454
    .line 2455
    .line 2456
    move-result v2

    .line 2457
    if-nez v2, :cond_5c

    .line 2458
    .line 2459
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2460
    .line 2461
    .line 2462
    move-result v2

    .line 2463
    if-eqz v2, :cond_62

    .line 2464
    .line 2465
    goto :goto_33

    .line 2466
    :cond_62
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2467
    .line 2468
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2469
    .line 2470
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2471
    .line 2472
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    .line 2474
    .line 2475
    move-result-object v2

    .line 2476
    if-eqz v2, :cond_63

    .line 2477
    .line 2478
    goto :goto_33

    .line 2479
    :cond_63
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2480
    .line 2481
    new-instance v3, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 2482
    .line 2483
    iget-object v6, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2484
    .line 2485
    iget-boolean v8, v1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 2486
    .line 2487
    iget-boolean v9, v1, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 2488
    .line 2489
    iget-boolean v10, v1, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 2490
    .line 2491
    iget-boolean v11, v1, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 2492
    .line 2493
    if-eqz v4, :cond_64

    .line 2494
    .line 2495
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2496
    .line 2497
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2498
    .line 2499
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2500
    .line 2501
    .line 2502
    move-result v1

    .line 2503
    if-eqz v1, :cond_64

    .line 2504
    .line 2505
    const/4 v12, 0x1

    .line 2506
    goto :goto_34

    .line 2507
    :cond_64
    const/4 v12, 0x0

    .line 2508
    :goto_34
    move-object v5, v3

    .line 2509
    move-object v7, v2

    .line 2510
    invoke-direct/range {v5 .. v12}, Lcom/yunpan/appmanage/bean/DesktopBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 2511
    .line 2512
    .line 2513
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    goto/16 :goto_33

    .line 2517
    .line 2518
    :cond_65
    move-object/from16 v17, v2

    .line 2519
    .line 2520
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2521
    .line 2522
    const v2, 0x8200

    .line 2523
    .line 2524
    .line 2525
    const/16 v3, 0x18

    .line 2526
    .line 2527
    if-lt v1, v3, :cond_66

    .line 2528
    .line 2529
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2530
    .line 2531
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 2532
    .line 2533
    move-object/from16 v3, v17

    .line 2534
    .line 2535
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v1

    .line 2539
    goto :goto_35

    .line 2540
    :cond_66
    move-object/from16 v3, v17

    .line 2541
    .line 2542
    const/16 v5, 0x12

    .line 2543
    .line 2544
    if-lt v1, v5, :cond_67

    .line 2545
    .line 2546
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2547
    .line 2548
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 2549
    .line 2550
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v1

    .line 2554
    goto :goto_35

    .line 2555
    :cond_67
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2556
    .line 2557
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 2558
    .line 2559
    const/16 v2, 0x201

    .line 2560
    .line 2561
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 2562
    .line 2563
    .line 2564
    move-result-object v1

    .line 2565
    :goto_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2566
    .line 2567
    .line 2568
    move-result-object v1

    .line 2569
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2570
    .line 2571
    .line 2572
    move-result v2

    .line 2573
    if-eqz v2, :cond_72

    .line 2574
    .line 2575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2576
    .line 2577
    .line 2578
    move-result-object v2

    .line 2579
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2580
    .line 2581
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v3

    .line 2585
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v3

    .line 2589
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2590
    .line 2591
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2592
    .line 2593
    invoke-interface {v3, v5}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 2594
    .line 2595
    .line 2596
    move-result-object v3

    .line 2597
    if-nez v3, :cond_68

    .line 2598
    .line 2599
    goto :goto_36

    .line 2600
    :cond_68
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2601
    .line 2602
    move-object/from16 v16, v1

    .line 2603
    .line 2604
    iget-boolean v1, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 2605
    .line 2606
    if-nez v1, :cond_69

    .line 2607
    .line 2608
    :goto_37
    move-object/from16 v1, v16

    .line 2609
    .line 2610
    goto :goto_36

    .line 2611
    :cond_69
    iget-boolean v1, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2612
    .line 2613
    if-nez v1, :cond_6a

    .line 2614
    .line 2615
    goto :goto_37

    .line 2616
    :cond_6a
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2617
    .line 2618
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v1

    .line 2622
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v1

    .line 2626
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2627
    .line 2628
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2629
    .line 2630
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v5

    .line 2634
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2635
    .line 2636
    .line 2637
    move-result-object v5

    .line 2638
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2639
    .line 2640
    .line 2641
    move-result v17

    .line 2642
    if-eqz v17, :cond_6b

    .line 2643
    .line 2644
    goto :goto_37

    .line 2645
    :cond_6b
    move-object/from16 v17, v8

    .line 2646
    .line 2647
    iget-boolean v8, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 2648
    .line 2649
    if-eqz v8, :cond_6d

    .line 2650
    .line 2651
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2652
    .line 2653
    .line 2654
    move-result v8

    .line 2655
    if-eqz v8, :cond_6d

    .line 2656
    .line 2657
    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2658
    .line 2659
    .line 2660
    move-result v8

    .line 2661
    if-nez v8, :cond_6d

    .line 2662
    .line 2663
    :cond_6c
    :goto_38
    move-object/from16 v1, v16

    .line 2664
    .line 2665
    move-object/from16 v8, v17

    .line 2666
    .line 2667
    goto :goto_36

    .line 2668
    :cond_6d
    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2669
    .line 2670
    .line 2671
    move-result v1

    .line 2672
    if-nez v1, :cond_6c

    .line 2673
    .line 2674
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2675
    .line 2676
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2677
    .line 2678
    .line 2679
    move-result v1

    .line 2680
    if-nez v1, :cond_6c

    .line 2681
    .line 2682
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2683
    .line 2684
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2685
    .line 2686
    .line 2687
    move-result v1

    .line 2688
    if-nez v1, :cond_6c

    .line 2689
    .line 2690
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2691
    .line 2692
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2693
    .line 2694
    .line 2695
    move-result v1

    .line 2696
    if-nez v1, :cond_6c

    .line 2697
    .line 2698
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2699
    .line 2700
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2701
    .line 2702
    .line 2703
    move-result v1

    .line 2704
    if-eqz v1, :cond_6e

    .line 2705
    .line 2706
    goto :goto_38

    .line 2707
    :cond_6e
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2708
    .line 2709
    .line 2710
    move-result v1

    .line 2711
    if-nez v1, :cond_6c

    .line 2712
    .line 2713
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2714
    .line 2715
    .line 2716
    move-result v1

    .line 2717
    if-eqz v1, :cond_6f

    .line 2718
    .line 2719
    goto :goto_38

    .line 2720
    :cond_6f
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2721
    .line 2722
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2723
    .line 2724
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2725
    .line 2726
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v1

    .line 2730
    if-eqz v1, :cond_70

    .line 2731
    .line 2732
    goto :goto_38

    .line 2733
    :cond_70
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2734
    .line 2735
    new-instance v2, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 2736
    .line 2737
    iget-object v5, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2738
    .line 2739
    iget-boolean v8, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 2740
    .line 2741
    move-object/from16 v18, v6

    .line 2742
    .line 2743
    iget-boolean v6, v3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 2744
    .line 2745
    move-object/from16 v19, v7

    .line 2746
    .line 2747
    iget-boolean v7, v3, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 2748
    .line 2749
    iget-boolean v3, v3, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 2750
    .line 2751
    move-object/from16 v20, v9

    .line 2752
    .line 2753
    if-eqz v4, :cond_71

    .line 2754
    .line 2755
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2756
    .line 2757
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2758
    .line 2759
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2760
    .line 2761
    .line 2762
    move-result v9

    .line 2763
    if-eqz v9, :cond_71

    .line 2764
    .line 2765
    const/16 v30, 0x1

    .line 2766
    .line 2767
    goto :goto_39

    .line 2768
    :cond_71
    const/16 v30, 0x0

    .line 2769
    .line 2770
    :goto_39
    move-object/from16 v23, v2

    .line 2771
    .line 2772
    move-object/from16 v24, v5

    .line 2773
    .line 2774
    move-object/from16 v25, v1

    .line 2775
    .line 2776
    move/from16 v26, v8

    .line 2777
    .line 2778
    move/from16 v27, v6

    .line 2779
    .line 2780
    move/from16 v28, v7

    .line 2781
    .line 2782
    move/from16 v29, v3

    .line 2783
    .line 2784
    invoke-direct/range {v23 .. v30}, Lcom/yunpan/appmanage/bean/DesktopBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 2785
    .line 2786
    .line 2787
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    .line 2789
    .line 2790
    move-object/from16 v1, v16

    .line 2791
    .line 2792
    move-object/from16 v8, v17

    .line 2793
    .line 2794
    move-object/from16 v6, v18

    .line 2795
    .line 2796
    move-object/from16 v7, v19

    .line 2797
    .line 2798
    move-object/from16 v9, v20

    .line 2799
    .line 2800
    goto/16 :goto_36

    .line 2801
    .line 2802
    :cond_72
    new-instance v1, Ljava/util/ArrayList;

    .line 2803
    .line 2804
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 2805
    .line 2806
    .line 2807
    move-result-object v0

    .line 2808
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2809
    .line 2810
    .line 2811
    move-object/from16 v2, p1

    .line 2812
    .line 2813
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2814
    .line 2815
    .line 2816
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2817
    .line 2818
    .line 2819
    return-void

    .line 2820
    :pswitch_f
    move-object v2, v1

    .line 2821
    sget v0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->F:I

    .line 2822
    .line 2823
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 2824
    .line 2825
    .line 2826
    move-result-object v0

    .line 2827
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v0

    .line 2831
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 2832
    .line 2833
    .line 2834
    move-result-object v0

    .line 2835
    new-instance v1, Ljava/util/ArrayList;

    .line 2836
    .line 2837
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2838
    .line 2839
    .line 2840
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2841
    .line 2842
    .line 2843
    move-result-object v0

    .line 2844
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2845
    .line 2846
    .line 2847
    move-result v3

    .line 2848
    if-eqz v3, :cond_74

    .line 2849
    .line 2850
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2851
    .line 2852
    .line 2853
    move-result-object v3

    .line 2854
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 2855
    .line 2856
    new-instance v4, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 2857
    .line 2858
    iget-object v5, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2859
    .line 2860
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2861
    .line 2862
    iget-boolean v7, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 2863
    .line 2864
    sget-object v8, Lwa/t;->a:Lwa/u;

    .line 2865
    .line 2866
    iget-object v8, v8, Lwa/u;->w:Ljava/util/HashSet;

    .line 2867
    .line 2868
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2869
    .line 2870
    .line 2871
    move-result v8

    .line 2872
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2873
    .line 2874
    .line 2875
    iget-boolean v3, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 2876
    .line 2877
    if-eqz v3, :cond_73

    .line 2878
    .line 2879
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    .line 2881
    .line 2882
    const/4 v3, 0x0

    .line 2883
    goto :goto_3a

    .line 2884
    :cond_73
    const/4 v3, 0x0

    .line 2885
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2886
    .line 2887
    .line 2888
    goto :goto_3a

    .line 2889
    :cond_74
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2890
    .line 2891
    .line 2892
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2893
    .line 2894
    .line 2895
    return-void

    .line 2896
    nop

    .line 2897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 9

    .line 1
    const/16 v0, 0x14c

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/16 v2, 0x82

    .line 6
    .line 7
    const/16 v3, 0x11

    .line 8
    .line 9
    const/16 v4, 0x42

    .line 10
    .line 11
    const/16 v5, 0x14d

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    iget v8, p0, Lua/v0;->a:I

    .line 16
    .line 17
    sparse-switch v8, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    invoke-static {v5, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 v6, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-eq p1, v2, :cond_1

    .line 30
    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-static {v5, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    return v6

    .line 38
    :sswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 39
    .line 40
    if-eq p1, v3, :cond_4

    .line 41
    .line 42
    if-ne p1, v4, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    if-ne p1, v2, :cond_5

    .line 46
    .line 47
    invoke-static {v5, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    const/4 v6, 0x1

    .line 51
    goto :goto_4

    .line 52
    :cond_4
    :goto_3
    invoke-static {v0, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    :goto_4
    return v6

    .line 57
    :sswitch_1
    sget v1, Lcom/yunpan/appmanage/ui/ActivityPs;->L:I

    .line 58
    .line 59
    if-eq p1, v3, :cond_7

    .line 60
    .line 61
    if-ne p1, v4, :cond_6

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_6
    if-ne p1, v2, :cond_8

    .line 65
    .line 66
    invoke-static {v5, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :goto_5
    const/4 v6, 0x1

    .line 70
    goto :goto_7

    .line 71
    :cond_7
    :goto_6
    invoke-static {v0, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_8
    :goto_7
    return v6

    .line 76
    :sswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 77
    .line 78
    if-ne p1, v4, :cond_9

    .line 79
    .line 80
    invoke-static {v5, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :goto_8
    const/4 v6, 0x1

    .line 84
    goto :goto_9

    .line 85
    :cond_9
    if-ne p1, v1, :cond_a

    .line 86
    .line 87
    invoke-static {v5, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_8

    .line 91
    :cond_a
    :goto_9
    return v6

    .line 92
    :sswitch_3
    sget p2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 93
    .line 94
    if-ne p1, v4, :cond_b

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    :cond_b
    return v6

    .line 98
    nop

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iget p2, p0, Lua/v0;->a:I

    .line 2
    .line 3
    sparse-switch p2, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u3010\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e\u3011\u6743\u9650"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :sswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 21
    .line 22
    return-void

    .line 23
    :sswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_2
    sget p2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string p1, "\u8bf7\u6388\u4e88\u3010\u901a\u77e5\u4f7f\u7528\u6743\u3011"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    nop

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
