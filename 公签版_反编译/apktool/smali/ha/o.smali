.class public final synthetic Lha/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;
.implements Lec/d;
.implements Ly0/a0;
.implements Lha/ea;
.implements Lha/la;
.implements Lfa/z;
.implements Lwb/b;
.implements Lu1/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lha/o;->a:I

    iput-object p3, p0, Lha/o;->c:Ljava/lang/Object;

    iput p1, p0, Lha/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/o;->a:I

    .line 2
    .line 3
    check-cast p1, Lr1/k0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lr1/y;

    .line 11
    .line 12
    iget v1, p0, Lha/o;->b:I

    .line 13
    .line 14
    invoke-interface {p1, v0, v1}, Lr1/k0;->E(Lr1/y;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ly1/v0;

    .line 21
    .line 22
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 23
    .line 24
    iget v0, p0, Lha/o;->b:I

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lr1/k0;->t(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->H:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/Display;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->E:Landroid/view/Display;

    .line 14
    .line 15
    iget p1, p0, Lha/o;->b:I

    .line 16
    .line 17
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->L:I

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->K:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->I:Z

    .line 25
    .line 26
    const/16 v1, 0xb

    .line 27
    .line 28
    if-ne p1, v1, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->I:Z

    .line 32
    .line 33
    :cond_0
    const/16 v2, 0x8

    .line 34
    .line 35
    if-eq p1, v2, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x9

    .line 38
    .line 39
    if-eq p1, v2, :cond_2

    .line 40
    .line 41
    if-ne p1, v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->F:Landroid/media/projection/MediaProjectionManager;

    .line 45
    .line 46
    invoke-static {p1}, Ltb/b;->e(Landroid/media/projection/MediaProjectionManager;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->M:I

    .line 51
    .line 52
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    new-instance p1, Lha/q2;

    .line 57
    .line 58
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 59
    .line 60
    new-instance v2, Lua/m1;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lua/m1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-direct {p1, v0, v1, v3, v2}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 p1, 0x1

    .line 2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->N:I

    .line 3
    .line 4
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, p2}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const-string v3, "com.hozonauto.netahome.mini"

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_15

    .line 45
    .line 46
    :cond_0
    new-instance v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 47
    .line 48
    invoke-direct {v3}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "\u5c0f\u7a0b\u5e8f"

    .line 65
    .line 66
    :goto_0
    iput-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 67
    .line 68
    iput-boolean p1, v3, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 69
    .line 70
    iput-boolean v2, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 71
    .line 72
    iput-boolean v2, v3, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 73
    .line 74
    iput-boolean v2, v3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 75
    .line 76
    iput-boolean v2, v3, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 77
    .line 78
    move-object v1, v3

    .line 79
    :cond_2
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->D:Lx9/r3;

    .line 80
    .line 81
    iget v4, p0, Lha/o;->b:I

    .line 82
    .line 83
    invoke-virtual {v3, v4, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lz7/o;

    .line 87
    .line 88
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 89
    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    :goto_1
    iget-object v6, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 93
    .line 94
    iget-object v6, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-ge v5, v6, :cond_14

    .line 101
    .line 102
    if-ne v5, v4, :cond_13

    .line 103
    .line 104
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 105
    .line 106
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 107
    .line 108
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 109
    .line 110
    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    new-instance v6, Lz7/s;

    .line 114
    .line 115
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 116
    .line 117
    .line 118
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    const-string v8, "active"

    .line 121
    .line 122
    invoke-virtual {v6, v8, v7}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    .line 124
    .line 125
    const-string v7, "active_icon"

    .line 126
    .line 127
    const-string v8, ""

    .line 128
    .line 129
    invoke-virtual {v6, v7, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v7, Lz7/s;

    .line 133
    .line 134
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v9, "bundle_info"

    .line 138
    .line 139
    invoke-virtual {v6, v9, v7}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 140
    .line 141
    .line 142
    const-string v7, "group"

    .line 143
    .line 144
    const-string v9, "application"

    .line 145
    .line 146
    invoke-virtual {v6, v7, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 150
    .line 151
    const-string v9, "com.ximalaya.ting.android.car"

    .line 152
    .line 153
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    const-string v9, "launch_icon"

    .line 158
    .line 159
    const-string v10, "id"

    .line 160
    .line 161
    if-eqz v7, :cond_3

    .line 162
    .line 163
    const-string v7, "XMLY"

    .line 164
    .line 165
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v7, "all_app_xmly"

    .line 169
    .line 170
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :cond_3
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 176
    .line 177
    const-string v11, "com.thunder.carplay"

    .line 178
    .line 179
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-eqz v7, :cond_4

    .line 184
    .line 185
    const-string v7, "THUNDER_PLAY"

    .line 186
    .line 187
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v7, "all_app_thunder_play"

    .line 191
    .line 192
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_4
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 198
    .line 199
    const-string v11, "com.qinggan.app.music"

    .line 200
    .line 201
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-eqz v7, :cond_5

    .line 206
    .line 207
    const-string v7, "MULTIMEDIA"

    .line 208
    .line 209
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v7, "all_app_multimedia_2"

    .line 213
    .line 214
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_5
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 220
    .line 221
    const-string v11, "com.desaysv.ep40_gamecenter_portrait"

    .line 222
    .line 223
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_6

    .line 228
    .line 229
    const-string v7, "EP_GAME_CENTER"

    .line 230
    .line 231
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v7, "all_app_game_center"

    .line 235
    .line 236
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_6
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 242
    .line 243
    const-string v11, "com.qinggan.app.gallery"

    .line 244
    .line 245
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_7

    .line 250
    .line 251
    const-string v7, "PHOTO"

    .line 252
    .line 253
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v7, "all_app_photo"

    .line 257
    .line 258
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_7
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 264
    .line 265
    const-string v11, "com.qinggan.bluetoothphone"

    .line 266
    .line 267
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_8

    .line 272
    .line 273
    const-string v7, "PHONE"

    .line 274
    .line 275
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v7, "all_app_phone"

    .line 279
    .line 280
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :cond_8
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 286
    .line 287
    const-string v11, "com.qinggan.app.qgvoicesetting"

    .line 288
    .line 289
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_9

    .line 294
    .line 295
    const-string v7, "VOICE"

    .line 296
    .line 297
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v7, "all_app_voice"

    .line 301
    .line 302
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_9
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 308
    .line 309
    const-string v11, "com.qinggan.app.profile"

    .line 310
    .line 311
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-eqz v7, :cond_a

    .line 316
    .line 317
    const-string v7, "SCENE_MODE"

    .line 318
    .line 319
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v7, "all_app_scene_mode"

    .line 323
    .line 324
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_a
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 330
    .line 331
    const-string v11, "com.qinggan.app.login"

    .line 332
    .line 333
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-eqz v7, :cond_b

    .line 338
    .line 339
    const-string v7, "USER_CENTER"

    .line 340
    .line 341
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v7, "all_app_user_center"

    .line 345
    .line 346
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_b
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 352
    .line 353
    const-string v11, "com.pateo.nzstoreapp"

    .line 354
    .line 355
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_c

    .line 360
    .line 361
    const-string v7, "MARKET"

    .line 362
    .line 363
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v7, "all_app_market"

    .line 367
    .line 368
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_2

    .line 372
    .line 373
    :cond_c
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 374
    .line 375
    const-string v11, "com.zongmutech.avm"

    .line 376
    .line 377
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    if-eqz v7, :cond_d

    .line 382
    .line 383
    const-string v7, "RVC"

    .line 384
    .line 385
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v7, "all_app_avm"

    .line 389
    .line 390
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :cond_d
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 396
    .line 397
    const-string v11, "com.carota.hozon"

    .line 398
    .line 399
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    if-eqz v7, :cond_e

    .line 404
    .line 405
    const-string v7, "OTA"

    .line 406
    .line 407
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v7, "all_app_ota"

    .line 411
    .line 412
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto :goto_2

    .line 416
    :cond_e
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 417
    .line 418
    const-string v11, "com.arcvideo.car.iqy.video"

    .line 419
    .line 420
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-eqz v7, :cond_f

    .line 425
    .line 426
    const-string v7, "AQY"

    .line 427
    .line 428
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const-string v7, "all_app_aqy"

    .line 432
    .line 433
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_2

    .line 437
    :cond_f
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 438
    .line 439
    const-string v11, "com.qinggan.app.energyflow"

    .line 440
    .line 441
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v7

    .line 445
    if-eqz v7, :cond_10

    .line 446
    .line 447
    const-string v7, "ENERGY"

    .line 448
    .line 449
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const-string v7, "all_app_energy"

    .line 453
    .line 454
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto :goto_2

    .line 458
    :cond_10
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 459
    .line 460
    const-string v11, "com.tencent.qqmusiccar"

    .line 461
    .line 462
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v7

    .line 466
    if-eqz v7, :cond_11

    .line 467
    .line 468
    const-string v7, "QQ_MUSIC"

    .line 469
    .line 470
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    const-string v7, "all_app_qq_music"

    .line 474
    .line 475
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto :goto_2

    .line 479
    :cond_11
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 480
    .line 481
    const-string v11, "com.cybertron.browser"

    .line 482
    .line 483
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    if-eqz v7, :cond_12

    .line 488
    .line 489
    const-string v7, "CAR_ENTERTAINMENT"

    .line 490
    .line 491
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    const-string v7, "all_app_car_entertainment"

    .line 495
    .line 496
    invoke-virtual {v6, v9, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto :goto_2

    .line 500
    :cond_12
    iget-object v7, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v6, v10, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6, v9, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    :goto_2
    const-string v7, "name"

    .line 509
    .line 510
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v6, v7, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    const-string v7, "package_name"

    .line 516
    .line 517
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v6, v7, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const/4 v7, -0x1

    .line 523
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    const-string v8, "status"

    .line 528
    .line 529
    invoke-virtual {v6, v8, v7}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 530
    .line 531
    .line 532
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    const-string v8, "ui_type"

    .line 537
    .line 538
    invoke-virtual {v6, v8, v7}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v6}, Lz7/o;->k(Lz7/p;)V

    .line 542
    .line 543
    .line 544
    :cond_13
    iget-object v6, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 545
    .line 546
    invoke-virtual {v6, v5}, Lz7/o;->l(I)Lz7/p;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    invoke-virtual {v3, v6}, Lz7/o;->k(Lz7/p;)V

    .line 551
    .line 552
    .line 553
    add-int/2addr v5, p1

    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :cond_14
    iput-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 557
    .line 558
    :cond_15
    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lha/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iget v1, p0, Lha/o;->b:I

    .line 10
    .line 11
    if-eq v1, v0, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v2, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/view/View;

    .line 35
    .line 36
    new-instance v3, La2/g0;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-direct {v3, v1, v4, p1}, La2/g0;-><init>(IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-interface {p1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-static {v2}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v3}, La2/g0;->run()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return v0

    .line 72
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "STATE_"

    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    if-ne v1, v0, :cond_5

    .line 82
    .line 83
    const-string v0, "DRAGGING"

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    const-string v0, "SETTLING"

    .line 87
    .line 88
    :goto_3
    const-string v1, " should not be set externally."

    .line 89
    .line 90
    invoke-static {v0, v1, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public e(Lfa/a0;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/y5;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget p1, p1, Lfa/a0;->a:I

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, v0, Lua/y5;->d:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 20
    .line 21
    iget v0, p0, Lha/o;->b:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lc6/g;->C(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroidx/room/s;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget p1, p1, Lfa/a0;->a:I

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 43
    .line 44
    iget v0, p0, Lha/o;->b:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lc6/g;->C(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lha/p;

    .line 4
    .line 5
    iget-object p1, p1, Lha/p;->D:Lx9/s2;

    .line 6
    .line 7
    iget v0, p0, Lha/o;->b:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const-string v8, ""

    .line 13
    .line 14
    const/4 v9, 0x2

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x1

    .line 17
    iget v12, v1, Lha/o;->b:I

    .line 18
    .line 19
    iget-object v13, v1, Lha/o;->c:Ljava/lang/Object;

    .line 20
    .line 21
    iget v14, v1, Lha/o;->a:I

    .line 22
    .line 23
    packed-switch v14, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    move-object v3, v13

    .line 28
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 29
    .line 30
    iget-object v4, v3, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 31
    .line 32
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v0, v4, :cond_1

    .line 37
    .line 38
    if-ne v0, v12, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-static {v8}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v3, v3, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->content:Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, ","

    .line 56
    .line 57
    invoke-static {v3, v5, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v8, v3

    .line 62
    :goto_1
    add-int/2addr v0, v11

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    invoke-static {v11, v10, v8}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    :try_start_0
    iget-object v3, v3, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->F:Landroid/content/ContentResolver;

    .line 77
    .line 78
    const-string v4, "OUSHANG_WHILTE_APP_LIST"

    .line 79
    .line 80
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    nop

    .line 90
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "settings put global OUSHANG_WHILTE_APP_LIST \'"

    .line 101
    .line 102
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v4, "\'"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget v0, v0, Lfa/a0;->a:I

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 129
    .line 130
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 135
    .line 136
    .line 137
    :goto_3
    return-void

    .line 138
    :pswitch_1
    check-cast v13, Lua/w3;

    .line 139
    .line 140
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const v0, 0x7fffffff

    .line 144
    .line 145
    .line 146
    if-ltz v12, :cond_4

    .line 147
    .line 148
    if-le v12, v0, :cond_5

    .line 149
    .line 150
    :cond_4
    const v12, 0x7fffffff

    .line 151
    .line 152
    .line 153
    :cond_5
    const/16 v0, 0x7530

    .line 154
    .line 155
    if-ge v12, v0, :cond_6

    .line 156
    .line 157
    const-string v0, "\u907f\u514d\u8bef\u8bbe\uff0c\u4f4e\u4e8e30\u79d2\u963b\u6b62\u60a8\u8bbe\u7f6e"

    .line 158
    .line 159
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_6
    :try_start_1
    iget-object v0, v13, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 164
    .line 165
    sget v3, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 166
    .line 167
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v3, "screen_off_timeout"

    .line 174
    .line 175
    invoke-static {v0, v3, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    .line 177
    .line 178
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    goto :goto_4

    .line 180
    :catch_1
    nop

    .line 181
    :goto_4
    if-nez v10, :cond_7

    .line 182
    .line 183
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v4, "settings put system screen_off_timeout "

    .line 188
    .line 189
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget v0, v0, Lfa/a0;->a:I

    .line 207
    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    const-string v0, "\u8bbe\u7f6e\u5931\u8d25"

    .line 211
    .line 212
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 217
    .line 218
    .line 219
    :goto_5
    return-void

    .line 220
    :pswitch_2
    check-cast v13, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 221
    .line 222
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 223
    .line 224
    invoke-virtual {v0, v12}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 229
    .line 230
    iget-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 231
    .line 232
    const/16 v4, 0x18

    .line 233
    .line 234
    const-wide/16 v6, 0x14d

    .line 235
    .line 236
    const-string v9, "\u64cd\u4f5c\u6210\u529f"

    .line 237
    .line 238
    const/16 v14, 0x2000

    .line 239
    .line 240
    if-nez v3, :cond_12

    .line 241
    .line 242
    iget-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 243
    .line 244
    if-nez v3, :cond_12

    .line 245
    .line 246
    iget-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 247
    .line 248
    if-eqz v3, :cond_8

    .line 249
    .line 250
    goto/16 :goto_c

    .line 251
    .line 252
    :cond_8
    iget-object v3, v13, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 253
    .line 254
    invoke-virtual {v3}, Lc6/g;->v()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    if-eqz v15, :cond_11

    .line 267
    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v15

    .line 272
    check-cast v15, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 273
    .line 274
    iget-boolean v5, v15, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 275
    .line 276
    if-nez v5, :cond_9

    .line 277
    .line 278
    iget-boolean v5, v15, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 279
    .line 280
    if-nez v5, :cond_9

    .line 281
    .line 282
    iget-boolean v5, v15, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 283
    .line 284
    if-nez v5, :cond_9

    .line 285
    .line 286
    iget-object v5, v15, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 287
    .line 288
    iget-object v15, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-nez v5, :cond_9

    .line 295
    .line 296
    :try_start_2
    invoke-virtual {v13, v12, v11}, Lcom/yunpan/appmanage/ui/ActivityDesktop;->y(IZ)V

    .line 297
    .line 298
    .line 299
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 303
    .line 304
    .line 305
    :try_start_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 306
    .line 307
    if-lt v3, v4, :cond_a

    .line 308
    .line 309
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 310
    .line 311
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v3, v4, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    goto :goto_6

    .line 322
    :catch_2
    nop

    .line 323
    goto :goto_7

    .line 324
    :cond_a
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 325
    .line 326
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v3, v4, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    :goto_6
    new-instance v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 337
    .line 338
    invoke-direct {v4, v3}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 339
    .line 340
    .line 341
    move-object v5, v4

    .line 342
    goto :goto_8

    .line 343
    :goto_7
    const/4 v5, 0x0

    .line 344
    :goto_8
    if-eqz v5, :cond_c

    .line 345
    .line 346
    :try_start_4
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 347
    .line 348
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 349
    .line 350
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 351
    .line 352
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 353
    .line 354
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 355
    .line 356
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 357
    .line 358
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 359
    .line 360
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isSystemApp:Z

    .line 361
    .line 362
    iget-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDefaultDesktop:Z

    .line 363
    .line 364
    if-eqz v3, :cond_b

    .line 365
    .line 366
    iput-boolean v10, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDefaultDesktop:Z

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :catch_3
    move-exception v0

    .line 370
    goto/16 :goto_b

    .line 371
    .line 372
    :cond_b
    :goto_9
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :cond_c
    const-wide/16 v3, 0x1f4

    .line 376
    .line 377
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 378
    .line 379
    .line 380
    new-instance v0, Landroid/content/Intent;

    .line 381
    .line 382
    const-string v3, "android.intent.action.MAIN"

    .line 383
    .line 384
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const-string v3, "android.intent.category.HOME"

    .line 388
    .line 389
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 393
    .line 394
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 395
    .line 396
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 397
    .line 398
    const/high16 v4, 0x10000

    .line 399
    .line 400
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_e

    .line 405
    .line 406
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 407
    .line 408
    if-eqz v0, :cond_e

    .line 409
    .line 410
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 411
    .line 412
    if-eqz v0, :cond_e

    .line 413
    .line 414
    const-string v3, "android"

    .line 415
    .line 416
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-eqz v3, :cond_d

    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_d
    move-object v8, v0

    .line 424
    :cond_e
    :goto_a
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_f

    .line 429
    .line 430
    const-string v0, "\u8bf7\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762"

    .line 431
    .line 432
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_10

    .line 436
    .line 437
    :cond_f
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 438
    .line 439
    const-string v3, "ps -A"

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    iget-object v3, v0, Lfa/a0;->b:Ljava/util/List;

    .line 449
    .line 450
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    const/16 v4, 0x14

    .line 455
    .line 456
    if-ge v3, v4, :cond_10

    .line 457
    .line 458
    const-string v0, "ps"

    .line 459
    .line 460
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    :cond_10
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string v4, " "

    .line 474
    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v4, "\n"

    .line 482
    .line 483
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_14

    .line 495
    .line 496
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-interface {v0, v8}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    if-eqz v0, :cond_14

    .line 509
    .line 510
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 511
    .line 512
    .line 513
    goto :goto_10

    .line 514
    :goto_b
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 515
    .line 516
    .line 517
    goto :goto_12

    .line 518
    :cond_11
    const-string v0, "\u4ec5\u6709\u4e00\u6b3e\u684c\u9762\u53ef\u7528\uff0c\u6211\u963b\u6b62\u60a8\u7981\u7528\u5b83"

    .line 519
    .line 520
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    goto :goto_10

    .line 524
    :cond_12
    :goto_c
    :try_start_5
    invoke-virtual {v13, v12, v10}, Lcom/yunpan/appmanage/ui/ActivityDesktop;->y(IZ)V

    .line 525
    .line 526
    .line 527
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 531
    .line 532
    .line 533
    :try_start_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 534
    .line 535
    if-lt v3, v4, :cond_13

    .line 536
    .line 537
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 538
    .line 539
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v3, v4, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    goto :goto_d

    .line 550
    :catch_4
    nop

    .line 551
    goto :goto_e

    .line 552
    :cond_13
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 553
    .line 554
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v3, v4, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    :goto_d
    new-instance v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 565
    .line 566
    invoke-direct {v4, v3}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 567
    .line 568
    .line 569
    move-object v5, v4

    .line 570
    goto :goto_f

    .line 571
    :goto_e
    const/4 v5, 0x0

    .line 572
    :goto_f
    if-eqz v5, :cond_14

    .line 573
    .line 574
    :try_start_7
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 575
    .line 576
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 577
    .line 578
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 579
    .line 580
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 581
    .line 582
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 583
    .line 584
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 585
    .line 586
    iget-boolean v3, v5, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 587
    .line 588
    iput-boolean v3, v0, Lcom/yunpan/appmanage/bean/DesktopBean;->isSystemApp:Z

    .line 589
    .line 590
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 591
    .line 592
    .line 593
    goto :goto_10

    .line 594
    :catch_5
    move-exception v0

    .line 595
    goto :goto_11

    .line 596
    :cond_14
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 597
    .line 598
    .line 599
    goto :goto_12

    .line 600
    :goto_11
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 601
    .line 602
    .line 603
    :goto_12
    return-void

    .line 604
    :pswitch_3
    sget v8, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->K:I

    .line 605
    .line 606
    check-cast v13, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 607
    .line 608
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    new-instance v8, Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .line 615
    .line 616
    if-ne v12, v11, :cond_15

    .line 617
    .line 618
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    goto/16 :goto_13

    .line 631
    .line 632
    :cond_15
    if-ne v12, v9, :cond_16

    .line 633
    .line 634
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_user_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    goto/16 :goto_13

    .line 647
    .line 648
    :cond_16
    if-ne v12, v7, :cond_17

    .line 649
    .line 650
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_system_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    goto :goto_13

    .line 663
    :cond_17
    if-ne v12, v6, :cond_18

    .line 664
    .line 665
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_noCanStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    goto :goto_13

    .line 678
    :cond_18
    if-ne v12, v5, :cond_19

    .line 679
    .line 680
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_disable()Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object v8

    .line 692
    goto :goto_13

    .line 693
    :cond_19
    if-ne v12, v4, :cond_1a

    .line 694
    .line 695
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_hide()Ljava/util/List;

    .line 704
    .line 705
    .line 706
    move-result-object v8

    .line 707
    goto :goto_13

    .line 708
    :cond_1a
    if-ne v12, v3, :cond_1b

    .line 709
    .line 710
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_unInstall()Ljava/util/List;

    .line 719
    .line 720
    .line 721
    move-result-object v8

    .line 722
    goto :goto_13

    .line 723
    :cond_1b
    if-ne v12, v0, :cond_1c

    .line 724
    .line 725
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_unInstallHashDate()Ljava/util/List;

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    goto :goto_13

    .line 738
    :cond_1c
    if-nez v12, :cond_1d

    .line 739
    .line 740
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    iget-object v3, v13, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->I:Ljava/lang/String;

    .line 749
    .line 750
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/db/AppDao;->search_name(Ljava/lang/String;)Ljava/util/List;

    .line 751
    .line 752
    .line 753
    move-result-object v8

    .line 754
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    iget-object v3, v13, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->I:Ljava/lang/String;

    .line 763
    .line 764
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/db/AppDao;->search_pack(Ljava/lang/String;)Ljava/util/List;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 769
    .line 770
    .line 771
    :cond_1d
    :goto_13
    invoke-virtual {v2, v8}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    :pswitch_4
    sget v8, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 779
    .line 780
    check-cast v13, Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 781
    .line 782
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    new-instance v8, Ljava/util/ArrayList;

    .line 786
    .line 787
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .line 789
    .line 790
    if-ne v12, v11, :cond_1e

    .line 791
    .line 792
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all_order()Ljava/util/List;

    .line 801
    .line 802
    .line 803
    move-result-object v8

    .line 804
    goto/16 :goto_14

    .line 805
    .line 806
    :cond_1e
    if-ne v12, v9, :cond_1f

    .line 807
    .line 808
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_user_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 817
    .line 818
    .line 819
    move-result-object v8

    .line 820
    goto/16 :goto_14

    .line 821
    .line 822
    :cond_1f
    if-ne v12, v7, :cond_20

    .line 823
    .line 824
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_system_canStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 833
    .line 834
    .line 835
    move-result-object v8

    .line 836
    goto :goto_14

    .line 837
    :cond_20
    if-ne v12, v6, :cond_21

    .line 838
    .line 839
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_noCanStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 848
    .line 849
    .line 850
    move-result-object v8

    .line 851
    goto :goto_14

    .line 852
    :cond_21
    if-ne v12, v5, :cond_22

    .line 853
    .line 854
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_disable()Ljava/util/List;

    .line 863
    .line 864
    .line 865
    move-result-object v8

    .line 866
    goto :goto_14

    .line 867
    :cond_22
    if-ne v12, v4, :cond_23

    .line 868
    .line 869
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_hide()Ljava/util/List;

    .line 878
    .line 879
    .line 880
    move-result-object v8

    .line 881
    goto :goto_14

    .line 882
    :cond_23
    if-ne v12, v3, :cond_24

    .line 883
    .line 884
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_unInstall()Ljava/util/List;

    .line 893
    .line 894
    .line 895
    move-result-object v8

    .line 896
    goto :goto_14

    .line 897
    :cond_24
    if-ne v12, v0, :cond_25

    .line 898
    .line 899
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_unInstallHashDate()Ljava/util/List;

    .line 908
    .line 909
    .line 910
    move-result-object v8

    .line 911
    goto :goto_14

    .line 912
    :cond_25
    if-nez v12, :cond_26

    .line 913
    .line 914
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    iget-object v3, v13, Lcom/yunpan/appmanage/ui/ActivityApps;->K:Ljava/lang/String;

    .line 923
    .line 924
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/db/AppDao;->search_name(Ljava/lang/String;)Ljava/util/List;

    .line 925
    .line 926
    .line 927
    move-result-object v8

    .line 928
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    iget-object v3, v13, Lcom/yunpan/appmanage/ui/ActivityApps;->K:Ljava/lang/String;

    .line 937
    .line 938
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/db/AppDao;->search_pack(Ljava/lang/String;)Ljava/util/List;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 943
    .line 944
    .line 945
    :cond_26
    :goto_14
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 946
    .line 947
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->i0:I

    .line 948
    .line 949
    if-lez v0, :cond_27

    .line 950
    .line 951
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 952
    .line 953
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    new-instance v3, Lua/k0;

    .line 958
    .line 959
    invoke-direct {v3, v10, v0}, Lua/k0;-><init>(ILjava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 963
    .line 964
    .line 965
    :cond_27
    invoke-virtual {v2, v8}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 969
    .line 970
    .line 971
    return-void

    .line 972
    :pswitch_5
    check-cast v13, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 973
    .line 974
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 975
    .line 976
    invoke-virtual {v0, v12}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    check-cast v0, Lx9/b;

    .line 981
    .line 982
    iget-object v3, v0, Lx9/b;->c:Ljava/lang/String;

    .line 983
    .line 984
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 985
    .line 986
    .line 987
    move-result-object v3

    .line 988
    :try_start_8
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 989
    .line 990
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 991
    .line 992
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 993
    .line 994
    invoke-virtual {v4, v3, v11, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 995
    .line 996
    .line 997
    goto :goto_15

    .line 998
    :catch_6
    :try_start_9
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 999
    .line 1000
    iget-object v5, v0, Lx9/b;->c:Ljava/lang/String;

    .line 1001
    .line 1002
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v5, v10}, La2/w0;->V(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1006
    .line 1007
    .line 1008
    :goto_15
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1009
    .line 1010
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1011
    .line 1012
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 1013
    .line 1014
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    if-ne v3, v9, :cond_28

    .line 1019
    .line 1020
    const-string v0, "\u89e3\u7981\u5931\u8d25"

    .line 1021
    .line 1022
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_16

    .line 1026
    :cond_28
    if-ne v3, v11, :cond_29

    .line 1027
    .line 1028
    const-string v3, "\u89e3\u7981\u6210\u529f"

    .line 1029
    .line 1030
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    iput-boolean v11, v0, Lx9/b;->e:Z

    .line 1034
    .line 1035
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    :cond_29
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_17

    .line 1042
    :catch_7
    move-exception v0

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    const-string v4, "\u5931\u8d25\uff1a"

    .line 1046
    .line 1047
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    invoke-static {v0, v10}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1065
    .line 1066
    .line 1067
    :goto_17
    return-void

    .line 1068
    :pswitch_6
    check-cast v13, Lka/d;

    .line 1069
    .line 1070
    iget-object v0, v13, Lka/d;->d:Lx9/m3;

    .line 1071
    .line 1072
    invoke-virtual {v0, v12}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    move-object v3, v0

    .line 1077
    check-cast v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;

    .line 1078
    .line 1079
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1080
    .line 1081
    xor-int/2addr v0, v11

    .line 1082
    iput-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1083
    .line 1084
    new-instance v0, Landroid/content/ComponentName;

    .line 1085
    .line 1086
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->packName:Ljava/lang/String;

    .line 1087
    .line 1088
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->className:Ljava/lang/String;

    .line 1089
    .line 1090
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    :try_start_a
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1094
    .line 1095
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1096
    .line 1097
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 1098
    .line 1099
    iget-boolean v5, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1100
    .line 1101
    if-eqz v5, :cond_2a

    .line 1102
    .line 1103
    const/4 v5, 0x2

    .line 1104
    goto :goto_18

    .line 1105
    :cond_2a
    const/4 v5, 0x1

    .line 1106
    :goto_18
    invoke-virtual {v4, v0, v5, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1107
    .line 1108
    .line 1109
    goto :goto_19

    .line 1110
    :catch_8
    :try_start_b
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 1111
    .line 1112
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    .line 1116
    .line 1117
    iget-object v6, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->packName:Ljava/lang/String;

    .line 1118
    .line 1119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    const-string v6, "/"

    .line 1123
    .line 1124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    iget-object v6, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->className:Ljava/lang/String;

    .line 1128
    .line 1129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v5

    .line 1136
    iget-boolean v6, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1137
    .line 1138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1139
    .line 1140
    .line 1141
    invoke-static {v5, v6}, La2/w0;->V(Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1142
    .line 1143
    .line 1144
    :goto_19
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1145
    .line 1146
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1147
    .line 1148
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 1149
    .line 1150
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 1151
    .line 1152
    .line 1153
    move-result v0

    .line 1154
    if-ne v0, v9, :cond_2b

    .line 1155
    .line 1156
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1157
    .line 1158
    if-eqz v0, :cond_2c

    .line 1159
    .line 1160
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1161
    .line 1162
    .line 1163
    goto :goto_1a

    .line 1164
    :cond_2b
    if-ne v0, v11, :cond_2c

    .line 1165
    .line 1166
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1167
    .line 1168
    if-nez v0, :cond_2c

    .line 1169
    .line 1170
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1171
    .line 1172
    .line 1173
    goto :goto_1a

    .line 1174
    :cond_2c
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1175
    .line 1176
    xor-int/2addr v0, v11

    .line 1177
    iput-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1178
    .line 1179
    const-string v0, "\u65e0\u6cd5\u8bbe\u7f6e"

    .line 1180
    .line 1181
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1182
    .line 1183
    .line 1184
    goto :goto_1a

    .line 1185
    :catch_9
    move-exception v0

    .line 1186
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1187
    .line 1188
    xor-int/2addr v4, v11

    .line 1189
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;->isDisabled:Z

    .line 1190
    .line 1191
    new-instance v3, Ljava/lang/Exception;

    .line 1192
    .line 1193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-static {v0, v4}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1206
    .line 1207
    .line 1208
    :goto_1a
    return-void

    .line 1209
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h(I[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lha/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lwb/g;

    .line 4
    .line 5
    iget-object v0, p2, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lfa/v;

    .line 13
    .line 14
    iget v1, p0, Lha/o;->b:I

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {p1, p2, v0, v1, v2}, Lfa/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lz7/o;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/w1;

    .line 4
    .line 5
    iget-object v1, v0, Lha/w1;->q:Lx9/w0;

    .line 6
    .line 7
    iget v2, p0, Lha/o;->b:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v3, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-object p1, v0, Lha/w1;->B:Lz7/o;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 33
    iput-object p1, v0, Lha/w1;->B:Lz7/o;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 37
    .line 38
    :goto_1
    iget-object p1, v0, Lha/w1;->q:Lx9/w0;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
