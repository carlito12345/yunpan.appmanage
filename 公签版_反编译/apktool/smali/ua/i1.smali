.class public final Lua/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;
.implements Lma/k;
.implements Lxa/c;
.implements Lea/e;
.implements Lcom/yunpan/appmanage/carsdk/d;
.implements Lcom/yunpan/appmanage/carsdk/v;
.implements Lw/h2;
.implements Lu9/b;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lua/i1;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/i1;->a:I

    iput-object p2, p0, Lua/i1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 2

    const/16 v0, 0x1d

    iput v0, p0, Lua/i1;->a:I

    const-string v0, "editor"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ldb/p;

    iget-object p1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    invoke-direct {v0, p1}, Ldb/p;-><init>(Ldb/p;)V

    .line 5
    new-instance p1, Lua/g5;

    const/16 v1, 0x10

    invoke-direct {p1, v1, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 6
    const-class v1, Ldb/e;

    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    return-void
.end method

.method private final A()V
    .locals 0

    .line 1
    return-void
.end method

.method private final B()V
    .locals 0

    .line 1
    return-void
.end method

.method private final C()V
    .locals 0

    .line 1
    return-void
.end method

.method private final E()V
    .locals 0

    .line 1
    return-void
.end method

.method private final G()V
    .locals 0

    .line 1
    return-void
.end method

.method private final H()V
    .locals 0

    .line 1
    return-void
.end method

.method private final I()V
    .locals 0

    .line 1
    return-void
.end method

.method private final K()V
    .locals 0

    .line 1
    return-void
.end method

.method private final L()V
    .locals 0

    .line 1
    return-void
.end method

.method private final M()V
    .locals 0

    .line 1
    return-void
.end method

.method private final N()V
    .locals 0

    .line 1
    return-void
.end method

.method private final u()V
    .locals 0

    .line 1
    return-void
.end method

.method private final w(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    return-void
.end method

.method private final x()V
    .locals 0

    .line 1
    return-void
.end method

.method private final y()V
    .locals 0

    .line 1
    return-void
.end method

.method private final z()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public D()V
    .locals 5

    .line 1
    const-string v0, "maps"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "keys"

    .line 6
    .line 7
    iget v4, p0, Lua/i1;->a:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lua/x7;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadPhoneStatePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lua/g5;

    .line 29
    .line 30
    const/16 v2, 0xd

    .line 31
    .line 32
    invoke-direct {v1, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lua/g7;

    .line 42
    .line 43
    iget-object v1, v0, Lua/g7;->c:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 44
    .line 45
    sget v3, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v3, Lha/qa;

    .line 51
    .line 52
    iget-boolean v0, v0, Lua/g7;->b:Z

    .line 53
    .line 54
    const/4 v4, 0x7

    .line 55
    invoke-direct {v3, v4, v0}, Lha/qa;-><init>(IZ)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lmc/c;

    .line 59
    .line 60
    invoke-direct {v0, v2, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Lua/f7;

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    invoke-direct {v2, v1, v3}, Lua/f7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 84
    .line 85
    .line 86
    :pswitch_2
    return-void

    .line 87
    :pswitch_3
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityOuShang;

    .line 90
    .line 91
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lua/x4;

    .line 100
    .line 101
    iget-object v0, v0, Lua/x4;->f:Lda/g;

    .line 102
    .line 103
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "\u5931\u8d25\uff1a"

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    :pswitch_5
    return-void

    .line 132
    :pswitch_6
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Lua/x3;

    .line 135
    .line 136
    iget-object v0, v0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 137
    .line 138
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->x(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_7
    iget-object v1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 145
    .line 146
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 147
    .line 148
    new-instance v3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 157
    .line 158
    new-instance v3, Lz7/o;

    .line 159
    .line 160
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 169
    .line 170
    invoke-static {v0, v1}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_8
    iget-object v1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 177
    .line 178
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 179
    .line 180
    new-instance v3, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 189
    .line 190
    new-instance v3, Lz7/o;

    .line 191
    .line 192
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v0, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 199
    .line 200
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 201
    .line 202
    invoke-static {v0, v2}, Lq4/a;->R(Landroid/content/Context;Lz7/s;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 206
    .line 207
    const-string v1, "UP_INIT_AIONY"

    .line 208
    .line 209
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_9
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    .line 216
    .line 217
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 218
    .line 219
    new-instance v2, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, Lz7/s;

    .line 228
    .line 229
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->E:Lz7/s;

    .line 233
    .line 234
    new-instance v2, Lz7/o;

    .line 235
    .line 236
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v3, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 243
    .line 244
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->E:Lz7/s;

    .line 245
    .line 246
    invoke-static {v1, v2}, Lq4/a;->W(Landroid/content/Context;Lz7/s;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 250
    .line 251
    const-string v1, "UP_KEYMAP_NISSAN"

    .line 252
    .line 253
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_a
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 260
    .line 261
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 262
    .line 263
    new-instance v2, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Lz7/s;

    .line 272
    .line 273
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 274
    .line 275
    .line 276
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->E:Lz7/s;

    .line 277
    .line 278
    new-instance v2, Lz7/o;

    .line 279
    .line 280
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v3, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 287
    .line 288
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->E:Lz7/s;

    .line 289
    .line 290
    invoke-static {v1, v2}, Lq4/a;->S(Landroid/content/Context;Lz7/s;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 294
    .line 295
    const-string v1, "UP_KEYMAP_EVENT"

    .line 296
    .line 297
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_b
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;

    .line 304
    .line 305
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

    .line 306
    .line 307
    new-instance v2, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 313
    .line 314
    .line 315
    new-instance v1, Lz7/s;

    .line 316
    .line 317
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 318
    .line 319
    .line 320
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->E:Lz7/s;

    .line 321
    .line 322
    new-instance v2, Lz7/o;

    .line 323
    .line 324
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v3, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 331
    .line 332
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->E:Lz7/s;

    .line 333
    .line 334
    invoke-static {v1, v2}, Lq4/a;->Q(Landroid/content/Context;Lz7/s;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 338
    .line 339
    const-string v1, "UP_KEYMAP_ACC"

    .line 340
    .line 341
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_c
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 346
    .line 347
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityHome;->F()V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 356
    .line 357
    const/16 v2, 0x17

    .line 358
    .line 359
    if-lt v0, v2, :cond_0

    .line 360
    .line 361
    new-instance v0, Landroid/content/Intent;

    .line 362
    .line 363
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 364
    .line 365
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v2, Lcom/yunpan/appmanage/carsdk/u;

    .line 371
    .line 372
    iget-object v3, v2, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    const-string v4, "package"

    .line 381
    .line 382
    invoke-static {v4, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 387
    .line 388
    .line 389
    :try_start_1
    iget-object v1, v2, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 392
    .line 393
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    .line 395
    .line 396
    goto :goto_0

    .line 397
    :catch_1
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u6388\u6743"

    .line 398
    .line 399
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    :cond_0
    :goto_0
    return-void

    .line 403
    :pswitch_e
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :pswitch_f
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v0, Lha/s2;

    .line 414
    .line 415
    iget-object v0, v0, Lha/s2;->d:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 418
    .line 419
    sget v1, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 420
    .line 421
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 422
    .line 423
    invoke-static {v0}, Lqf/c;->Z(Landroid/content/Context;)V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public F(Ljava/lang/Object;III)V
    .locals 4

    .line 1
    iget v0, p0, Lua/i1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "  "

    .line 7
    .line 8
    iget-object v1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;

    .line 11
    .line 12
    :try_start_0
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->G:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    :try_start_1
    invoke-static {p1}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->x(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0xa

    .line 33
    .line 34
    if-le v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->G:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->F:Lx9/h2;

    .line 54
    .line 55
    invoke-virtual {v2, p2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 60
    .line 61
    if-nez p3, :cond_1

    .line 62
    .line 63
    if-nez p4, :cond_1

    .line 64
    .line 65
    iput-object p1, v2, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, v2, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 93
    .line 94
    :goto_0
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->F:Lx9/h2;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception p1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p3, "\u51fa\u9519"

    .line 104
    .line 105
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :catch_1
    :cond_2
    :goto_1
    return-void

    .line 123
    :pswitch_0
    const-string v0, "propertyId="

    .line 124
    .line 125
    const-string v1, ", areaId="

    .line 126
    .line 127
    const-string v2, ", status="

    .line 128
    .line 129
    invoke-static {p2, p3, v0, v1, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p3, ", rawValue="

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object p2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    .line 151
    .line 152
    invoke-static {p2, p1}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->x(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public J(Ljava/lang/Object;III)V
    .locals 3

    .line 1
    iget v0, p0, Lua/i1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string v0, "propertyId="

    .line 8
    .line 9
    const-string v1, ", wrappedId="

    .line 10
    .line 11
    const-string v2, ", state="

    .line 12
    .line 13
    invoke-static {p3, p2, v0, v1, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p3, ", rawValue="

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->x(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->Z:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "\u5f00\u542f"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "\u5173\u95ed"

    .line 13
    .line 14
    :goto_0
    const-string v1, "\u5927\u706f\u72b6\u6001: "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->h0:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    const-string p1, "-"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "P"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "R"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string p1, "N"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-string p1, "D"

    .line 35
    .line 36
    :goto_0
    const-string v0, "\u6863\u4f4d: "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public c(Lv/k;Lv/m;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv/e;

    .line 4
    .line 5
    iget-object v1, v0, Lv/e;->f:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lv/e;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    if-ge v4, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lv/d;

    .line 26
    .line 27
    iget-object v6, v6, Lv/d;->b:Lv/k;

    .line 28
    .line 29
    if-ne p1, v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v4, -0x1

    .line 36
    :goto_1
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v4, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v2, v1

    .line 52
    check-cast v2, Lv/d;

    .line 53
    .line 54
    :cond_3
    move-object v5, v2

    .line 55
    new-instance v1, Lcom/yunpan/appmanage/util/p;

    .line 56
    .line 57
    const/4 v8, 0x2

    .line 58
    move-object v3, v1

    .line 59
    move-object v4, p0

    .line 60
    move-object v6, p2

    .line 61
    move-object v7, p1

    .line 62
    invoke-direct/range {v3 .. v8}, Lcom/yunpan/appmanage/util/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    const-wide/16 v4, 0xc8

    .line 70
    .line 71
    add-long/2addr v2, v4

    .line 72
    iget-object p2, v0, Lv/e;->f:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p2, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lua/i1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 11
    .line 12
    iget v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 17
    .line 18
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 19
    .line 20
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->y()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 29
    .line 30
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->userInfo:Lx9/n5;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 43
    .line 44
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 45
    .line 46
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public e(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ly7/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Lx9/u5;

    .line 16
    .line 17
    const-string v0, "\u591a\u5c4f\u4e92\u52a8\uff1a"

    .line 18
    .line 19
    const-string v2, "%"

    .line 20
    .line 21
    invoke-static {v0, p1, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p2, Lx9/u5;->h:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lx9/u5;

    .line 31
    .line 32
    iput-object p2, p1, Lx9/u5;->h:Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    iget-object p1, v1, Ly7/b;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 37
    .line 38
    iget-object p2, v1, Ly7/b;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p2, Lx9/u5;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget v0, p0, Lua/i1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 11
    .line 12
    iget v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 17
    .line 18
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 19
    .line 20
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->y()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 29
    .line 30
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->userInfo:Lx9/n5;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    iput v1, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 43
    .line 44
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 45
    .line 46
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public g(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->N0:Landroid/widget/TextView;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "\u8f66\u7a97\u72b6\u6001: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string p1, "\u672a\u77e5\u8f66\u7a97"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    const-string p1, "\u53f3\u540e\u7a97"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const-string p1, "\u5de6\u540e\u7a97"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    const-string p1, "\u53f3\u524d\u7a97"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const-string p1, "\u5de6\u524d\u7a97"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " \u5f00\u5ea6: "

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "%"

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 7

    .line 1
    iget v0, p0, Lua/i1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 13
    .line 14
    iget-wide v3, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->h0:J

    .line 15
    .line 16
    sub-long/2addr v0, v3

    .line 17
    const-wide/16 v3, 0x7d0

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    cmp-long v6, v0, v3

    .line 21
    .line 22
    if-gez v6, :cond_0

    .line 23
    .line 24
    iget v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->t0:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->t0:I

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-le v0, v1, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5}, Lcom/yunpan/appmanage/util/w;->w(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->P:Landroid/widget/CheckBox;

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    .line 51
    .line 52
    const-string v0, "\u81ea\u52a8\u64ad\u653e\u5df2\u5173\u95ed"

    .line 53
    .line 54
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iput-wide v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->h0:J

    .line 63
    .line 64
    iput v5, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->t0:I

    .line 65
    .line 66
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityImage2;->x()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage2;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 84
    .line 85
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void

    .line 89
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    iget-object v2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 96
    .line 97
    iget-wide v3, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->Z:J

    .line 98
    .line 99
    sub-long/2addr v0, v3

    .line 100
    const-wide/16 v3, 0x7d0

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    cmp-long v6, v0, v3

    .line 104
    .line 105
    if-gez v6, :cond_3

    .line 106
    .line 107
    iget v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 108
    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    iput v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 112
    .line 113
    const/4 v1, 0x3

    .line 114
    if-le v0, v1, :cond_4

    .line 115
    .line 116
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 117
    .line 118
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->Y:Lcom/yunpan/appmanage/carsdk/u;

    .line 123
    .line 124
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5}, Lcom/yunpan/appmanage/util/w;->w(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->P:Landroid/widget/CheckBox;

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    .line 134
    .line 135
    const-string v0, "\u81ea\u52a8\u64ad\u653e\u5df2\u5173\u95ed"

    .line 136
    .line 137
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    iput-wide v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->Z:J

    .line 146
    .line 147
    iput v5, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 148
    .line 149
    :cond_4
    :goto_2
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityImage;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityImage;->A()V

    .line 162
    .line 163
    .line 164
    :goto_3
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->t0:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const-string p1, "-"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p1, "\u81ea\u5b9a\u4e49"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p1, "\u8fd0\u52a8"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string p1, "ECO"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string p1, "\u666e\u901a"

    .line 34
    .line 35
    :goto_0
    const-string v0, "\u9a7e\u9a76\u6a21\u5f0f: "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly7/b;

    .line 4
    .line 5
    iget-object v1, v0, Ly7/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lx9/u5;

    .line 8
    .line 9
    const-string v2, "\u8bf7\u9009\u62e9\u3010\u540c\u610f\u3011"

    .line 10
    .line 11
    iput-object v2, v1, Lx9/u5;->h:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v0, Ly7/b;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->value_str2:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Lz7/o;->k(Lz7/p;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lq4/a;->X(Landroid/content/Context;Lz7/s;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->O0:Landroid/widget/TextView;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "\u8f66\u901f: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, " km/h"

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public m(Lv/k;Lv/m;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lv/e;

    .line 4
    .line 5
    iget-object p2, p2, Lv/e;->f:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public n(Landroidx/room/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->P0:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "\u94a5\u5319\u72b6\u6001  "

    .line 8
    .line 9
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->Q0:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "\u5c3e\u95e8\u72b6\u6001  "

    .line 8
    .line 9
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public q()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lua/i1;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->L:I

    .line 8
    .line 9
    iget-object v1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->H:Lcom/yunpan/appmanage/carsdk/x;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/x;->f()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/yunpan/appmanage/carsdk/w;

    .line 41
    .line 42
    iget v5, v4, Lcom/yunpan/appmanage/carsdk/w;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    iget v4, v4, Lcom/yunpan/appmanage/carsdk/w;->a:I

    .line 45
    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    :try_start_1
    iget-object v5, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->G:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    add-int/2addr v3, v0

    .line 62
    iget-object v5, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->I:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v6, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 65
    .line 66
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v7, ""

    .line 71
    .line 72
    invoke-direct {v6, v4, v7}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->K:Lcom/yunpan/appmanage/carsdk/u;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "\u8bfb\u53d6\u5c5e\u6027\u5931\u8d25:"

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    :pswitch_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly7/b;

    .line 4
    .line 5
    iget-object v1, v0, Ly7/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lx9/u5;

    .line 8
    .line 9
    const-string v2, "\u5b89\u88c5\u5931\u8d25"

    .line 10
    .line 11
    iput-object v2, v1, Lx9/u5;->c:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "\u7cfb\u7edf\u6b63\u5728\u5b89\u88c5\u5176\u5b83\u5e94\u7528"

    .line 14
    .line 15
    iput-object v2, v1, Lx9/u5;->h:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v0, Ly7/b;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public s(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->M0:Landroid/widget/TextView;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "\u8f66\u95e8\u72b6\u6001: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string p1, "\u672a\u77e5\u8f66\u95e8"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    const-string p1, "\u53f3\u540e\u95e8"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const-string p1, "\u5de6\u540e\u95e8"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    const-string p1, "\u53f3\u524d\u95e8"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const-string p1, "\u5de6\u524d\u95e8"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    const-string p1, " \u5f00"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string p1, " \u5173"

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0xe9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lua/i1;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    return-void

    .line 9
    :pswitch_1
    iget-object v2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lua/x6;

    .line 12
    .line 13
    iget-object v2, v2, Lua/x6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v2, "\u5c1d\u8bd5\u4e2d..."

    .line 19
    .line 20
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lua/t6;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lua/t6;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lmc/c;

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lha/l2;

    .line 48
    .line 49
    const/16 v2, 0x1c

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 55
    .line 56
    .line 57
    :pswitch_2
    return-void

    .line 58
    :pswitch_3
    iget-object v1, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lua/w3;

    .line 61
    .line 62
    iget-object v1, v1, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 63
    .line 64
    sget v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 70
    .line 71
    invoke-virtual {v2}, Lfa/j;->i()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    .line 77
    sget-object v2, Lfa/l;->a:Lfa/m;

    .line 78
    .line 79
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_0

    .line 84
    .line 85
    const-string v0, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 86
    .line 87
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance v2, Lua/v0;

    .line 92
    .line 93
    const/16 v3, 0xe

    .line 94
    .line 95
    invoke-direct {v2, v3}, Lua/v0;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lmc/c;

    .line 99
    .line 100
    invoke-direct {v3, v0, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v2, Lua/x3;

    .line 118
    .line 119
    const/4 v3, 0x6

    .line 120
    invoke-direct {v2, v1, v3}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void

    .line 127
    :pswitch_4
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lua/x3;

    .line 130
    .line 131
    iget-object v0, v0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 132
    .line 133
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->x(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 134
    .line 135
    .line 136
    :pswitch_5
    return-void

    .line 137
    :pswitch_6
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 138
    .line 139
    iget-object v0, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityHome;->F()V

    .line 144
    .line 145
    .line 146
    :pswitch_7
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/i1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Error where="

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", error="

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lua/i1;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->x(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method
